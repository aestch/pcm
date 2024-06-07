<?php

namespace App\Http\Controllers;

use App\Models\Setting;
use App\Models\Direktorikeanggotaan;
use Illuminate\Http\Request;
use Illuminate\Http\RedirectResponse;
use Illuminate\Support\Facades\Storage;
class PengajuanController extends Controller
{
    public function kirim(Request $request)
    {
        $validateData = $request->validate([
            'nama' => 'required|max:255',
            'nbm' => 'required|numeric',
            'jenis_kelamin' => 'required|max:20',
            'tempat_lahir' => 'required|max:30',
            'tanggal_lahir' => 'required', 
            'cabang' => 'required|max:15', 
            'ranting' => 'required|max:15', 
            'alamat' => 'required|max:50', 
            'status_pernikahan' => 'required|max:50', 
            'email' => 'required|email|unique:direktorikeanggotaans,email',
            'no_hp' => 'required',
            'pekerjaan' => 'required|max:30',
            'foto_diri' => 'image|mimes:jpeg,png,jpg|max:3096',
            'ktam' => 'nullable|file|mimes:jpeg,jpg,png,pdf|max:3096',
            'jabatan' => 'required',
            'status' => 'required',
        ]);

        // upload image foto diri
        if($request->hasFile('foto_diri')) {
            $foto_diri = $request->file('foto_diri');
            $foto_diriName = hash('sha256', $foto_diri->getClientOriginalName()) . '.' . $foto_diri->getClientOriginalExtension();
            $foto_diri->storeAs('public/foto-diri', $foto_diriName);
            $validateData['foto_diri'] = $foto_diriName;
        }

        // upload image KTAM
        if($request->hasFile('ktam')) {
            $ktam = $request->file('ktam');
            $ktamName = hash('sha256', $ktam->getClientOriginalName()) . '.' . $ktam->getClientOriginalExtension();
            $ktam->storeAs('public/ktam', $ktamName);
            $validateData['ktam'] = $ktamName;
        }

        // create direktorikeanggotaan
        Direktorikeanggotaan::create($validateData);

        return redirect('/direktori-keanggotaan')->with('success', 'Keanggotaan baru berhasil ditambahkan!');
    }
}
