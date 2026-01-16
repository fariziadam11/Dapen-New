<?php

namespace App\Models\Akuntansi;

use App\Models\Traits\HasDocumentFeatures;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class LaporanAuditKeuangan extends Model
{
    use SoftDeletes, HasDocumentFeatures;

    protected $table = 'akuntansi_laporan_audit_keuangan';

    protected $fillable = [
        'id_divisi',
        'tanggal',
        'judul',
        'nama_kap',
        'file',
        'file_name',
        'lokasi',
        'version',
        'sifat_dokumen',
        'created_by',
        'updated_by',
        'deleted_by',
    ];

    protected $casts = [
        'tanggal' => 'date',
    ];

    protected function getSearchableFields()
    {
        return ['judul', 'nama_kap', 'file_name'];
    }
}
