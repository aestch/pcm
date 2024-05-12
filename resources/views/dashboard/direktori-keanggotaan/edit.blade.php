@extends('dashboard.layouts.main')

@section('container')
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Ubah Data Keanggotaan</h1>
</div>

<div class="col-lg-8">
    <form action="/dashboard/direktori-keanggotaan/{{ $direktorikeanggotaan->id }}" method="post" class="mb-5" enctype="multipart/form-data">
        @method('put')
        @csrf
        <div class="mb-3">
            <label for="nama" class="form-label">Nama Lengkap</label>
            <input type="text" class="form-control @error('nama') is-invalid @enderror" id="nama" name="nama" value="{{ old('nama', $direktorikeanggotaan->nama) }}" required autofocus>

            @error('nama')
            <div class="invalid-feedback">
                {{ $message }}
            </div>
            @enderror
        </div>
        <div class="mb-3">
            <label for="nbm" class="form-label">NBM / NKTAM</label>
            <input type="text" class="form-control @error('nbm') is-invalid @enderror" id="nbm" name="nbm" value="{{ old('nbm', $direktorikeanggotaan->nbm) }}" required>

            @error('nbm')
            <div class="invalid-feedback">
                {{ $message }}
            </div>
            @enderror
        </div>
        <div class="mb-3">
            <label for="jenis_kelamin" class="form-label">Jenis Kelamin</label>
            <div class="form-check">
                <input class="form-check-input" type="radio" name="jenis_kelamin" id="jenis_kelamin1" value="Laki-Laki" {{ $direktorikeanggotaan->jenis_kelamin == 'Laki-Laki' ? 'checked' : '' }}>
                <label class="form-check-label" for="jenis_kelamin1">
                    Laki-Laki
                </label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="radio" name="jenis_kelamin" id="jenis_kelamin2" value="Perempuan" {{ $direktorikeanggotaan->jenis_kelamin == 'Perempuan' ? 'checked' : '' }}>
                <label class="form-check-label" for="jenis_kelamin2">
                    Perempuan
                </label>
            </div>
        </div>
        
        <div class="mb-3">
            <label for="tempat_lahir" class="form-label">Tempat Lahir</label>
            <input type="text" class="form-control @error('tempat_lahir') is-invalid @enderror" id="tempat_lahir" name="tempat_lahir" value="{{ old('tempat_lahir', $direktorikeanggotaan->tempat_lahir) }}" required>
            @error('tempat_lahir')
            <div class="invalid-feedback">
                {{ $message }}
            </div>
            @enderror
        </div>
        <div class="mb-3">
            <label for="tanggal_lahir" class="form-label">Tanggal Lahir</label>
            <input type="date" class="form-control @error('tanggal_lahir') is-invalid @enderror" id="tanggal_lahir" name="tanggal_lahir" value="{{ old('tanggal_lahir', $direktorikeanggotaan->tanggal_lahir) }}" required>
            @error('tanggal_lahir')
            <div class="invalid-feedback">
                {{ $message }}
            </div>
            @enderror
        </div>
        <div class="mb-3">
            <label for="cabang" class="form-label">Cabang</label>
            <input type="cabang" class="form-control @error('cabang') is-invalid @enderror" id="cabang" name="cabang" value="Batam Center" readonly required>
            @error('cabang')
            <div class="invalid-feedback">
                {{ $message }}
            </div>
            @enderror
        </div>
        <div class="mb-3">
            <label for="ranting" class="form-label">Ranting</label>
            <select name="ranting" id="" class="form-control" required>
                <option value="">--Pilih Ranting--</option>
                <option value="Belian" {{ $direktorikeanggotaan->ranting == 'Belian' ? 'selected' : '' }}>Belian</option>
                <option value="Baloi Permai" {{ $direktorikeanggotaan->ranting == 'Baloi Permai' ? 'selected' : '' }}>Baloi Permai</option>
                <option value="Sungai Panas" {{ $direktorikeanggotaan->ranting == 'Sungai Panas' ? 'selected' : '' }}>Sungai Panas</option>
            </select>
            @error('ranting')
            <div class="invalid-feedback">
                {{ $message }}
            </div>
            @enderror
        </div>
        <div class="mb-3">
            <label for="alamat" class="form-label">Alamat</label>
            <input type="alamat" class="form-control @error('alamat') is-invalid @enderror" id="alamat" name="alamat" value="{{ old('alamat', $direktorikeanggotaan->alamat) }}" required>
            @error('alamat')
            <div class="invalid-feedback">
                {{ $message }}
            </div>
            @enderror
        </div>
        <div class="mb-3">
            <label for="status_pernikahan" class="form-label">Status Pernikahan</label>
            <select name="status_pernikahan" id="" class="form-control" required>
                <option value="">--Pilih Status Pernikahan--</option>
                <option value="Belum Menikah" {{ $direktorikeanggotaan->status_pernikahan == 'Belum Menikah' ? 'selected' : '' }}>Belum Menikah</option>
                <option value="Menikah" {{ $direktorikeanggotaan->status_pernikahan == 'Menikah' ? 'selected' : '' }}>Menikah</option>
                <option value="Cerai Hidup" {{ $direktorikeanggotaan->status_pernikahan == 'Cerai Hidup' ? 'selected' : '' }}>Cerai Hidup</option>
                <option value="Cerai Mati" {{ $direktorikeanggotaan->status_pernikahan == 'Cerai Mati' ? 'selected' : '' }}>Cerai Mati</option>
            </select>
            @error('ranting')
            <div class="invalid-feedback">
                {{ $message }}
            </div>
            @enderror
        </div>
        <div class="mb-3">
            <label for="email" class="form-label">Email</label>
            <input type="email" class="form-control @error('email') is-invalid @enderror" id="email" name="email" value="{{ old('email', $direktorikeanggotaan->email) }}" required>
            @error('email')
            <div class="invalid-feedback">
                {{ $message }}
            </div>
            @enderror
        </div>
        <div class="mb-3">
            <label for="no_hp" class="form-label">No. HP/WA</label>
            <input type="text" class="form-control @error('no_hp') is-invalid @enderror" id="no_hp" name="no_hp" value="{{ old('no_hp', $direktorikeanggotaan->no_hp) }}" required>
            @error('no_hp')
            <div class="invalid-feedback">
                {{ $message }}
            </div>
            @enderror
        </div>

        <div class="mb-3">
            <label for="ranting" class="form-label">Pekerjaan</label>
            <select name="pekerjaan" id="" class="form-control" required>
                <option value="">--Pilih Jenis Pekerjaan--</option>
                <option value="Belum Bekerja" {{ $direktorikeanggotaan->pekerjaan == 'Belum Bekerja' ? 'selected' : '' }}>Belum Bekerja/Tidak Bekerja</option>
                <option value="Mengurus Rumah Tangga" {{ $direktorikeanggotaan->pekerjaan == 'Mengurus Rumah Tangga' ? 'selected' : '' }}>Mengurus Rumah Tangga</option>
                <option value="Pelajar/Mahasiswa" {{ $direktorikeanggotaan->pekerjaan == 'Pelajar/Mahasiswa' ? 'selected' : '' }}>Pelajar/Mahasiswa</option>
                <option value="Pensiunan" {{ $direktorikeanggotaan->pekerjaan == 'Pensiunan' ? 'selected' : '' }}>Pensiunan</option>
                <option value="Pegawai Negeri Sipil" {{ $direktorikeanggotaan->pekerjaan == 'Pegawai Negeri Sipil' ? 'selected' : '' }}>Pegawai Negeri Sipil (PNS)</option>
                <option value="Pegawai Swasta" {{ $direktorikeanggotaan->pekerjaan == 'Pegawai Swasta' ? 'selected' : '' }}>Pegawai Swasta </option>
                <option value="Wirausaha" {{ $direktorikeanggotaan->pekerjaan == 'Wirausaha' ? 'selected' : '' }}>Wirausaha </option>
                <option value="Tentara Nasional Indonesia" {{ $direktorikeanggotaan->pekerjaan == 'Tentara Nasional Indonesia' ? 'selected' : '' }}>Tentara Nasional Indonesia (TNI)</option>
                <option value="Kepolisian RI" {{ $direktorikeanggotaan->pekerjaan == 'Kepolisian RI' ? 'selected' : '' }}>Kepolisian RI (Polri)</option>
                <option value="Nelayan" {{ $direktorikeanggotaan->pekerjaan == 'Nelayan' ? 'selected' : '' }}>Nelayan </option>
                <option value="Petani" {{ $direktorikeanggotaan->pekerjaan == 'Petani' ? 'selected' : '' }}>Petani </option>
                <option value="Guru" {{ $direktorikeanggotaan->pekerjaan == 'Guru' ? 'selected' : '' }}>Guru </option>
                <option value="Pengacara" {{ $direktorikeanggotaan->pekerjaan == 'Pengacara' ? 'selected' : '' }}>Pengacara </option>
                <option value="Dokter" {{ $direktorikeanggotaan->pekerjaan == 'Dokter' ? 'selected' : '' }}>Dokter </option>
                <option value="Arsitek" {{ $direktorikeanggotaan->pekerjaan == 'Arsitek' ? 'selected' : '' }}>Arsitek </option>
                <option value="Atlit" {{ $direktorikeanggotaan->pekerjaan == 'Atlit' ? 'selected' : '' }}>Atlit </option>
            </select>
            @error('ranting')
            <div class="invalid-feedback">
                {{ $message }}
            </div>
            @enderror
        </div>

        <div class="mb-3">
            <label for="foto_diri" class="form-label">Foto Diri</label>
            <input type="hidden" name="oldImage" value="{{ $direktorikeanggotaan->foto_diri }}">
            @if($direktorikeanggotaan->foto_diri)
                <img class="img-preview img-fluid mb-3 col-sm-5 d-block" src="{{ asset('storage/foto-diri/'. $direktorikeanggotaan->foto_diri) }}">
            @else
                <img class="img-preview img-fluid mb-3 col-sm-5">
            @endif
            <input class="form-control @error('foto_diri') is-invalid @enderror" type="file" name="foto_diri" id="foto_diri" onchange="previewImage()">
            @error('foto_diri')
            <div class="invalid-feedback">
                {{ $message }}
            </div>
            @enderror
        </div>
        <div class="mb-3">
            <label for="ktam" class="form-label">File/Foto KTAM</label>
            <img class="img-preview img-fluid mb-3 col-sm-5">
            <input class="form-control @error('ktam') is-invalid @enderror" type="file" name="ktam" id="ktam" onchange="previewImage()">
            @error('ktam')
            <div class="invalid-feedback">
                {{ $message }}
            </div>
            @enderror
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