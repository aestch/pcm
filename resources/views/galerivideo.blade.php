@extends('layouts.main')

@section('container')

<div class="container">
    <div class="row justify-content-center mb-5">
        <div class="col-lg-10">
            <h1 class="mt-2">Galeri Video</h1>
            <br>
            <!-- Include DataTables CSS -->
            <link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css">
            
            <table id="videoTable" class="table table-responsive table-bordered table-striped">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Judul Video</th>
                        <th>Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($galerivideos as $galerivideo)
                    <tr>
                        <td>{{ $loop->iteration }}</td>
                        <td>{{ $galerivideo->judul_video }}</td>
                        <td><a href="{{ $galerivideo->link_video }}" target="_blank"><i class="fas fa-link"></i> Lihat Video</a></td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
</div>

<!-- Include jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- Include DataTables JS -->
<script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
<!-- Include Font Awesome (for icons) -->
<script src="https://kit.fontawesome.com/a076d05399.js"></script>

<!-- Initialize DataTables -->
<script>
    $(document).ready(function() {
        $('#videoTable').DataTable();
    });
</script>

@endsection
