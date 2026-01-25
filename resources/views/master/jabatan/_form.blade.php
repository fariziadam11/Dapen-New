<div class="row">
    <div class="col-md-6 mb-3">
        <label class="form-label">Kode Jabatan <span class="text-danger">*</span></label>
        <input type="text" name="kode_jabatan" class="form-control @error('kode_jabatan') is-invalid @enderror"
            value="{{ old('kode_jabatan', $record->kode_jabatan ?? '') }}" required>
        @error('kode_jabatan')
            <div class="invalid-feedback">{{ $message }}</div>
        @enderror
    </div>
    <div class="col-md-6 mb-3">
        <label class="form-label">Nama Jabatan <span class="text-danger">*</span></label>
        <input type="text" name="nama_jabatan" class="form-control @error('nama_jabatan') is-invalid @enderror"
            value="{{ old('nama_jabatan', $record->nama_jabatan ?? '') }}" required>
        @error('nama_jabatan')
            <div class="invalid-feedback">{{ $message }}</div>
        @enderror
    </div>
    <div class="col-md-6 mb-3">
        <label class="form-label">Divisi</label>
        <select name="id_divisi" class="form-select @error('id_divisi') is-invalid @enderror">
            <option value="">Pilih Divisi</option>
            @foreach ($divisions ?? [] as $divisi)
                <option value="{{ $divisi->id }}"
                    {{ old('id_divisi', $record->id_divisi ?? '') == $divisi->id ? 'selected' : '' }}>
                    {{ $divisi->nama_divisi }}</option>
            @endforeach
        </select>
        @error('id_divisi')
            <div class="invalid-feedback">{{ $message }}</div>
        @enderror
    </div>
    <div class="col-md-6 mb-3">
        <label class="form-label">Department</label>
        <select name="id_department" class="form-select @error('id_department') is-invalid @enderror">
            <option value="">Pilih Department</option>
            @foreach ($departments ?? [] as $dept)
                <option value="{{ $dept->id }}"
                    {{ old('id_department', $record->id_department ?? '') == $dept->id ? 'selected' : '' }}>
                    {{ $dept->nama_department }}</option>
            @endforeach
        </select>
        @error('id_department')
            <div class="invalid-feedback">{{ $message }}</div>
        @enderror
    </div>
    <div class="col-md-6 mb-3">
        <label class="form-label">Level Jabatan</label>
        <select name="level_jabatan" class="form-select @error('level_jabatan') is-invalid @enderror">
            <option value="">Pilih Level</option>
            <option value="1" {{ old('level_jabatan', $record->level_jabatan ?? '') == 1 ? 'selected' : '' }}>
                Staff</option>
            <option value="2" {{ old('level_jabatan', $record->level_jabatan ?? '') == 2 ? 'selected' : '' }}>
                Supervisor</option>
            <option value="3" {{ old('level_jabatan', $record->level_jabatan ?? '') == 3 ? 'selected' : '' }}>
                Manager</option>
            <option value="4" {{ old('level_jabatan', $record->level_jabatan ?? '') == 4 ? 'selected' : '' }}>
                Director</option>
        </select>
        @error('level_jabatan')
            <div class="invalid-feedback">{{ $message }}</div>
        @enderror
    </div>
    <div class="col-md-6 mb-3">
        <label class="form-label">Default Role</label>
        <select name="id_role_default" class="form-select @error('id_role_default') is-invalid @enderror">
            <option value="">Pilih Role</option>
            @foreach ($roles ?? [] as $role)
                <option value="{{ $role->id }}"
                    {{ old('id_role_default', $record->id_role_default ?? '') == $role->id ? 'selected' : '' }}>
                    {{ $role->roles_name }}</option>
            @endforeach
        </select>
        @error('id_role_default')
            <div class="invalid-feedback">{{ $message }}</div>
        @enderror
    </div>
    @php
        $defaultRoleId = old('id_role_default', $record->id_role_default ?? null);

        $selectedAdditionalRoles = collect(old('roles', $record?->roles?->pluck('id')->toArray() ?? []))
            ->reject(fn($id) => $id == $defaultRoleId)
            ->values()
            ->toArray();
    @endphp

    <div class="col-md-6 mb-3">
        <label class="form-label">Additional Roles</label>

        <select name="roles[]" class="form-select select2" multiple data-placeholder="Pilih Additional Roles">

            @foreach ($roles as $role)
                {{-- Jangan tampilkan default role --}}
                @continue($role->id == $defaultRoleId)

                <option value="{{ $role->id }}"
                    {{ in_array($role->id, $selectedAdditionalRoles) ? 'selected' : '' }}>
                    {{ $role->roles_name }}
                </option>
            @endforeach

        </select>

        @error('roles')
            <div class="invalid-feedback d-block">{{ $message }}</div>
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
