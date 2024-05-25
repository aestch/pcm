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
                  <h3 class="card-title">Detail Identitas PCM</h3>
                </div>
                <!-- /.card-header -->
                <div class="card-body mx-1 ">
                    <a href="/dashboard/identitas-pcm" class="btn btn-success btn-sm"><i class="fas fa-arrow-left"></i> Kembali</a>
                    <a href="/dashboard/identitas-pcm/{{ $identitaspcm->id }}/edit" class="btn btn-warning btn-sm"><i class="fas fa-edit"></i> Edit</a>
                    <form action="/dashboard/identitas-pcm/{{ $identitaspcm->id }}" method="post" class="d-inline form-hapus" data-user-id="{{ $identitaspcm->id }}">
                        @method('delete')
                        @csrf
                        <button type="submit" onclick="konfirmasiHapus(event, {{ $identitaspcm->id }})" class="btn btn-danger btn-sm"><i class="fas fa-trash "></i> Hapus</button>
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

                    <center><h3 class="mb-0 mt-3">Sejarah</h3></center>
                    <hr>
                    <article class="my-3 fs-6" style="text-align: justify;">
                        {!! $identitaspcm->sejarah !!}
                    </article>
                </div>
                
                <!-- /.card-body -->
              </div>
              <div class="card">
                <!-- /.card-header -->
                <div class="card-body mx-1">

                    <center><h3 class="mb-0 mt-3">Kata Sambutan Ketua PCM</h3></center>
                    <hr>
                    <article class="my-3 fs-6" style="text-align: justify;">
                        {!! $identitaspcm->kata_sambutan !!}
                    </article>
                </div>
                <!-- /.card-body -->
              </div>
              <!-- /.card -->
              <div class="card">
                <!-- /.card-header -->
                <div class="card-body mx-1">

                    <center><h3 class="mb-0 mt-3">Visi dan Misi</h3></center>
                    <hr>
                    <article class="my-3 fs-6" style="text-align: justify;">
                        {!! $identitaspcm->visimisi !!}
                    </article>
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
