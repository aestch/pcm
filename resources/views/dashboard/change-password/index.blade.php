@extends('dashboard.layouts.main')

@section('container')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Ganti Kata Sandi</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="/dashboard/pengguna-login">Ganti Kata Sandi</a></li>
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
                <h3 class="card-title">Ganti Kata Sandi</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form action="/dashboard/pengguna-login/" method="post">
                @method('put')
                @csrf
                <div class="card-body">
                  
                  <div class="form-group">
                    <label for="password">Kata Sandi Baru</label>
                    <input type="password" class="form-control @error('password') is-invalid @enderror" name="password" id="password" placeholder="Masukkan kata sandi baru" value="{{ old('password') }}">

                    @error('password')
                    <div class="invalid-feedback">
                        {{ $message }}
                    </div>
                    @enderror
                  </div>

                 
                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Ganti</button>
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