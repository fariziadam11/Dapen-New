<div class="row">
    <div class="col-md-6 mb-3">
        <label class="form-label">Kode Divisi <span class="text-danger">*</span></label>
        <input type="text" name="kode_divisi" class="form-control @error('kode_divisi') is-invalid @enderror" value="{{ old('kode_divisi', $record->kode_divisi ?? '') }}" required>
        @error('kode_divisi')<div class="invalid-feedback">{{ $message }}</div>@enderror
    </div>
    <div class="col-md-6 mb-3">
        <label class="form-label">Nama Divisi <span class="text-danger">*</span></label>
        <input type="text" name="nama_divisi" class="form-control @error('nama_divisi') is-invalid @enderror" value="{{ old('nama_divisi', $record->nama_divisi ?? '') }}" required>
        @error('nama_divisi')<div class="invalid-feedback">{{ $message }}</div>@enderror
    </div>
    <div class="col-md-6 mb-3">
        <label class="form-label">Module</label>
        <select name="id_module" class="form-select @error('id_module') is-invalid @enderror">
            <option value="">Pilih Module</option>
            @foreach($modules ?? [] as $module)
                <option value="{{ $module->id }}" {{ old('id_module', $record->id_module ?? '') == $module->id ? 'selected' : '' }}>{{ $module->module_name }}</option>
            @endforeach
        </select>
        @error('id_module')<div class="invalid-feedback">{{ $message }}</div>@enderror
    </div>
    <div class="col-12 mb-3">
        <label class="form-label">Deskripsi</label>
        <textarea name="description" class="form-control @error('description') is-invalid @enderror" rows="3">{{ old('description', $record->description ?? '') }}</textarea>
        @error('description')<div class="invalid-feedback">{{ $message }}</div>@enderror
    </div>
</div>