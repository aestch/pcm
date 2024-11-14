<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Http\RedirectResponse;
use App\Models\Direktorikeanggotaan;
use App\Models\Setting;
use App\Models\Amalusaha;
use Illuminate\Support\Facades\Storage;

class DirektoriKeanggotaanController extends Controller
{
    
    public function index(Request $request)
    {
        $direktorikeanggotaan = Direktorikeanggotaan::latest();
        if ($request->wantsJson()) {
            return response()->json($direktorikeanggotaan->get(), 200);
        } 

        return view('dashboard.direktori-keanggotaan.index', [
            'direktorikeanggotaans' => Direktorikeanggotaan::latest()->paginate(10),
            'pengaturan' => Setting::first()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    
}
