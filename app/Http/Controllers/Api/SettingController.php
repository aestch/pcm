<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Http\RedirectResponse;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Storage;
use App\Models\Setting;

class SettingController extends Controller
{
    public function index(Request $request)
    {   

        $Setting = Setting::latest();
        if ($request->wantsJson()) {
            return response()->json($Setting->get(), 200);
        } 

        return view('dashboard.setting.index', [
            'pengaturans' => Setting::latest()->paginate(10)
        ]);
    }

    /**
     * Display the specified resource.
     */
    public function show(Setting $setting)
    {
        //
    }
}
