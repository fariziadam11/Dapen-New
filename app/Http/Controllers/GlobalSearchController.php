<?php

namespace App\Http\Controllers;

use App\Models\MasterDivisi;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class GlobalSearchController extends Controller
{
    protected $searchableModels = [
        'akuntansi_aturan_kebijakan' => \App\Models\Akuntansi\AturanKebijakan::class,
        'akuntansi_jurnal_umum' => \App\Models\Akuntansi\JurnalUmum::class,
        'akuntansi_laporan_audit_investasi' => \App\Models\Akuntansi\LaporanAuditInvestasi::class,
        'akuntansi_laporan_audit_keuangan' => \App\Models\Akuntansi\LaporanAuditKeuangan::class,
        'akuntansi_laporan_bulanan' => \App\Models\Akuntansi\LaporanBulanan::class,
        'anggaran_aturan_kebijakan' => \App\Models\Anggaran\AturanKebijakan::class,
        'transaksi' => \App\Models\Investasi\Transaksi::class,
        'surat' => \App\Models\Investasi\Surat::class,
        // Add more models as needed
    ];

    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Global search across all documents
     */
    public function search(Request $request)
    {
        $query = $request->get('q', '');
        $divisiFilter = $request->get('divisi');
        $classificationFilter = $request->get('classification');
        $moduleFilter = $request->get('module');

        $results = [];
        $user = auth()->user();

        if (strlen($query) >= 2) {
            foreach ($this->searchableModels as $tableName => $modelClass) {
                if (!class_exists($modelClass)) continue;

                $modelQuery = $modelClass::query();

                // Apply global search
                $modelQuery->globalSearch($query);

                // Apply classification filter
                if ($classificationFilter) {
                    $modelQuery->byClassification($classificationFilter);
                }

                // Apply division filter
                if ($divisiFilter) {
                    $modelQuery->byDivision($divisiFilter);
                }

                // Get results
                $items = $modelQuery->with('divisi')
                    ->orderBy('created_at', 'desc')
                    ->limit(10)
                    ->get();

                foreach ($items as $item) {
                    $hasAccess = $user->isSuperAdmin()
                        || $user->hasDivisionAccess($item->id_divisi)
                        || $this->hasApprovedAccessRequest($user->id, $tableName, $item->id);

                    $results[] = [
                        'id' => $item->id,
                        'table' => $tableName,
                        'type' => $this->formatTableName($tableName),
                        'title' => $item->judul ?? $item->perihal ?? $item->nama ?? $item->file_name ?? 'Dokumen #' . $item->id,
                        'division' => $item->divisi ? $item->divisi->nama_divisi : null,
                        'classification' => $item->sifat_dokumen,
                        'version' => $item->version,
                        'created_at' => $item->created_at->format('d M Y'),
                        'has_access' => $hasAccess,
                        'is_secret' => $item->sifat_dokumen === 'Rahasia',
                        'url' => $hasAccess ? $this->getViewUrl($tableName, $item->id) : null,
                    ];
                }
            }

            // Sort by relevance and date
            usort($results, function ($a, $b) {
                return strtotime($b['created_at']) - strtotime($a['created_at']);
            });
        }

        $divisions = $user->isSuperAdmin()
            ? MasterDivisi::all()
            : $user->getAccessibleDivisions();

        if ($request->ajax()) {
            return response()->json([
                'results' => $results,
                'total' => count($results),
            ]);
        }

        return view('search.index', [
            'query' => $query,
            'results' => $results,
            'divisions' => $divisions,
            'selectedDivisi' => $divisiFilter,
            'selectedClassification' => $classificationFilter,
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
     * Get view URL for document
     */
    protected function getViewUrl($tableName, $id)
    {
        $routeMap = [
            'akuntansi_aturan_kebijakan' => 'akuntansi.aturan-kebijakan.show',
            'akuntansi_jurnal_umum' => 'akuntansi.jurnal-umum.show',
            'transaksi' => 'investasi.transaksi.show',
            'surat' => 'investasi.surat.show',
            // Add more route mappings
        ];

        $routeName = $routeMap[$tableName] ?? null;

        if ($routeName && \Route::has($routeName)) {
            return route($routeName, $id);
        }

        return null;
    }

    /**
     * Check if user has approved access request for document
     */
    protected function hasApprovedAccessRequest($userId, $documentType, $documentId): bool
    {
        return \App\Models\FileAccessRequest::where('id_user', $userId)
            ->where('document_type', $documentType)
            ->where('document_id', $documentId)
            ->where('status', 'approved')
            ->exists();
    }

    /**
     * Request access to document
     */
    public function requestAccess(Request $request)
    {
        $validated = $request->validate([
            'document_type' => 'required|string',
            'document_id' => 'required|integer',
            'reason' => 'required|string|max:500',
        ]);

        // Get document to find division
        $modelClass = $this->searchableModels[$validated['document_type']] ?? null;
        if (!$modelClass) {
            return back()->with('error', 'Tipe dokumen tidak valid.');
        }

        $document = $modelClass::findOrFail($validated['document_id']);

        \App\Models\FileAccessRequest::create([
            'id_user' => auth()->id(),
            'document_type' => $validated['document_type'],
            'document_id' => $validated['document_id'],
            'id_divisi' => $document->id_divisi,
            'request_reason' => $validated['reason'],
            'status' => 'pending',
        ]);

        return back()->with('success', 'Permintaan akses telah dikirim ke admin divisi.');
    }
}
