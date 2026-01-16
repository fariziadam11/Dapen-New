<?php

namespace App\Models\Anggaran;

use App\Models\Traits\HasDocumentFeatures;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class DokumenRra extends Model
{
    use SoftDeletes, HasDocumentFeatures;

    protected $table = 'anggaran_dokumen_rra';

    protected $fillable = [
        'id_divisi',
        'tanggal',
        'direktorat',
        'nomor_nota',
        'nomor_sukka',
        'file',
        'file_name',
        'lokasi',
        'version',
        'sifat_dokumen',
        'created_by',
        'updated_by',
        'deleted_by',
    ];

    protected $casts = [
        'tanggal' => 'date',
    ];

    protected function getSearchableFields()
    {
        return ['direktorat', 'nomor_nota', 'nomor_sukka', 'file_name'];
    }
}
