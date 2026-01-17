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
            <label for="jenis_jaminan" class="form-label">Jenis Jaminan <span class="text-danger">*</span></label>
            <select name="jenis_jaminan" id="jenis_jaminan"
                class="form-select @error('jenis_jaminan') is-invalid @enderror" required>
                <option value="">Pilih Jenis Jaminan</option>
                @foreach (['Jaminan Penawaran', 'Jaminan Uang Muka', 'Jaminan Pelaksanaan', 'Jaminan Pemeliharaan'] as $jenis)
                    <option value="{{ $jenis }}"
                        {{ old('jenis_jaminan', $item->jenis_jaminan ?? '') == $jenis ? 'selected' : '' }}>
                        {{ $jenis }}</option>
                @endforeach
            </select>
            @error('jenis_jaminan')
                <div class="invalid-feedback">{{ $message }}</div>
            @enderror
        </div>
    </div>
    <div class="col-md-6">
        <div class="mb-3">
            <label for="nomor_drp" class="form-label">Nomor DRP</label>
            <input type="text" name="nomor_drp" id="nomor_drp"
                class="form-control @error('nomor_drp') is-invalid @enderror"
                value="{{ old('nomor_drp', $item->nomor_drp ?? '') }}">
            @error('nomor_drp')
                <div class="invalid-feedback">{{ $message }}</div>
            @enderror
        </div>
    </div>
    <div class="col-md-6">
        <div class="mb-3">
            <label for="vendor" class="form-label">Vendor</label>
            <input type="text" name="vendor" id="vendor"
                class="form-control @error('vendor') is-invalid @enderror"
                value="{{ old('vendor', $item->vendor ?? '') }}">
            @error('vendor')
                <div class="invalid-feedback">{{ $message }}</div>
            @enderror
        </div>
    </div>
    <div class="col-md-12">
        <div class="mb-3">
            <label for="nama_pengadaan" class="form-label">Nama Pengadaan</label>
            <textarea name="nama_pengadaan" id="nama_pengadaan" class="form-control @error('nama_pengadaan') is-invalid @enderror"
                rows="3">{{ old('nama_pengadaan', $item->nama_pengadaan ?? '') }}</textarea>
            @error('nama_pengadaan')
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
