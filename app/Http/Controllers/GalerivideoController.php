<?php

namespace App\Http\Controllers;

use App\Models\Galerivideo;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;

class GalerivideoController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('dashboard.galeri-video.index', [
            'galerivideos' => Galerivideo::latest()->paginate(10)
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('dashboard.galeri-video.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validateData = $request->validate([
            'judul_video' => 'required',
            'link_video' => 'required',
        ]);

        Galerivideo::create($validateData);

        return redirect('/dashboard/galeri-video')->with('success', 'Galeri video Berhasil Ditambahkan!');
    }

    /**
     * Display the specified resource.
     */
    public function show(Galerivideo $galerivideo)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        $galerivideo = Galerivideo::findOrFail($id);
        return view('dashboard.galeri-video.edit', [
            'galerivideo' => $galerivideo
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id): RedirectResponse
    {
        $galerivideo = Galerivideo::findOrFail($id);

        $validateData = $request->validate([
            'judul_video' => 'required',
            'link_video' => 'required',
        ]);

        // Perbarui data galerivideo
        $galerivideo->update($validateData);

        return redirect('/dashboard/galeri-video')->with('success', 'Data berhasil diupdate!');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        //get galerivideo by ID
        $galerivideo = Galerivideo::findOrFail($id);


        //delete file
        $galerivideo->delete();

        //redirect to index
        return redirect('/dashboard/galeri-video/')->with(['success' => 'Data Berhasil Dihapus!']);
    }
}
