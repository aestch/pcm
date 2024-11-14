<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Http\RedirectResponse;
use App\Models\Direktorikeanggotaan;
use App\Models\Setting;
use App\Models\Amalusaha;
use Illuminate\Support\Facades\Storage;
use App\Models\Galerifoto;

class GaleriFotoController extends Controller
{
    public function index(Request $request)
    {   

        $galerifoto = Galerifoto::latest();
        if ($request->wantsJson()) {
            return response()->json($galerifoto->get(), 200);
        } 


    
        return view('dashboard.galeri-foto.index', [
            'galerifotos' => Galerifoto::latest()->paginate(12),
            'totalData' => Galerifoto::count(),
            'pengaturan' => Setting::first()
        ]);
    
    }

    
}
