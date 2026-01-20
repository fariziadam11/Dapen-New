<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\User;
use App\Models\MasterDivisi;
use App\Models\MasterDepartment;
use App\Models\MasterJabatan;
use App\Models\BaseRole;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    public function index(Request $request)
    {
        $query = User::with(['divisi', 'department', 'jabatan', 'roles']);

        if ($request->filled('search')) {
            $query->where(function ($q) use ($request) {
                $q->where('name', 'like', '%' . $request->search . '%')
                    ->orWhere('email', 'like', '%' . $request->search . '%');
            });
        }

        if ($request->filled('id_divisi')) {
            $query->where('id_divisi', $request->id_divisi);
        }

        $users = $query->orderBy('name')->paginate(15);
        $divisions = MasterDivisi::orderBy('nama_divisi')->get();

        return view('admin.users.index', compact('users', 'divisions'));
    }

    public function create()
    {
        $divisions = MasterDivisi::orderBy('nama_divisi')->get();
        $roles = BaseRole::orderBy('roles_name')->get();

        return view('admin.users.create', compact('divisions', 'roles'));
    }

    public function getDepartments($divisiId)
    {
        // Since Divisi belongsTo Department, selecting a Divisi determines the Department.
        // We find the division and return its parent department.
        $divisi = MasterDivisi::with('department')->find($divisiId);

        if ($divisi && $divisi->department) {
            return response()->json([
                [
                    'id' => $divisi->department->id,
                    'nama_department' => $divisi->department->nama_department
                ]
            ]);
        }

        return response()->json([]);
    }

    public function getJabatans($divisiId)
    {
        $jabatans = MasterJabatan::where('id_divisi', $divisiId)
            ->orderBy('nama_jabatan')
            ->get(['id', 'nama_jabatan']);
        return response()->json($jabatans);
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'name' => 'required|string|max:255',
            'username' => 'required|string|max:125|unique:users,username',
            'nik' => 'required|string|max:20|unique:users,nik',
            'email' => 'required|email|unique:users,email',
            'password' => 'required|min:8|confirmed',
            'id_divisi' => 'nullable|exists:master_divisi,id',
            'id_department' => 'nullable|exists:master_department,id',
            'id_jabatan' => 'nullable|exists:master_jabatan,id',
        ]);

        $user = User::create([
            'name' => $validated['name'],
            'username' => $validated['username'],
            'nik' => $validated['nik'],
            'email' => $validated['email'],
            'password' => Hash::make($validated['password']),
            'id_divisi' => $validated['id_divisi'] ?? null,
            'id_department' => $validated['id_department'] ?? null,
            'id_jabatan' => $validated['id_jabatan'] ?? null,
            'is_active' => 1,
        ]);

        // Auto assign role from Jabatan
        if (!empty($validated['id_jabatan'])) {
            $jabatan = MasterJabatan::find($validated['id_jabatan']);
            if ($jabatan && $jabatan->id_role_default) {
                 $user->roles()->sync([$jabatan->id_role_default]);
            }
        }

        // Create User Profile
        $names = explode(' ', $validated['name'], 2);
        $firstName = $names[0];
        $lastName = $names[1] ?? '';

        $divisiName = null;
        if (!empty($validated['id_divisi'])) {
            $divisi = MasterDivisi::find($validated['id_divisi']);
            $divisiName = $divisi ? $divisi->nama_divisi : null;
        }

        \App\Models\UsersProfile::create([
            'id_user' => $user->id,
            'nik' => $validated['nik'],
            'first_name' => $firstName,
            'last_name' => $lastName,
            'divisi' => $divisiName,
            'department' => $validated['id_department'] ? MasterDepartment::find($validated['id_department'])->nama_department : null,
            'email' => $validated['email'],
        ]);

        return redirect()->route('admin.users.index')->with('success', 'User berhasil ditambahkan');
    }

    public function show(User $user)
    {
        $user->load(['divisi', 'roles', 'profile']);

        return view('admin.users.show', compact('user'));
    }

    public function edit(User $user)
    {
        $divisions = MasterDivisi::orderBy('nama_divisi')->get();
        // Load Depts and Jabatans based on current user selection for the view
        $departments = [];
        $jabatans = [];

        if ($user->id_divisi) {
             // Get parent department
             $divisi = MasterDivisi::with('department')->find($user->id_divisi);
             if ($divisi && $divisi->department) {
                 $departments = [$divisi->department];
             }
             // Get jabatans in division
             $jabatans = MasterJabatan::where('id_divisi', $user->id_divisi)->orderBy('nama_jabatan')->get();
        }

        $user->load('roles');

        return view('admin.users.edit', compact('user', 'divisions', 'departments', 'jabatans'));
    }

    public function update(Request $request, User $user)
    {
        $validated = $request->validate([
            'name' => 'required|string|max:255',
            'username' => 'required|string|max:125|unique:users,username,' . $user->id,
            'nik' => 'required|string|max:20|unique:users,nik,' . $user->id,
            'email' => 'required|email|unique:users,email,' . $user->id,
            'password' => 'nullable|min:8|confirmed',
            'id_divisi' => 'nullable|exists:master_divisi,id',
            'id_department' => 'nullable|exists:master_department,id',
            'id_jabatan' => 'nullable|exists:master_jabatan,id',
        ]);

        $user->update([
            'name' => $validated['name'],
            'username' => $validated['username'],
            'nik' => $validated['nik'],
            'email' => $validated['email'],
            'id_divisi' => $validated['id_divisi'] ?? null,
            'id_department' => $validated['id_department'] ?? null,
            'id_jabatan' => $validated['id_jabatan'] ?? null,
        ]);

        if (!empty($validated['password'])) {
            $user->update(['password' => Hash::make($validated['password'])]);
        }

        // Auto assign role from Jabatan if changed
        if (!empty($validated['id_jabatan']) && $validated['id_jabatan'] != $user->getOriginal('id_jabatan')) {
            $jabatan = MasterJabatan::find($validated['id_jabatan']);
             if ($jabatan && $jabatan->id_role_default) {
                 $user->roles()->sync([$jabatan->id_role_default]);
            }
        }

        // Update Profile
        if ($user->profile) {
            $user->profile->update([
                'nik' => $validated['nik'],
            ]);

            if (!empty($validated['id_divisi'])) {
                $divisi = MasterDivisi::find($validated['id_divisi']);
                $user->profile->update(['divisi' => $divisi ? $divisi->nama_divisi : null]);
            }
             if (!empty($validated['id_department'])) {
                $dept = MasterDepartment::find($validated['id_department']);
                $user->profile->update(['department' => $dept ? $dept->nama_department : null]);
            }
        }

        return redirect()->route('admin.users.index')->with('success', 'User berhasil diupdate');
    }

    public function destroy(User $user)
    {
        if ($user->id === auth()->id()) {
            return redirect()->route('admin.users.index')->with('error', 'Tidak bisa menghapus akun sendiri');
        }

        $user->delete();

        return redirect()->route('admin.users.index')->with('success', 'User berhasil dihapus');
    }
}
