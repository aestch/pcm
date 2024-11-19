<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Http\RedirectResponse;
use App\Models\Pengumuman;
use App\Models\Setting;

class PengumumanController extends Controller
{
    public function index(Request $request)
    {   

        $Pengumuman = Pengumuman::latest();
        if ($request->wantsJson()) {
            return response()->json($Pengumuman->get(), 200);
        } 

        return view('dashboard.pengumuman.index', [
            'pengumumans' => Pengumuman::latest()->paginate(10),
            'pengaturan' => Setting::first()
        ]);
    }

    /**
     * Display the specified resource.
     */
    public function show(Pengumuman $pengumuman)
    {
        //
    }
}
