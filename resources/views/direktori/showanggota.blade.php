@extends('layouts.main')
@section('content')


<br><br><br>
<div class="container mt-5 mb-5">
    <div class="row">
        <div class="col-md-4">
            <div class="card border-0 shadow-sm rounded">
                <div class="card-body">
                    <img src="{{ asset('/storage/foto-diri/'.$keanggotaan->foto_diri) }}" class="rounded" style="width: 100%">
                </div>
            </div>
        </div>
        <div class="col-md-8">
            <div class="card border-0 shadow-sm rounded">
                <div class="card-body" style="font-size:1.1rem; font-weight: bold; color:black">
                    <h3>Data Diri Anggota</h3>
                    <hr/>
                    <tr>
                        <td width="7">Nama</td>
                        <td >:&nbsp;&nbsp;</td>
                        <td> {{ $keanggotaan->nama }}</td><br>
                    </tr>
                    
                    <tr>
                        <td width="45%">NBM</td>
                        <td>: {{ $keanggotaan->nbm }}</td><br>
                    </tr>
                    
                    <tr>
                        <td width="45%">Tempat, Tanggal Lahir</td>
                        <td>: {{ $keanggotaan->tempat_lahir}}, {{ (new DateTime($keanggotaan->tgl_lahir))->format('d/m/Y')  }}</td><br>
                    </tr>

                    <tr>
                        <td width="45%">Cabang</td>
                        <td>: {{ $keanggotaan->cabang }}</td><br>
                    </tr>
                    
                    <tr>
                        <td width="45%">Ranting</td>
                        <td>: {{ $keanggotaan->ranting }}</td><br>
                    </tr>
                    
                    <tr>
                        <td width="45%">Alamat</td>
                        <td>: {!! $keanggotaan->alamat !!}</td><br>
                    </tr>
                    
                    <tr>
                        <td width="45%">Email</td>
                        <td>: {{ $keanggotaan->email }}</td><br>
                    </tr>
                    
                    <tr>
                        <td width="45%">No. HP</td>
                        <td>: {{ $keanggotaan->no_hp }}</td><br>
                    </tr>
                    
                    <tr>
                        <td width="45%">Pekerjaan</td>
                        <td>: {{ $keanggotaan->pekerjaan }}</td>
                    </tr>
                    

                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

@endsection