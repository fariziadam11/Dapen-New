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
            <label for="bulan" class="form-label">Bulan</label>
            <select name="bulan" id="bulan" class="form-select @error('bulan') is-invalid @enderror">
                <option value="">Pilih Bulan</option>
                @foreach (['Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Juli', 'Agustus', 'September', 'Oktober', 'November', 'Desember'] as $bln)
                    <option value="{{ $bln }}"
                        {{ old('bulan', $item->bulan ?? '') == $bln ? 'selected' : '' }}>{{ $bln }}</option>
                @endforeach
            </select>
            @error('bulan')
                <div class="invalid-feedback">{{ $message }}</div>
            @enderror
        </div>
    </div>
    <div class="col-md-6">
        <div class="mb-3">
            <label for="tanggal" class="form-label">Tanggal</label>
            <input type="date" name="tanggal" id="tanggal"
                class="form-control @error('tanggal') is-invalid @enderror"
                value="{{ old('tanggal', $item->tanggal ?? '') }}">
            @error('tanggal')
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
