<?php

namespace App\Http\Controllers\Sdm;

use App\Http\Controllers\BaseDocumentController;
use Illuminate\Http\Request;

class PeraturanController extends BaseDocumentController
{
    protected $model = \App\Models\Sdm\Peraturan::class;
    protected $viewPath = 'sdm.peraturan';
    protected $routePrefix = 'sdm.peraturan';
    protected $moduleName = 'Peraturan';

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
