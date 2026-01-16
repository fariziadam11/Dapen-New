<?php

namespace App\Models\Investasi;

use App\Models\Traits\HasDocumentFeatures;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Surat extends Model
{
    use SoftDeletes, HasDocumentFeatures;

    protected $table = 'surat';

    const TYPE_KELUAR = 1;
    const TYPE_MASUK = 2;

    protected $fillable = [
        'id_divisi',
        'tgl_surat',
        'type',
        'no_surat',
        'no_agenda',
        'perihal',
        'jenis',
        'nama_perusahaan',
        'klasifikasi',
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

    protected $casts = ['tgl_surat' => 'date'];

    public function getTypeLabelAttribute()
    {
        return $this->type == self::TYPE_MASUK ? 'Surat Masuk' : 'Surat Keluar';
    }
}
