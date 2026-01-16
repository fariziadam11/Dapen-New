<?php

namespace App\Models\Keuangan;

use App\Models\Traits\HasDocumentFeatures;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Penempatan extends Model
{
    use SoftDeletes, HasDocumentFeatures;
    protected $table = 'keuangan_bendaharapajak_penempatan';
    protected $fillable = ['id_divisi', 'tanggal', 'nominal', 'uraian', 'file', 'file_name', 'lokasi', 'version', 'sifat_dokumen', 'created_by', 'updated_by', 'deleted_by'];
    protected $casts = ['tanggal' => 'date', 'nominal' => 'decimal:2'];
}
