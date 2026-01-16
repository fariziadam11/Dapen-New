<?php

namespace App\Models\Sekretariat;

use App\Models\Traits\HasDocumentFeatures;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Pengadaan extends Model
{
    use SoftDeletes, HasDocumentFeatures;
    protected $table = 'sekretariat_pengadaan';
    protected $fillable = ['id_divisi', 'nomor', 'tanggal', 'kategori', 'perihal', 'tujuan', 'masa_akhir', 'file', 'file_name', 'lokasi', 'version', 'sifat_dokumen', 'created_by', 'updated_by', 'deleted_by'];
    protected $casts = ['tanggal' => 'date'];
}
