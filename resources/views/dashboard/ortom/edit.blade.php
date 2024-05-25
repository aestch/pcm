@extends('dashboard.layouts.main')

@section('container')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Organisasi Otonom</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="/dashboard/ortom">Organisasi Otonom</a></li>
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
              <form action="/dashboard/ortom/{{ $ortom->id }}" method="post">
                @method('put')
                @csrf
                <div class="card-body">
                    <div class="form-group">
                        <label for="nama_ortom">Nama Ortom </label>
                        <input type="text" class="form-control @error('nama_ortom') is-invalid @enderror" id="nama_ortom" name="nama_ortom" placeholder="Masukkan nama ortom" value="{{ old('nama_ortom', $ortom->nama_ortom) }}" required>
                        
                        @error('nama_ortom')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                        @enderror
                    </div>                
                    <div class="form-group">
                        <label for="nama_ketua">Nama Ketua </label>
                        <input type="text" class="form-control @error('nama_ketua') is-invalid @enderror" id="nama_ketua" name="nama_ketua" placeholder="Masukkan nama_ketua" value="{{ old('nama_ketua', $ortom->nama_ketua) }}" required>
                        
                        @error('nama_ketua')
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
