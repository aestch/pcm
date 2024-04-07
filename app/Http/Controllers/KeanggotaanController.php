<?php

namespace App\Http\Controllers;

// import model keanggotaan
use App\Models\Keanggotaan;

// import type view
use Illuminate\View\View;

// import type Redirect response
use Illuminate\Http\RedirectResponse;

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

    public function create(): View
    {
        return view('direktori.create');
    }

    public function store(Request $request): RedirectResponse
    {
        // validate form
        $request->validate([
            'nama' => 'required',
            'nbm' => 'required',
            'tempat_lahir' => 'required',
            'tgl_lahir' => 'required',
            'cabang' => 'required',
            'ranting' => 'required',
            'alamat' => 'required',
            'status_perkawinan' => 'required',
            'no_hp' => 'required',
            'pekerjaan' => 'required',
            'foto_diri' => 'required',
            'file_ktam' => 'required',
        ]);

        // upload image
        $foto_diri = $request->file('foto_diri');
        $foto_diri->storeAs('public/foto-diri', $foto_diri->hashName());

        $file_ktam = $request->file('file_ktam');
        $file_ktam->storeAs('public/file-ktam', $file_ktam->hashName());

        // create keanggotaan
        Keanggotaan::create([
            'nama' => $request->nama,
            'nbm' => $request->nbm,
            'tempat_lahir' => $request->tempat_lahir,
            'tgl_lahir' => $request->tgl_lahir,
            'cabang' => $request->cabang,
            'ranting' => $request->ranting,
            'alamat' => $request->alamat,
            'status_perkawinan' => $request->status_perkawinan,
            'email' => $request->email,
            'no_hp' => $request->no_hp,
            'pekerjaan' => $request->pekerjaan,
            'foto_diri' => $request->foto_diri,
            'file_ktam' => $request->file_ktam
        ]);

        // redirect to index
        return redirect()->route('direktori-keanggotaan.index')->with(['success' => 'Pengajuan berhasil disimpan!']);
    }
}
