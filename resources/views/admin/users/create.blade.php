@extends('layouts.app')
@section('title', 'Tambah User')
@section('breadcrumb')
    <li class="breadcrumb-item"><a href="#">Admin</a></li>
    <li class="breadcrumb-item"><a href="{{ route('admin.users.index') }}">User</a></li>
    <li class="breadcrumb-item active">Tambah</li>
@endsection
@section('content')
    <div class="page-header mb-4">
        <h1 class="page-title">Tambah User</h1>
    </div>
    <div class="card">
        <div class="card-body">
            <form action="{{ route('admin.users.store') }}" method="POST"
                data-confirm="Apakah Anda yakin ingin menambah user ini?" data-confirm-title="Konfirmasi Tambah User">
                @csrf
                <div class="row g-4">
                    <div class="col-md-6">
                        <label class="form-label">Nama <span class="text-danger">*</span></label>
                        <input type="text" name="name" class="form-control @error('name') is-invalid @enderror"
                            value="{{ old('name') }}" required>
                        @error('name')
                            <div class="invalid-feedback">{{ $message }}</div>
                        @enderror
                    </div>
                    <div class="col-md-6">
                        <label class="form-label">Email <span class="text-danger">*</span></label>
                        <input type="email" name="email" class="form-control @error('email') is-invalid @enderror"
                            value="{{ old('email') }}" required>
                        @error('email')
                            <div class="invalid-feedback">{{ $message }}</div>
                        @enderror
                    </div>
                    <div class="col-md-6">
                        <label class="form-label">Password <span class="text-danger">*</span></label>
                        <input type="password" name="password" class="form-control @error('password') is-invalid @enderror"
                            required>
                        @error('password')
                            <div class="invalid-feedback">{{ $message }}</div>
                        @enderror
                    </div>
                    <div class="col-md-6">
                        <label class="form-label">Konfirmasi Password <span class="text-danger">*</span></label>
                        <input type="password" name="password_confirmation" class="form-control" required>
                    </div>
                    <div class="col-md-6">
                        <label class="form-label">Divisi</label>
                        <select name="id_divisi" class="form-select">
                            <option value="">Pilih Divisi</option>
                            @foreach ($divisions as $d)
                                <option value="{{ $d->id }}" {{ old('id_divisi') == $d->id ? 'selected' : '' }}>
                                    {{ $d->nama_divisi }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="col-md-6">
                        <label class="form-label">Role</label>
                        <select name="roles[]" class="form-select" id="roleSelect">
                            <option value="">Pilih Role</option>
                            @foreach ($roles as $role)
                                <option value="{{ $role->id }}" {{ old('roles.0') == $role->id ? 'selected' : '' }}>
                                    {{ $role->roles_name }}
                                </option>
                            @endforeach
                        </select>
                    </div>
                </div>
                <hr class="my-4">
                <div class="d-flex justify-content-between">
                    <a href="{{ route('admin.users.index') }}" class="btn btn-outline-secondary"><i
                            class="bi bi-arrow-left"></i> Kembali</a>
                    <button type="submit" class="btn btn-primary"><i class="bi bi-check-lg"></i> Simpan</button>
                </div>
            </form>
        </div>
    </div>
@endsection

@push('styles')
    <link href="{{ asset('assets/css/select2.min.css') }}" rel="stylesheet" />
    <link href="{{ asset('assets/css/select2-bootstrap-5-theme.min.css') }}" rel="stylesheet" />
@endpush

@push('scripts')
    <script src="{{ asset('assets/js/select2.min.js') }}"></script>
    <script>
        $(document).ready(function() {
            $('#roleSelect').select2({
                theme: 'bootstrap-5',
                placeholder: 'Pilih role...',
                allowClear: true,
                width: '100%'
            });
        });
    </script>
@endpush
