@extends('layouts.main')

@section('container')

<div class="container">
    <div class="row justify-content-center mb-5">
        <div class="col-lg-8">
            <h1 class="my-3">Visi dan Misi</h1><hr>
            <br>
            <div class="container">
                <div class="row">
                    @foreach($identitaspcms as $identitaspcm)
                        <article>
                            {!! $identitaspcm->visimisi !!}
                        </article>
                    @endforeach  
                </div>
            </div>
        </div>
    </div>
</div>
   
@endsection