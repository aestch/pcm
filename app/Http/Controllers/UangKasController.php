<?php

namespace App\Http\Controllers;

use App\Models\UangKas;
use Illuminate\Http\Request;
use Illuminate\Http\RedirectResponse;


class UangKasController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('dashboard.kas.index', [
            'kass' => UangKas::latest()->paginate(10)
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('dashboard.kas.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validateData = $request->validate([
            'tanggal_kas' => 'required|date',
            'deskripsi' => 'required|max:100',
            'tipe' => 'required',
            'jumlah' => 'required|numeric',
            'user_id' => 'required',
        ]);

        UangKas::create($validateData);

        return redirect('/dashboard/kas')->with('success', 'Data berhasil ditambahkan!');
    }

    /**
     * Display the specified resource.
     */
    public function show(UangKas $uangKas)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        $kas = UangKas::findOrFail($id);
        return view('dashboard.kas.edit',[
            'kas' => $kas
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $kas = UangKas::findOrFail($id);
        $validateData = $request->validate([
            'tanggal_kas' => 'required|date',
            'deskripsi' => 'required|max:100',
            'tipe' => 'required',
            'jumlah' => 'required|numeric',
            'user_id' => 'required',
        ]);

        $kas->update($validateData);
        return redirect('/dashboard/kas')->with('success', 'Data berhasil diupdate!');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id): RedirectResponse
    {
        $kas = UangKas::findOrFail($id);

        $kas->delete();

        return redirect('/dashboard/kas')->with('success', 'Data berhasil dihapus!');
    }
}
