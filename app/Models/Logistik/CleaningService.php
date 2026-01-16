<?php

namespace App\Models\Logistik;

use App\Models\Traits\HasDocumentFeatures;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class CleaningService extends Model
{
    use SoftDeletes, HasDocumentFeatures;
    protected $table = 'logistiksarpen_cleaning_service';
    protected $fillable = ['id_divisi', 'tahun', 'bulan', 'nama_kegiatan', 'file', 'file_name', 'lokasi', 'version', 'sifat_dokumen', 'created_by', 'updated_by', 'deleted_by'];
}
