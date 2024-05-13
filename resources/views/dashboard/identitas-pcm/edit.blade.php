@extends('dashboard.layouts.main')

@section('container')
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Ubah Identitas PCM</h1>
</div>

<div class="col-lg-8">
    <form action="/dashboard/identitas-pcm/{{ $identitaspcm->id }}" method="post" class="mb-5" enctype="multipart/form-data">
        @method('put')
        @csrf
        <div class="mb-3">
            <label for="sejarah" class="form-label">Sejarah</label>
            @error('sejarah')
                <p class="text-danger">{{ $message }}</p>
            @enderror
            <input id="sejarah" type="hidden" name="sejarah" value="{{ old('sejarah', $identitaspcm->sejarah) }}">
            <trix-editor input="sejarah"></trix-editor>
        </div>
        <div class="mb-3">
            <label for="kata_sambutan" class="form-label">Kata Sambutan Ketua PCM</label>
            @error('kata_sambutan')
                <p class="text-danger">{{ $message }}</p>
            @enderror
            <input id="kata_sambutan" type="hidden" name="kata_sambutan" value="{{ old('kata_sambutan', $identitaspcm->kata_sambutan) }}">
            <trix-editor input="kata_sambutan"></trix-editor>
        </div>
        <div class="mb-3">
            <label for="visimisi" class="form-label">Visi dan Misi</label>
            @error('visimisi')
                <p class="text-danger">{{ $message }}</p>
            @enderror
            <input id="visimisi" type="hidden" name="visimisi" value="{{ old('visimisi', $identitaspcm->visimisi) }}">
            <trix-editor input="visimisi"></trix-editor>
        </div>
        
        <button type="submit" class="btn btn-primary">Ubah</button>
    </form>
</div>

@endsection

<script>
    function previewImage() {
        const image = document.querySelector('#foto_diri');
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