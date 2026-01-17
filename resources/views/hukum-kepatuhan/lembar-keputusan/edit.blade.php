@extends('layouts.app')
@section('title', 'Edit Lembar Keputusan')
@section('breadcrumb')
<li class="breadcrumb-item"><a href="#">Hukum kepatuhan</a></li>
<li class="breadcrumb-item"><a href="{{ route('hukum-kepatuhan.lembar-keputusan.index') }}">Lembar Keputusan</a></li>
<li class="breadcrumb-item active">Edit</li>
@endsection
@section('content')
<div class="page-header mb-4"><h1 class="page-title">Edit Lembar Keputusan</h1></div>
<div class="card"><div class="card-body">
    <form action="{{ route('hukum-kepatuhan.lembar-keputusan.update', $record->id) }}" method="POST" enctype="multipart/form-data" data-confirm="Apakah Anda yakin ingin mengupdate data ini?">
        @csrf @method('PUT')
        @include('hukum-kepatuhan.lembar-keputusan._form', ['record' => $record])
        <hr class="my-4">
        <div class="d-flex justify-content-between">
            <a href="{{ route('hukum-kepatuhan.lembar-keputusan.index') }}" class="btn btn-outline-secondary"><i class="bi bi-arrow-left"></i> Kembali</a>
            <button type="submit" class="btn btn-primary"><i class="bi bi-check-lg"></i> Update</button>
        </div>
    </form>
</div></div>
@endsection