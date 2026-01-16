<?php

namespace App\Models\Logistik;

use App\Models\Traits\HasDocumentFeatures;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Procurement extends Model
{
    use SoftDeletes, HasDocumentFeatures;
    protected $table = 'logistiksarpen_procurement';
    protected $fillable = ['id_divisi', 'no_drp', 'nama_kegiatan', 'direktorat', 'file', 'file_name', 'lokasi', 'version', 'sifat_dokumen', 'created_by', 'updated_by', 'deleted_by'];
}
