<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class MasterDepartment extends Model
{
    use SoftDeletes;

    protected $table = 'master_department';

    protected $fillable = [
        'kode_department',
        'nama_department',
        'description',
        'created_by',
        'updated_by',
        'deleted_by',
    ];

    /**
     * Get divisions in this department
     */
    public function divisions()
    {
        return $this->hasMany(MasterDivisi::class, 'id_department');
    }

    /**
     * Get positions in this department
     */
    public function jabatans()
    {
        return $this->hasMany(MasterJabatan::class, 'id_department');
    }

    /**
     * Get user jabatan history
     */
    public function userJabatanHistories()
    {
        return $this->hasMany(UserJabatanHistory::class, 'id_department');
    }
}
