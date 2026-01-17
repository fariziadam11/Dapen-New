{{-- Form fields for Procurement --}}
<div class="row">
    <div class="col-md-6 mb-3">
        <label class="form-label">Divisi</label>
        <select name="id_divisi" class="form-select">
            <option value="">Pilih Divisi</option>
            @foreach($divisions ?? [] as $divisi)
                <option value="{{ $divisi->id }}" {{ old('id_divisi', $record->id_divisi ?? '') == $divisi->id ? 'selected' : '' }}>{{ $divisi->nama_divisi }}</option>
            @endforeach
        </select>
    </div>
    <div class="col-md-6 mb-3">
    <label class="form-label">No DRP </label>
    <input type="text" name="no_drp" class="form-control @error('no_drp') is-invalid @enderror" value="{{ old('no_drp', $record->no_drp ?? '') }}" >
    @error('no_drp')<div class="invalid-feedback">{{ $message }}</div>@enderror
</div>
<div class="col-md-6 mb-3">
    <label class="form-label">Nama Kegiatan </label>
    <input type="text" name="nama_kegiatan" class="form-control @error('nama_kegiatan') is-invalid @enderror" value="{{ old('nama_kegiatan', $record->nama_kegiatan ?? '') }}" >
    @error('nama_kegiatan')<div class="invalid-feedback">{{ $message }}</div>@enderror
</div>
<div class="col-md-6 mb-3">
    <label class="form-label">Direktorat </label>
    <input type="text" name="direktorat" class="form-control @error('direktorat') is-invalid @enderror" value="{{ old('direktorat', $record->direktorat ?? '') }}" >
    @error('direktorat')<div class="invalid-feedback">{{ $message }}</div>@enderror
</div>

    <div class="col-md-6 mb-3">
        <label class="form-label">Sifat Dokumen</label>
        <select name="sifat_dokumen" class="form-select">
            <option value="Umum" {{ old('sifat_dokumen', $record->sifat_dokumen ?? 'Umum') == 'Umum' ? 'selected' : '' }}>Umum</option>
            <option value="Rahasia" {{ old('sifat_dokumen', $record->sifat_dokumen ?? '') == 'Rahasia' ? 'selected' : '' }}>Rahasia</option>
        </select>
    </div>
    <div class="col-12 mb-3">
        <label class="form-label">File Dokumen</label>
        <input type="file" name="file" class="form-control @error('file') is-invalid @enderror">
        @if(isset($record) && $record->file_name)
            <div class="mt-2"><small class="text-muted">File saat ini: {{ $record->file_name }}</small></div>
        @endif
        @error('file')<div class="invalid-feedback">{{ $message }}</div>@enderror
    </div>
</div>