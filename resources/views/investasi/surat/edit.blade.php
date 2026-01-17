@extends('layouts.app')
@section('title', 'Edit Surat Investasi')
@section('breadcrumb')
<li class="breadcrumb-item"><a href="#">Investasi</a></li>
<li class="breadcrumb-item"><a href="{{ route('investasi.surat.index') }}">Surat Investasi</a></li>
<li class="breadcrumb-item active">Edit</li>
@endsection
@section('content')
<div class="page-header mb-4"><h1 class="page-title">Edit Surat Investasi</h1></div>
<div class="card"><div class="card-body">
    <form action="{{ route('investasi.surat.update', $record->id) }}" method="POST" enctype="multipart/form-data" data-confirm="Apakah Anda yakin ingin mengupdate data ini?">
        @csrf @method('PUT')
        @include('investasi.surat._form', ['record' => $record])
        <hr class="my-4">
        <div class="d-flex justify-content-between">
            <a href="{{ route('investasi.surat.index') }}" class="btn btn-outline-secondary"><i class="bi bi-arrow-left"></i> Kembali</a>
            <button type="submit" class="btn btn-primary"><i class="bi bi-check-lg"></i> Update</button>
        </div>
    </form>
</div></div>
@endsection