<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class MasterJabatan extends Model
{
    use SoftDeletes;

    protected $table = 'master_jabatan';

    protected $fillable = [
        'kode_jabatan',
        'nama_jabatan',
        'id_divisi',
        'id_department',
        'id_role_default',
        'level_jabatan',
        'description',
        'created_by',
        'updated_by',
        'deleted_by',
    ];

    const LEVEL_STAFF = 1;
    const LEVEL_SUPERVISOR = 2;
    const LEVEL_MANAGER = 3;
    const LEVEL_DIRECTOR = 4;

    /**
     * Get the division
     */
    public function divisi()
    {
        return $this->belongsTo(MasterDivisi::class, 'id_divisi');
    }

    /**
     * Get the department
     */
    public function department()
    {
        return $this->belongsTo(MasterDepartment::class, 'id_department');
    }

    /**
     * Get the default role
     */
    public function defaultRole()
    {
        return $this->belongsTo(BaseRole::class, 'id_role_default');
    }

    /**
     * Get user jabatan history
     */
    public function userJabatanHistories()
    {
        return $this->hasMany(UserJabatanHistory::class, 'id_jabatan');
    }

    /**
     * Get level name
     */
    public function getLevelNameAttribute()
    {
        $levels = [
            self::LEVEL_STAFF => 'Staff',
            self::LEVEL_SUPERVISOR => 'Supervisor',
            self::LEVEL_MANAGER => 'Manager',
            self::LEVEL_DIRECTOR => 'Director',
        ];
        return $levels[$this->level_jabatan] ?? 'Unknown';
    }
}
