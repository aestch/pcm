<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Http\RedirectResponse;
use App\Models\Ortom;
use App\Models\Setting;

class OrtomController extends Controller
{
    public function index(Request $request)
    {   

        $Ortom = Ortom::latest();
        if ($request->wantsJson()) {
            return response()->json($Ortom->get(), 200);
        } 

        return view('dashboard.ortom.index', [
            'ortoms' => Ortom::latest()->paginate(10),
            'pengaturan' => Setting::first()
        ]);
    }

    /**
     * Display the specified resource.
     */
    public function show(Ortom $ortom)
    {
        //
    }
}
