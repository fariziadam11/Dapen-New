<?php

namespace App\Models\Anggaran;

use App\Models\Traits\HasDocumentFeatures;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class AturanKebijakan extends Model
{
    use SoftDeletes, HasDocumentFeatures;

    protected $table = 'anggaran_aturan_kebijakan';

    protected $fillable = [
        'id_divisi',
        'tanggal',
        'nomor',
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

    protected $casts = [
        'tanggal' => 'date',
    ];
}
