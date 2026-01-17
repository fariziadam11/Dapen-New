{{-- Form fields for SPPB --}}
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
    <label class="form-label">Tanggal SPPB </label>
    <input type="date" name="tanggal_sppb" class="form-control @error('tanggal_sppb') is-invalid @enderror" value="{{ old('tanggal_sppb', $record->tanggal_sppb ?? '') }}" >
    @error('tanggal_sppb')<div class="invalid-feedback">{{ $message }}</div>@enderror
</div>
<div class="col-md-6 mb-3">
    <label class="form-label">Nomor SPPB </label>
    <input type="text" name="nomor_sppb" class="form-control @error('nomor_sppb') is-invalid @enderror" value="{{ old('nomor_sppb', $record->nomor_sppb ?? '') }}" >
    @error('nomor_sppb')<div class="invalid-feedback">{{ $message }}</div>@enderror
</div>
<div class="col-md-6 mb-3">
    <label class="form-label">Nominal </label>
    <input type="number" name="nominal" class="form-control @error('nominal') is-invalid @enderror" value="{{ old('nominal', $record->nominal ?? '') }}" step="0.01" >
    @error('nominal')<div class="invalid-feedback">{{ $message }}</div>@enderror
</div>
<div class="col-md-6 mb-3">
    <label class="form-label">Tujuan </label>
    <input type="text" name="tujuan" class="form-control @error('tujuan') is-invalid @enderror" value="{{ old('tujuan', $record->tujuan ?? '') }}" >
    @error('tujuan')<div class="invalid-feedback">{{ $message }}</div>@enderror
</div>
<div class="col-md-6 mb-3">
    <label class="form-label">Dibuat Oleh </label>
    <input type="text" name="dibuat" class="form-control @error('dibuat') is-invalid @enderror" value="{{ old('dibuat', $record->dibuat ?? '') }}" >
    @error('dibuat')<div class="invalid-feedback">{{ $message }}</div>@enderror
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