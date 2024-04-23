@extends('dashboard.layouts.main')

@section('container')

<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Pengguna Login</h1>
</div>

@if(session()->has('success'))
    <div class="alert alert-success col-lg-11" role="alert">
        {{ session('success') }}
    </div>
@endif

<div class="table-responsive col-lg-11">

    <a href="/dashboard/pengguna-login/create" class="btn btn-primary btn-sm mb-3"><span data-feather="plus"></span> Tambah data</a>

    <table class="table table-striped table-sm">
        <thead>
        <tr>
            <th scope="col">No</th>
            <th scope="col">Nama</th>
            <th scope="col">Username</th>
            <th scope="col">Email</th>
            <th scope="col">Password</th>
            <th scope="col">Hak Akses</th>
            <th scope="col">Action</th>
        </tr>
        </thead>
        <tbody>

        @foreach($users as $user)
        <tr>
            <td>{{ $loop->iteration }}</td>
            <td>{{ $user->name }}</td>
            <td>{{ $user->username }}</td>
            <td>{{ $user->email }}</td>
            <td>{{ $user->password }}</td>
            <td>{{ $user->role->name }}</td>
            <td>
                <a href="/dashboard/pengguna-login/{{ $user->id }}/edit" class="badge bg-warning"><span data-feather="edit"></span></a>
                <form action="/dashboard/pengguna-login/{{ $user->id }}" method="post" class="d-inline">
                    @method('delete')
                    @csrf
                    <button type="submit" class="badge bg-danger border-0" onclick="return confirm('Apakah anda yakin ingin menghapus?')"><span data-feather="x-circle"></span></button>
                </form>
            </td>
        </tr> 
        @endforeach
        </tbody>
    </table>
</div>

@endsection
