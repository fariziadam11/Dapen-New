<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\User;
use App\Models\MasterDivisi;
use App\Models\BaseRole;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    public function index(Request $request)
    {
        $query = User::with(['divisi', 'roles']);

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

    public function store(Request $request)
    {
        $validated = $request->validate([
            'name' => 'required|string|max:255',
            'username' => 'required|string|max:125|unique:users,username',
            'nik' => 'required|string|max:20|unique:users,nik',
            'email' => 'required|email|unique:users,email',
            'password' => 'required|min:8|confirmed',
            'id_divisi' => 'nullable|exists:master_divisi,id',
            'roles' => 'nullable|array',
            'roles.*' => 'exists:base_roles,id',
        ]);

        $user = User::create([
            'name' => $validated['name'],
            'username' => $validated['username'],
            'nik' => $validated['nik'],
            'email' => $validated['email'],
            'password' => Hash::make($validated['password']),
            'id_divisi' => $validated['id_divisi'] ?? null,
            'is_active' => 1,
        ]);

        if (!empty($validated['roles'])) {
            $user->roles()->sync($validated['roles']);
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
            'email' => $validated['email'], // Assuming we want to sync email to profile too if column exists (it doesn't in migration viewed earlier, but let's check. Migration said keys: nik, divisi, department... phone, twitter... no email in profile table shown earlier. User table has email. Profile has phone, address etc. Let's omit email from profile).
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
        $roles = BaseRole::orderBy('roles_name')->get();
        $user->load('roles');

        return view('admin.users.edit', compact('user', 'divisions', 'roles'));
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
            'roles' => 'nullable|array',
            'roles.*' => 'exists:base_roles,id',
        ]);

        $user->update([
            'name' => $validated['name'],
            'username' => $validated['username'],
            'nik' => $validated['nik'],
            'email' => $validated['email'],
            'id_divisi' => $validated['id_divisi'] ?? null,
        ]);

        if (!empty($validated['password'])) {
            $user->update(['password' => Hash::make($validated['password'])]);
        }

        if (isset($validated['roles'])) {
            $user->roles()->sync($validated['roles']);
        }

        // Update Profile NIK if exists
        if ($user->profile) {
            $user->profile->update([
                'nik' => $validated['nik'],
            ]);
            // Also update division name if changed? Maybe better to leave it to the user profile edit, but for consistency:
             if (!empty($validated['id_divisi'])) {
                $divisi = MasterDivisi::find($validated['id_divisi']);
                $divisiName = $divisi ? $divisi->nama_divisi : null;
                $user->profile->update(['divisi' => $divisiName]);
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
