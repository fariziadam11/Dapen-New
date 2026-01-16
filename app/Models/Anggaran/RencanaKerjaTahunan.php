<?php

namespace App\Models\Anggaran;

use App\Models\Traits\HasDocumentFeatures;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class RencanaKerjaTahunan extends Model
{
    use SoftDeletes, HasDocumentFeatures;

    protected $table = 'anggaran_rencana_kerja_tahunan';

    protected $fillable = [
        'id_divisi',
        'tahun',
        'judul',
        'file',
        'file_name',
        'lokasi',
        'version',
        'sifat_dokumen',
        'created_by',
        'updated_by',
        'deleted_by',
    ];
}
