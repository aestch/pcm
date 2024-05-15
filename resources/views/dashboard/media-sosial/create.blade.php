@extends('dashboard.layouts.main')

@section('container')
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Buat Data Media Sosial</h1>
</div>

<div class="col-lg-8">
    <form action="/dashboard/media-sosial" method="post" class="mb-5">
        @csrf
        
        <div class="mb-3">
            <label for="nama_medsos" class="form-label">Nama Medsos</label>
            <input type="text" class="form-control @error('nama_medsos') is-invalid @enderror" id="nama_medsos" name="nama_medsos" value="{{ old('nama_medsos') }}" required>

            @error('nama_medsos')
            <div class="invalid-feedback">
                {{ $message }}
            </div>
            @enderror
        </div>
        <div class="mb-3">
            <label for="link_medsos" class="form-label">Link Medsos</label>
            <input type="text" class="form-control @error('link_medsos') is-invalid @enderror" id="link_medsos" name="link_medsos" value="{{ old('link_medsos') }}" required>

            @error('link_medsos')
            <div class="invalid-feedback">
                {{ $message }}
            </div>
            @enderror
        </div>

        <button type="submit" class="btn btn-primary">Simpan</button>
    </form>
</div>

@endsection