@extends('layouts.main')

@section('container')

<div class="container">
    <div class="row justify-content-center mb-5">
        <div class="col-lg-10 mt-5">
            <h1 class="text-center">Sejarah</h1><hr>
            <br>
            <div class="container">
                <div class="row">
                    @foreach($identitaspcms as $identitaspcm)
                        <article>
                            {!! $identitaspcm->sejarah !!}
                        </article>
                    @endforeach  
                </div>
            </div>
        </div>
    </div>
</div>
   
@endsection