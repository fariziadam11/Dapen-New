<?php

namespace App\Models\Logistik;

use App\Models\Traits\HasDocumentFeatures;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class PelaporanPrbc extends Model
{
    use SoftDeletes, HasDocumentFeatures;
    protected $table = 'logistiksarpen_pelaporan_prbc';
    protected $fillable = ['id_divisi', 'bulan', 'tanggal', 'file', 'file_name', 'lokasi', 'version', 'sifat_dokumen', 'created_by', 'updated_by', 'deleted_by'];
    protected $casts = ['tanggal' => 'date'];
}
