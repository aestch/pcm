<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Http\RedirectResponse;
use Illuminate\Support\Facades\Storage;
use App\Models\Carousel;
use App\Models\Setting;

class CarouselController extends Controller
{
    public function index(Request $request)
    {   

        $Carousel = Carousel::latest();
        if ($request->wantsJson()) {
            return response()->json($Carousel->get(), 200);
        } 

        return view('dashboard.carousel.index', [
            'carousels' => Carousel::latest()->paginate(12),
            'pengaturan' => Setting::first()
        ]);
    }

    /**
     * Display the specified resource.
     */
    public function show(Carousel $carousel)
    {
        //
    }
}
