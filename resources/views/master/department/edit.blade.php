@extends('layouts.app')
@section('title', 'Edit Department')
@section('breadcrumb')
<li class="breadcrumb-item"><a href="#">Master</a></li>
<li class="breadcrumb-item"><a href="{{ route('master.department.index') }}">Department</a></li>
<li class="breadcrumb-item active">Edit</li>
@endsection
@section('content')
<div class="page-header mb-4"><h1 class="page-title">Edit Department</h1></div>
<div class="card"><div class="card-body">
    <form action="{{ route('master.department.update', $record->id) }}" method="POST" data-confirm="Apakah Anda yakin ingin mengupdate data ini?">
        @csrf @method('PUT')
        @include('master.department._form', ['record' => $record])
        <hr class="my-4">
        <div class="d-flex justify-content-between">
            <a href="{{ route('master.department.index') }}" class="btn btn-outline-secondary"><i class="bi bi-arrow-left"></i> Kembali</a>
            <button type="submit" class="btn btn-primary"><i class="bi bi-check-lg"></i> Update</button>
        </div>
    </form>
</div></div>
@endsection