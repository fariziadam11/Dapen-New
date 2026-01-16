<?php

namespace App\Models\Sdm;

use App\Models\Traits\HasDocumentFeatures;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class IkutOrganisasi extends Model
{
    use SoftDeletes, HasDocumentFeatures;
    protected $table = 'sdm_ikut_organisasi';
    protected $fillable = ['id_divisi', 'nik', 'nama', 'status', 'perihal', 'tanggal', 'file', 'file_name', 'lokasi', 'version', 'sifat_dokumen', 'created_by', 'updated_by', 'deleted_by'];
    protected $casts = ['tanggal' => 'date'];
}
