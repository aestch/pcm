<?php

namespace App\Http\Controllers;

// import model keanggotaan
use App\Models\Keanggotaan;

// import type view
use Illuminate\View\View;

// import type Redirect response
use Illuminate\Http\RedirectResponse;

// import facades storage
use Illuminate\Support\Facades\Storage;

use Illuminate\Http\Request;

class KeanggotaanController extends Controller
{
    public function index(): View
    {
        // get all keanggotaan
        $keanggotaans = Keanggotaan::latest()->paginate(10);

        // render view with keanggotaan
        return view('direktori.keanggotaan', compact('keanggotaans'))->with('i', (request()->input('page', 1) - 1) * 5);
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
            'foto_diri' => 'required|image|mimes:jpeg,jpg,png|max:2048',
            'file_ktam' => 'required|mimes:pdf,jpeg,jpg,png|max:2048'
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
            'foto_diri' => $foto_diri->hashName(),
            'file_ktam' => $file_ktam->hashName()
        ]);

        // redirect to index
        return redirect()->route('direktori-keanggotaan.index')->with(['success' => 'Pengajuan berhasil disimpan!']);
    }

    public function show(string $id): View
    {
        // get keanggotaan by ID
        $keanggotaan = Keanggotaan::findOrFail($id);

        // render view with keanggotaan
        return view('direktori.showanggota', compact('keanggotaan'));
    }

    public function edit(string $id): View
    {
        // get keanggotaan by ID
        $keanggotaan = Keanggotaan::findOrFail($id);

        // render view with keanggotaan
        return view('direktori.editanggota', compact('keanggotaan'));

    }

    public function update(Request $request,$id): RedirectResponse
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
            'foto_diri' => 'required|image|mimes:jpeg,jpg,png|max:2048',
            'file_ktam' => 'required|mimes:pdf,jpeg,jpg,png|max:2048'
        ]);

        $keanggotaan = Keanggotaan::findOrFail($id);

        // check if image is uploaded
        if($request->hasFile('foto_diri')){
            // upload new image
            $foto_diri = $request->file('foto_diri');
            $foto_diri->storeAs('public/foto-diri', $foto_diri->hashName());

            $file_ktam = $request->file('file_ktam');
            $file_ktam->storeAs('public/file-ktam', $file_ktam->hashName());

            // delete old image
            Storage::delete('public/foto-diri'.$keanggotaan->foto_diri);
            Storage::delete('public/file-ktam'.$keanggotaan->file_ktam);

            // update new keanggotaan with new image

            $keanggotaan->update([
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
                'foto_diri' => $foto_diri->hashName(),
                'file_ktam' => $file_ktam->hashName()
            ]);
        }else{

            // update product without image
            $keanggotaan->update([
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
            'pekerjaan' => $request->pekerjaan
            ]);
        }

        // redirect to index
        return redirect()->route('direktori-keanggotaan.index')->with(['success' => 'Data berhasil diubah!']);
    }

    public function destroy($id): RedirectResponse
    {
        // get anggota by ID
        $keanggotaan = Keanggotaan::findOrFail($id);

        // delete image
        Storage::delete('public/foto-diri'.$keanggotaan->foto_diri);
        Storage::delete('public/file-ktam'.$keanggotaan->file_ktam);

        // delete keanggotaan
        $keanggotaan->delete();

        // redirect to index
        return redirect()->route('direktori-keanggotaan.index')->with(['success' => 'Data Berhasil Dihapus!']);
    }
}
