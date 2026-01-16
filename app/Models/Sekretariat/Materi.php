<?php

namespace App\Models\Sekretariat;

use App\Models\Traits\HasDocumentFeatures;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Materi extends Model
{
    use SoftDeletes, HasDocumentFeatures;
    protected $table = 'sekretariat_materi';
    protected $fillable = ['id_divisi', 'nomor', 'tanggal', 'periode', 'perihal', 'file', 'file_name', 'lokasi', 'version', 'sifat_dokumen', 'created_by', 'updated_by', 'deleted_by'];
    protected $casts = ['tanggal' => 'date'];
}
