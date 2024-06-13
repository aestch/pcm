@extends('dashboard.layouts.main')

@section('container')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Arsip Administrasi</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="/dashboard/arsip-administrasi">Arsip Administrasi</a></li>
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
              <form action="/dashboard/arsip-administrasi" method="post" enctype="multipart/form-data">
                @csrf
                <div class="card-body">
                    <div class="form-group">
                        <label for="no_surat">Nomor Surat </label>
                        <input type="text" class="form-control @error('no_surat') is-invalid @enderror" id="no_surat" name="no_surat" placeholder="Masukkan nomor surat" value="{{ old('no_surat') }}" required>
                        
                        @error('no_surat')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                        @enderror
                    </div>
                    <div class="form-group">
                        <label for="tgl_arsip">Tanggal </label>
                        <input type="date" class="form-control @error('tgl_arsip') is-invalid @enderror" id="tgl_arsip" name="tgl_arsip" value="{{ old('tgl_arsip') }}" required>

                        @error('tgl_arsip')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                        @enderror
                    </div>  
                    <div class="form-group">
                        <label for="kategoriarsip_id">Kategori Arsip</label>
                        <select name="kategoriarsip_id" id="kategoriarsip_id" class="form-control">
                            @foreach($kategoriarsips as $kategoriarsip)
                                @if(old('kategoriarsip_id') == $kategoriarsip->id)
                                    <option value="{{ $kategoriarsip->id }}" selected>{{ $kategoriarsip->kategori_arsip }}</option>
                                @else
                                    <option value="{{ $kategoriarsip->id }}">{{ $kategoriarsip->kategori_arsip }}</option>
                                @endif
                            @endforeach
                        </select>
                        @error('kategoriarsip_id')
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