@extends('dashboard.layouts.main')

@section('container')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Media Sosial</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="/dashboard/media-sosial">Media Sosial</a></li>
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
              <form action="/dashboard/media-sosial/{{ $mediasosial->id }}" method="post">
                @method('put')
                @csrf
                <div class="card-body">
                    <div class="form-group">
                        <label for="nama_medsos">Nama Medsos </label>
                        <input type="text" class="form-control @error('nama_medsos') is-invalid @enderror" id="nama_medsos" name="nama_medsos" placeholder="Masukkan nama medsos" value="{{ old('nama_medsos', $mediasosial->nama_medsos) }}" required>
                        
                        @error('nama_medsos')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                        @enderror
                    </div>                
                    <div class="form-group">
                        <label for="link_medsos">Link Medsos </label>
                        <input type="text" class="form-control @error('link_medsos') is-invalid @enderror" id="link_medsos" name="link_medsos" placeholder="Masukkan link medsos" value="{{ old('link_medsos', $mediasosial->link_medsos) }}" required>
                        
                        @error('link_medsos')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                        @enderror
                    </div>                

                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Ubah</button>
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
