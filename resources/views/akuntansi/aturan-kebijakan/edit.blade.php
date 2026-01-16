@extends('layouts.app')

@section('title', 'Edit - ' . $moduleName)

@section('breadcrumb')
    <li class="breadcrumb-item"><a href="#">Akuntansi</a></li>
    <li class="breadcrumb-item"><a href="{{ route('akuntansi.aturan-kebijakan.index') }}">Aturan Kebijakan</a></li>
    <li class="breadcrumb-item active">Edit</li>
@endsection

@section('content')
    <div class="page-header mb-4">
        <h1 class="page-title">Edit {{ $moduleName }}</h1>
    </div>

    <div class="card">
        <div class="card-body">
            <form action="{{ route('akuntansi.aturan-kebijakan.update', $record->id) }}" method="POST"
                enctype="multipart/form-data">
                @csrf @method('PUT')
                <div class="row g-4">
                    <div class="col-md-6">
                        <label class="form-label">Divisi <span class="text-danger">*</span></label>
                        <select name="id_divisi" class="form-select @error('id_divisi') is-invalid @enderror" required>
                            <option value="">Pilih Divisi</option>
                            @foreach ($divisions as $div)
                                <option value="{{ $div->id }}"
                                    {{ old('id_divisi', $record->id_divisi) == $div->id ? 'selected' : '' }}>
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
                            <option value="Umum"
                                {{ old('sifat_dokumen', $record->sifat_dokumen) == 'Umum' ? 'selected' : '' }}>Umum</option>
                            <option value="Rahasia"
                                {{ old('sifat_dokumen', $record->sifat_dokumen) == 'Rahasia' ? 'selected' : '' }}>Rahasia
                            </option>
                        </select>
                        @error('sifat_dokumen')
                            <div class="invalid-feedback">{{ $message }}</div>
                        @enderror
                    </div>

                    <div class="col-md-6">
                        <label class="form-label">Nomor</label>
                        <input type="text" name="nomor" class="form-control @error('nomor') is-invalid @enderror"
                            value="{{ old('nomor', $record->nomor) }}">
                        @error('nomor')
                            <div class="invalid-feedback">{{ $message }}</div>
                        @enderror
                    </div>

                    <div class="col-md-6">
                        <label class="form-label">Tanggal</label>
                        <input type="date" name="tanggal" class="form-control @error('tanggal') is-invalid @enderror"
                            value="{{ old('tanggal', $record->tanggal ? \Carbon\Carbon::parse($record->tanggal)->format('Y-m-d') : '') }}">
                        @error('tanggal')
                            <div class="invalid-feedback">{{ $message }}</div>
                        @enderror
                    </div>

                    <div class="col-12">
                        <label class="form-label">Judul <span class="text-danger">*</span></label>
                        <input type="text" name="judul" class="form-control @error('judul') is-invalid @enderror"
                            value="{{ old('judul', $record->judul) }}" required>
                        @error('judul')
                            <div class="invalid-feedback">{{ $message }}</div>
                        @enderror
                    </div>

                    <div class="col-12">
                        <label class="form-label">Lokasi Penyimpanan Fisik</label>
                        <input type="text" name="lokasi" class="form-control @error('lokasi') is-invalid @enderror"
                            value="{{ old('lokasi', $record->lokasi) }}">
                        @error('lokasi')
                            <div class="invalid-feedback">{{ $message }}</div>
                        @enderror
                    </div>

                    <div class="col-12">
                        <label class="form-label">File Dokumen</label>
                        <input type="file" name="file" class="form-control @error('file') is-invalid @enderror"
                            accept=".pdf,.doc,.docx,.xls,.xlsx">
                        <div class="form-text">Kosongkan jika tidak ingin mengubah file. Format: PDF, DOC, DOCX, XLS, XLSX.
                            Maksimal 10MB</div>
                        @error('file')
                            <div class="invalid-feedback">{{ $message }}</div>
                        @enderror

                        @if ($record->file)
                            <div class="mt-2">
                                <span class="badge bg-success"><i
                                        class="bi bi-file-earmark me-1"></i>{{ $record->file_name }}</span>
                                <small class="text-muted ms-2">File saat ini (v{{ $record->version }})</small>
                            </div>
                        @endif
                    </div>

                    <div class="col-12">
                        <label class="form-label">Catatan Perubahan</label>
                        <textarea name="change_notes" class="form-control" rows="2"
                            placeholder="Jelaskan perubahan yang dilakukan (opsional)"></textarea>
                    </div>
                </div>

                <hr class="my-4">

                <div class="d-flex justify-content-between">
                    <a href="{{ route('akuntansi.aturan-kebijakan.index') }}" class="btn btn-outline-secondary">
                        <i class="bi bi-arrow-left me-1"></i> Kembali
                    </a>
                    <button type="submit" class="btn btn-primary">
                        <i class="bi bi-check-lg me-1"></i> Update
                    </button>
                </div>
            </form>
        </div>
    </div>
@endsection
