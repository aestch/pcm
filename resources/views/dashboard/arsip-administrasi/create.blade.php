@extends('dashboard.layouts.main')

@section('container')
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Buat Arsip Administrasi Baru</h1>
</div>

<div class="col-lg-8">
    <form action="/dashboard/arsip-administrasi" method="post" class="mb-5" enctype="multipart/form-data">
        @csrf
        <div class="mb-3">
            <label for="tgl_arsip" class="form-label">Tanggal Arsip</label>
            <input type="date" class="form-control @error('tgl_arsip') is-invalid @enderror" id="tgl_arsip" name="tgl_arsip" value="{{ old('tgl_arsip') }}" required>
            @error('tgl_arsip')
            <div class="invalid-feedback">
                {{ $message }}
            </div>
            @enderror
        </div>
        <div class="mb-3">
            <label for="no_surat" class="form-label">No Surat</label>
            <input type="text" class="form-control @error('no_surat') is-invalid @enderror" id="no_surat" name="no_surat" value="{{ old('no_surat') }}" required>

            @error('no_surat')
            <div class="invalid-feedback">
                {{ $message }}
            </div>
            @enderror
        </div>
        <div class="mb-3">
            <label for="kategoriarsip_id" class="form-label">Kategori Arsip</label>
            <select class="form-select" name="kategoriarsip_id" required>
                @foreach($kategoriarsips as $kategoriarsip)
                    @if(old('kategoriarsip_id') == $kategoriarsip->id)
                        <option value="{{ $kategoriarsip->id }}" selected>{{ $kategoriarsip->kategori_arsip }}</option>
                    @else
                        <option value="{{ $kategoriarsip->id }}">{{ $kategoriarsip->kategori_arsip }}</option>
                    @endif
                @endforeach
            </select>
        </div>

        <button type="submit" class="btn btn-primary">Simpan</button>
    </form>
</div>

@endsection