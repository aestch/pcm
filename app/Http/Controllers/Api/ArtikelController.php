<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Http\RedirectResponse;
use App\Models\Amalusaha;
use App\Models\Artikel;
use App\Models\Setting;
use App\Models\Kategoriartikel;
use App\Models\Komentarartikel;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Storage;

class ArtikelController extends Controller
{
    public function index(Request $request)
    {   
        // Mengambil data artikel beserta nama kategori dan komentar
        $artikels = Artikel::with(['kategori', 'komentar'])->latest();

        if ($request->wantsJson()) {
            return response()->json($artikels->get(), 200);
        } 

        return view('dashboard.artikel.index', [
            'artikels' => $artikels->paginate(10),
            'pengaturan' => Setting::first()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */

   
}
