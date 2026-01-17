<?php

namespace App\Http\Controllers;

use App\Models\AuditLog;
use App\Models\DocumentVersion;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;

abstract class BaseDocumentController extends Controller
{
    protected $model;
    protected $viewPath;
    protected $routePrefix;
    protected $moduleName;
    protected $storagePath = 'documents';

    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $query = $this->model::query();

        // Apply division filter if user is not super admin
        if (!auth()->user()->isSuperAdmin()) {
            $query->accessibleByUser(auth()->id());
        }

        // Apply search
        if ($request->filled('search')) {
            $query->globalSearch($request->search);
        }

        // Apply filters
        if ($request->filled('id_divisi')) {
            $query->byDivision($request->id_divisi);
        }
        if ($request->filled('sifat_dokumen')) {
            $query->byClassification($request->sifat_dokumen);
        }

        // Sort
        $sortField = $request->get('sort', 'created_at');
        $sortDirection = $request->get('direction', 'desc');
        $query->orderBy($sortField, $sortDirection);

        $items = $query->with('divisi')->paginate(15);

        return view($this->viewPath . '.index', [
            'items' => $items,
            'moduleName' => $this->moduleName,
            'routePrefix' => $this->routePrefix,
            'divisions' => $this->getUserDivisions(),
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view($this->viewPath . '.create', [
            'moduleName' => $this->moduleName,
            'routePrefix' => $this->routePrefix,
            'divisions' => $this->getUserDivisions(),
        ]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validated = $this->validateRequest($request);

        // Handle file upload
        if ($request->hasFile('file')) {
            $file = $request->file('file');
            $validated['file'] = $this->handleFileUpload($file);
            $validated['file_name'] = $file->getClientOriginalName();
        }

        $record = $this->model::create($validated);

        // Create initial version if file exists
        if (isset($validated['file'])) {
            $this->createDocumentVersion($record, $request->file('file'));
        }

        // Audit log
        AuditLog::logCreate($record->getTable(), $record->id, $validated);

        return redirect()->route($this->routePrefix . '.index')
            ->with('success', 'Data berhasil ditambahkan.');
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        $record = $this->model::with(['divisi', 'versions', 'creator'])->findOrFail($id);

        // Check access
        $this->authorizeAccess($record);

        // Log view
        AuditLog::logView($record->getTable(), $record->id);

        return view($this->viewPath . '.show', [
            'record' => $record,
            'moduleName' => $this->moduleName,
            'routePrefix' => $this->routePrefix,
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        $record = $this->model::findOrFail($id);
        $this->authorizeAccess($record, 'write');

        return view($this->viewPath . '.edit', [
            'record' => $record,
            'moduleName' => $this->moduleName,
            'routePrefix' => $this->routePrefix,
            'divisions' => $this->getUserDivisions(),
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $record = $this->model::findOrFail($id);
        $this->authorizeAccess($record, 'write');

        $oldValues = $record->toArray();
        $validated = $this->validateRequest($request, $id);

        // Handle file upload
        if ($request->hasFile('file')) {
            $file = $request->file('file');
            $validated['file'] = $this->handleFileUpload($file);
            $validated['file_name'] = $file->getClientOriginalName();
            $validated['version'] = $record->version + 1;

            // Create new version
            $this->createDocumentVersion($record, $file, $request->get('change_notes'));
        }

        $record->update($validated);

        // Audit log
        AuditLog::logUpdate($record->getTable(), $record->id, $oldValues, $validated);

        return redirect()->route($this->routePrefix . '.index')
            ->with('success', 'Data berhasil diperbarui.');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $record = $this->model::findOrFail($id);
        $this->authorizeAccess($record, 'delete');

        $oldValues = $record->toArray();
        $record->delete();

        // Audit log
        AuditLog::logDelete($record->getTable(), $record->id, $oldValues);

        return redirect()->route($this->routePrefix . '.index')
            ->with('success', 'Data berhasil dihapus.');
    }

    /**
     * Download file
     */
    public function download($id)
    {
        $record = $this->model::findOrFail($id);
        $this->authorizeAccess($record);

        if (!$record->file) {
            abort(404, 'File tidak ditemukan');
        }

        $path = $this->storagePath . '/' . $record->file;

        if (!Storage::exists($path)) {
            abort(404, 'File tidak ditemukan');
        }

        AuditLog::logDownload($record->getTable(), $record->id);

        return Storage::download($path, $record->file_name);
    }

    /**
     * Preview file inline (without forcing download)
     */
    public function preview($id)
    {
        $record = $this->model::findOrFail($id);
        $this->authorizeAccess($record);

        if (!$record->file) {
            abort(404, 'File tidak ditemukan');
        }

        $path = $this->storagePath . '/' . $record->file;

        if (!Storage::exists($path)) {
            abort(404, 'File tidak ditemukan');
        }

        AuditLog::logDownload($record->getTable(), $record->id);

        // Get file content and MIME type
        $file = Storage::get($path);
        $mimeType = Storage::mimeType($path);

        // Return response with inline disposition
        return response($file, 200)
            ->header('Content-Type', $mimeType)
            ->header('Content-Disposition', 'inline; filename="' . $record->file_name . '"');
    }


    /**
     * Download specific version
     */
    public function downloadVersion($id, $versionId)
    {
        $record = $this->model::findOrFail($id);
        $this->authorizeAccess($record);

        $version = DocumentVersion::findOrFail($versionId);

        if (!$version->file) {
            abort(404, 'File tidak ditemukan');
        }

        $path = 'versions/' . $version->file;

        if (!Storage::exists($path)) {
            abort(404, 'File tidak ditemukan');
        }

        return Storage::download($path, $version->file_name);
    }

    /**
     * Handle file upload
     */
    protected function handleFileUpload($file)
    {
        $filename = Str::uuid() . '.' . $file->getClientOriginalExtension();
        $file->storeAs($this->storagePath, $filename);
        return $filename;
    }

    /**
     * Create document version
     */
    protected function createDocumentVersion($record, $file, $notes = null)
    {
        $versionFilename = Str::uuid() . '.' . $file->getClientOriginalExtension();
        $file->storeAs('versions', $versionFilename);

        DocumentVersion::createVersion(
            $record->getTable(),
            $record->id,
            $versionFilename,
            $file->getClientOriginalName(),
            $file->getSize(),
            auth()->id(),
            $notes
        );
    }

    /**
     * Get user accessible divisions
     */
    protected function getUserDivisions()
    {
        return auth()->user()->getAccessibleDivisions();
    }

    /**
     * Authorize access to record
     */
    protected function authorizeAccess($record, $action = 'read')
    {
        $user = auth()->user();

        if ($user->isSuperAdmin()) {
            return true;
        }

        if (!$user->hasDivisionAccess($record->id_divisi)) {
            abort(403, 'Anda tidak memiliki akses ke dokumen ini.');
        }

        // Check if secret document requires special access
        if ($record->isSecret() && !$user->isDivisionAdmin($record->id_divisi)) {
            abort(403, 'Dokumen ini bersifat rahasia.');
        }

        return true;
    }

    /**
     * Validate request - override in child class
     */
    abstract protected function validateRequest(Request $request, $id = null);
}
