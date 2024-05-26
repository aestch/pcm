@extends('dashboard.layouts.main')

@section('container')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Keuangan dan Kas</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="/dashboard/kas">Keuangan dan Kas</a></li>
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
              <form action="/dashboard/kas/{{ $kas->id }}" method="post">
                @method('put')
                @csrf
                <div class="card-body">
                    <div class="form-group">
                        <label for="tanggal_kas">Tanggal </label>
                        <input type="date" class="form-control @error('tanggal_kas') is-invalid @enderror" id="tanggal_kas" name="tanggal_kas" placeholder="Masukkan nama amal usaha" value="{{ old('tanggal_kas', $kas->tanggal_kas) }}" required>
                        
                        @error('tanggal_kas')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                        @enderror
                    </div>                
                    <div class="form-group">
                        <label for="tipe">Tipe </label>
                        <select name="tipe" id="tipe" class="form-control">
                            <option value="Pengeluaran" {{ $kas->tipe === 'Pengeluaran' ? 'selected' : '' }}>Pengeluaran</option>
                            <option value="Pendapatan" {{ $kas->tipe === 'Pendapatan' ? 'selected' : '' }}>Pendapatan</option>
                        </select>
                        @error('tipe')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                        @enderror
                    </div>                
                    <div class="form-group">
                        <label for="jumlah">Jumlah </label>
                        <input type="text" class="form-control @error('jumlah') is-invalid @enderror" id="jumlah" name="jumlah" placeholder="Masukkan jumlah" value="{{ old('jumlah', $kas->jumlah) }}" required>
                        
                        @error('jumlah')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                        @enderror
                    </div>                
                    <div class="form-group">
                        <label for="deskripsi">Deskripsi </label>
                        <textarea class="form-control @error('deskripsi') is-invalid @enderror" rows="5" id="deskripsi" name="deskripsi" placeholder="Masukkan deskripsi" required>{{ old('deskripsi', $kas->deskripsi) }}</textarea>
                        @error('deskripsi')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                        @enderror
                    </div>            
                    <input type="hidden" name="user_id" value="{{ auth()->user()->id }}">    

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
