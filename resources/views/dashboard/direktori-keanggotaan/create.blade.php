@extends('dashboard.layouts.main')

@section('container')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Direktori Keanggotaan</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="/dashboard/direktori-keanggotaan">Direktori Keanggotaan</a></li>
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
              <form action="/dashboard/direktori-keanggotaan" method="post" enctype="multipart/form-data">
                @csrf
                <div class="card-body">
                    <div class="form-group">
                        <label for="nama">Nama Lengkap </label>
                        <input type="text" class="form-control @error('nama') is-invalid @enderror" id="nama" name="nama" placeholder="Masukkan nama lengkap" value="{{ old('nama') }}" required>
                        
                        @error('nama')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                        @enderror
                    </div>
                    <div class="form-group">
                        <label for="nbm">NBM / NKTAM </label>
                        <input type="text" class="form-control @error('nbm') is-invalid @enderror" id="nbm" name="nbm" placeholder="Masukkan no NBM /NKTAM" value="{{ old('nbm') }}" required>
                        
                        @error('nbm')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                        @enderror
                    </div>
                    <div class="form-group">
                        <label for="jenis_kelamin" class="form-label">Jenis Kelamin</label>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="jenis_kelamin" id="jenis_kelamin1" value="Laki-Laki" checked>
                            <label class="form-check-label" for="jenis_kelamin1">
                            Laki-Laki
                            </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="jenis_kelamin" id="jenis_kelamin2" value="Perempuan">
                            <label class="form-check-label" for="jenis_kelamin2">
                                Perempuan
                            </label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="tempat_lahir">Tempat Lahir </label>
                        <input type="text" class="form-control @error('tempat_lahir') is-invalid @enderror" id="tempat_lahir" name="tempat_lahir" value="{{ old('tempat_lahir') }}" placeholder="Masukkan tempat lahir" required>

                        @error('tempat_lahir')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                        @enderror
                    </div>  
                    <div class="form-group">
                        <label for="tanggal_lahir">Tanggal Lahir</label>
                        <input type="date" class="form-control @error('tanggal_lahir') is-invalid @enderror" id="tanggal_lahir" name="tanggal_lahir" value="{{ old('tanggal_lahir') }}" required>

                        @error('tanggal_lahir')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                        @enderror
                    </div>  
                    <div class="form-group">
                        <label for="cabang">Cabang</label>
                        <input type="text" class="form-control @error('cabang') is-invalid @enderror" id="cabang" name="cabang" value="Batam Center" readonly required>

                        @error('cabang')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                        @enderror
                    </div>  
                    <div class="form-group">
                        <label for="ranting">Ranting</label>
                        <select name="ranting" id="" class="form-control" required>
                            <option value="">--Pilih Ranting--</option>
                            <option value="Belian">Belian</option>
                            <option value="Baloi Permai">Baloi Permai</option>
                            <option value="Sungai Panas">Sungai Panas</option>
                        </select>
                        @error('ranting')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                        @enderror
                    </div>  
                    <div class="form-group">
                        <label for="alamat">Alamat</label>
                        <textarea class="form-control @error('alamat') is-invalid @enderror" rows="5" id="alamat" name="alamat" placeholder="Masukkan alamat lengkap" required>{{ old('alamat') }}</textarea>

                        @error('alamat')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                        @enderror
                    </div>  
                    <div class="form-group">
                        <label for="status_pernikahan">Status Pernikahan</label>
                        <select name="status_pernikahan" id="" class="form-control" required>
                            <option value="">--Pilih Status Pernikahan--</option>
                            <option value="Belum Menikah">Belum Menikah</option>
                            <option value="Menikah">Menikah</option>
                            <option value="Cerai Hidup">Cerai Hidup</option>
                            <option value="Cerai Mati">Cerai Mati</option>
                        </select>
                        @error('status_pernikahan')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                        @enderror
                    </div>  
                    <div class="form-group">
                        <label for="email">Email </label>
                        <input type="email" class="form-control @error('email') is-invalid @enderror" id="email" name="email" placeholder="Masukkan email" value="{{ old('email') }}" required>
                        
                        @error('email')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                        @enderror
                    </div>
                    <div class="form-group">
                        <label for="no_hp">No. HP / WA </label>
                        <input type="no_hp" class="form-control @error('no_hp') is-invalid @enderror" id="no_hp" name="no_hp" placeholder="Masukkan no hp" value="{{ old('no_hp') }}" required>
                        
                        @error('no_hp')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                        @enderror
                    </div>
                    <div class="form-group">
                        <label for="pekerjaan">Pekerjaan</label>
                        <select name="pekerjaan" id="pekerjaan" class="form-control" required>
                            <option value="">--Pilih Pekerjaan--</option>
                            <option value="Belum Bekerja">Belum Bekerja/Tidak Bekerja</option>
                            <option value="Mengurus Rumah Tangga">Mengurus Rumah Tangga</option>
                            <option value="Pelajar/Mahasiswa">Pelajar/Mahasiswa</option>
                            <option value="Pensiunan">Pensiunan</option>
                            <option value="Pegawai Negeri Sipil">Pegawai Negeri Sipil (PNS)</option>
                            <option value="Pegawai Swasta">Pegawai Swasta </option>
                            <option value="Wirausaha">Wirausaha </option>
                            <option value="Tentara Nasional Indonesia">Tentara Nasional Indonesia (TNI)</option>
                            <option value="Kepolisian RI">Kepolisian RI (Polri)</option>
                            <option value="Nelayan">Nelayan </option>
                            <option value="Petani">Petani </option>
                            <option value="Guru">Guru </option>
                            <option value="Pengacara">Pengacara </option>
                            <option value="Dokter">Dokter </option>
                            <option value="Arsitek">Arsitek </option>
                            <option value="Atlit">Atlit </option>
                        </select>
                        @error('pekerjaan')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                        @enderror
                    </div>  
                    <div class="mb-3">
                        <label for="foto_diri" class="form-label">Foto Diri</label>
                        <div class="input-group">
                            <input type="file" class="form-control d-none" id="foto_diri" name="foto_diri" onchange="previewImage()" required>
                            <label for="foto_diri" class="custom-file-upload btn btn-primary">
                                <i class="fas fa-upload"></i> Pilih Gambar
                            </label>
                            <span class="file-name1"></span>
                        </div>
                        <img class="img-preview img-fluid mt-2 col-sm-5" style="display: none;">
                        @error('foto_diri')
                        <div class="invalid-feedback" style="display: block;">
                            {{ $message }}
                        </div>
                        @enderror
                    </div>
                    <div class="mb-3">
                        <label for="ktam" class="form-label">Upload Berkas KTAM (Jika ada) *.PDF</label>
                        <div class="input-group">
                            <input type="file" class="form-control d-none" id="ktam" name="ktam" onchange="showFileName()">
                            <label for="ktam" class="custom-file-upload btn btn-primary">
                                <i class="fas fa-upload"></i> Pilih Berkas
                            </label>
                            <span class="file-name ml-2 mt-2"></span>
                        </div>
                        @error('ktam')
                        <div class="invalid-feedback" style="display: block;">
                            {{ $message }}
                        </div>
                        @enderror
                    </div>
                    {{-- <div class="form-group">
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
                      </div>  --}}

                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Simpan</button>
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
    function showFileName() {
        const input = document.querySelector('#ktam');
        const fileNameDisplay = document.querySelector('.file-name');

        // Cek apakah ada file yang dipilih
        if (input.files && input.files.length > 0) {
            const fileName = input.files[0].name;
            fileNameDisplay.textContent = fileName;
        }
    }
</script>

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