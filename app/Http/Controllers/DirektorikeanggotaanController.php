<?php

namespace App\Http\Controllers;

use App\Models\Direktorikeanggotaan;
use Illuminate\Http\Request;
use Illuminate\Http\RedirectResponse;

class DirektorikeanggotaanController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('dashboard.direktori-keanggotaan.index', [
            'direktorikeanggotaans' => Direktorikeanggotaan::latest()->paginate(10)
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('dashboard.direktori-keanggotaan.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validateData = $request->validate([
            'nama' => 'required|max:255',
            'nbm' => 'required|numeric|max:20',
            'jenis_kelamin' => 'required|max:20',
            'tempat_lahir' => 'required|max:30',
            'tanggal_lahir' => 'required', 
            'cabang' => 'required|max:15', 
            'ranting' => 'required|max:15', 
            'alamat' => 'required|max:50', 
            'status_pernikahan' => 'required|max:50', 
            'email' => 'required', 
            'no_hp' => 'required',
            'pekerjaan' => 'required|max:30',
        ]);

        Direktorikeanggotaan::create($validateData);

        return redirect('/dashboard/direktori-keanggotaan')->with('success', 'Keanggotaan baru berhasil ditambahkan!');
    }

    /**
     * Display the specified resource.
     */
    public function show(Direktorikeanggotaan $direktorikeanggotaan)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Direktorikeanggotaan $direktorikeanggotaan)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Direktorikeanggotaan $direktorikeanggotaan)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id): RedirectResponse
    {
        $direktorikeanggotaan = Direktorikeanggotaan::findOrFail($id);

        $direktorikeanggotaan->delete();

        return redirect('/dashboard/direktori-keanggotaan')->with('success', 'Keanggotaan telah dihapus!');
    }
}
