@extends('layouts.main')

@section('container')
<!-- Carousel Start -->

<!-- carousel/index.blade.php -->
<div class="container-fluid p-0 pb-5">
    <div class="owl-carousel header-carousel position-relative">
        @foreach ($carousels as $carousel)
            <div class="owl-carousel-item position-relative">
                <img class="img-fluid" src="{{ asset('storage/carousel/'. $carousel->image) }}" alt="">
                <div class="position-absolute top-0 start-0 w-100 h-100 d-flex align-items-center" style="background: rgba(53, 53, 53, .7);">
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-12 col-lg-8 text-center">
                                {{-- <h5 class="text-white text-uppercase mb-3 animated slideInDown">Selamat datang di Website</h5> --}}
                                <h6 class="display-3 text-white animated slideInDown mb-4 fs-1">{{ $carousel->judul }}</h6>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        @endforeach
    </div>
</div>

<!-- Carousel End -->


<!-- Feature Start -->
<div class="container-xxl py-5">
    <div class="container">
        <div class="row g-5">
            <div class="col-md-6 col-lg-3 wow fadeIn" data-wow-delay="0.1s">
                <div class="d-flex align-items-center justify-content-between mb-2">
                    <div class="d-flex align-items-center justify-content-center bg-light" style="width: 60px; height: 60px;">
                        <i class="fa fa-users fa-2x text-primary"></i>
                    </div>
                    <h1 class="display-1 text-light mb-0">01</h1>
                </div>
                <h5>Total Anggota</h5>
                <h5>{{ $total_anggota }}</h5>
            </div>
            <div class="col-md-6 col-lg-3 wow fadeIn" data-wow-delay="0.3s">
                <div class="d-flex align-items-center justify-content-between mb-2">
                    <div class="d-flex align-items-center justify-content-center bg-light" style="width: 60px; height: 60px;">
                        <i class="fa fa-coins fa-2x text-primary"></i>
                    </div>
                    <h1 class="display-1 text-light mb-0">02</h1>
                </div>
                <h5>Total Saldo Kas</h5>
                <h5>Rp {{ number_format($total_kas, 2, ',', '.') }}</h5>
            </div>
            <div class="col-md-6 col-lg-3 wow fadeIn" data-wow-delay="0.5s">
                <div class="d-flex align-items-center justify-content-between mb-2">
                    <div class="d-flex align-items-center justify-content-center bg-light" style="width: 60px; height: 60px;">
                        <i class="fa fa-newspaper fa-2x text-primary"></i>
                    </div>
                    <h1 class="display-1 text-light mb-0">03</h1>
                </div>
                <h5>Total Berita</h5>
                <h5>{{ $total_berita }}</h5>
            </div>
            <div class="col-md-6 col-lg-3 wow fadeIn" data-wow-delay="0.7s">
                <div class="d-flex align-items-center justify-content-between mb-2">
                    <div class="d-flex align-items-center justify-content-center bg-light" style="width: 60px; height: 60px;">
                        <i class="fa fa-book fa-2x text-primary"></i>
                    </div>
                    <h1 class="display-1 text-light mb-0">04</h1>
                </div>
                <h5>Total Artikel</h5>
                <h5>{{ $total_artikel }}</h5>
            </div>
        </div>
    </div>
</div>
<!-- Feature Start -->

<!-- Pengumuman Start -->
<div class="container-xxl py-5">
    <div class="container">
        <div class="section-title text-center">
            <h1 class="display-5 mb-5">Pengumuman PCM Batam Kota</h1>
        </div>
        <div class="row g-4">
            <div class="container mt-5">
                <!-- Pengumuman Cards -->
                <div class="row justify-content-center">
                    @foreach ($pengumuman as $item)
                        <div class="col-lg-8">
                            <div class="card mb-3">
                                <div class="card-header bg-primary text-white">
                                    <h5 class="card-title mb-0 text-white">{{ $item->judul_pengumuman }}</h5>
                                </div>
                                <div class="card-body">
                                    <p class="card-text">{!! $item->isi_pengumuman !!}</p>
                                </div>
                                <div class="card-footer text-muted">
                                    <small>Tanggal: {{ \Carbon\Carbon::parse($item->tanggal)->format('d-m-Y') }}</small><br>
                                    <small>Waktu: {{ \Carbon\Carbon::parse($item->waktu)->format('H:i A') }}</small>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
        
                <!-- Pagination Links -->
                <div class="row justify-content-center">
                    <div class="col-lg-8">
                        {{ $pengumuman->links() }}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Service End -->

