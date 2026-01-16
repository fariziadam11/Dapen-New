<?php

namespace App\Models\Sdm;

use App\Models\Traits\HasDocumentFeatures;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Aspurjab extends Model
{
    use SoftDeletes, HasDocumentFeatures;
    protected $table = 'sdm_aspurjab';
    protected $fillable = ['id_divisi', 'nomor', 'tanggal', 'nama', 'mulai', 'akhir', 'kategori', 'file', 'file_name', 'lokasi', 'version', 'sifat_dokumen', 'created_by', 'updated_by', 'deleted_by'];
    protected $casts = ['tanggal' => 'date', 'mulai' => 'date', 'akhir' => 'date'];
}
