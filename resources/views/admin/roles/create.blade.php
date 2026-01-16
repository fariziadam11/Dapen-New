@extends('layouts.app')
@section('title', isset($role) ? 'Edit Role' : 'Tambah Role')
@section('breadcrumb')
    <li class="breadcrumb-item"><a href="#">Admin</a></li>
    <li class="breadcrumb-item"><a href="{{ route('admin.roles.index') }}">Role</a></li>
    <li class="breadcrumb-item active">{{ isset($role) ? 'Edit' : 'Tambah' }}</li>
@endsection
@section('content')
    <div class="page-header mb-4">
        <h1 class="page-title">{{ isset($role) ? 'Edit' : 'Tambah' }} Role</h1>
    </div>
    <div class="card">
        <div class="card-body">
            <form action="{{ isset($role) ? route('admin.roles.update', $role) : route('admin.roles.store') }}"
                method="POST">
                @csrf @if (isset($role))
                    @method('PUT')
                @endif
                <div class="row g-4">
                    <div class="col-md-6">
                        <label class="form-label">Nama Role <span class="text-danger">*</span></label>
                        <input type="text" name="roles_name"
                            class="form-control @error('roles_name') is-invalid @enderror"
                            value="{{ old('roles_name', $role->roles_name ?? '') }}" required>
                        @error('roles_name')
                            <div class="invalid-feedback">{{ $message }}</div>
                        @enderror
                    </div>
                    <div class="col-md-6">
                        <label class="form-label">Divisi</label>
                        <select name="id_divisi" class="form-select">
                            <option value="">Semua Divisi (Global)</option>
                            @foreach ($divisions as $d)
                                <option value="{{ $d->id }}"
                                    {{ old('id_divisi', $role->id_divisi ?? '') == $d->id ? 'selected' : '' }}>
                                    {{ $d->nama_divisi }}</option>
                            @endforeach
                        </select>
                        <div class="form-text">Kosongkan jika role berlaku untuk semua divisi</div>
                    </div>
                    <div class="col-md-6">
                        <label class="form-label">Access Scope <span class="text-danger">*</span></label>
                        <select name="access_scope" class="form-select" required>
                            <option value="global"
                                {{ old('access_scope', $role->access_scope ?? '') == 'global' ? 'selected' : '' }}>Global -
                                Akses semua data</option>
                            <option value="division"
                                {{ old('access_scope', $role->access_scope ?? '') == 'division' ? 'selected' : '' }}>
                                Division - Akses data divisi saja</option>
                            <option value="department"
                                {{ old('access_scope', $role->access_scope ?? '') == 'department' ? 'selected' : '' }}>
                                Department - Akses data department saja</option>
                        </select>
                    </div>
                </div>
                <hr class="my-4">
                <div class="d-flex justify-content-between">
                    <a href="{{ route('admin.roles.index') }}" class="btn btn-outline-secondary"><i
                            class="bi bi-arrow-left"></i> Kembali</a>
                    <button type="submit" class="btn btn-primary"><i class="bi bi-check-lg"></i>
                        {{ isset($role) ? 'Update' : 'Simpan' }}</button>
                </div>
            </form>
        </div>
    </div>
@endsection
