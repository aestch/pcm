<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Http\RedirectResponse;
use Illuminate\Support\Facades\Redirect;
use App\Models\Mediasosial;
use App\Models\Setting;

class MediasosialController extends Controller
{
    public function index(Request $request)
    {   

        $Mediasosial = Mediasosial::latest();
        if ($request->wantsJson()) {
            return response()->json($Mediasosial->get(), 200);
        } 

        return view('dashboard.media-sosial.index', [
            'mediasosials' => Mediasosial::latest()->paginate(10),
            'pengaturan' => Setting::first()
        ]);
    }

    /**
     * Display the specified resource.
     */
    public function show(Mediasosial $mediasosial)
    {
        //
    }
}
