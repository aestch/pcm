@extends('dashboard.layouts.main')

@section('container')

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Identitas PCM</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Identitas PCM</a></li>
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
                  <h3 class="card-title">Detail Galeri Video</h3>
                </div>
                <!-- /.card-header -->
                <div class="card-body mx-1">
                    <a href="/dashboard/galeri-video" class="btn btn-success btn-sm"><i class="fas fa-arrow-left"></i> Kembali</a>
                    <a href="/dashboard/galeri-video/{{ $galerivideo->id }}/edit" class="btn btn-warning btn-sm"><i class="fas fa-edit"></i> Edit</a>
                    <form action="/dashboard/galeri-video/{{ $galerivideo->id }}" method="post" class="d-inline form-hapus" data-user-id="{{ $galerivideo->id }}">
                        @method('delete')
                        @csrf
                        <button type="submit" onclick="konfirmasiHapus(event, {{ $galerivideo->id }})" class="btn btn-danger btn-sm"><i class="fas fa-trash "></i> Hapus</button>
                    </form>
                    
                    <script>
                        function konfirmasiHapus(event, userId) {
                            Swal.fire({
                                title: 'Konfirmasi',
                                text: 'Apakah Anda yakin ingin menghapus?',
                                icon: 'question',
                                showCancelButton: true,
                                confirmButtonText: 'Ya',
                                cancelButtonText: 'Batal'
                            }).then((result) => {
                                if (result.isConfirmed) {
                                    // Cari form berdasarkan data-user-id
                                    const form = document.querySelector(`.form-hapus[data-user-id='${userId}']`);
                                    if (form) {
                                        form.submit();
                                    }
                                }
                            });
                            // Cegah aksi default dari tombol submit
                            event.preventDefault();
                        }
                    </script>

                    <center><h3 class="mb-0 mt-3">{!! $galerivideo->judul_video !!}</h3></center>
                    <hr>
                    {{-- <div class="mt-3">
                        <iframe width="780" height="400" src="{{ $galerivideo->link_video }}" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    </div> --}}
                    <div class="embed-responsive embed-responsive-16by9 mt-3">
                        <iframe class="embed-responsive-item" src="{{ $galerivideo->link_video }}" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    </div>
                
                </div>
                
                <!-- /.card-body -->
              </div>

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
