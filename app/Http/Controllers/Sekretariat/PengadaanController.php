<?php

namespace App\Http\Controllers\Sekretariat;

use App\Http\Controllers\BaseDocumentController;
use Illuminate\Http\Request;

class PengadaanController extends BaseDocumentController
{
    protected $model = \App\Models\Sekretariat\Pengadaan::class;
    protected $viewPath = 'sekretariat.pengadaan';
    protected $routePrefix = 'sekretariat.pengadaan';
    protected $moduleName = 'Pengadaan';

    protected function validateRequest(Request $request, $id = null): array
    {
        return $request->validate([
            'id_divisi' => 'required|exists:master_divisi,id',
            'nomor' => 'nullable|string|max:50',
            'tanggal' => 'nullable|date',
            'kategori' => 'required|string|max:50',
            'perihal' => 'nullable|string|max:65535',
            'tujuan' => 'nullable|string|max:65535',
            'masa_akhir' => 'nullable|string|max:255',
            'file' => 'nullable|file|max:10240|mimes:pdf,doc,docx,xls,xlsx',
            'sifat_dokumen' => 'nullable|in:Umum,Rahasia',
            'lokasi' => 'nullable|string|max:255',
        ]);
    }
}
