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
            <label for="nomor" class="form-label">Nomor</label>
            <input type="text" name="nomor" id="nomor"
                class="form-control @error('nomor') is-invalid @enderror"
                value="{{ old('nomor', $item->nomor ?? '') }}">
            @error('nomor')
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
            <label for="kategori" class="form-label">Kategori <span class="text-danger">*</span></label>
            <select name="kategori" id="kategori" class="form-select @error('kategori') is-invalid @enderror" required>
                <option value="">Pilih Kategori</option>
                @foreach (['Surat Masuk', 'Surat Keluar'] as $cat)
                    <option value="{{ $cat }}"
                        {{ old('kategori', $item->kategori ?? '') == $cat ? 'selected' : '' }}>{{ $cat }}
                    </option>
                @endforeach
            </select>
            @error('kategori')
                <div class="invalid-feedback">{{ $message }}</div>
            @enderror
        </div>
    </div>
    <div class="col-md-6">
        <div class="mb-3">
            <label for="dari" class="form-label">Dari</label>
            <input type="text" name="dari" id="dari" class="form-control @error('dari') is-invalid @enderror"
                value="{{ old('dari', $item->dari ?? '') }}">
            @error('dari')
                <div class="invalid-feedback">{{ $message }}</div>
            @enderror
        </div>
    </div>
    <div class="col-md-6">
        <div class="mb-3">
            <label for="tujuan" class="form-label">Tujuan</label>
            <input type="text" name="tujuan" id="tujuan"
                class="form-control @error('tujuan') is-invalid @enderror"
                value="{{ old('tujuan', $item->tujuan ?? '') }}">
            @error('tujuan')
                <div class="invalid-feedback">{{ $message }}</div>
            @enderror
        </div>
    </div>
    <div class="col-md-12">
        <div class="mb-3">
            <label for="perihal" class="form-label">Perihal</label>
            <textarea name="perihal" id="perihal" class="form-control @error('perihal') is-invalid @enderror" rows="3">{{ old('perihal', $item->perihal ?? '') }}</textarea>
            @error('perihal')
                <div class="invalid-feedback">{{ $message }}</div>
            @enderror
        </div>
    </div>
    <div class="col-md-12">
        <div class="mb-3">
            <label for="disposisi" class="form-label">Disposisi</label>
            <textarea name="disposisi" id="disposisi" class="form-control @error('disposisi') is-invalid @enderror" rows="2">{{ old('disposisi', $item->disposisi ?? '') }}</textarea>
            @error('disposisi')
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
