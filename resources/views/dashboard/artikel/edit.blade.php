@extends('dashboard.layouts.main')

@section('container')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Artikel</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="/dashboard/artikel">Artikel</a></li>
              <li class="breadcrumb-item active">Edit Data</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <!-- left column -->
          <div class="col-md-12">
            <!-- general form elements -->
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Edit Data</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form action="/dashboard/artikel/{{ $artikel->id }}" method="post" enctype="multipart/form-data">
                @method('put')
                @csrf
                <div class="card-body">
                    <div class="form-group">
                        <label for="kategoriartikel_id">Kategori Artikel</label>
                        <select name="kategoriartikel_id" id="kategoriartikel_id" class="form-control">
                            @foreach($kategoriartikels as $kategoriartikel)
                                @if(old('kategoriartikel_id', $artikel->kategoriartikel_id) == $kategoriartikel->id)
                                    <option value="{{ $kategoriartikel->id }}" selected>{{ $kategoriartikel->kategori_artikel }}</option>
                                @else
                                    <option value="{{ $kategoriartikel->id }}">{{ $kategoriartikel->kategori_artikel }}</option>
                                @endif
                            @endforeach
                        </select>
                        @error('kategoriarsip_id')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                        @enderror
                    </div>
                    <div class="form-group">
                        <label for="judul">Judul </label>
                        <input type="text" class="form-control @error('judul') is-invalid @enderror" id="judul" name="judul" placeholder="Masukkan judul" value="{{ old('judul', $artikel->judul) }}" required>
    
                        @error('judul')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                        @enderror
                    </div>
                    <div class="mb-3">
                        <input type="hidden" name="oldImage" value="{{ $artikel->image }}">
                        @if($artikel->image)
                            <img class="img-preview img-fluid mb-3 col-sm-5 d-block" src="{{ asset('storage/artikel/'. $artikel->image) }}">
                        @else
                            <img class="img-preview img-fluid mb-3 col-sm-5">
                        @endif
                        <label for="image" class="form-label">Gambar</label>
                        <div class="input-group">
                            <input type="file" class="form-control d-none" id="image" name="image" onchange="previewImage()">
                            <label for="image" class="custom-file-upload btn btn-primary">
                                <i class="fas fa-upload"></i> Pilih Gambar
                            </label>
                            <span class="file-name"></span>
                        </div>
                        <img class="img-preview img-fluid mt-2 col-sm-5" style="display: none;">
                        @error('image')
                        <div class="invalid-feedback" style="display: block;">
                            {{ $message }}
                        </div>
                        @enderror
                    </div>
                    <div class="mb-3">
                        <label for="body" class="form-label">Isi Berita</label>
                        @error('body')
                            <p class="text-danger">{{ $message }}</p>
                        @enderror
                        <input id="body" type="hidden" name="body" value="{{ old('body', $artikel->body) }}">
                        <trix-editor input="body"></trix-editor>
                    </div>
                    <input type="hidden" name="user_id" value="{{ auth()->user()->id }}"> 

                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Ubah</button>
                </div>
              </form>
            </div>
            <!-- /.card -->
            <br><br>
          </div>
          <!--/.col (left) -->
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
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