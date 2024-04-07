@extends('layouts.main')
@section('content')


<br><br><br>

<div class="container mt-5">
    <div class="row">
        <div class="col-md-12">
            <div>
                <h3 class="text-center my-4">Direktori Keanggotaan Pimpinan Cabang Muhammadiyah <br>Kecamatan Batam Kota</h3>
                <hr>
            </div>
            <div class="card border-0 shadow-sm rounded">
                <div class="card-body">
                    <a href="{{ route('direktori-keanggotaan.create') }}" class="btn btn-md btn-success mb-3"><i class="fa fa-user-plus"></i> Pengajuan Keanggotaan</a>
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th scope="col">No</th>
                                <th scope="col">Nama</th>
                                <th scope="col">Cabang</th>
                                <th scope="col">Ranting</th>
                                <th scope="col" style="width: 20%">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @forelse ($keanggotaans as $keanggotaan)
                                <tr>
                                    <td class="text-center">1</td>
                                    <td>{{ $keanggotaan->nama }}</td>
                                    <td>{{ $keanggotaan->cabang}}</td>
                                    <td>{{ $keanggotaan->ranting }}</td>
                                    <td class="text-center">
                                        <form onsubmit="return confirm('Apakah Anda Yakin ?');" action="{{ route('direktori-keanggotaan.destroy', $keanggotaan->id) }}" method="POST">
                                            <a href="{{ route('direktori-keanggotaan.show', $keanggotaan->id) }}" class="btn btn-sm btn-dark">SHOW</a>
                                            <a href="{{ route('direktori-keanggotaan.edit', $keanggotaan->id) }}" class="btn btn-sm btn-primary">EDIT</a>
                                            @csrf
                                            @method('DELETE')
                                            <button type="submit" class="btn btn-sm btn-danger">HAPUS</button>
                                        </form>
                                    </td>
                                </tr>
                            @empty
                                <div class="alert alert-danger">
                                    Data Keanggotaan belum Tersedia.
                                </div>
                            @endforelse
                        </tbody>
                    </table>
                    {{ $keanggotaans->links() }}
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<script>
    //message with sweetalert
    @if(session('success'))
        Swal.fire({
            icon: "success",
            title: "BERHASIL",
            text: "{{ session('success') }}",
            showConfirmButton: false,
            timer: 2000
        });
    @elseif(session('error'))
        Swal.fire({
            icon: "error",
            title: "GAGAL!",
            text: "{{ session('error') }}",
            showConfirmButton: false,
            timer: 2000
        });
    @endif

</script>




@endsection



