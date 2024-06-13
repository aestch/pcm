@extends('dashboard.layouts.main')

@section('container')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Identitas PCM</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="/dashboard/identitas-pcm">Identitas PCM</a></li>
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
              <form action="/dashboard/identitas-pcm" method="post" enctype="multipart/form-data">
                @csrf
                <div class="card-body">
                    <div class="mb-3">
                        <label for="sejarah" class="form-label">Sejarah</label>
                        @error('sejarah')
                            <p class="text-danger">{{ $message }}</p>
                        @enderror
                        <input id="sejarah" type="hidden" name="sejarah" value="{{ old('sejarah') }}">
                        <trix-editor input="sejarah"></trix-editor>
                    </div>
                    <div class="mb-3">
                        <label for="kata_sambutan" class="form-label">Kata Sambutan Ketua PCM</label>
                        @error('kata_sambutan')
                            <p class="text-danger">{{ $message }}</p>
                        @enderror
                        <input id="kata_sambutan" type="hidden" name="kata_sambutan" value="{{ old('kata_sambutan') }}">
                        <trix-editor input="kata_sambutan"></trix-editor>
                    </div>
                    <div class="mb-3">
                        <label for="visimisi" class="form-label">Visi dan Misi</label>
                        @error('visimisi')
                            <p class="text-danger">{{ $message }}</p>
                        @enderror
                        <input id="visimisi" type="hidden" name="visimisi" value="{{ old('visimisi') }}">
                        <trix-editor input="visimisi"></trix-editor>
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