<div class="container-xxl py-5">
    <div class="container">
        <div class="section-title text-center">
            <h1 class="display-5 mb-5">Agenda Persyarikatan</h1>
        </div>
        <div class="row g-4">
            <div class="container mt-5">
                <!-- Agenda Cards -->
                <div class="row justify-content-center">
                    @foreach ($agenda as $item)
                        <div class="col-lg-8">
                            <div class="card mb-3">
                                {{-- <div class="card-header bg-primary text-white">
                                    <h5 class="card-title mb-0">{{ $item->nama_agenda }}</h5>
                                </div> --}}
                                <div class="card-body bg-primary text-white">
                                    <p class="card-text">{!! $item->nama_agenda !!}</p>
                                </div>
                                <div class="card-footer text-muted">
                                    <small>Tanggal: {{ \Carbon\Carbon::parse($item->tgl_agenda)->format('d-m-Y') }}</small><br>
                                    <small>Waktu: {{ \Carbon\Carbon::parse($item->start_time)->format('H:i A') }} - {{ \Carbon\Carbon::parse($item->end_time)->format('H:i A') }}</small>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
        
                <!-- Pagination Links -->
                <div class="row justify-content-center">
                    <div class="col-lg-8">
                        {{ $pengumuman->links() }}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="container-xxl py-5">
    <div class="container">
        <div class="section-title text-center">
            <h1 class="display-5 mb-5">Media Sosial</h1>
        </div>
        <div class="row g-4">
            <div class="container mt-5">
                <!-- Agenda Cards -->
                <div class="row justify-content-center">
                    <div class="row">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th scope="col">Nama</th>
                                    <th scope="col">Link</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($mediasosial as $item)
                                    <tr>
                                        <td>{{ $item->nama_medsos }}</td>
                                        <td><a href="{{ $item->link_medsos }}" target="_blank"><i class="fas fa-link"></i> Kunjungi Link</a></td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>



<!-- Feature Start -->
{{-- <div class="container-fluid bg-light overflow-hidden my-5 px-lg-0">
    <div class="container feature px-lg-0">
        <div class="row g-0 mx-lg-0">
            <div class="col-lg-6 feature-text py-5 wow fadeIn" data-wow-delay="0.5s">
                <div class="p-lg-5 ps-lg-0">
                    <div class="section-title text-start">
                        <h1 class="display-5 mb-4">Why Choose Us</h1>
                    </div>
                    <p class="mb-4 pb-2">Tempor erat elitr rebum at clita. Diam dolor diam ipsum sit. Aliqu diam amet diam et eos. Clita erat ipsum et lorem et sit, sed stet lorem sit clita duo justo erat amet</p>
                    <div class="row g-4">
                        <div class="col-6">
                            <div class="d-flex align-items-center">
                                <div class="d-flex flex-shrink-0 align-items-center justify-content-center bg-white" style="width: 60px; height: 60px;">
                                    <i class="fa fa-check fa-2x text-primary"></i>
                                </div>
                                <div class="ms-4">
                                    <p class="mb-2">Quality</p>
                                    <h5 class="mb-0">Services</h5>
                                </div>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="d-flex align-items-center">
                                <div class="d-flex flex-shrink-0 align-items-center justify-content-center bg-white" style="width: 60px; height: 60px;">
                                    <i class="fa fa-user-check fa-2x text-primary"></i>
                                </div>
                                <div class="ms-4">
                                    <p class="mb-2">Creative</p>
                                    <h5 class="mb-0">Designers</h5>
                                </div>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="d-flex align-items-center">
                                <div class="d-flex flex-shrink-0 align-items-center justify-content-center bg-white" style="width: 60px; height: 60px;">
                                    <i class="fa fa-drafting-compass fa-2x text-primary"></i>
                                </div>
                                <div class="ms-4">
                                    <p class="mb-2">Free</p>
                                    <h5 class="mb-0">Consultation</h5>
                                </div>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="d-flex align-items-center">
                                <div class="d-flex flex-shrink-0 align-items-center justify-content-center bg-white" style="width: 60px; height: 60px;">
                                    <i class="fa fa-headphones fa-2x text-primary"></i>
                                </div>
                                <div class="ms-4">
                                    <p class="mb-2">Customer</p>
                                    <h5 class="mb-0">Support</h5>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 pe-lg-0" style="min-height: 400px;">
                <div class="position-relative h-100">
                    <img class="position-absolute img-fluid w-100 h-100" src="img/feature.jpg" style="object-fit: cover;" alt="">
                </div>
            </div>
        </div>
    </div>
</div> --}}
<!-- Feature End -->


