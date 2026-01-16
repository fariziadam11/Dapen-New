<?php

namespace App\Models\Anggaran;

use App\Models\Traits\HasDocumentFeatures;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class LaporanPrbc extends Model
{
    use SoftDeletes, HasDocumentFeatures;

    protected $table = 'anggaran_laporan_prbc';

    protected $fillable = [
        'id_divisi',
        'tahun',
        'bulan',
        'file',
        'file_name',
        'lokasi',
        'version',
        'sifat_dokumen',
        'created_by',
        'updated_by',
        'deleted_by',
    ];

    protected function getSearchableFields()
    {
        return ['file_name'];
    }
}
