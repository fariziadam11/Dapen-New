<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class BaseMenu extends Model
{
    use SoftDeletes;

    protected $table = 'base_menus';

    protected $fillable = [
        'id_group',
        'id_module',
        'parent_id',
        'parent_sub_id',
        'parent_sub_parent_id',
        'code_name',
        'menu_name',
        'menu_label',
        'sequence',
        'path',
        'icon',
        'icon_type',
        'created_by',
        'updated_by',
        'deleted_by',
    ];

    /**
     * Get the group
     */
    public function group()
    {
        return $this->belongsTo(BaseGroup::class, 'id_group');
    }

    /**
     * Get the module
     */
    public function module()
    {
        return $this->belongsTo(BaseModule::class, 'id_module');
    }

    /**
     * Get parent menu
     */
    public function parent()
    {
        return $this->belongsTo(BaseMenu::class, 'parent_id');
    }

    /**
     * Get child menus
     */
    public function children()
    {
        return $this->hasMany(BaseMenu::class, 'parent_id')->orderBy('sequence');
    }

    /**
     * Get all descendants (recursive)
     */
    public function descendants()
    {
        return $this->children()->with('descendants');
    }

    /**
     * Get menu functions
     */
    public function menuFunctions()
    {
        return $this->hasMany(BaseMenuFunction::class, 'id_menu');
    }

    /**
     * Get privileges for this menu
     */
    public function privileges()
    {
        return $this->hasMany(BasePrivilege::class, 'id_menu');
    }

    /**
     * Scope for root menus only
     */
    public function scopeRoots($query)
    {
        return $query->whereNull('parent_id');
    }

    /**
     * Scope for menus by group
     */
    public function scopeByGroup($query, $groupId)
    {
        return $query->where('id_group', $groupId);
    }

    /**
     * Build menu tree for sidebar
     */
    public static function getMenuTree($groupId = null, $userId = null)
    {
        $query = self::with('descendants')
            ->roots()
            ->orderBy('sequence');

        if ($groupId) {
            $query->byGroup($groupId);
        }

        // If user provided, filter by privileges
        if ($userId) {
            $user = User::find($userId);
            if ($user) {
                $allowedMenuIds = $user->getAllowedMenuIds();
                $query->whereIn('id', $allowedMenuIds);
            }
        }

        return $query->get();
    }
}
