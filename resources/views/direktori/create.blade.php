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
                            <input type="text" class="form-control @error('title') is-invalid @enderror" name="title" value="{{ old('title') }}" placeholder="Masukkan Nama Lengkap">
                        
                            <!-- error message untuk title -->
                            @error('title')
                                <div class="alert alert-danger mt-2">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>

                        <div class="form-group mb-3">
                            <label class="font-weight-bold">NBM / NKTAM</label>
                            <input type="text" class="form-control @error('title') is-invalid @enderror" name="title" value="{{ old('title') }}" placeholder="Masukkan NBM / NKTAM">
                        
                            <!-- error message untuk title -->
                            @error('title')
                                <div class="alert alert-danger mt-2">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group mb-3">
                                    <label class="font-weight-bold">TEMPAT LAHIR</label>
                                    <input type="number" class="form-control @error('price') is-invalid @enderror" name="price" value="{{ old('price') }}" placeholder="Masukkan Tempat Lahir">
                                
                                    <!-- error message untuk price -->
                                    @error('price')
                                        <div class="alert alert-danger mt-2">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group mb-3">
                                    <label class="font-weight-bold">TANGGAL LAHIR</label>
                                    <input type="date" class="form-control @error('stock') is-invalid @enderror" name="stock" value="{{ old('stock') }}">
                                
                                    <!-- error message untuk stock -->
                                    @error('stock')
                                        <div class="alert alert-danger mt-2">
                                            {{ $message }}
                                        </div>
                                    @enderror
                                </div>
                            </div>
                        </div>

                        <div class="form-group mb-3">
                            <label class="font-weight-bold">CABANG</label>
                            <input type="text" class="form-control @error('title') is-invalid @enderror" name="title" value="{{ old('title') }}" placeholder="Masukkan Cabang">
                        
                            <!-- error message untuk title -->
                            @error('title')
                                <div class="alert alert-danger mt-2">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>

                        <div class="form-group mb-3">
                            <label class="font-weight-bold">RANTING</label>
                            <select class="form-control @error('title') is-invalid @enderror" name="title">
                                <option value="" selected disabled>-- Pilih Lokasi --</option>
                                <option value="belian" {{ old('title') == 'belian' ? 'selected' : '' }}>Belian</option>
                                <option value="baloi_permai" {{ old('title') == 'baloi_permai' ? 'selected' : '' }}>Baloi Permai</option>
                                <option value="sungai_panas" {{ old('title') == 'sungai_panas' ? 'selected' : '' }}>Sungai Panas</option>
                            </select>
                            
                            <!-- error message untuk title -->
                            @error('title')
                                <div class="alert alert-danger mt-2">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>

                        <div class="form-group mb-3">
                            <label class="font-weight-bold">ALAMAT</label>
                            <textarea class="form-control @error('description') is-invalid @enderror" name="description" rows="5" placeholder="Masukkan Alamat Lengkap">{{ old('description') }}</textarea>
                        
                            <!-- error message untuk description -->
                            @error('description')
                                <div class="alert alert-danger mt-2">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>

                        <div class="form-group mb-3">
                            <label class="font-weight-bold">STATUS PERKAWINAN</label>
                            <select class="form-control @error('title') is-invalid @enderror" name="title">
                                <option value="" selected disabled>-- Pilih Status Perkawinan --</option>
                                <option value="belian" {{ old('title') == 'belian' ? 'selected' : '' }}>Belum Kawin</option>
                                <option value="baloi_permai" {{ old('title') == 'baloi_permai' ? 'selected' : '' }}>Kawin</option>
                                <option value="sungai_panas" {{ old('title') == 'sungai_panas' ? 'selected' : '' }}>Cerai Hidup</option>
                                <option value="sungai_panas" {{ old('title') == 'sungai_panas' ? 'selected' : '' }}>Cerai Mati</option>
                                <option value="sungai_panas" {{ old('title') == 'sungai_panas' ? 'selected' : '' }}>Janda</option>
                                <option value="sungai_panas" {{ old('title') == 'sungai_panas' ? 'selected' : '' }}>Duda</option>
                            </select>
                            
                            <!-- error message untuk title -->
                            @error('title')
                                <div class="alert alert-danger mt-2">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>

                        <div class="form-group mb-3">
                            <label class="font-weight-bold">EMAIL</label>
                            <input type="email" class="form-control @error('title') is-invalid @enderror" name="title" value="{{ old('title') }}" placeholder="Masukkan Email">
                        
                            <!-- error message untuk title -->
                            @error('title')
                                <div class="alert alert-danger mt-2">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>

                        <div class="form-group mb-3">
                            <label class="font-weight-bold">NO. HP</label>
                            <input type="number" class="form-control @error('title') is-invalid @enderror" name="title" value="{{ old('title') }}" placeholder="Masukkan No. HP">
                        
                            <!-- error message untuk title -->
                            @error('title')
                                <div class="alert alert-danger mt-2">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>

                        <div class="form-group mb-3">
                            <label class="font-weight-bold">PEKERJAAN</label>
                            <input type="text" class="form-control @error('title') is-invalid @enderror" name="title" value="{{ old('title') }}" placeholder="Masukkan Pekerjaan">
                        
                            <!-- error message untuk title -->
                            @error('title')
                                <div class="alert alert-danger mt-2">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>

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
<script>
    CKEDITOR.replace( 'description' );
</script>

@endsection