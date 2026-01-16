<?php

namespace App\Models\HukumKepatuhan;

use App\Models\Traits\HasDocumentFeatures;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Putusan extends Model
{
    use SoftDeletes, HasDocumentFeatures;

    protected $table = 'hukumkepatuhan_putusan';

    protected $fillable = [
        'id_divisi',
        'nomor',
        'tanggal',
        'klarifikasi',
        'tingkat_pengadilan',
        'status',
        'pihak',
        'file',
        'file_name',
        'lokasi',
        'version',
        'sifat_dokumen',
        'created_by',
        'updated_by',
        'deleted_by',
    ];

    protected $casts = ['tanggal' => 'date'];
}
