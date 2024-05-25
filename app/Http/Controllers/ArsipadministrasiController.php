<?php

namespace App\Http\Controllers;

use App\Models\Arsipadministrasi;
use App\Models\Kategoriarsip;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;

class ArsipadministrasiController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('dashboard.arsip-administrasi.index', [
            'arsipadministrasis' => Arsipadministrasi::latest()->paginate(10)
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $kategoriarsips = Kategoriarsip::all();
        return view('dashboard.arsip-administrasi.create', compact('kategoriarsips'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validateData = $request->validate([
            'tgl_arsip' => 'required',
            'no_surat' => 'required',
            'kategoriarsip_id' => 'required',
        ]);

        Arsipadministrasi::create($validateData);

        return redirect('/dashboard/arsip-administrasi')->with('success', 'Arsip Administrasi berhasil ditambahkan!');
    }

    /**
     * Display the specified resource.
     */
    public function show(Arsipadministrasi $arsipadministrasi)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        $arsipadministrasi = Arsipadministrasi::findOrFail($id);
        return view('dashboard.arsip-administrasi.edit', [
            'arsipadministrasi' => $arsipadministrasi,
            'kategoriarsips' => Kategoriarsip::all()
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $arsipadministrasi = Arsipadministrasi::findOrFail($id);

        $validateData = $request->validate([
            'tgl_arsip' => 'required',
            'no_surat' => 'required',
            'kategoriarsip_id' => 'required',
        ]);

        // Perbarui data arsipadministrasi
        $arsipadministrasi->update($validateData);

        return redirect('/dashboard/arsip-administrasi')->with('success', 'Data berhasil diupdate!');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id) : RedirectResponse
    {
        //get arsipadministrasi by ID
        $arsipadministrasi = Arsipadministrasi::findOrFail($id);

        //delete administrasi
        $arsipadministrasi->delete();

        //redirect to index
        return redirect('/dashboard/arsip-administrasi/')->with(['success' => 'Data berhasil dihapus!']);
    }
}
