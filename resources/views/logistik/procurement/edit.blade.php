@extends('layouts.app')
@section('title', 'Edit Procurement')
@section('breadcrumb')
    <li class="breadcrumb-item"><a href="{{ route('logistik.procurement.index') }}">Procurement</a></li>
    <li class="breadcrumb-item active">Edit</li>
@endsection
@section('content')
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h5 class="card-title mb-0">Edit Procurement</h5>
                </div>
                <div class="card-body">
                    <form action="{{ route('logistik.procurement.update', $item->id) }}" method="POST"
                        enctype="multipart/form-data">
                        @csrf
                        @method('PUT')
                        @include('logistik.procurement._form')
                        <div class="text-end mt-3">
                            <button type="submit" class="btn btn-primary">Simpan Perubahan</button>
                            <a href="{{ route('logistik.procurement.index') }}" class="btn btn-secondary">Batal</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
