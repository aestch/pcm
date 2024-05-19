<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Galerifoto;
// import type redirect response
use Illuminate\Http\RedirectResponse;
// import facades storage
use Illuminate\Support\Facades\Storage;

class GaleriFotoController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('dashboard.galeri-foto.index', [
            'galerifotos' => Galerifoto::latest()->paginate(10)
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('dashboard.galeri-foto.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request): RedirectResponse
    {
        // validate form
        $request->validate([
            'image' => 'required|image|mimes:jpeg,jpg,png|max:2048',
            'keterangan'=> 'required|max:50',
        ]);

        // upload image
        $image = $request->file('image');
        $image->storeAs('public/galeri-foto', $image->hashName());

        // create galerifoto
        Galerifoto::create([
            'image' => $image->hashName(),
            'keterangan' => $request->input('keterangan'),
        ]);

        // redirect to index
        return redirect()->route('galeri-foto.index')->with(['success' => 'Data berhasil disimpan!']);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {   
        $galerifoto = Galerifoto::findOrFail($id);
        return view('dashboard.galeri-foto.edit', [
            'galerifoto' => $galerifoto
        ]);
    }

    /**
     * Update the specified resource in storage.
     */

    public function update(Request $request, $id): RedirectResponse
    {
        $galerifoto = Galerifoto::findOrFail($id);

        $rules = [
            'image' => 'image|max:2048', // Validasi untuk gambar
            
        ];

        $request->validate($rules);

        // Jika terdapat file gambar yang diunggah
        if ($request->hasFile('image')) {
            // Hapus gambar lama jika ada
            if ($galerifoto->image) {
                Storage::delete('public/galeri-foto/' . $galerifoto->image); // Ubah path penyimpanan gambar lama
            }

            // Simpan gambar yang diunggah ke direktori 'public'
            $imagePath = $request->file('image')->store('public/galeri-foto');

            // Ambil nama file tanpa direktori
            $imageName = basename($imagePath);

            // Simpan nama file ke dalam database
            $galerifoto->image = $imageName;
        }

        // Simpan perubahan pada data galeri foto
        $galerifoto->save();

        return redirect('/dashboard/galeri-foto')->with('success', 'Data berhasil diupdate!');
    }




    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id): RedirectResponse
    {
        //get foto by ID
        $galerifoto = Galerifoto::findOrFail($id);

        //delete image
        Storage::delete('public/galeri-foto/'. $galerifoto->image);

        //delete product
        $galerifoto->delete();

        //redirect to index
        return redirect()->route('galeri-foto.index')->with(['success' => 'Data Berhasil Dihapus!']);
    }

    public function foto()
    {
        return view('galerifoto', [
            "galerifotos" => Galerifoto::latest()->paginate(12)->withQueryString()
        ]);
    }

}