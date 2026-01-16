<?php

namespace App\Models\Logistik;

use App\Models\Traits\HasDocumentFeatures;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class SaranaPenunjang extends Model
{
    use SoftDeletes, HasDocumentFeatures;
    protected $table = 'logistiksarpen_sarana_penunjang';
    protected $fillable = ['id_divisi', 'tahun', 'bulan', 'nama_kegiatan', 'file', 'file_name', 'lokasi', 'version', 'sifat_dokumen', 'created_by', 'updated_by', 'deleted_by'];
}
