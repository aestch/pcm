@extends('dashboard.layouts.main')

@section('container')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Galeri Video</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="/dashboard/galeri-video">Galeri Video</a></li>
              <li class="breadcrumb-item active">Tambah Data</li>
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
                <h3 class="card-title">Tambah Data</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form action="/dashboard/galeri-video" method="post">
                @csrf
                <div class="card-body">
                  <div class="form-group">
                    <label for="judul_video">Judul Video </label>
                    <input type="text" class="form-control @error('judul_video') is-invalid @enderror" id="judul_video" name="judul_video" placeholder="Masukkan judul video" value="{{ old('judul_video') }}" required>
                    
                    @error('judul_video')
                    <div class="invalid-feedback">
                        {{ $message }}
                    </div>
                    @enderror
                  </div>
                  <div class="form-group">
                    <label for="link_video">Link Video </label>
                    <input type="text" class="form-control @error('link_video') is-invalid @enderror" id="link_video" name="link_video" placeholder="Masukkan link video" value="{{ old('link_video') }}" required>

                    @error('link_video')
                    <div class="invalid-feedback">
                        {{ $message }}
                    </div>
                    @enderror
                  </div>       
                  <input type="hidden" name="user_id" value="{{ auth()->user()->id }}">          

                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Simpan</button>
                </div>
              </form>
            </div>
            <!-- /.card -->

          </div>
          <!--/.col (left) -->
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
</div>

@endsection