@extends('layouts.main')

@section('container')

<div class="container">
    <div class="row justify-content-center mb-5">
        <div class="col-lg-8">
            <h1 class="my-3">Sejarah</h1><hr>
            <br>
            <div class="container">
                <div class="row">
                    @foreach($identitaspcms as $identitaspcm)
                    <div class="col-md-12 bt-3 img-thumbnail">
                        <div class="card">

                            <article>
                                {!! $identitaspcm->sejarah !!}
                            </article>
                        </div>
                    </div>
                    @endforeach
                    
                </div>
            </div>
        </div>
    </div>
</div>
   
@endsection