@extends('dashboard.layouts.main')

@section('container')
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Ubah Data Artikel</h1>
</div>

<div class="col-lg-8">
    <form action="/dashboard/artikel/{{ $artikel->id }}" method="post" class="mb-5" enctype="multipart/form-data">
        @method('put')
        @csrf
        <div class="mb-3">
            <label for="kategoriartikel_id" class="form-label">Kategori Berita</label>
            <select class="form-select" name="kategoriartikel_id" required>
                @foreach($kategoriartikels as $kategoriartikel)
                    @if(old('kategoriartikel_id', $artikel->kategoriartikel_id) == $kategoriartikel->id)
                        <option value="{{ $kategoriartikel->id }}" selected>{{ $kategoriartikel->kategori_artikel }}</option>
                    @else
                        <option value="{{ $kategoriartikel->id }}">{{ $kategoriartikel->kategori_artikel }}</option>
                    @endif
                @endforeach
            </select>
        </div>

        <div class="mb-3">
            <label for="judul" class="form-label">Judul</label>
            <input type="text" class="form-control @error('judul') is-invalid @enderror" id="judul" name="judul" value="{{ old('judul', $artikel->judul) }}" required>
            @error('judul')
            <div class="invalid-feedback">
                {{ $message }}
            </div>
            @enderror
        </div>

        <div class="mb-3">
            <label for="image" class="form-label">Gambar</label>
            <input type="hidden" name="oldImage" value="{{ $artikel->image }}">
            @if($artikel->image)
                <img class="img-preview img-fluid mb-3 col-sm-5 d-block" src="{{ asset('storage/artikel/'. $artikel->image) }}">
            @else
                <img class="img-preview img-fluid mb-3 col-sm-5">
            @endif
            <input class="form-control @error('image') is-invalid @enderror" type="file" name="image" id="image" onchange="previewImage()">
            @error('image')
            <div class="invalid-feedback">
                {{ $message }}
            </div>
            @enderror
        </div>

        <div class="mb-3">
            <label for="body" class="form-label">Isi Artikel</label>
            @error('body')
                <p class="text-danger">{{ $message }}</p>
            @enderror
            <input id="body" type="hidden" name="body" value="{{ old('body', $artikel->body) }}">
            <trix-editor input="body"></trix-editor>
        </div>
        
        <button type="submit" class="btn btn-primary">Ubah</button>
    </form>
</div>

@endsection

<script>
    function previewImage() {
        const image = document.querySelector('#image');
        const imgPreview = document.querySelector('.img-preview');

        // Cek apakah ada file yang dipilih
        if (image.files && image.files[0]) {
            const oFReader = new FileReader();

            oFReader.onload = function (oFREvent) {
                // Menampilkan gambar yang dipilih ke dalam img-preview
                imgPreview.style.display = 'block';
                imgPreview.src = oFREvent.target.result;
            };

            // Membaca file gambar yang dipilih
            oFReader.readAsDataURL(image.files[0]);
        }
    }
</script>