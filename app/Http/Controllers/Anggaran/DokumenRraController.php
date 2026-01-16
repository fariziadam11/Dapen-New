<?php

namespace App\Http\Controllers\Anggaran;

use App\Http\Controllers\BaseDocumentController;
use Illuminate\Http\Request;

class DokumenRraController extends BaseDocumentController
{
    protected $model = \App\Models\Anggaran\DokumenRra::class;
    protected $viewPath = 'anggaran.dokumen-rra';
    protected $routePrefix = 'anggaran.dokumen-rra';
    protected $moduleName = 'Dokumen Rra';

    protected function validateRequest(Request $request, $id = null): array
    {
        return $request->validate([
            'id_divisi' => 'required|exists:master_divisi,id',
            'judul' => 'nullable|string|max:255',
            'perihal' => 'nullable|string|max:255',
            'nomor' => 'nullable|string|max:100',
            'tanggal' => 'nullable|date',
            'file' => 'nullable|file|max:10240|mimes:pdf,doc,docx,xls,xlsx',
            'sifat_dokumen' => 'nullable|in:Umum,Rahasia',
            'lokasi' => 'nullable|string|max:255',
        ]);
    }
}
