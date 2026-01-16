<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class RoleDivisionAccess extends Model
{
    use SoftDeletes;

    protected $table = 'role_division_access';

    protected $fillable = [
        'id_role',
        'id_divisi',
        'id_module',
        'access_level',
        'created_by',
        'updated_by',
        'deleted_by',
    ];

    const ACCESS_READ = 'read';
    const ACCESS_WRITE = 'write';
    const ACCESS_FULL = 'full';

    /**
     * Get the role
     */
    public function role()
    {
        return $this->belongsTo(BaseRole::class, 'id_role');
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
     * Check if access level allows action
     */
    public function allows($action)
    {
        if ($this->access_level === self::ACCESS_FULL) {
            return true;
        }

        $levels = [
            self::ACCESS_READ => ['read', 'view', 'list'],
            self::ACCESS_WRITE => ['read', 'view', 'list', 'create', 'update'],
        ];

        return in_array($action, $levels[$this->access_level] ?? []);
    }
}
