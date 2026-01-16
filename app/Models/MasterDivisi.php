<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class MasterDivisi extends Model
{
    use SoftDeletes;

    protected $table = 'master_divisi';

    protected $fillable = [
        'kode_divisi',
        'nama_divisi',
        'id_module',
        'description',
        'created_by',
        'updated_by',
        'deleted_by',
    ];

    /**
     * Get the module
     */
    public function module()
    {
        return $this->belongsTo(BaseModule::class, 'id_module');
    }

    /**
     * Get departments in this division
     */
    public function departments()
    {
        return $this->hasMany(MasterDepartment::class, 'id_divisi');
    }

    /**
     * Get positions in this division
     */
    public function jabatans()
    {
        return $this->hasMany(MasterJabatan::class, 'id_divisi');
    }

    /**
     * Get roles for this division
     */
    public function roles()
    {
        return $this->hasMany(BaseRole::class, 'id_divisi');
    }

    /**
     * Get document folders
     */
    public function documentFolders()
    {
        return $this->hasMany(DocumentFolder::class, 'id_divisi');
    }

    /**
     * Get file access requests
     */
    public function fileAccessRequests()
    {
        return $this->hasMany(FileAccessRequest::class, 'id_divisi');
    }

    /**
     * Get division admins (users with admin role for this division)
     */
    public function admins()
    {
        return User::whereHas('roles', function ($query) {
            $query->where('id_divisi', $this->id)
                ->where('access_scope', 'division');
        })->get();
    }

    // Document relationships for statistics
    public function aturanKebijakanAkuntansi()
    {
        return $this->hasMany(\App\Models\Akuntansi\AturanKebijakan::class, 'id_divisi');
    }

    public function jurnalUmum()
    {
        return $this->hasMany(\App\Models\Akuntansi\JurnalUmum::class, 'id_divisi');
    }

    public function transaksiInvestasi()
    {
        return $this->hasMany(\App\Models\Investasi\Transaksi::class, 'id_divisi');
    }
}
