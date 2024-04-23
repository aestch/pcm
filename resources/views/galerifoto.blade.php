@extends('layouts.main')

@section('container')

<div class="container">
    <div class="row justify-content-center mb-5">
        <div class="col-lg-8">
            <h1>Galeri Foto</h1>
            <br>

            <div class="container">
                <div class="row">
                    @foreach($galerifotos as $galerifoto)
                    <div class="col-md-3 bt-3 img-thumbnail">
                        <div class="card">

                            @if($galerifoto->image)
                                <img src="{{ asset('storage/galeri-foto/' . $galerifoto->image) }}" alt="" class="img-fluid">
                            @else
                                <img src="https://source.unsplash.com/500x300?{{ $galerifoto->image }}" class="card-img-top" alt="">
                            @endif
                        </div>
                    </div>
                    @endforeach
                    
                </div>
            </div>
            
        </div>
    </div>
</div>
<div class="d-flex justify-content-center">
    {{ $galerifotos->links() }}
</div>
@endsection