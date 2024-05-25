@extends('dashboard.layouts.main')

@section('container')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Amal Usaha Muhammadiyah</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="/dashboard/amal-usaha">Amal Usaha Muhammadiyah</a></li>
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
              <form action="/dashboard/amal-usaha" method="post">
                @csrf
                <div class="card-body">
                    <div class="form-group">
                        <label for="nama_amal">Nama Amal Usaha </label>
                        <input type="text" class="form-control @error('nama_amal') is-invalid @enderror" id="nama_amal" name="nama_amal" placeholder="Masukkan nama amal usaha" value="{{ old('nama_amal') }}" required>
                        
                        @error('nama_amal')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                        @enderror
                    </div>                
                    <div class="form-group">
                        <label for="link_amal">Link Amal Usaha </label>
                        <input type="text" class="form-control @error('link_amal') is-invalid @enderror" id="link_amal" name="link_amal" placeholder="Masukkan link amal usaha" value="{{ old('link_amal') }}" required>
                        
                        @error('link_amal')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                        @enderror
                    </div>                

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
