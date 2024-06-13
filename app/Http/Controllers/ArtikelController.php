<?php

namespace App\Http\Controllers;

use App\Models\Amalusaha;
use App\Models\Artikel;
use App\Models\Setting;
use App\Models\Kategoriartikel;
use App\Models\Komentarartikel;
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
            'artikels' => Artikel::latest()->paginate(10),
            'pengaturan' => Setting::first()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $kategoriartikels = Kategoriartikel::all();
        $pengaturan = Setting::first();
        return view('dashboard.artikel.create', compact('kategoriartikels', 'pengaturan'));
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
            'user_id' => 'required',
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
            'pengaturan' => Setting::first()
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
            'kategoriartikels' => Kategoriartikel::all(),
            'pengaturan' => Setting::first()
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
            'user_id' => 'required',
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

    public function comment(Request $request, $id)
    {

        $validateData = $request->validate([
            'komentar_artikel' => 'required',
            'artikel_id' => 'required',
        ]);

        Komentarartikel::create($validateData);
        $artikel = Artikel::with(['komentarartikel' => function($query) {
            $query->orderBy('created_at', 'desc');
        }])->findOrFail($id);
        return view("dashboard.artikel.show", [
                'artikel' => $artikel,
                'pengaturan'=> Setting::first(),
        ]);

        // return redirect('/dashboard/portal-berita/')->with('success', 'Komentar berhasil ditambahkan!');
    }

    public function artikel()
    {
        $title = '';
        if(request('kategoriartikel')){
            $kategoriartikel = Kategoriartikel::firstWhere('judul', request('kategoriartikel'));
            $title = ' in ' . $kategoriartikel->kategori_artikel;
        }


        return view('artikel', [
            "title" => "Semua Berita" . $title,
            "active" => 'kategoriartikels',
            "kategoriartikels" => Artikel::latest()->paginate(7)->withQueryString(),
            "artikels" => Artikel::latest()->paginate(7)->withQueryString(),
            'pengaturan'=> Setting::first(),
            'amalusaha' => Amalusaha::first(),
        ]);
    }
    public function show_guest($id)
    {
        // $artikel = artikel::findOrFail($id);
        $artikel = Artikel::with(['Komentarartikel' => function($query) {
            $query->orderBy('created_at', 'desc');
        }])->findOrFail($id);
        return view("lihatartikel", [
                'artikel' => $artikel,
                'pengaturan' => Setting::first(),
                'amalusaha' => Amalusaha::first(),
        ]);
    }

    public function comment_anonymous(Request $request, $id)
    {

        $validateData = $request->validate([
            'komentar_artikel' => 'required',
            'artikel_id' => 'required',
        ]);

        Komentarartikel::create($validateData);
        $artikel = Artikel::with(['Komentarartikel' => function($query) {
            $query->orderBy('created_at', 'desc');
        }])->findOrFail($id);
        return view("lihatartikel", [
                'artikel' => $artikel,
                'pengaturan' => Setting::first(),
                'amalusaha' => Amalusaha::first(),
        ]);

        // return redirect('/dashboard/portal-berita/')->with('success', 'Komentar berhasil ditambahkan!');
    }
}
