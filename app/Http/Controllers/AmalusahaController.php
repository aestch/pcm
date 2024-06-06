<?php

namespace App\Http\Controllers;

use App\Models\Amalusaha;
use App\Models\Setting;
use Illuminate\Http\Request;

class AmalusahaController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('dashboard.amal-usaha.index', [
            'amalusahas' => Amalusaha::latest()->paginate(3),
            'pengaturan' => Setting::first()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('dashboard.amal-usaha.create', [
            'pengaturan' => Setting::first()
        ]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validateData = $request->validate([
            'nama_amal' => 'required',
            'link_amal' => 'required',
        ]);

        Amalusaha::create($validateData);

        return redirect('/dashboard/amal-usaha')->with('success', 'Amal Usaha berhasil ditambahkan!');
    }

    /**
     * Display the specified resource.
     */
    public function show(Amalusaha $amalusaha)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        $amalusaha = Amalusaha::findOrFail($id);
        return view('dashboard.amal-usaha.edit',[
            'amalusaha' => $amalusaha,
            'pengaturan' => Setting::first()
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $amalusaha = Amalusaha::findOrFail($id);
        $validateData = $request->validate([
            'nama_amal' => 'required',
            'link_amal' => 'required',
        ]);

        $amalusaha->update($validateData);
        return redirect('/dashboard/amal-usaha')->with('success', 'Data berhasil diupdate!');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Amalusaha $amalusaha, $id)
    {
        $amalusaha = Amalusaha::findOrFail($id);

        $amalusaha->delete();

        return redirect('/dashboard/amal-usaha')->with('success', 'Amal Usaha berhasil dihapus!');
    }
}
