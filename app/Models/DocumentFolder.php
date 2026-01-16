<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class DocumentFolder extends Model
{
    use SoftDeletes;

    protected $table = 'document_folders';

    protected $fillable = [
        'parent_id',
        'folder_name',
        'folder_path',
        'id_divisi',
        'id_module',
        'description',
        'created_by',
        'updated_by',
        'deleted_by',
    ];

    /**
     * Get parent folder
     */
    public function parent()
    {
        return $this->belongsTo(DocumentFolder::class, 'parent_id');
    }

    /**
     * Get child folders
     */
    public function children()
    {
        return $this->hasMany(DocumentFolder::class, 'parent_id');
    }

    /**
     * Get all descendants
     */
    public function descendants()
    {
        return $this->children()->with('descendants');
    }

    /**
     * Get the division
     */
    public function divisi()
    {
        return $this->belongsTo(MasterDivisi::class, 'id_divisi');
    }

    /**
     * Get the module
     */
    public function module()
    {
        return $this->belongsTo(BaseModule::class, 'id_module');
    }

    /**
     * Get folder permissions
     */
    public function permissions()
    {
        return $this->hasMany(FolderPermission::class, 'id_folder');
    }

    /**
     * Get creator
     */
    public function creator()
    {
        return $this->belongsTo(User::class, 'created_by');
    }

    /**
     * Check if user has access to folder
     */
    public function userHasAccess($userId, $permissionType = 'read')
    {
        $user = User::find($userId);
        if (!$user) return false;

        // Check direct user permission
        $directPermission = $this->permissions()
            ->where('id_user', $userId)
            ->where(function ($query) use ($permissionType) {
                $query->where('permission_type', $permissionType)
                    ->orWhere('permission_type', 'full');
            })
            ->exists();

        if ($directPermission) return true;

        // Check role-based permission
        $roleIds = $user->roles()->pluck('id');
        return $this->permissions()
            ->whereIn('id_role', $roleIds)
            ->where(function ($query) use ($permissionType) {
                $query->where('permission_type', $permissionType)
                    ->orWhere('permission_type', 'full');
            })
            ->exists();
    }

    /**
     * Scope for root folders
     */
    public function scopeRoots($query)
    {
        return $query->whereNull('parent_id');
    }

    /**
     * Scope by division
     */
    public function scopeByDivision($query, $divisiId)
    {
        return $query->where('id_divisi', $divisiId);
    }
}
