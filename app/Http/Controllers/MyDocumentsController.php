<?php

namespace App\Http\Controllers;

use App\Models\FileAccessRequest;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class MyDocumentsController extends Controller
{
    protected $modelMap = [
        'akuntansi_aturan_kebijakan' => \App\Models\Akuntansi\AturanKebijakan::class,
        'akuntansi_jurnal_umum' => \App\Models\Akuntansi\JurnalUmum::class,
        'akuntansi_laporan_audit_investasi' => \App\Models\Akuntansi\LaporanAuditInvestasi::class,
        'akuntansi_laporan_audit_keuangan' => \App\Models\Akuntansi\LaporanAuditKeuangan::class,
        'akuntansi_laporan_bulanan' => \App\Models\Akuntansi\LaporanBulanan::class,
        'anggaran_aturan_kebijakan' => \App\Models\Anggaran\AturanKebijakan::class,
        'anggaran_dokumen_rra' => \App\Models\Anggaran\DokumenRRA::class,
        'anggaran_laporan_prbc' => \App\Models\Anggaran\LaporanPRBC::class,
        'investasi_transaksi' => \App\Models\Investasi\Transaksi::class,
        'investasi_surat' => \App\Models\Investasi\Surat::class,
        // Investasi tables without prefix (actual table names)
        'transaksi' => \App\Models\Investasi\Transaksi::class,
        'surat' => \App\Models\Investasi\Surat::class,
        'keuangan_surat_bayar' => \App\Models\Keuangan\SuratBayar::class,
        'sdm_pks' => \App\Models\SDM\PKS::class,
        'sdm_peraturan' => \App\Models\SDM\Peraturan::class,
        'sekretariat_risalah_rapat' => \App\Models\Sekretariat\RisalahRapat::class,
        'logistik_procurement' => \App\Models\Logistik\Procurement::class,
    ];

    protected $routeMap = [
        'akuntansi_aturan_kebijakan' => 'akuntansi.aturan-kebijakan.show',
        'akuntansi_jurnal_umum' => 'akuntansi.jurnal-umum.show',
        'anggaran_aturan_kebijakan' => 'anggaran.aturan-kebijakan.show',
        'investasi_transaksi' => 'investasi.transaksi.show',
        'investasi_surat' => 'investasi.surat.show',
        // Investasi tables without prefix (actual table names)
        'transaksi' => 'investasi.transaksi.show',
        'surat' => 'investasi.surat.show',
    ];

    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Display list of documents that user has been granted access to
     */
    public function index(Request $request)
    {
        $user = auth()->user();

        // Get all approved access requests for this user
        $approvedRequests = FileAccessRequest::with(['divisi', 'responder'])
            ->where('id_user', $user->id)
            ->where('status', 'approved')
            ->orderBy('responded_at', 'desc')
            ->paginate(20);

        // Enrich with document details
        $documents = $approvedRequests->map(function ($request) {
            $modelClass = $this->modelMap[$request->document_type] ?? null;

            if (!$modelClass || !class_exists($modelClass)) {
                return null;
            }

            try {
                $document = $modelClass::find($request->document_id);

                if (!$document) {
                    return null;
                }

                return [
                    'request_id' => $request->id,
                    'document_type' => $request->document_type,
                    'document_id' => $request->document_id,
                    'title' => $document->judul ?? $document->perihal ?? $document->nama ?? $document->file_name ?? 'Dokumen #' . $document->id,
                    'type_label' => $this->formatTableName($request->document_type),
                    'division' => $request->divisi->nama_divisi ?? '-',
                    'classification' => $document->sifat_dokumen ?? '-',
                    'approved_at' => $request->responded_at,
                    'approved_by' => $request->responder->name ?? '-',
                    'url' => $this->getDocumentUrl($request->document_type, $request->document_id),
                ];
            } catch (\Exception $e) {
                return null;
            }
        })->filter(); // Remove null entries

        return view('my-documents.index', [
            'documents' => $documents,
            'pagination' => $approvedRequests,
        ]);
    }

    /**
     * Format table name for display
     */
    protected function formatTableName($tableName)
    {
        $parts = explode('_', $tableName);
        $parts = array_map('ucfirst', $parts);
        return implode(' ', $parts);
    }

    /**
     * Get document URL
     */
    protected function getDocumentUrl($documentType, $documentId)
    {
        $routeName = $this->routeMap[$documentType] ?? null;

        if ($routeName && \Route::has($routeName)) {
            return route($routeName, $documentId);
        }

        return null;
    }
}
