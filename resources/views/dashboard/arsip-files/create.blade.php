@extends('dashboard.layouts.main')

@section('container')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Arsip Berkas</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="/dashboard/arsip-files">Arsip Berkas</a></li>
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
              <form action="/dashboard/arsip-files" method="post" enctype="multipart/form-data">
                @csrf
                <div class="card-body">
                    <div class="form-group">
                        <label for="nama_file">Nama Berkas </label>
                        <input type="text" class="form-control @error('nama_file') is-invalid @enderror" id="nama_file" name="nama_file" placeholder="Masukkan nama berkas" value="{{ old('nama_file') }}" required>
                        
                        @error('nama_file')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                        @enderror
                    </div>
                    <div class="form-group">
                        <label for="tgl_arsipfile">Tanggal </label>
                        <input type="date" class="form-control @error('tgl_arsipfile') is-invalid @enderror" id="tgl_arsipfile" name="tgl_arsipfile" value="{{ old('tgl_arsipfile') }}" required>

                        @error('tgl_arsipfile')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                        @enderror
                    </div>  
                    <div class="mb-3">
                        <label for="upload_arsipfile" class="form-label">Upload Berkas *.PDF</label>
                        <div class="input-group">
                            <input type="file" class="form-control d-none" id="upload_arsipfile" name="upload_arsipfile" onchange="showFileName()" required>
                            <label for="upload_arsipfile" class="custom-file-upload btn btn-primary">
                                <i class="fas fa-upload"></i> Pilih Berkas
                            </label>
                            <span class="file-name ml-2 mt-2"></span>
                        </div>
                        @error('upload_arsipfile')
                        <div class="invalid-feedback" style="display: block;">
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

<script>
    function showFileName() {
        const input = document.querySelector('#upload_arsipfile');
        const fileNameDisplay = document.querySelector('.file-name');

        // Cek apakah ada file yang dipilih
        if (input.files && input.files.length > 0) {
            const fileName = input.files[0].name;
            fileNameDisplay.textContent = fileName;
        }
    }
</script>