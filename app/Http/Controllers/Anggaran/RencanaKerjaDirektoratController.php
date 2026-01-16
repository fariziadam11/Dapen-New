<?php

namespace App\Http\Controllers\Anggaran;

use App\Http\Controllers\BaseDocumentController;
use Illuminate\Http\Request;

class RencanaKerjaDirektoratController extends BaseDocumentController
{
    protected $model = \App\Models\Anggaran\RencanaKerjaDirektorat::class;
    protected $viewPath = 'anggaran.rencana-kerja-direktorat';
    protected $routePrefix = 'anggaran.rencana-kerja-direktorat';
    protected $moduleName = 'Rencana Kerja Direktorat';

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
