<?php

namespace App\Http\Controllers;

use App\Models\Ortom;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;

class OrtomController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('dashboard.ortom.index', [
            'ortoms' => Ortom::latest()->paginate(10)
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('dashboard.ortom.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validateData = $request->validate([
            'nama_ortom' => 'required',
            'nama_ketua' => 'required',
        ]);

        Ortom::create($validateData);

        return redirect('/dashboard/ortom')->with('success', 'Ortom berhasil ditambahkan!');
    }

    /**
     * Display the specified resource.
     */
    public function show(Ortom $ortom)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        $ortom = Ortom::findOrFail($id);
        return view('dashboard.ortom.edit',[
            'ortom' => $ortom
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $ortom = Ortom::findOrFail($id);
        $validateData = $request->validate([
            'nama_ortom' => 'required',
            'nama_ketua' => 'required',
        ]);

        $ortom->update($validateData);
        return redirect('/dashboard/ortom')->with('success', 'Data berhasil diupdate!');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id): RedirectResponse
    {
        $ortom = Ortom::findOrFail($id);

        $ortom->delete();

        return redirect('/dashboard/ortom')->with('success', 'Ortom berhasil dihapus!');
    }
}
