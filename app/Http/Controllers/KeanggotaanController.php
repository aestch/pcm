<?php

namespace App\Http\Controllers;

// import model keanggotaan
use App\Models\Keanggotaan;

// import type view
use Illuminate\View\View;

use Illuminate\Http\Request;

class KeanggotaanController extends Controller
{
    public function index(): View
    {
        // get all keanggotaan
        $keanggotaans = Keanggotaan::latest()->paginate(10);

        // render view with keanggotaan
        return view('direktori.keanggotaan', compact('keanggotaans'));
    }
}
