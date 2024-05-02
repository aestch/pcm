@extends('dashboard.layouts.main')

@section('container')
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Buat Keanggotaan Baru</h1>
</div>

<div class="col-lg-8">
    <form action="/dashboard/direktori-keanggotaan" method="post" class="mb-5">
        @csrf
        <div class="mb-3">
            <label for="nama" class="form-label">Nama Lengkap</label>
            <input type="text" class="form-control @error('nama') is-invalid @enderror" id="nama" name="nama" value="{{ old('nama') }}" required autofocus>

            @error('nama')
            <div class="invalid-feedback">
                {{ $message }}
            </div>
            @enderror
        </div>
        <div class="mb-3">
            <label for="nbm" class="form-label">NBM / NKTAM</label>
            <input type="text" class="form-control @error('nbm') is-invalid @enderror" id="nbm" name="nbm" value="{{ old('nbm') }}" required>

            @error('nbm')
            <div class="invalid-feedback">
                {{ $message }}
            </div>
            @enderror
        </div>
        <div class="mb-3">
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
        
        <div class="mb-3">
            <label for="tempat_lahir" class="form-label">Tempat Lahir</label>
            <input type="text" class="form-control @error('tempat_lahir') is-invalid @enderror" id="tempat_lahir" name="tempat_lahir" value="{{ old('tempat_lahir') }}" required>
            @error('tempat_lahir')
            <div class="invalid-feedback">
                {{ $message }}
            </div>
            @enderror
        </div>
        <div class="mb-3">
            <label for="tanggal_lahir" class="form-label">Tanggal Lahir</label>
            <input type="date" class="form-control @error('tanggal_lahir') is-invalid @enderror" id="tanggal_lahir" name="tanggal_lahir" value="{{ old('tanggal_lahir') }}" required>
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
            <select name="ranting" id="" class="form-control">
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
        <div class="mb-3">
            <label for="alamat" class="form-label">Alamat</label>
            <input type="alamat" class="form-control @error('alamat') is-invalid @enderror" id="alamat" name="alamat" value="{{ old('alamat') }}" required>
            @error('alamat')
            <div class="invalid-feedback">
                {{ $message }}
            </div>
            @enderror
        </div>
        <div class="mb-3">
            <label for="ranting" class="form-label">Status Pernikahan</label>
            <select name="status_pernikahan" id="" class="form-control">
                <option value="">--Pilih Status Pernikahan--</option>
                <option value="Belum Menikah">Belum Menikah</option>
                <option value="Menikah">Menikah</option>
                <option value="Cerai Hidup">Cerai Hidup</option>
                <option value="Cerai Mati">Cerai Mati</option>
            </select>
            @error('ranting')
            <div class="invalid-feedback">
                {{ $message }}
            </div>
            @enderror
        </div>
        <div class="mb-3">
            <label for="email" class="form-label">Email</label>
            <input type="email" class="form-control @error('email') is-invalid @enderror" id="email" name="email" value="{{ old('email') }}" required>
            @error('email')
            <div class="invalid-feedback">
                {{ $message }}
            </div>
            @enderror
        </div>
        <div class="mb-3">
            <label for="no_hp" class="form-label">No. HP/WA</label>
            <input type="text" class="form-control @error('no_hp') is-invalid @enderror" id="no_hp" name="no_hp" value="{{ old('no_hp') }}" required>
            @error('no_hp')
            <div class="invalid-feedback">
                {{ $message }}
            </div>
            @enderror
        </div>

        <div class="mb-3">
            <label for="ranting" class="form-label">Pekerjaan</label>
            <select name="pekerjaan" id="" class="form-control">
                <option value="">--Pilih Jenis Pekerjaan--</option>
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
            @error('ranting')
            <div class="invalid-feedback">
                {{ $message }}
            </div>
            @enderror
        </div>
        
        <button type="submit" class="btn btn-primary">Simpan</button>
    </form>
</div>

@endsection