@extends('layouts.main')

@section('container')

<div class="container">
    <div class="row justify-content-center mb-5">
        <div class="col-lg-10 mt-5">
            <h1 class="text-center">Kata Sambutan Ketua PCM</h1><hr>
            <br>
            <style>
                .card-img-top {
                  width: 100%; /* memastikan gambar selebar card */
                  height: 500px; /* menetapkan tinggi gambar */
                  object-fit: cover; /* memastikan gambar menutupi card dengan proporsi yang benar */
                }
              </style>
            <div class="container">
                @foreach($direktorikeanggotaans as $anggota)
                    <center><img src="{{ asset('storage/foto-diri/'. $anggota->foto_diri) }}" alt="" class=" img-fluid mb-5" style="border: 2px solid white; padding: 5px;"></center>
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