<?php

namespace App\Models\Keuangan;

use App\Models\Traits\HasDocumentFeatures;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Spb extends Model
{
    use SoftDeletes, HasDocumentFeatures;

    protected $table = 'keuangan_bendaharapajak_spb';

    protected $fillable = [
        'id_surat_bayar',
        'id_divisi',
        'tanggal_spb',
        'nomor_spb',
        'nominal',
        'tujuan',
        'file',
        'file_name',
        'lokasi',
        'version',
        'sifat_dokumen',
        'created_by',
        'updated_by',
        'deleted_by',
    ];

    protected $casts = ['tanggal_spb' => 'date', 'nominal' => 'decimal:2'];

    public function suratBayar()
    {
        return $this->belongsTo(SuratBayar::class, 'id_surat_bayar');
    }
    public function sppbs()
    {
        return $this->hasMany(Sppb::class, 'id_spb');
    }
}
