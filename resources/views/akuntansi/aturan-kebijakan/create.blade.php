@extends('layouts.app')

@section('title', 'Tambah - ' . $moduleName)

@section('breadcrumb')
    <li class="breadcrumb-item"><a href="#">Akuntansi</a></li>
    <li class="breadcrumb-item"><a href="{{ route('akuntansi.aturan-kebijakan.index') }}">Aturan Kebijakan</a></li>
    <li class="breadcrumb-item active">Tambah</li>
@endsection

@section('content')
    <div class="page-header mb-4">
        <h1 class="page-title">Tambah {{ $moduleName }}</h1>
    </div>

    <div class="card">
        <div class="card-body">
            <form action="{{ route('akuntansi.aturan-kebijakan.store') }}" method="POST" enctype="multipart/form-data">
                @csrf
                <div class="row g-4">
                    <div class="col-md-6">
                        <label class="form-label">Divisi <span class="text-danger">*</span></label>
                        <select name="id_divisi" class="form-select @error('id_divisi') is-invalid @enderror" required>
                            <option value="">Pilih Divisi</option>
                            @foreach ($divisions as $div)
                                <option value="{{ $div->id }}" {{ old('id_divisi') == $div->id ? 'selected' : '' }}>
                                    {{ $div->nama_divisi }}</option>
                            @endforeach
                        </select>
                        @error('id_divisi')
                            <div class="invalid-feedback">{{ $message }}</div>
                        @enderror
                    </div>

                    <div class="col-md-6">
                        <label class="form-label">Klasifikasi <span class="text-danger">*</span></label>
                        <select name="sifat_dokumen" class="form-select @error('sifat_dokumen') is-invalid @enderror"
                            required>
                            <option value="Umum" {{ old('sifat_dokumen') == 'Umum' ? 'selected' : '' }}>Umum</option>
                            <option value="Rahasia" {{ old('sifat_dokumen') == 'Rahasia' ? 'selected' : '' }}>Rahasia
                            </option>
                        </select>
                        @error('sifat_dokumen')
                            <div class="invalid-feedback">{{ $message }}</div>
                        @enderror
                    </div>

                    <div class="col-md-6">
                        <label class="form-label">Nomor</label>
                        <input type="text" name="nomor" class="form-control @error('nomor') is-invalid @enderror"
                            value="{{ old('nomor') }}" placeholder="Contoh: AK-001/2024">
                        @error('nomor')
                            <div class="invalid-feedback">{{ $message }}</div>
                        @enderror
                    </div>

                    <div class="col-md-6">
                        <label class="form-label">Tanggal</label>
                        <input type="date" name="tanggal" class="form-control @error('tanggal') is-invalid @enderror"
                            value="{{ old('tanggal') }}">
                        @error('tanggal')
                            <div class="invalid-feedback">{{ $message }}</div>
                        @enderror
                    </div>

                    <div class="col-12">
                        <label class="form-label">Judul <span class="text-danger">*</span></label>
                        <input type="text" name="judul" class="form-control @error('judul') is-invalid @enderror"
                            value="{{ old('judul') }}" required>
                        @error('judul')
                            <div class="invalid-feedback">{{ $message }}</div>
                        @enderror
                    </div>

                    <div class="col-12">
                        <label class="form-label">Lokasi Penyimpanan Fisik</label>
                        <input type="text" name="lokasi" class="form-control @error('lokasi') is-invalid @enderror"
                            value="{{ old('lokasi') }}" placeholder="Contoh: Lemari A, Rak 2">
                        @error('lokasi')
                            <div class="invalid-feedback">{{ $message }}</div>
                        @enderror
                    </div>

                    <div class="col-12">
                        <label class="form-label">File Dokumen <span class="text-danger">*</span></label>
                        <input type="file" name="file" class="form-control @error('file') is-invalid @enderror"
                            accept=".pdf,.doc,.docx,.xls,.xlsx" required>
                        <div class="form-text">Format: PDF, DOC, DOCX, XLS, XLSX. Maksimal 10MB</div>
                        @error('file')
                            <div class="invalid-feedback">{{ $message }}</div>
                        @enderror
                    </div>
                </div>

                <hr class="my-4">

                <div class="d-flex justify-content-between">
                    <a href="{{ route('akuntansi.aturan-kebijakan.index') }}" class="btn btn-outline-secondary">
                        <i class="bi bi-arrow-left me-1"></i> Kembali
                    </a>
                    <button type="submit" class="btn btn-primary">
                        <i class="bi bi-check-lg me-1"></i> Simpan
                    </button>
                </div>
            </form>
        </div>
    </div>
@endsection
