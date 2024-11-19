<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Http\RedirectResponse;
use App\Models\Arsipfile;
use App\Models\Setting;
use App\Models\User;

class ArsipfileController extends Controller
{
    public function index(Request $request)
    {   

        $Arsipfile = Arsipfile::latest();
        if ($request->wantsJson()) {
            return response()->json($Arsipfile->get(), 200);
        } 

        return view('dashboard.arsip-files.index', [
            'arsipfiles' => Arsipfile::latest()->paginate(10),
            'pengaturan' => Setting::first()
        ]);
    }

    /**
     * Display the specified resource.
     */
    public function show(Arsipfile $arsipfile)
    {
        //
    }
}
