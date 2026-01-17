<?php

namespace App\Http\Controllers\Sdm;

use App\Http\Controllers\BaseDocumentController;
use Illuminate\Http\Request;

class AspurjabController extends BaseDocumentController
{
    protected $model = \App\Models\Sdm\Aspurjab::class;
    protected $viewPath = 'sdm.aspurjab';
    protected $routePrefix = 'sdm.aspurjab';
    protected $moduleName = 'Aspurjab';

    protected function validateRequest(Request $request, $id = null): array
    {
        return $request->validate([
            'id_divisi' => 'required|exists:master_divisi,id',
            'file' => 'nullable|file|max:10240|mimes:pdf,doc,docx,xls,xlsx',
            'sifat_dokumen' => 'nullable|in:Umum,Rahasia',
        ]);
    }
}
