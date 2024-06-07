@extends('layouts.main')

@section('container')

<div class="container">
    <div class="row justify-content-center mb-5">
        <div class="col-lg-10 mt-5">
            <h1 class="text-center">Direktori Keanggotaan</h1><hr>
            <br>
            <div class="card-body">
                <a href="/direktori-keanggotaan/gabung" class="btn btn-primary btn-sm mb-3"><i class="fas fa-user-plus"></i> Pengajuan Keanggotaan</a>
                    <div class="table-responsive">
                        <table id="clientside" class="table table-hover table-striped table-bordered dt-responsive nowrap" style="width:100%">
                            <thead>
                            <tr>
                            <th>No</th>
                            <th>Nama</th>
                            <th>Cabang</th>
                            <th>Ranting</th>
                            <th>Jabatan</th>
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
                                    <td>
                                        <a href="/dashboard/direktori-keanggotaan/{{ $direktorikeanggotaan->id }}/show" class="btn btn-info btn-sm" data-bs-toggle="modal" data-bs-target="#detilAnggota{{ $direktorikeanggotaan->id }}" data-bs-whatever="@mdo"><i class="fas fa-eye"></i> Detail</a>
                                        
                                        
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
        </div>
    </div>
</div>
   
@endsection