<?php

namespace App\Models\Keuangan;

use App\Models\Traits\HasDocumentFeatures;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Pajak extends Model
{
    use SoftDeletes, HasDocumentFeatures;
    protected $table = 'keuangan_bendaharapajak_pajak';
    protected $fillable = ['id_divisi', 'masa', 'tahun', 'uraian', 'file', 'file_name', 'lokasi', 'version', 'sifat_dokumen', 'created_by', 'updated_by', 'deleted_by'];
}
