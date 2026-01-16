<?php

namespace App\Models\Akuntansi;

use App\Models\Traits\HasDocumentFeatures;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class JurnalUmum extends Model
{
    use SoftDeletes, HasDocumentFeatures;

    protected $table = 'akuntansi_jurnal_umum';

    protected $fillable = [
        'id_divisi',
        'tahun',
        'bulan',
        'keterangan',
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
        return ['keterangan', 'file_name'];
    }
}
