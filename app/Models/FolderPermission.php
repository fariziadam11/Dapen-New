<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class FolderPermission extends Model
{
    use SoftDeletes;

    protected $table = 'folder_permissions';

    protected $fillable = [
        'id_folder',
        'id_role',
        'id_user',
        'permission_type',
        'created_by',
        'updated_by',
        'deleted_by',
    ];

    const PERMISSION_READ = 'read';
    const PERMISSION_WRITE = 'write';
    const PERMISSION_DELETE = 'delete';
    const PERMISSION_FULL = 'full';

    /**
     * Get the folder
     */
    public function folder()
    {
        return $this->belongsTo(DocumentFolder::class, 'id_folder');
    }

    /**
     * Get the role
     */
    public function role()
    {
        return $this->belongsTo(BaseRole::class, 'id_role');
    }

    /**
     * Get the user
     */
    public function user()
    {
        return $this->belongsTo(User::class, 'id_user');
    }

    /**
     * Get permission label
     */
    public function getPermissionLabelAttribute()
    {
        $labels = [
            self::PERMISSION_READ => 'Baca',
            self::PERMISSION_WRITE => 'Tulis',
            self::PERMISSION_DELETE => 'Hapus',
            self::PERMISSION_FULL => 'Penuh',
        ];
        return $labels[$this->permission_type] ?? $this->permission_type;
    }

    /**
     * Check if permission allows action
     */
    public function allows($action)
    {
        if ($this->permission_type === self::PERMISSION_FULL) {
            return true;
        }

        $permissions = [
            self::PERMISSION_READ => ['read'],
            self::PERMISSION_WRITE => ['read', 'write'],
            self::PERMISSION_DELETE => ['read', 'delete'],
        ];

        return in_array($action, $permissions[$this->permission_type] ?? []);
    }
}
