<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Http\RedirectResponse;
use App\Models\Direktorikeanggotaan;
use App\Models\Identitaspcm;
use App\Models\Setting;
use App\Models\Amalusaha;

class IdentitaspcmController extends Controller
{
    public function index(Request $request)
    {   

        $identitaspcm = Identitaspcm::latest();
        if ($request->wantsJson()) {
            return response()->json($identitaspcm->get(), 200);
        } 

        return view('dashboard.identitas-pcm.index', [
            'identitaspcms' => Identitaspcm::latest()->paginate(10),
            'pengaturan' => Setting::first()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */

    public function sejarah()
    {
        return view('sejarah', [
            "identitaspcms" => Identitaspcm::all(),
            'pengaturan'=> Setting::first(),
            'amalusaha' => Amalusaha::first()
        ]);
    }
    public function katasambutan()
    {
        return view('katasambutan', [
            "identitaspcms" => Identitaspcm::all(),
            "direktorikeanggotaans" => Direktorikeanggotaan::where('jabatan', 'Ketua')->get(),
            'pengaturan'=> Setting::first(),
            'amalusaha' => Amalusaha::first()
        ]);
    }
    public function visimisi()
    {
        return view('visimisi', [
            "identitaspcms" => Identitaspcm::all(),
            'pengaturan'=> Setting::first(),
            'amalusaha' => Amalusaha::first()
        ]);
    }
}
