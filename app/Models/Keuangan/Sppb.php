<?php

namespace App\Models\Keuangan;

use App\Models\Traits\HasDocumentFeatures;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Sppb extends Model
{
    use SoftDeletes, HasDocumentFeatures;

    protected $table = 'keuangan_bendaharapajak_sppb';

    protected $fillable = [
        'id_surat_bayar',
        'id_spb',
        'id_divisi',
        'tanggal_sppb',
        'nomor_sppb',
        'nominal',
        'tujuan',
        'dibuat',
        'file',
        'file_name',
        'lokasi',
        'version',
        'sifat_dokumen',
        'created_by',
        'updated_by',
        'deleted_by',
    ];

    protected $casts = ['tanggal_sppb' => 'date', 'nominal' => 'decimal:2'];

    public function suratBayar()
    {
        return $this->belongsTo(SuratBayar::class, 'id_surat_bayar');
    }
    public function spb()
    {
        return $this->belongsTo(Spb::class, 'id_spb');
    }
}
