<?php

namespace App\Models\Keuangan;

use App\Models\Traits\HasDocumentFeatures;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class SuratBayar extends Model
{
    use SoftDeletes, HasDocumentFeatures;

    protected $table = 'keuangan_bendaharapajak_surat';

    protected $fillable = [
        'id_divisi',
        'tanggal_surat_bayar',
        'nomor_surat_bayar',
        'file',
        'file_name',
        'lokasi',
        'version',
        'sifat_dokumen',
        'created_by',
        'updated_by',
        'deleted_by',
    ];

    protected $casts = ['tanggal_surat_bayar' => 'date'];

    public function spbs()
    {
        return $this->hasMany(Spb::class, 'id_surat_bayar');
    }
    public function sppbs()
    {
        return $this->hasMany(Sppb::class, 'id_surat_bayar');
    }
}
