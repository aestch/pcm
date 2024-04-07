@extends('layouts.main')
@section('content')

<br><br><br>
<div>
    <h3 class="text-center my-4">Form Pengajuan Keanggotaan <br> Pimpinan Cabang Muhammadiyah <br>Kecamatan Batam Kota</h3>
    <hr>
</div>
<div class="container mt-5 mb-5">
    <div class="row">
        <div class="col-md-12">
            <div class="card border-0 shadow-sm rounded">
                <div class="card-body">
                    <form action="{{ route('direktori-keanggotaan.store') }}" method="POST" enctype="multipart/form-data">
                    
                        @csrf

                        <div class="form-group mb-3">
                            <label class="font-weight-bold">NAMA LENGKAP</label>
                            <input type="text" class="form-control @error('nama') is-invalid @enderror" name="nama" value="{{ old('nama') }}" placeholder="Masukkan Nama Lengkap">
                        
                            <!-- error message untuk title -->
                            @error('nama')
                                <div class="alert alert-danger mt-2">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>

                        <div class="form-group mb-3">
                            <label class="font-weight-bold">NBM / NKTAM</label>
                            <input type="number" class="form-control @error('nbm') is-invalid @enderror" name="nbm" value="{{ old('nbm') }}" placeholder="Masukkan NBM / NKTAM">
                            <p>*Jika belum mempunyai NBM / NKTAM, boleh di isikan saja dengan angka 0</p>
                            <!-- error message untuk title -->
                            @error('nbm')
                                <div class="alert alert-danger mt-2">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group mb-3">
                                    <label class="font-weight-bold">TEMPAT LAHIR</label>
                                    <input type="text" class="form-control @error('tempat_lahir') is-invalid @enderror" name="tempat_lahir" value="{{ old('tempat_lahir') }}" placeholder="Masukkan Tempat Lahir">
                                
                                    <!-- error message untuk price -->
                                    @error('tempat_lahir')
                                        <div class="alert alert-danger mt-2">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group mb-3">
                                    <label class="font-weight-bold">TANGGAL LAHIR</label>
                                    <input type="date" class="form-control @error('tgl_lahir') is-invalid @enderror" name="tgl_lahir" value="{{ old('tgl_lahir') }}">
                                
                                    <!-- error message untuk stock -->
                                    @error('tgl_lahir')
                                        <div class="alert alert-danger mt-2">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                            </div>
                        </div>

                        <div class="form-group mb-3">
                            <label class="font-weight-bold">CABANG</label>
                            <input type="text" class="form-control @error('cabang') is-invalid @enderror" name="cabang" value="{{ old('cabang') }}" placeholder="Masukkan Cabang">
                        
                            <!-- error message untuk title -->
                            @error('cabang')
                                <div class="alert alert-danger mt-2">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>

                        <div class="form-group mb-3">
                            <label class="font-weight-bold">RANTING</label>
                            <select class="form-control @error('ranting') is-invalid @enderror" name="ranting">
                                <option value="" selected disabled>-- Pilih Lokasi --</option>
                                <option value="Belian" {{ old('ranting') == 'Belian' ? 'selected' : '' }}>Belian</option>
                                <option value="Baloi Permai" {{ old('ranting') == 'Baloi Permai' ? 'selected' : '' }}>Baloi Permai</option>
                                <option value="Sungai Panas" {{ old('ranting') == 'Sungai Panas' ? 'selected' : '' }}>Sungai Panas</option>
                            </select>
                            
                            <!-- error message untuk title -->
                            @error('ranting')
                                <div class="alert alert-danger mt-2">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>

                        <div class="form-group mb-3">
                            <label class="font-weight-bold">ALAMAT</label>
                            <textarea class="form-control @error('alamat') is-invalid @enderror" name="alamat" rows="5" placeholder="Masukkan Alamat Lengkap">{{ old('alamat') }}</textarea>
                        
                            <!-- error message untuk description -->
                            @error('alamat')
                                <div class="alert alert-danger mt-2">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>

                        <div class="form-group mb-3">
                            <label class="font-weight-bold">STATUS PERKAWINAN</label>
                            <select class="form-control @error('status_perkawinan') is-invalid @enderror" name="status_perkawinan">
                                <option value="" selected disabled>-- Pilih Status Perkawinan --</option>
                                <option value="Belum Kawin" {{ old('status_perkawinan') == 'Belum Kawin' ? 'selected' : '' }}>Belum Kawin</option>
                                <option value="Kawin" {{ old('status_perkawinan') == 'Kawin' ? 'selected' : '' }}>Kawin</option>
                                <option value="Cerai Hidup" {{ old('status_perkawinan') == 'Cerai Hidup' ? 'selected' : '' }}>Cerai Hidup</option>
                                <option value="Cerai Mati" {{ old('status_perkawinan') == 'Cerai Mati' ? 'selected' : '' }}>Cerai Mati</option>
                                <option value="Janda" {{ old('status_perkawinan') == 'Janda' ? 'selected' : '' }}>Janda</option>
                                <option value="Duda" {{ old('status_perkawinan') == 'Duda' ? 'selected' : '' }}>Duda</option>
                            </select>
                            
                            <!-- error message untuk title -->
                            @error('status_perkawinan')
                                <div class="alert alert-danger mt-2">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>

                        <div class="form-group mb-3">
                            <label class="font-weight-bold">EMAIL</label>
                            <input type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" placeholder="Masukkan Email">
                        
                            <!-- error message untuk title -->
                            @error('email')
                                <div class="alert alert-danger mt-2">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>

                        <div class="form-group mb-3">
                            <label class="font-weight-bold">NO. HP</label>
                            <input type="number" class="form-control @error('no_hp') is-invalid @enderror" name="no_hp" value="{{ old('no_hp') }}" placeholder="Masukkan No. HP">
                        
                            <!-- error message untuk title -->
                            @error('no_hp')
                                <div class="alert alert-danger mt-2">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>

                        <div class="form-group mb-3">
                            <label class="font-weight-bold">PEKERJAAN</label>
                            <input type="text" class="form-control @error('pekerjaan') is-invalid @enderror" name="pekerjaan" value="{{ old('pekerjaan') }}" placeholder="Masukkan Pekerjaan">
                        
                            <!-- error message untuk title -->
                            @error('pekerjaan')
                                <div class="alert alert-danger mt-2">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>

                        <div class="form-group mb-3">
                            <label class="font-weight-bold">FOTO DIRI</label>
                            <input type="file" class="form-control @error('foto_diri') is-invalid @enderror" name="foto_diri">
                            <P>*Upload foto diri anda, latar bebas dengan maxmimal ukuran gambar 3MB. dengan Format gbr jpg, jpeg atau png</P>
                            <!-- error message untuk image -->
                            @error('foto_diri')
                                <div class="alert alert-danger mt-2">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>

                        <div class="form-group mb-3">
                            <label class="font-weight-bold">FILE/FOTO KTAM (Jika ada)</label>
                            <input type="file" class="form-control @error('file_ktam') is-invalid @enderror" name="file_ktam">
                            <P>*Upload file KTAM anda dengan maxmimal ukuran gambar 3MB. dengan Format pdf, jpg, jpeg atau png (Jika ada)</P>
                            <!-- error message untuk image -->
                            @error('file_ktam')
                                <div class="alert alert-danger mt-2">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>

                        <p>Noted: Apabila ada pertanyaan silahkan hubungi 082273083850 (Ahmadi Lubis)</p>

                        <button type="submit" class="btn btn-md btn-primary me-3">Ajukan Data</button>
                        <button type="reset" class="btn btn-md btn-danger">Batalkan</button>

                    </form> 
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.ckeditor.com/4.13.1/standard/ckeditor.js"></script>
{{-- <script>
    CKEDITOR.replace( 'alamat' );
</script> --}}

@endsection