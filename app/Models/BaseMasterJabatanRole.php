<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class BaseMasterJabatanRole extends Model
{
    use SoftDeletes;

    protected $table = 'base_masterjabatan_role';

    protected $fillable = [
        'id_jabatan',
        'id_role',
    ];

    /**
     * Relasi ke Master Jabatan
     */
    public function jabatan()
    {
        return $this->belongsTo(MasterJabatan::class, 'id_jabatan');
    }

    /**
     * Relasi ke Role
     */
    public function role()
    {
        return $this->belongsTo(BaseRole::class, 'id_role');
    }
}
