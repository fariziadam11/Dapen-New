<?php

namespace App\Http\Controllers\Master;

use App\Http\Controllers\Controller;
use App\Models\MasterJabatan;
use App\Models\MasterDivisi;
use App\Models\MasterDepartment;
use App\Models\BaseRole;
use Illuminate\Http\Request;

class JabatanController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    /* =======================
     * INDEX
     * ======================= */
    public function index(Request $request)
    {
        $query = MasterJabatan::with(['divisi', 'department', 'defaultRole', 'roles']);

        if ($request->filled('search')) {
            $search = $request->search;
            $query->where(function ($q) use ($search) {
                $q->where('kode_jabatan', 'like', "%{$search}%")
                  ->orWhere('nama_jabatan', 'like', "%{$search}%");
            });
        }

        if ($request->filled('id_divisi')) {
            $query->where('id_divisi', $request->id_divisi);
        }

        $data = $query
            ->orderBy('level_jabatan')
            ->orderBy('nama_jabatan')
            ->paginate(15);

        $divisions   = MasterDivisi::orderBy('nama_divisi')->get();
        $routePrefix = 'master.jabatan';
        $moduleName  = 'Master Jabatan';

        return view('master.jabatan.index', compact(
            'data',
            'divisions',
            'routePrefix',
            'moduleName'
        ));
    }

    /* =======================
     * CREATE
     * ======================= */
    public function create()
    {
        return view('master.jabatan.create', [
            'divisions'   => MasterDivisi::orderBy('nama_divisi')->get(),
            'departments' => MasterDepartment::orderBy('nama_department')->get(),
            'roles'       => BaseRole::orderBy('roles_name')->get(),
            'routePrefix' => 'master.jabatan',
            'moduleName'  => 'Master Jabatan',
            'record'      => null,
        ]);
    }

    /* =======================
     * STORE
     * ======================= */
    public function store(Request $request)
    {
        $validated = $request->validate([
            'kode_jabatan'     => 'required|string|max:20|unique:master_jabatan,kode_jabatan',
            'nama_jabatan'     => 'required|string|max:100',
            'id_divisi'        => 'nullable|exists:master_divisi,id',
            'id_department'    => 'nullable|exists:master_department,id',
            'level_jabatan'    => 'nullable|integer|min:1|max:4',
            'id_role_default'  => 'nullable|exists:base_roles,id',
            'roles'            => 'nullable|array',
            'roles.*'          => 'exists:base_roles,id',
            'description'      => 'nullable|string',
        ]);

        /** 1️⃣ Simpan master jabatan */
        $validated['created_by'] = auth()->id();
        $jabatan = MasterJabatan::create($validated);

        /** 2️⃣ Simpan additional roles (EXCLUDE default role) */
        $additionalRoles = collect($request->roles)
            ->reject(fn ($id) => $id == $request->id_role_default)
            ->values()
            ->toArray();

        if (!empty($additionalRoles)) {
            $jabatan->roles()->sync($additionalRoles);
        }

        return redirect()
            ->route('master.jabatan.index')
            ->with('success', 'Jabatan berhasil ditambahkan.');
    }

    /* =======================
     * EDIT
     * ======================= */
    public function edit($id)
    {
        $record = MasterJabatan::with('roles')->findOrFail($id);

        return view('master.jabatan.edit', [
            'record'      => $record,
            'divisions'   => MasterDivisi::orderBy('nama_divisi')->get(),
            'departments' => MasterDepartment::orderBy('nama_department')->get(),
            'roles'       => BaseRole::orderBy('roles_name')->get(),
            'routePrefix' => 'master.jabatan',
            'moduleName'  => 'Master Jabatan',
        ]);
    }

    /* =======================
     * UPDATE
     * ======================= */
    public function update(Request $request, $id)
    {
        $jabatan = MasterJabatan::findOrFail($id);

        $validated = $request->validate([
            'kode_jabatan'     => 'required|string|max:20|unique:master_jabatan,kode_jabatan,' . $id,
            'nama_jabatan'     => 'required|string|max:100',
            'id_divisi'        => 'nullable|exists:master_divisi,id',
            'id_department'    => 'nullable|exists:master_department,id',
            'level_jabatan'    => 'nullable|integer|min:1|max:4',
            'id_role_default'  => 'nullable|exists:base_roles,id',
            'roles'            => 'nullable|array',
            'roles.*'          => 'exists:base_roles,id',
            'description'      => 'nullable|string',
        ]);

        /** 1️⃣ Update jabatan */
        $validated['updated_by'] = auth()->id();
        $jabatan->update($validated);

        /** 2️⃣ Sync additional roles (EXCLUDE default role) */
        $additionalRoles = collect($request->roles)
            ->reject(fn ($id) => $id == $request->id_role_default)
            ->values()
            ->toArray();

        $jabatan->roles()->sync($additionalRoles);

        return redirect()
            ->route('master.jabatan.index')
            ->with('success', 'Jabatan berhasil diperbarui.');
    }

    /* =======================
     * DELETE
     * ======================= */
    public function destroy($id)
    {
        $jabatan = MasterJabatan::findOrFail($id);
        $jabatan->deleted_by = auth()->id();
        $jabatan->save();
        $jabatan->delete();

        return redirect()
            ->route('master.jabatan.index')
            ->with('success', 'Jabatan berhasil dihapus.');
    }

    /* =======================
     * SHOW
     * ======================= */
    public function show($id)
    {
        $record = MasterJabatan::with([
            'divisi',
            'department',
            'defaultRole',
            'roles'
        ])->findOrFail($id);

        return view('master.jabatan.show', [
            'record'      => $record,
            'routePrefix' => 'master.jabatan',
            'moduleName'  => 'Master Jabatan',
        ]);
    }

    /* =======================
     * AJAX DEPARTMENT
     * ======================= */
    public function getDepartmentsByDivision($divisiId)
    {
        return response()->json(
            MasterDepartment::where('id_divisi', $divisiId)
                ->orderBy('nama_department')
                ->get(['id', 'nama_department'])
        );
    }
}
