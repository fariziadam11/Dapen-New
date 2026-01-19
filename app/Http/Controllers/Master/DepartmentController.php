<?php

namespace App\Http\Controllers\Master;

use App\Http\Controllers\Controller;
use App\Models\MasterDepartment;
use App\Models\MasterDivisi;
use Illuminate\Http\Request;

class DepartmentController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index(Request $request)
    {
        $query = MasterDepartment::query();

        if ($request->filled('search')) {
            $search = $request->search;
            $query->where(function ($q) use ($search) {
                $q->where('kode_department', 'like', "%{$search}%")
                    ->orWhere('nama_department', 'like', "%{$search}%");
            });
        }

        $data = $query->orderBy('kode_department')->paginate(15);
        $routePrefix = 'master.department';
        $moduleName = 'Master Department';

        return view('master.department.index', compact('data', 'routePrefix', 'moduleName'));
    }

    public function create()
    {
        $routePrefix = 'master.department';
        $moduleName = 'Master Department';
        return view('master.department.create', compact('routePrefix', 'moduleName'));
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'kode_department' => 'required|string|max:20|unique:master_department,kode_department',
            'nama_department' => 'required|string|max:100',
            'description' => 'nullable|string',
        ]);

        $validated['created_by'] = auth()->id();
        MasterDepartment::create($validated);

        return redirect()->route('master.department.index')
            ->with('success', 'Department berhasil ditambahkan.');
    }

    public function show($id)
    {
        $record = MasterDepartment::with('divisions')->findOrFail($id);
        $routePrefix = 'master.department';
        $moduleName = 'Master Department';
        return view('master.department.show', compact('record', 'routePrefix', 'moduleName'));
    }

    public function edit($id)
    {
        $record = MasterDepartment::findOrFail($id);
        $routePrefix = 'master.department';
        $moduleName = 'Master Department';
        return view('master.department.edit', compact('record', 'routePrefix', 'moduleName'));
    }

    public function update(Request $request, $id)
    {
        $department = MasterDepartment::findOrFail($id);

        $validated = $request->validate([
            'kode_department' => 'required|string|max:20|unique:master_department,kode_department,' . $id,
            'nama_department' => 'required|string|max:100',
            'description' => 'nullable|string',
        ]);

        $validated['updated_by'] = auth()->id();
        $department->update($validated);

        return redirect()->route('master.department.index')
            ->with('success', 'Department berhasil diperbarui.');
    }

    public function destroy($id)
    {
        $department = MasterDepartment::findOrFail($id);
        $department->deleted_by = auth()->id();
        $department->save();
        $department->delete();

        return redirect()->route('master.department.index')
            ->with('success', 'Department berhasil dihapus.');
    }
}
