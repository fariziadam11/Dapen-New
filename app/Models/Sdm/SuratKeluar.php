<?php

namespace App\Models\Sdm;

use App\Models\Traits\HasDocumentFeatures;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class SuratKeluar extends Model
{
    use SoftDeletes, HasDocumentFeatures;
    protected $table = 'sdm_surat_keluar';
    protected $fillable = ['id_divisi', 'nomor', 'tanggal', 'perihal', 'kategori', 'file', 'file_name', 'lokasi', 'version', 'sifat_dokumen', 'created_by', 'updated_by', 'deleted_by'];
    protected $casts = ['tanggal' => 'date'];
}
