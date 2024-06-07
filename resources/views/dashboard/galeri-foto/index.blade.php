@extends('dashboard.layouts.main')

@section('container')

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Galeri Foto</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Galeri Foto</a></li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-12">
  
              <div class="card">
                <div class="card-header">
                  <h3 class="card-title">Galeri Foto</h3>
                </div>
                <!-- /.card-header -->
                <div class="card-body">
                    <a href="/dashboard/galeri-foto/create" class="btn btn-primary btn-sm mb-3"><i class="fas fa-plus"></i> Tambah data</a>
                
                    <div class="container">
                        <!-- Menampilkan Total Data -->
                        <div class="row mb-4">
                            <div class="col-md-12">
                                <h5>Total Data: {{ $totalData }}</h5>
                            </div>
                        </div>
                    
                        <div class="row">
                            @foreach($galerifotos as $index => $galerifoto)
                                <div class="col-md-3 mb-4">
                                    <div class="card h-100">
                                        <a href="{{ asset('storage/galeri-foto/'. $galerifoto->image) }}" data-toggle="lightbox" data-title="{{ $galerifoto->keterangan }}">
                                            <img src="{{ asset('storage/galeri-foto/'. $galerifoto->image) }}" class="card-img-top img-fluid img-thumbnail" style="object-fit: cover; width: 100%; height: 200px;" alt="{{ $galerifoto->keterangan }}">
                                        </a>
                                        <div class="card-body d-flex flex-column">
                                            <p class="card-text">{{ $galerifoto->keterangan }}</p>
                                            <div class="mt-auto">
                                                <a href="/dashboard/galeri-foto/{{ $galerifoto->id }}/edit" class="btn btn-warning btn-sm"><i class="fas fa-edit"></i> Edit</a>
                                                <form action="/dashboard/galeri-foto/{{ $galerifoto->id }}" method="post" class="d-inline form-hapus" data-user-id="{{ $galerifoto->id }}">
                                                    @method('delete')
                                                    @csrf
                                                    <button type="submit" onclick="konfirmasiHapus(event, {{ $galerifoto->id }})" class="btn btn-danger btn-sm"><i class="fas fa-trash"></i> Hapus</button>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    
                        <!-- Pagination Links -->
                        <div class="d-flex justify-content-center mt-4">
                            {{ $galerifotos->links() }}
                        </div>
                    </div>
                </div>
                <!-- /.card-body -->
                </div>
              <!-- /.card -->
            </div>
            <!-- /.col -->
          </div>
          <!-- /.row -->
        </div>
        <!-- /.container-fluid -->
      </section>
    <!-- /.content -->
</div>

@endsection
