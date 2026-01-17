<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class BaseRole extends Model
{
    use SoftDeletes;

    protected $table = 'base_roles';

    protected $fillable = [
        'id_group',
        'id_divisi',
        'access_scope',
        'roles_name',
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
     * Get the division
     */
    public function division()
    {
        return $this->belongsTo(MasterDivisi::class, 'id_divisi');
    }

    /**
     * Get the division (alias for consistency)
     */
    public function divisi()
    {
        return $this->division();
    }

    /**
     * Get user roles
     */
    public function userRoles()
    {
        return $this->hasMany(BaseUserRole::class, 'id_roles');
    }

    /**
     * Get users with this role
     */
    public function users()
    {
        return $this->belongsToMany(User::class, 'base_user_roles', 'id_roles', 'id_user');
    }

    /**
     * Get privileges
     */
    public function privileges()
    {
        return $this->hasMany(BasePrivilege::class, 'id_roles');
    }

    /**
     * Get folder permissions
     */
    public function folderPermissions()
    {
        return $this->hasMany(FolderPermission::class, 'id_role');
    }

    /**
     * Get division access
     */
    public function divisionAccess()
    {
        return $this->hasMany(RoleDivisionAccess::class, 'id_role');
    }

    /**
     * Check if role has access to a specific menu
     */
    public function hasMenuAccess($menuId)
    {
        return $this->privileges()->where('id_menu', $menuId)->exists();
    }

    /**
     * Check if role has specific function on menu
     */
    public function hasMenuFunction($menuId, $functionId)
    {
        return $this->privileges()
            ->where('id_menu', $menuId)
            ->where('id_function', $functionId)
            ->exists();
    }

    /**
     * Get all allowed menu IDs
     */
    public function getAllowedMenuIds()
    {
        return $this->privileges()->pluck('id_menu')->unique()->toArray();
    }
}
