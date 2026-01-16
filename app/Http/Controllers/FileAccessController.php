<?php

namespace App\Http\Controllers;

use App\Models\FileAccessRequest;
use App\Models\FolderPermission;
use Illuminate\Http\Request;

class FileAccessController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * List access requests for admin
     */
    public function index(Request $request)
    {
        $user = auth()->user();
        $query = FileAccessRequest::with(['requester', 'divisi', 'responder']);

        // Filter by user's managed divisions
        if (!$user->isSuperAdmin()) {
            $managedDivisions = $user->roles()
                ->where('access_scope', 'division')
                ->pluck('id_divisi');

            $query->whereIn('id_divisi', $managedDivisions);
        }

        // Filter by status
        if ($request->filled('status')) {
            $query->where('status', $request->status);
        }

        $requests = $query->orderBy('created_at', 'desc')->paginate(15);

        return view('access.index', compact('requests'));
    }

    /**
     * My access requests
     */
    public function myRequests()
    {
        $requests = FileAccessRequest::with(['divisi', 'responder'])
            ->where('id_user', auth()->id())
            ->orderBy('created_at', 'desc')
            ->paginate(15);

        return view('access.my-requests', compact('requests'));
    }

    /**
     * Approve access request
     */
    public function approve(Request $request, $id)
    {
        $accessRequest = FileAccessRequest::findOrFail($id);

        // Check if user can approve
        $this->authorizeManage($accessRequest);

        $accessRequest->approve(auth()->id(), $request->get('reason'));

        return back()->with('success', 'Permintaan akses disetujui.');
    }

    /**
     * Reject access request
     */
    public function reject(Request $request, $id)
    {
        $validated = $request->validate([
            'reason' => 'required|string|max:500',
        ]);

        $accessRequest = FileAccessRequest::findOrFail($id);

        // Check if user can reject
        $this->authorizeManage($accessRequest);

        $accessRequest->reject(auth()->id(), $validated['reason']);

        return back()->with('success', 'Permintaan akses ditolak.');
    }

    /**
     * Assign file access to user
     */
    public function assignAccess(Request $request)
    {
        $validated = $request->validate([
            'id_folder' => 'required|exists:document_folders,id',
            'id_user' => 'required|exists:users,id',
            'permission_type' => 'required|in:read,write,delete,full',
        ]);

        $validated['created_by'] = auth()->id();

        FolderPermission::updateOrCreate(
            ['id_folder' => $validated['id_folder'], 'id_user' => $validated['id_user']],
            ['permission_type' => $validated['permission_type'], 'created_by' => $validated['created_by']]
        );

        return back()->with('success', 'Akses berhasil diberikan.');
    }

    /**
     * Remove file access from user
     */
    public function removeAccess($id)
    {
        $permission = FolderPermission::findOrFail($id);
        $permission->delete();

        return back()->with('success', 'Akses berhasil dicabut.');
    }

    /**
     * Check if current user can manage this request
     */
    protected function authorizeManage($accessRequest)
    {
        $user = auth()->user();

        if ($user->isSuperAdmin()) {
            return true;
        }

        $canManage = $user->roles()
            ->where('id_divisi', $accessRequest->id_divisi)
            ->where('access_scope', 'division')
            ->exists();

        if (!$canManage) {
            abort(403, 'Anda tidak berhak mengelola permintaan ini.');
        }

        return true;
    }
}
