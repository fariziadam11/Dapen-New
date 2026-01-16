<?php

namespace App\Models\HukumKepatuhan;

use App\Models\Traits\HasDocumentFeatures;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Penomoran extends Model
{
    use SoftDeletes, HasDocumentFeatures;

    protected $table = 'hukumkepatuhan_penomoran';

    protected $fillable = [
        'id_divisi',
        'perihal',
        'keterangan',
        'file',
        'file_name',
        'lokasi',
        'version',
        'sifat_dokumen',
        'created_by',
        'updated_by',
        'deleted_by',
    ];
}
