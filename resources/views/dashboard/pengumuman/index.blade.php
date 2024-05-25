@extends('dashboard.layouts.main')

@section('container')

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Pengumuman</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Pengumuman</a></li>
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
                  <h3 class="card-title">Pengumuman</h3>
                </div>
                <!-- /.card-header -->
                <div class="card-body">
                    <a href="/dashboard/pengumuman/create" class="btn btn-primary btn-sm mb-3"><i class="fas fa-plus"></i> Tambah data</a>
                  <table id="example1" class="table table-bordered table-striped table-hover">
                    <thead>
                    <tr>
                      <th>No</th>
                      <th>Judul Pengumuman</th>
                      <th>Isi Pengumuman</th>
                      <th>Hari / Tanggal Pengumuman</th>
                      <th>Waktu</th>
                      <th>Aksi</th>
                    </tr>
                    </thead>
                    <tbody>
                        @foreach($pengumumans as $pengumuman)
                        <tr>
                            <td>{{ $loop->iteration }}</td>
                            <td>{{ $pengumuman->judul_pengumuman }}</td>
                            <td>{{ $pengumuman->isi_pengumuman }}</td>
                            <td>{{ \Illuminate\Support\Carbon::parse($pengumuman->created_at)->locale('id')->isoFormat('dddd, DD/MM/YYYY') }}</td>
                            <td>{{ \Carbon\Carbon::parse($pengumuman->created_at)->format('H:i') }}</td>
                            <td>
                                <a href="/dashboard/pengumuman/{{ $pengumuman->id }}/edit" class="btn btn-warning btn-sm"><i class="fas fa-edit"></i> Edit</a>
                                <form action="/dashboard/pengumuman/{{ $pengumuman->id }}" method="post" class="d-inline form-hapus" data-user-id="{{ $pengumuman->id }}">
                                    @method('delete')
                                    @csrf
                                    <button type="submit" onclick="konfirmasiHapus(event, {{ $pengumuman->id }})" class="btn btn-danger btn-sm"><i class="fas fa-trash"></i> Hapus</button>
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
                                
                                
                            </td>
                        </tr> 
                        @endforeach
                    
                    </tbody>
                  </table>
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
