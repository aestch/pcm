@extends('layouts.main')

@section('container')

<div class="container">
    <div class="row justify-content-center mb-5">
        <div class="col-lg-10 mt-5">
            <h1 class="text-center">Kata Sambutan Ketua PCM</h1><hr>
            <br>
            <div class="container">
                @foreach($direktorikeanggotaans as $anggota)
                    <center><img src="{{ asset('storage/foto-diri/'. $anggota->foto_diri) }}" alt="" class="img-fluid mb-5"></center>
                @endforeach

                <div class="row">
                    @foreach($identitaspcms as $identitaspcm)
                        <article>
                            {!! $identitaspcm->kata_sambutan !!}
                        </article>
                    @endforeach  
                </div>
            </div>
        </div>
    </div>
</div>
   
@endsection