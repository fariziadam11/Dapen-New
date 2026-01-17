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
            <label for="tahun" class="form-label">Tahun</label>
            <input type="number" name="tahun" id="tahun"
                class="form-control @error('tahun') is-invalid @enderror"
                value="{{ old('tahun', $item->tahun ?? date('Y')) }}" placeholder="2024">
            @error('tahun')
                <div class="invalid-feedback">{{ $message }}</div>
            @enderror
        </div>
    </div>
    <div class="col-md-6">
        <div class="mb-3">
            <label for="berlaku_mulai" class="form-label">Berlaku Mulai</label>
            <input type="date" name="berlaku_mulai" id="berlaku_mulai"
                class="form-control @error('berlaku_mulai') is-invalid @enderror"
                value="{{ old('berlaku_mulai', $item->berlaku_mulai ?? '') }}">
            @error('berlaku_mulai')
                <div class="invalid-feedback">{{ $message }}</div>
            @enderror
        </div>
    </div>
    <div class="col-md-6">
        <div class="mb-3">
            <label for="berlaku_akhir" class="form-label">Berlaku Akhir</label>
            <input type="date" name="berlaku_akhir" id="berlaku_akhir"
                class="form-control @error('berlaku_akhir') is-invalid @enderror"
                value="{{ old('berlaku_akhir', $item->berlaku_akhir ?? '') }}">
            @error('berlaku_akhir')
                <div class="invalid-feedback">{{ $message }}</div>
            @enderror
        </div>
    </div>
    <div class="col-md-6">
        <div class="mb-3">
            <label for="nilai" class="form-label">Nilai</label>
            <input type="text" name="nilai" id="nilai"
                class="form-control @error('nilai') is-invalid @enderror"
                value="{{ old('nilai', $item->nilai ?? '') }}" placeholder="Contoh: 100.000.000">
            @error('nilai')
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
