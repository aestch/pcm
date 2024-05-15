@extends('dashboard.layouts.main')

@section('container')
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Buat Arsip File Baru</h1>
</div>

<div class="col-lg-8">
    <form action="/dashboard/arsip-files" method="post" class="mb-5" enctype="multipart/form-data">
        @csrf
        <div class="mb-3">
            <label for="nama_file" class="form-label">Nama File</label>
            <input type="text" class="form-control @error('nama_file') is-invalid @enderror" id="nama_file" name="nama_file" value="{{ old('nama_file') }}" required autofocus>

            @error('nama_file')
            <div class="invalid-feedback">
                {{ $message }}
            </div>
            @enderror
        </div>
        <div class="mb-3">
            <label for="tgl_arsipfile" class="form-label">Tanggal</label>
            <input type="date" class="form-control @error('tgl_arsipfile') is-invalid @enderror" id="tgl_arsipfile" name="tgl_arsipfile" value="{{ old('tgl_arsipfile') }}" required>
            @error('tgl_arsipfile')
            <div class="invalid-feedback">
                {{ $message }}
            </div>
            @enderror
        </div>
        <div class="mb-3">
            <label for="upload_arsipfile" class="form-label">Upload File</label>
            <input type="file" class="form-control @error('upload_arsipfile') is-invalid @enderror" id="upload_arsipfile" name="upload_arsipfile" value="{{ old('upload_arsipfile') }}" required>
            @error('upload_arsipfile')
            <div class="invalid-feedback">
                {{ $message }}
            </div>
            @enderror
        </div>

        <input type="hidden" name="user_id" value="{{ auth()->user()->id }}">

        <button type="submit" class="btn btn-primary">Simpan</button>
    </form>
</div>

@endsection