<!-- Projects Start -->
{{-- <div class="container-xxl py-5">
    <div class="container">
        <div class="section-title text-center">
            <h1 class="display-5 mb-5">Our Projects</h1>
        </div>
        <div class="row mt-n2 wow fadeInUp" data-wow-delay="0.3s">
            <div class="col-12 text-center">
                <ul class="list-inline mb-5" id="portfolio-flters">
                    <li class="mx-2 active" data-filter="*">All</li>
                    <li class="mx-2" data-filter=".first">General Carpentry</li>
                    <li class="mx-2" data-filter=".second">Custom Carpentry</li>
                </ul>
            </div>
        </div>
        <div class="row g-4 portfolio-container">
            <div class="col-lg-4 col-md-6 portfolio-item first wow fadeInUp" data-wow-delay="0.1s">
                <div class="rounded overflow-hidden">
                    <div class="position-relative overflow-hidden">
                        <img class="img-fluid w-100" src="img/portfolio-1.jpg" alt="">
                        <div class="portfolio-overlay">
                            <a class="btn btn-square btn-outline-light mx-1" href="img/portfolio-1.jpg" data-lightbox="portfolio"><i class="fa fa-eye"></i></a>
                            <a class="btn btn-square btn-outline-light mx-1" href=""><i class="fa fa-link"></i></a>
                        </div>
                    </div>
                    <div class="border border-5 border-light border-top-0 p-4">
                        <p class="text-primary fw-medium mb-2">General Carpentry</p>
                        <h5 class="lh-base mb-0">Wooden Furniture Manufacturing And Remodeling</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 portfolio-item second wow fadeInUp" data-wow-delay="0.3s">
                <div class="rounded overflow-hidden">
                    <div class="position-relative overflow-hidden">
                        <img class="img-fluid w-100" src="img/portfolio-2.jpg" alt="">
                        <div class="portfolio-overlay">
                            <a class="btn btn-square btn-outline-light mx-1" href="img/portfolio-2.jpg" data-lightbox="portfolio"><i class="fa fa-eye"></i></a>
                            <a class="btn btn-square btn-outline-light mx-1" href=""><i class="fa fa-link"></i></a>
                        </div>
                    </div>
                    <div class="border border-5 border-light border-top-0 p-4">
                        <p class="text-primary fw-medium mb-2">Custom Carpentry</p>
                        <h5 class="lh-base mb-0">Wooden Furniture Manufacturing And Remodeling</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 portfolio-item first wow fadeInUp" data-wow-delay="0.5s">
                <div class="rounded overflow-hidden">
                    <div class="position-relative overflow-hidden">
                        <img class="img-fluid w-100" src="img/portfolio-3.jpg" alt="">
                        <div class="portfolio-overlay">
                            <a class="btn btn-square btn-outline-light mx-1" href="img/portfolio-3.jpg" data-lightbox="portfolio"><i class="fa fa-eye"></i></a>
                            <a class="btn btn-square btn-outline-light mx-1" href=""><i class="fa fa-link"></i></a>
                        </div>
                    </div>
                    <div class="border border-5 border-light border-top-0 p-4">
                        <p class="text-primary fw-medium mb-2">General Carpentry</p>
                        <h5 class="lh-base mb-0">Wooden Furniture Manufacturing And Remodeling</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 portfolio-item second wow fadeInUp" data-wow-delay="0.1s">
                <div class="rounded overflow-hidden">
                    <div class="position-relative overflow-hidden">
                        <img class="img-fluid w-100" src="img/portfolio-4.jpg" alt="">
                        <div class="portfolio-overlay">
                            <a class="btn btn-square btn-outline-light mx-1" href="img/portfolio-4.jpg" data-lightbox="portfolio"><i class="fa fa-eye"></i></a>
                            <a class="btn btn-square btn-outline-light mx-1" href=""><i class="fa fa-link"></i></a>
                        </div>
                    </div>
                    <div class="border border-5 border-light border-top-0 p-4">
                        <p class="text-primary fw-medium mb-2">Custom Carpentry</p>
                        <h5 class="lh-base mb-0">Wooden Furniture Manufacturing And Remodeling</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 portfolio-item first wow fadeInUp" data-wow-delay="0.3s">
                <div class="rounded overflow-hidden">
                    <div class="position-relative overflow-hidden">
                        <img class="img-fluid w-100" src="img/portfolio-5.jpg" alt="">
                        <div class="portfolio-overlay">
                            <a class="btn btn-square btn-outline-light mx-1" href="img/portfolio-5.jpg" data-lightbox="portfolio"><i class="fa fa-eye"></i></a>
                            <a class="btn btn-square btn-outline-light mx-1" href=""><i class="fa fa-link"></i></a>
                        </div>
                    </div>
                    <div class="border border-5 border-light border-top-0 p-4">
                        <p class="text-primary fw-medium mb-2">General Carpentry</p>
                        <h5 class="lh-base mb-0">Wooden Furniture Manufacturing And Remodeling</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 portfolio-item second wow fadeInUp" data-wow-delay="0.5s">
                <div class="rounded overflow-hidden">
                    <div class="position-relative overflow-hidden">
                        <img class="img-fluid w-100" src="img/portfolio-6.jpg" alt="">
                        <div class="portfolio-overlay">
                            <a class="btn btn-square btn-outline-light mx-1" href="img/portfolio-6.jpg" data-lightbox="portfolio"><i class="fa fa-eye"></i></a>
                            <a class="btn btn-square btn-outline-light mx-1" href=""><i class="fa fa-link"></i></a>
                        </div>
                    </div>
                    <div class="border border-5 border-light border-top-0 p-4">
                        <p class="text-primary fw-medium mb-2">Custom Carpentry</p>
                        <h5 class="lh-base mb-0">Wooden Furniture Manufacturing And Remodeling</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div> --}}
