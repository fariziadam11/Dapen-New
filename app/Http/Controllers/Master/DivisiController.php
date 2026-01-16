<?php

namespace App\Http\Controllers\Master;

use App\Http\Controllers\Controller;
use App\Models\MasterDivisi;
use App\Models\BaseModule;
use Illuminate\Http\Request;

class DivisiController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index(Request $request)
    {
        $query = MasterDivisi::with('module');

        if ($request->filled('search')) {
            $search = $request->search;
            $query->where(function ($q) use ($search) {
                $q->where('kode_divisi', 'like', "%{$search}%")
                    ->orWhere('nama_divisi', 'like', "%{$search}%");
            });
        }

        $data = $query->orderBy('kode_divisi')->paginate(15);
        $routePrefix = 'master.divisi';
        $moduleName = 'Master Divisi';

        return view('master.divisi.index', compact('data', 'routePrefix', 'moduleName'));
    }

    public function create()
    {
        $modules = BaseModule::all();
        $routePrefix = 'master.divisi';
        $moduleName = 'Master Divisi';
        return view('master.divisi.create', compact('modules', 'routePrefix', 'moduleName'));
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'kode_divisi' => 'required|string|max:20|unique:master_divisi,kode_divisi',
            'nama_divisi' => 'required|string|max:100',
            'id_module' => 'nullable|exists:base_modules,id',
            'description' => 'nullable|string',
        ]);

        $validated['created_by'] = auth()->id();
        MasterDivisi::create($validated);

        return redirect()->route('master.divisi.index')
            ->with('success', 'Divisi berhasil ditambahkan.');
    }

    public function show($id)
    {
        $record = MasterDivisi::with(['module', 'departments', 'jabatans', 'roles'])->findOrFail($id);
        $routePrefix = 'master.divisi';
        $moduleName = 'Master Divisi';
        return view('master.divisi.show', compact('record', 'routePrefix', 'moduleName'));
    }

    public function edit($id)
    {
        $record = MasterDivisi::findOrFail($id);
        $modules = BaseModule::all();
        $routePrefix = 'master.divisi';
        $moduleName = 'Master Divisi';
        return view('master.divisi.edit', compact('record', 'modules', 'routePrefix', 'moduleName'));
    }

    public function update(Request $request, $id)
    {
        $divisi = MasterDivisi::findOrFail($id);

        $validated = $request->validate([
            'kode_divisi' => 'required|string|max:20|unique:master_divisi,kode_divisi,' . $id,
            'nama_divisi' => 'required|string|max:100',
            'id_module' => 'nullable|exists:base_modules,id',
            'description' => 'nullable|string',
        ]);

        $validated['updated_by'] = auth()->id();
        $divisi->update($validated);

        return redirect()->route('master.divisi.index')
            ->with('success', 'Divisi berhasil diperbarui.');
    }

    public function destroy($id)
    {
        $divisi = MasterDivisi::findOrFail($id);
        $divisi->deleted_by = auth()->id();
        $divisi->save();
        $divisi->delete();

        return redirect()->route('master.divisi.index')
            ->with('success', 'Divisi berhasil dihapus.');
    }
}
