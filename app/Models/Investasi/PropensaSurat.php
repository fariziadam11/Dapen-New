<?php

namespace App\Models\Investasi;

use App\Models\Traits\HasDocumentFeatures;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class PropensaSurat extends Model
{
    use SoftDeletes, HasDocumentFeatures;

    protected $table = 'investasi_propensa_surat';

    protected $fillable = [
        'id_divisi',
        'type',
        'tanggal',
        'nomor',
        'perihal',
        'lokasi',
        'file',
        'file_name',
        'version',
        'sifat_dokumen',
        'created_by',
        'updated_by',
        'deleted_by',
    ];

    protected $casts = ['tanggal' => 'date'];
}
