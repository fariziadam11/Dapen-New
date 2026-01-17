<div class="row">
    <div class="col-md-6">
        <div class="mb-3">
            <label for="id_divisi" class="form-label">Divisi <span class="text-danger">*</span></label>
            <select name="id_divisi" id="id_divisi" class="form-select @error('id_divisi') is-invalid @enderror" required>
                <option value="">Pilih Divisi</option>
                @foreach (\App\Models\Master\Orgs\MasterDivisi::all() as $divisi)
                    <option value="{{ $divisi->id }}"
                        {{ old('id_divisi', $item->id_divisi ?? '') == $divisi->id ? 'selected' : '' }}>
                        {{ $divisi->nama_divisi }}
                    </option>
                @endforeach
            </select>
            @error('id_divisi')
                <div class="invalid-feedback">{{ $message }}</div>
            @enderror
        </div>
    </div>
    <div class="col-md-6">
        <div class="mb-3">
            <label for="no_drp" class="form-label">No DRP</label>
            <input type="text" name="no_drp" id="no_drp"
                class="form-control @error('no_drp') is-invalid @enderror"
                value="{{ old('no_drp', $item->no_drp ?? '') }}">
            @error('no_drp')
                <div class="invalid-feedback">{{ $message }}</div>
            @enderror
        </div>
    </div>
    <div class="col-md-6">
        <div class="mb-3">
            <label for="direktorat" class="form-label">Direktorat</label>
            <input type="text" name="direktorat" id="direktorat"
                class="form-control @error('direktorat') is-invalid @enderror"
                value="{{ old('direktorat', $item->direktorat ?? '') }}">
            @error('direktorat')
                <div class="invalid-feedback">{{ $message }}</div>
            @enderror
        </div>
    </div>
    <div class="col-md-12">
        <div class="mb-3">
            <label for="nama_kegiatan" class="form-label">Nama Kegiatan</label>
            <textarea name="nama_kegiatan" id="nama_kegiatan" class="form-control @error('nama_kegiatan') is-invalid @enderror"
                rows="3">{{ old('nama_kegiatan', $item->nama_kegiatan ?? '') }}</textarea>
            @error('nama_kegiatan')
                <div class="invalid-feedback">{{ $message }}</div>
            @enderror
        </div>
    </div>
    <div class="col-md-6">
        <div class="mb-3">
            <label for="sifat_dokumen" class="form-label">Sifat Dokumen</label>
            <select name="sifat_dokumen" id="sifat_dokumen"
                class="form-select @error('sifat_dokumen') is-invalid @enderror">
                <option value="Umum"
                    {{ old('sifat_dokumen', $item->sifat_dokumen ?? 'Umum') == 'Umum' ? 'selected' : '' }}>Umum
                </option>
                <option value="Rahasia"
                    {{ old('sifat_dokumen', $item->sifat_dokumen ?? '') == 'Rahasia' ? 'selected' : '' }}>Rahasia
                </option>
            </select>
            @error('sifat_dokumen')
                <div class="invalid-feedback">{{ $message }}</div>
            @enderror
        </div>
    </div>
    <div class="col-md-6">
        <div class="mb-3">
            <label for="file" class="form-label">File Dokumen</label>
            <input type="file" name="file" id="file"
                class="form-control @error('file') is-invalid @enderror">
            @if (isset($item) && $item->file_name)
                <small class="text-muted">Current file: {{ $item->file_name }}</small>
            @endif
            @error('file')
                <div class="invalid-feedback">{{ $message }}</div>
            @enderror
        </div>
    </div>
</div>
