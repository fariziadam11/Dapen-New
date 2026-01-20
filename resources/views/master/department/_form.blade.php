<div class="row">
    <div class="col-md-6 mb-3">
        <label class="form-label">Kode Department <span class="text-danger">*</span></label>
        <input type="text" name="kode_department" class="form-control @error('kode_department') is-invalid @enderror"
            value="{{ old('kode_department', $record->kode_department ?? '') }}" required>
        @error('kode_department')
            <div class="invalid-feedback">{{ $message }}</div>
        @enderror
    </div>
    <div class="col-md-6 mb-3">
        <label class="form-label">Nama Department <span class="text-danger">*</span></label>
        <input type="text" name="nama_department" class="form-control @error('nama_department') is-invalid @enderror"
            value="{{ old('nama_department', $record->nama_department ?? '') }}" required>
        @error('nama_department')
            <div class="invalid-feedback">{{ $message }}</div>
        @enderror
    </div>

    <div class="col-12 mb-3">
        <label class="form-label">Deskripsi</label>
        <textarea name="description" class="form-control @error('description') is-invalid @enderror" rows="3">{{ old('description', $record->description ?? '') }}</textarea>
        @error('description')
            <div class="invalid-feedback">{{ $message }}</div>
        @enderror
    </div>
</div>