<!-- Projects End -->


<!-- Quote Start -->
{{-- <div class="container-fluid bg-light overflow-hidden my-5 px-lg-0">
    <div class="container quote px-lg-0">
        <div class="row g-0 mx-lg-0">
            <div class="col-lg-6 ps-lg-0" style="min-height: 400px;">
                <div class="position-relative h-100">
                    <img class="position-absolute img-fluid w-100 h-100" src="img/quote.jpg" style="object-fit: cover;" alt="">
                </div>
            </div>
            <div class="col-lg-6 quote-text py-5 wow fadeIn" data-wow-delay="0.5s">
                <div class="p-lg-5 pe-lg-0">
                    <div class="section-title text-start">
                        <h1 class="display-5 mb-4">Free Quote</h1>
                    </div>
                    <p class="mb-4 pb-2">Tempor erat elitr rebum at clita. Diam dolor diam ipsum sit. Aliqu diam amet diam et eos. Clita erat ipsum et lorem et sit, sed stet lorem sit clita duo justo erat amet</p>
                    <form>
                        <div class="row g-3">
                            <div class="col-12 col-sm-6">
                                <input type="text" class="form-control border-0" placeholder="Your Name" style="height: 55px;">
                            </div>
                            <div class="col-12 col-sm-6">
                                <input type="email" class="form-control border-0" placeholder="Your Email" style="height: 55px;">
                            </div>
                            <div class="col-12 col-sm-6">
                                <input type="text" class="form-control border-0" placeholder="Your Mobile" style="height: 55px;">
                            </div>
                            <div class="col-12 col-sm-6">
                                <select class="form-select border-0" style="height: 55px;">
                                    <option selected>Select A Service</option>
                                    <option value="1">Service 1</option>
                                    <option value="2">Service 2</option>
                                    <option value="3">Service 3</option>
                                </select>
                            </div>
                            <div class="col-12">
                                <textarea class="form-control border-0" placeholder="Special Note"></textarea>
                            </div>
                            <div class="col-12">
                                <button class="btn btn-primary w-100 py-3" type="submit">Submit</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div> --}}
<!-- Quote End -->


