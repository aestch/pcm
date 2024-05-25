@extends('dashboard.layouts.main')

@section('container')

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Amal Usaha Muhammadiyah</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Amal Usaha Muhammadiyah</a></li>
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
                  <h3 class="card-title">Amal Usaha Muhammadiyah</h3>
                </div>
                <!-- /.card-header -->
                <div class="card-body">
                    @if($amalusahas->isEmpty())
                        <a href="/dashboard/amal-usaha/create" class="btn btn-primary btn-sm mb-3"><i class="fas fa-plus"></i> Tambah data</a>
                    @endif
                  <table id="example1" class="table table-bordered table-striped table-hover">
                    <thead>
                    <tr>
                      <th>No</th>
                      <th>Nama Amal Usaha</th>
                      <th>Link Amal Usaha</th>
                      <th>Aksi</th>
                    </tr>
                    </thead>
                    <tbody>
                        @foreach($amalusahas as $amalusaha)
                        <tr>
                            <td>{{ $loop->iteration }}</td>
                            <td>{{ $amalusaha->nama_amal }}</td>
                            <td><a href="{{ $amalusaha->link_amal }}" class="text-decoration-none text-hover-black" target="_blank"> <i class="fas fa-link"></i> Kunjungi Link</a></td>
                            <td>
                                <a href="/dashboard/amal-usaha/{{ $amalusaha->id }}/edit" class="btn btn-warning btn-sm"><i class="fas fa-edit"></i> Edit</a>
                                <form action="/dashboard/amal-usaha/{{ $amalusaha->id }}" method="post" class="d-inline form-hapus" data-user-id="{{ $amalusaha->id }}">
                                    @method('delete')
                                    @csrf
                                    <button type="submit" onclick="konfirmasiHapus(event, {{ $amalusaha->id }})" class="btn btn-danger btn-sm"><i class="fas fa-trash"></i> Hapus</button>
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
