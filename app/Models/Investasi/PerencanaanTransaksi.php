<?php

namespace App\Models\Investasi;

use App\Models\Traits\HasDocumentFeatures;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class PerencanaanTransaksi extends Model
{
    use SoftDeletes, HasDocumentFeatures;

    protected $table = 'investasi_perencanaan_transaksi';

    protected $fillable = [
        'id_divisi',
        'type',
        'tanggal',
        'perihal',
        'keterangan',
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
