@extends('dashboard.layouts.main')
@section('css')
<link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css" />
<link rel="stylesheet" href="https://cdn.datatables.net/responsive/2.2.9/css/responsive.dataTables.min.css" />
@endsection
@section('container')

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Direktori Keanggotaan</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Direktori Keanggotaan</a></li>
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
                  <h3 class="card-title">Direktori Keanggotaan</h3>
                </div>
                <!-- /.card-header -->
                <div class="card-body">
                    <a href="/dashboard/direktori-keanggotaan/create" class="btn btn-primary btn-sm mb-3"><i class="fas fa-plus"></i> Tambah data</a>
                        <div class="table-responsive">
                            <table id="clientside" class="table table-hover table-striped table-bordered dt-responsive nowrap" style="width:100%">
                                <thead>
                                <tr>
                                <th>No</th>
                                <th>Nama</th>
                                <th>Cabang</th>
                                <th>Ranting</th>
                                <th>Jabatan</th>
                                <th>Status</th>
                                <th>Aksi</th>
                                </tr>
                                </thead>
                                <tbody>
                                    @foreach($direktorikeanggotaans as $index => $direktorikeanggotaan)
                                    <tr>
                                        <td>{{ $direktorikeanggotaans->firstItem() + $index }}</td>
                                        <td>{{ $direktorikeanggotaan->nama }}</td>
                                        <td>{{ $direktorikeanggotaan->cabang }}</td>
                                        <td>{{ $direktorikeanggotaan->ranting }}</td>
                                        <td>{{ $direktorikeanggotaan->jabatan }}</td>
                                        {{-- <td>{{ $direktorikeanggotaan->status }}</td> --}}
                                        <td class="
                                            @if ($direktorikeanggotaan->status == 'Menunggu Persetujuan')
                                                text-warning
                                            @elseif ($direktorikeanggotaan->status == 'Disetujui')
                                                text-success
                                            @elseif ($direktorikeanggotaan->status == 'Ditolak')
                                                text-danger
                                            @endif
                                        ">
                                            {{ $direktorikeanggotaan->status }}
                                        </td>
                                        <td>
                                            <a href="/dashboard/direktori-keanggotaan/{{ $direktorikeanggotaan->id }}/show" class="btn btn-info btn-sm" data-bs-toggle="modal" data-bs-target="#detilAnggota{{ $direktorikeanggotaan->id }}" data-bs-whatever="@mdo"><i class="fas fa-eye"></i> Detail</a>
                                            <a href="/dashboard/direktori-keanggotaan/{{ $direktorikeanggotaan->id }}/edit" class="btn btn-warning btn-sm"><i class="fas fa-edit"></i> Edit</a>
                                            <form action="/dashboard/direktori-keanggotaan/{{ $direktorikeanggotaan->id }}" method="post" class="d-inline form-hapus" data-user-id="{{ $direktorikeanggotaan->id }}">
                                                @method('delete')
                                                @csrf
                                                <button type="submit" onclick="konfirmasiHapus(event, {{ $direktorikeanggotaan->id }})" class="btn btn-danger btn-sm"><i class="fas fa-trash"></i> Hapus</button>
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
                                    <div class="modal fade" id="detilAnggota{{ $direktorikeanggotaan->id }}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                        <div class="modal-dialog modal-lg modal-dialog-centered">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="exampleModalLabel">Detail Anggota</h5>
                                                    {{-- <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button> --}}
                                                </div>
                                                <div class="modal-body">
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <img src="{{ asset('storage/foto-diri/'. $direktorikeanggotaan->foto_diri) }}" class="img-fluid rounded mx-auto d-block mb-3" alt="Foto Diri">
                                                        </div>
                                                        <div class="col-md-6">
                                                            <p class="fw-bold">Nama : {{ $direktorikeanggotaan->nama }}</p>
                                                            <p class="fw-bold">NBM : {{ $direktorikeanggotaan->nbm }}</p>
                                                            <p class="fw-bold">Tempat, Tanggal Lahir : {{ $direktorikeanggotaan->tempat_lahir }}, {{ \Carbon\Carbon::parse($direktorikeanggotaan->tanggal_lahir)->format('d/m/Y') }}                                                </p>
                                                            <p class="fw-bold">Cabang : {{ $direktorikeanggotaan->cabang }}</p>
                                                            <p class="fw-bold">Ranting : {{ $direktorikeanggotaan->ranting }}</p>
                                                            <p class="fw-bold">Alamat : {{ $direktorikeanggotaan->alamat }}</p>
                                                            <p class="fw-bold">Email : {{ $direktorikeanggotaan->email }}</p>
                                                            <p class="fw-bold">No. HP/WA : {{ $direktorikeanggotaan->no_hp }}</p>
                                                            <p class="fw-bold">Pekerjaan : {{ $direktorikeanggotaan->pekerjaan }}</p>
                                                            <div class="mt-3">
                                                                <p class="fw-bold">File KTAM :</p>
                                                                @if(!empty($direktorikeanggotaan->ktam))
                                                                    <a href="/storage/ktam/{{ $direktorikeanggotaan->ktam }}" class="btn btn-primary btn-sm" target="_blank"><span data-feather="download"> </span> Download</a>
                                                                @else
                                                                    <span class="text-dangerz">Tidak ada KTAM yang diupload</span>
                                                                @endif
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Tutup</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    @endforeach
                                
                                </tbody>
                            </table>
                        </div>
                        <div class="d-flex justify-content-left mt-2">
                            {{ $direktorikeanggotaans->links() }}
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

<!-- Menggunakan Bootstrap dari CDN -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.3/js/bootstrap.min.js"></script>
<!-- Menggunakan jQuery dari CDN -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>


@endsection

@section('scripts')
<script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/responsive/2.2.9/js/dataTables.responsive.min.js"></script>
<script>
    $(document).ready(function() {
        $('#clientside').DataTable({
            "paging": false,
            "searching": true,
            "ordering": true,
            "info": false,
            "autoWidth": false,
            "responsive": true,
            "lengthMenu": [10, 20, 50, 100],
            "pageLength": 10
        });
    });
</script>
@endsection