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
                        <label class="form-label">NIK <span class="text-danger">*</span></label>
                        <input type="text" name="nik" class="form-control @error('nik') is-invalid @enderror"
                            value="{{ old('nik') }}" required>
                        @error('nik')
                            <div class="invalid-feedback">{{ $message }}</div>
                        @enderror
                    </div>
                    <div class="col-md-6">
                        <label class="form-label">Username <span class="text-danger">*</span></label>
                        <input type="text" name="username" class="form-control @error('username') is-invalid @enderror"
                            value="{{ old('username') }}" required>
                        @error('username')
                            <div class="invalid-feedback">{{ $message }}</div>
                        @enderror
                    </div>
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
                        <label class="form-label">Department</label>
                        <select name="id_department" id="id_department"
                            class="form-select @error('id_department') is-invalid @enderror" disabled>
                            <option value="">Pilih Divisi Terlebih Dahulu</option>
                        </select>
                        @error('id_department')
                            <div class="invalid-feedback">{{ $message }}</div>
                        @enderror
                    </div>
                    <div class="col-md-6">
                        <label class="form-label">Jabatan</label>
                        <select name="id_jabatan" id="id_jabatan"
                            class="form-select @error('id_jabatan') is-invalid @enderror" disabled>
                            <option value="">Pilih Department Terlebih Dahulu</option>
                        </select>
                        <small class="text-muted">Role akan otomatis ditentukan berdasarkan jabatan yang dipilih.</small>
                        @error('id_jabatan')
                            <div class="invalid-feedback">{{ $message }}</div>
                        @enderror
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

@push('scripts')
    <script>
        $(document).ready(function() {
            const divSelect = $('select[name="id_divisi"]');
            const deptSelect = $('#id_department');
            const jabSelect = $('#id_jabatan');

            divSelect.change(function() {
                const divId = $(this).val();
                deptSelect.html('<option value="">Loading...</option>').prop('disabled', true);
                jabSelect.html('<option value="">Loading...</option>').prop('disabled', true);

                if (divId) {
                    // Fetch Department (Parent)
                    $.get(`/admin/users/ajax/departments/${divId}`, function(data) {
                        let options = '<option value="">Pilih Department</option>';
                        data.forEach(function(item) {
                            options +=
                                `<option value="${item.id}" selected>${item.nama_department}</option>`;
                        });
                        deptSelect.html(options).prop('disabled', false);
                    });

                    // Fetch Jabatans (Children of Divisi)
                    $.get(`/admin/users/ajax/jabatans/${divId}`, function(data) {
                        let options = '<option value="">Pilih Jabatan</option>';
                        data.forEach(function(item) {
                            options +=
                                `<option value="${item.id}">${item.nama_jabatan}</option>`;
                        });
                        jabSelect.html(options).prop('disabled', false);
                    });

                } else {
                    deptSelect.html('<option value="">Pilih Divisi Terlebih Dahulu</option>');
                    jabSelect.html('<option value="">Pilih Divisi Terlebih Dahulu</option>');
                }
            });

            // Department change listener removed as it is auto-determined by Divisi
        });
    </script>
@endpush