<!-- Team Start -->
{{-- <div class="container-xxl py-5">
    <div class="container">
        <div class="section-title text-center">
            <h1 class="display-5 mb-5">Team Members</h1>
        </div>
        <div class="row g-4">
            <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                <div class="team-item">
                    <div class="overflow-hidden position-relative">
                        <img class="img-fluid" src="img/team-1.jpg" alt="">
                        <div class="team-social">
                            <a class="btn btn-square" href=""><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-square" href=""><i class="fab fa-twitter"></i></a>
                            <a class="btn btn-square" href=""><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                    <div class="text-center border border-5 border-light border-top-0 p-4">
                        <h5 class="mb-0">Full Name</h5>
                        <small>Designation</small>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                <div class="team-item">
                    <div class="overflow-hidden position-relative">
                        <img class="img-fluid" src="img/team-2.jpg" alt="">
                        <div class="team-social">
                            <a class="btn btn-square" href=""><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-square" href=""><i class="fab fa-twitter"></i></a>
                            <a class="btn btn-square" href=""><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                    <div class="text-center border border-5 border-light border-top-0 p-4">
                        <h5 class="mb-0">Full Name</h5>
                        <small>Designation</small>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                <div class="team-item">
                    <div class="overflow-hidden position-relative">
                        <img class="img-fluid" src="img/team-3.jpg" alt="">
                        <div class="team-social">
                            <a class="btn btn-square" href=""><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-square" href=""><i class="fab fa-twitter"></i></a>
                            <a class="btn btn-square" href=""><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                    <div class="text-center border border-5 border-light border-top-0 p-4">
                        <h5 class="mb-0">Full Name</h5>
                        <small>Designation</small>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.7s">
                <div class="team-item">
                    <div class="overflow-hidden position-relative">
                        <img class="img-fluid" src="img/team-4.jpg" alt="">
                        <div class="team-social">
                            <a class="btn btn-square" href=""><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-square" href=""><i class="fab fa-twitter"></i></a>
                            <a class="btn btn-square" href=""><i class="fab fa-instagram"></i></a>
                        </div>
                    </div>
                    <div class="text-center border border-5 border-light border-top-0 p-4">
                        <h5 class="mb-0">Full Name</h5>
                        <small>Designation</small>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div> --}}
<!-- Team End -->


<!-- Testimonial Start -->
{{-- <div class="container-xxl py-5 wow fadeInUp" data-wow-delay="0.1s">
    <div class="container">
        <div class="section-title text-center">
            <h1 class="display-5 mb-5">Testimonial</h1>
        </div>
        <div class="owl-carousel testimonial-carousel">
            <div class="testimonial-item text-center">
                <img class="img-fluid bg-light p-2 mx-auto mb-3" src="img/testimonial-1.jpg" style="width: 90px; height: 90px;">
                <div class="testimonial-text text-center p-4">
                    <p>Clita clita tempor justo dolor ipsum amet kasd amet duo justo duo duo labore sed sed. Magna ut diam sit et amet stet eos sed clita erat magna elitr erat sit sit erat at rebum justo sea clita.</p>
                    <h5 class="mb-1">Client Name</h5>
                    <span class="fst-italic">Profession</span>
                </div>
            </div>
            <div class="testimonial-item text-center">
                <img class="img-fluid bg-light p-2 mx-auto mb-3" src="img/testimonial-2.jpg" style="width: 90px; height: 90px;">
                <div class="testimonial-text text-center p-4">
                    <p>Clita clita tempor justo dolor ipsum amet kasd amet duo justo duo duo labore sed sed. Magna ut diam sit et amet stet eos sed clita erat magna elitr erat sit sit erat at rebum justo sea clita.</p>
                    <h5 class="mb-1">Client Name</h5>
                    <span class="fst-italic">Profession</span>
                </div>
            </div>
            <div class="testimonial-item text-center">
                <img class="img-fluid bg-light p-2 mx-auto mb-3" src="img/testimonial-3.jpg" style="width: 90px; height: 90px;">
                <div class="testimonial-text text-center p-4">
                    <p>Clita clita tempor justo dolor ipsum amet kasd amet duo justo duo duo labore sed sed. Magna ut diam sit et amet stet eos sed clita erat magna elitr erat sit sit erat at rebum justo sea clita.</p>
                    <h5 class="mb-1">Client Name</h5>
                    <span class="fst-italic">Profession</span>
                </div>
            </div>
        </div>
    </div>
</div> --}}
<!-- Testimonial End -->
@endsection