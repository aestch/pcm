@extends('dashboard.layouts.main')

@section('container')
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Buat Agenda Baru</h1>
</div>

<div class="col-lg-8">
    <form action="/dashboard/agenda" method="post" class="mb-5">
        @csrf
        <div class="mb-3">
            <label for="nama_agenda" class="form-label">Nama Agenda</label>
            <input type="text" class="form-control @error('nama_agenda') is-invalid @enderror" id="nama_agenda" name="nama_agenda" value="{{ old('nama_agenda') }}" required autofocus>

            @error('nama_agenda')
            <div class="invalid-feedback">
                {{ $message }}
            </div>
            @enderror
        </div>
        <div class="mb-3">
            <label for="tgl_agenda" class="form-label">Tanggal Agenda</label>
            <input type="date" class="form-control @error('tgl_agenda') is-invalid @enderror" id="tgl_agenda" name="tgl_agenda" value="{{ old('tgl_agenda') }}" required>
            @error('tgl_agenda')
            <div class="invalid-feedback">
                {{ $message }}
            </div>
            @enderror
        </div>
        <div class="mb-3">
            <label for="start_time" class="form-label">Waktu Mulai</label>
            <input type="time" class="form-control @error('start_time') is-invalid @enderror" id="start_time" name="start_time" value="{{ old('start_time') }}" required>
            @error('start_time')
            <div class="invalid-feedback">
                {{ $message }}
            </div>
            @enderror
        </div>
        
        <div class="mb-3">
            <label for="end_time" class="form-label">Waktu Selesai</label>
            <input type="time" class="form-control @error('end_time') is-invalid @enderror" id="end_time" name="end_time" value="{{ old('end_time') }}" required>
            @error('end_time')
            <div class="invalid-feedback">
                {{ $message }}
            </div>
            @enderror
        </div>
        <button type="submit" class="btn btn-primary">Simpan</button>
    </form>
</div>

@endsection