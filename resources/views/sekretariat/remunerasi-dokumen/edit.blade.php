@extends('layouts.app')
@section('title', 'Edit Remunerasi Dokumen')
@section('breadcrumb')
<li class="breadcrumb-item"><a href="#">Sekretariat</a></li>
<li class="breadcrumb-item"><a href="{{ route('sekretariat.remunerasi-dokumen.index') }}">Remunerasi Dokumen</a></li>
<li class="breadcrumb-item active">Edit</li>
@endsection
@section('content')
<div class="page-header mb-4"><h1 class="page-title">Edit Remunerasi Dokumen</h1></div>
<div class="card"><div class="card-body">
    <form action="{{ route('sekretariat.remunerasi-dokumen.update', $record->id) }}" method="POST" enctype="multipart/form-data" data-confirm="Apakah Anda yakin ingin mengupdate data ini?">
        @csrf @method('PUT')
        @include('sekretariat.remunerasi-dokumen._form', ['record' => $record])
        <hr class="my-4">
        <div class="d-flex justify-content-between">
            <a href="{{ route('sekretariat.remunerasi-dokumen.index') }}" class="btn btn-outline-secondary"><i class="bi bi-arrow-left"></i> Kembali</a>
            <button type="submit" class="btn btn-primary"><i class="bi bi-check-lg"></i> Update</button>
        </div>
    </form>
</div></div>
@endsection