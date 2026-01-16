<?php

namespace App\Models\Logistik;

use App\Models\Traits\HasDocumentFeatures;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class PolisAsuransi extends Model
{
    use SoftDeletes, HasDocumentFeatures;
    protected $table = 'logistiksarpen_polis_asuransi';
    protected $fillable = ['id_divisi', 'tahun', 'berlaku_mulai', 'berlaku_akhir', 'nilai', 'file', 'file_name', 'lokasi', 'version', 'sifat_dokumen', 'created_by', 'updated_by', 'deleted_by'];
    protected $casts = ['berlaku_mulai' => 'date', 'berlaku_akhir' => 'date'];
}
