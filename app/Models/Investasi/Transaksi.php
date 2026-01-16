<?php

namespace App\Models\Investasi;

use App\Models\Traits\HasDocumentFeatures;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Transaksi extends Model
{
    use SoftDeletes, HasDocumentFeatures;

    protected $table = 'transaksi';

    const TYPE_PEMBELIAN = 1;
    const TYPE_PENJUALAN = 2;

    protected $fillable = [
        'id_divisi',
        'type',
        'tgl_transaksi',
        'perihal',
        'saham',
        'broker',
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

    protected $casts = ['tgl_transaksi' => 'date'];

    public function getTypeLabelAttribute()
    {
        return $this->type == self::TYPE_PEMBELIAN ? 'Pembelian' : 'Penjualan';
    }
}
