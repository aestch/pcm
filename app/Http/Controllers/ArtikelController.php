<?php

namespace App\Http\Controllers;

use App\Models\Artikel;
use App\Models\Kategoriartikel;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Storage;

class ArtikelController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('dashboard.artikel.index', [
            'artikels' => Artikel::latest()->paginate(10)
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $kategoriartikels = Kategoriartikel::all();
        return view('dashboard.artikel.create', compact('kategoriartikels'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validateData = $request->validate([
            'judul' => 'required',
            'image' => 'required|image|mimes:jpg,png,jpeg,heic|max:2048',
            'body' => 'required',
            'kategoriartikel_id' => 'required',
        ]);

        // upload image 
        if($request->hasFile('image')) {
            $image = $request->file('image');
            $imageName = hash('sha256', $image->getClientOriginalName()) . '.' . $image->getClientOriginalExtension();
            $image->storeAs('public/artikel', $imageName);
            $validateData['image'] = $imageName;
        }

        $validateData['excerpt'] = Str::limit(strip_tags($request->body), 200);

        Artikel::create($validateData);

        return redirect('/dashboard/artikel')->with('success', 'Artikel berhasil ditambahkan!');
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        // $artikel = Artikel::with(['Komentarartikel' => function($query) {
        //     $query->orderBy('created_at', 'desc');
        // }])->findOrFail($id);
        $artikel = Artikel::findOrFail($id);
        return view("dashboard.artikel.show", [
            'artikel' => $artikel,
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        $artikel = Artikel::findOrFail($id);
        return view('dashboard.artikel.edit', [
            'artikel' => $artikel,
            'kategoriartikels' => Kategoriartikel::all()
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $artikel = Artikel::findOrFail($id);

        $validateData = $request->validate([
            'judul' => 'required',
            'image' => 'nullable|image|mimes:jpg,png,jpeg,heic|max:2048',
            'body' => 'required',
            'kategoriartikel_id' => 'required',
        ]);

        // Hapus image lama jika ada image baru yang diunggah
        if($request->hasFile('image')) {
            Storage::delete('public/artikel/' . $artikel->image);
            $image = $request->file('image');
            $imageName = hash('sha256', $image->getClientOriginalName()) . '.' . $image->getClientOriginalExtension();
            $image->storeAs('public/artikel', $imageName);
            $validateData['image'] = $imageName;
        }

        // Perbarui data artikel
        $artikel->update($validateData);

        return redirect('/dashboard/artikel')->with('success', 'Data berhasil diupdate!');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id): RedirectResponse
    {
        $artikel = Artikel::findOrFail($id);

        // Hapus file image dari storage
        if ($artikel->image) {
            Storage::delete('public/artikel/' . $artikel->image);
        }

        // Hapus entri dari tabel
        $artikel->delete();

        return redirect('/dashboard/artikel')->with('success', 'Artikel telah dihapus!');
    }
}
