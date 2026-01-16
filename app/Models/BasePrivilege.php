<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class BasePrivilege extends Model
{
    use SoftDeletes;

    protected $table = 'base_privileges';

    protected $fillable = [
        'id_roles',
        'id_menu',
        'id_function',
        'created_by',
        'updated_by',
        'deleted_by',
    ];

    /**
     * Get the role
     */
    public function role()
    {
        return $this->belongsTo(BaseRole::class, 'id_roles');
    }

    /**
     * Get the menu
     */
    public function menu()
    {
        return $this->belongsTo(BaseMenu::class, 'id_menu');
    }

    /**
     * Get the function
     */
    public function function()
    {
        return $this->belongsTo(BaseFunction::class, 'id_function');
    }

    /**
     * Scope by role
     */
    public function scopeByRole($query, $roleId)
    {
        return $query->where('id_roles', $roleId);
    }

    /**
     * Scope by menu
     */
    public function scopeByMenu($query, $menuId)
    {
        return $query->where('id_menu', $menuId);
    }
}
