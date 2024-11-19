<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Http\RedirectResponse;
use App\Models\Amalusaha;
use App\Models\Setting;

class AmalusahaController extends Controller
{
    public function index(Request $request)
    {   

        $Amalusaha = Amalusaha::latest();
        if ($request->wantsJson()) {
            return response()->json($Amalusaha->get(), 200);
        } 

        return view('dashboard.amal-usaha.index', [
            'amalusahas' => Amalusaha::latest()->paginate(3),
            'pengaturan' => Setting::first()
        ]);
    }

    /**
     * Display the specified resource.
     */
    public function show(Amalusaha $amalusaha)
    {
        //
    }

    
}
