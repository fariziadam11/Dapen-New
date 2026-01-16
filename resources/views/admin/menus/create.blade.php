@extends('layouts.app')
@section('title', isset($menu) ? 'Edit Menu' : 'Tambah Menu')
@section('breadcrumb')
    <li class="breadcrumb-item"><a href="#">Admin</a></li>
    <li class="breadcrumb-item"><a href="{{ route('admin.menus.index') }}">Menu</a></li>
    <li class="breadcrumb-item active">{{ isset($menu) ? 'Edit' : 'Tambah' }}</li>
@endsection
@section('content')
    <div class="page-header mb-4">
        <h1 class="page-title">{{ isset($menu) ? 'Edit' : 'Tambah' }} Menu</h1>
    </div>
    <div class="card">
        <div class="card-body">
            <form action="{{ isset($menu) ? route('admin.menus.update', $menu) : route('admin.menus.store') }}"
                method="POST">
                @csrf @if (isset($menu))
                    @method('PUT')
                @endif
                <div class="row g-4">
                    <div class="col-md-6">
                        <label class="form-label">Nama Menu <span class="text-danger">*</span></label>
                        <input type="text" name="menu_name" class="form-control @error('menu_name') is-invalid @enderror"
                            value="{{ old('menu_name', $menu->menu_name ?? '') }}" required>
                        @error('menu_name')
                            <div class="invalid-feedback">{{ $message }}</div>
                        @enderror
                    </div>
                    <div class="col-md-6">
                        <label class="form-label">Kode Menu</label>
                        <input type="text" name="menu_code" class="form-control"
                            value="{{ old('menu_code', $menu->menu_code ?? '') }}"
                            placeholder="contoh: akuntansi.aturan-kebijakan">
                    </div>
                    <div class="col-md-6">
                        <label class="form-label">Parent Menu</label>
                        <select name="parent_id" class="form-select">
                            <option value="">Tidak ada (Menu Utama)</option>
                            @foreach ($parentMenus as $p)
                                <option value="{{ $p->id }}"
                                    {{ old('parent_id', $menu->parent_id ?? '') == $p->id ? 'selected' : '' }}>
                                    {{ $p->menu_name }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="col-md-6">
                        <label class="form-label">Modul</label>
                        <select name="id_module" class="form-select">
                            <option value="">Pilih Modul</option>
                            @foreach ($modules as $m)
                                <option value="{{ $m->id }}"
                                    {{ old('id_module', $menu->id_module ?? '') == $m->id ? 'selected' : '' }}>
                                    {{ $m->module_name }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="col-md-6">
                        <label class="form-label">Route Name</label>
                        <input type="text" name="route_name" class="form-control"
                            value="{{ old('route_name', $menu->route_name ?? '') }}"
                            placeholder="contoh: akuntansi.aturan-kebijakan.index">
                    </div>
                    <div class="col-md-6">
                        <label class="form-label">URL</label>
                        <input type="text" name="url" class="form-control"
                            value="{{ old('url', $menu->url ?? '') }}" placeholder="contoh: /akuntansi/aturan-kebijakan">
                    </div>
                    <div class="col-md-4">
                        <label class="form-label">Icon (Bootstrap Icons)</label>
                        <div class="input-group">
                            <span class="input-group-text"><i
                                    class="bi {{ old('icon', $menu->icon ?? 'bi-folder') }}"></i></span>
                            <input type="text" name="icon" class="form-control"
                                value="{{ old('icon', $menu->icon ?? '') }}" placeholder="bi-folder">
                        </div>
                        <div class="form-text"><a href="https://icons.getbootstrap.com/" target="_blank">Lihat icon</a>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <label class="form-label">Section Name</label>
                        <input type="text" name="section_name" class="form-control"
                            value="{{ old('section_name', $menu->section_name ?? '') }}" placeholder="contoh: Modul">
                    </div>
                    <div class="col-md-4">
                        <label class="form-label">Urutan</label>
                        <input type="number" name="order_number" class="form-control"
                            value="{{ old('order_number', $menu->order_number ?? '') }}" min="1">
                    </div>
                    <div class="col-12">
                        <div class="form-check form-switch">
                            <input class="form-check-input" type="checkbox" name="is_active" value="1" id="isActive"
                                {{ old('is_active', $menu->is_active ?? 1) ? 'checked' : '' }}>
                            <label class="form-check-label" for="isActive">Menu Aktif</label>
                        </div>
                    </div>
                </div>
                <hr class="my-4">
                <div class="d-flex justify-content-between">
                    <a href="{{ route('admin.menus.index') }}" class="btn btn-outline-secondary"><i
                            class="bi bi-arrow-left"></i> Kembali</a>
                    <button type="submit" class="btn btn-primary"><i class="bi bi-check-lg"></i>
                        {{ isset($menu) ? 'Update' : 'Simpan' }}</button>
                </div>
            </form>
        </div>
    </div>
@endsection
