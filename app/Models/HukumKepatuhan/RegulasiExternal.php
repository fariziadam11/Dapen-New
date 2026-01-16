<?php

namespace App\Models\HukumKepatuhan;

use App\Models\Traits\HasDocumentFeatures;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class RegulasiExternal extends Model
{
    use SoftDeletes, HasDocumentFeatures;

    protected $table = 'hukumkepatuhan_regulasi_external';

    protected $fillable = [
        'id_divisi',
        'nomor',
        'judul',
        'tanggal',
        'status',
        'file',
        'file_name',
        'lokasi',
        'version',
        'sifat_dokumen',
        'created_by',
        'updated_by',
        'deleted_by',
    ];

    protected $casts = ['tanggal' => 'date'];
}
