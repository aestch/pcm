<?php

namespace App\Http\Controllers;

use App\Models\Komentarberita;
use App\Models\Setting;
use App\Models\Amalusaha;
use App\Models\Portalberita;
use App\Models\Kategoriberita;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Storage;

class PortalberitaController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('dashboard.portal-berita.index', [
            'portalberitas' => Portalberita::latest()->paginate(10),
            'pengaturan' => Setting::first()
        ]); 
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $kategoriberitas = Kategoriberita::all();
        $pengaturan = Setting::first();
        return view('dashboard.portal-berita.create', compact('kategoriberitas', 'pengaturan'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validateData = $request->validate([
            'judul' => 'required',
            'image' => 'nullable|required|image|mimes:jpg,png,jpeg,heic|max:2048',
            'body' => 'required',
            'kategoriberita_id' => 'required',
            'user_id' => 'required',
        ]);

        // upload image 
        if($request->hasFile('image')) {
            $image = $request->file('image');
            $imageName = hash('sha256', $image->getClientOriginalName()) . '.' . $image->getClientOriginalExtension();
            $image->storeAs('public/portal-berita', $imageName);
            $validateData['image'] = $imageName;
        }

        $validateData['excerpt'] = Str::limit(strip_tags($request->body), 200);

        Portalberita::create($validateData);

        return redirect('/dashboard/portal-berita')->with('success', 'Portal Berita berhasil ditambahkan!');
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        // $portalberita = Portalberita::findOrFail($id);
        $portalberita = Portalberita::with(['Komentarberita' => function($query) {
            $query->orderBy('created_at', 'desc');
        }])->findOrFail($id);
        return view("dashboard.portal-berita.show", [
                'portalberita' => $portalberita,
                'pengaturan' => Setting::first()
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        $portalberita = Portalberita::findOrFail($id);
        return view('dashboard.portal-berita.edit', [
            'portalberita' => $portalberita,
            'kategoriberitas' => Kategoriberita::all(),
            'pengaturan' => Setting::first()
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $portalberita = Portalberita::findOrFail($id);

        $validateData = $request->validate([
            'judul' => 'required',
            'image' => 'nullable|image|mimes:jpg,png,jpeg,heic|max:2048',
            'body' => 'required',
            'kategoriberita_id' => 'required',
            'user_id' => 'required',
        ]);

        // Hapus image lama jika ada image baru yang diunggah
        if($request->hasFile('image')) {
            Storage::delete('public/portal-berita/' . $portalberita->image);
            $image = $request->file('image');
            $imageName = hash('sha256', $image->getClientOriginalName()) . '.' . $image->getClientOriginalExtension();
            $image->storeAs('public/portal-berita', $imageName);
            $validateData['image'] = $imageName;
        }

        // Perbarui data portalberita
        $portalberita->update($validateData);

        return redirect('/dashboard/portal-berita')->with('success', 'Data berhasil diupdate!');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id): RedirectResponse
    {
        $portalberita = Portalberita::findOrFail($id);

        // Hapus file image dari storage
        if ($portalberita->image) {
            Storage::delete('public/portal-berita/' . $portalberita->image);
        }

        // Hapus entri dari tabel
        $portalberita->delete();

        return redirect('/dashboard/portal-berita')->with('success', 'Berita telah dihapus!');
    }

    public function berita()
    {
        $title = '';
        if(request('kategoriberita')){
            $kategoriberita = Kategoriberita::firstWhere('judul', request('kategoriberita'));
            $title = ' in ' . $kategoriberita->kategori_berita;
        }


        return view('berita', [
            "title" => "All News" . $title,
            "active" => 'kategoriberitas',
            "kategoriberitas" => Portalberita::latest()->paginate(7)->withQueryString(),
            "portalberitas" => Portalberita::latest()->paginate(7)->withQueryString(),
            'pengaturan'=> Setting::first(),
            'amalusaha' => Amalusaha::first(),
        ]);
    }

    public function comment(Request $request, $id)
    {

        $validateData = $request->validate([
            'komentar_berita' => 'required',
            'portalberita_id' => 'required',
        ]);

        Komentarberita::create($validateData);
        $portalberita = Portalberita::with(['Komentarberita' => function($query) {
            $query->orderBy('created_at', 'desc');
        }])->findOrFail($id);
        return view("dashboard.portal-berita.show", [
                'portalberita' => $portalberita,
                'pengaturan'=> Setting::first(),
                'amalusaha' => Amalusaha::first(),
        ]);

        // return redirect('/dashboard/portal-berita/')->with('success', 'Komentar berhasil ditambahkan!');
    }


    public function show_guest($id)
    {
        // $portalberita = Portalberita::findOrFail($id);
        $portalberita = Portalberita::with(['Komentarberita' => function($query) {
            $query->orderBy('created_at', 'desc');
        }])->findOrFail($id);
        return view("lihatberita", [
                'portalberita' => $portalberita,
                'pengaturan' => Setting::first(),
                'amalusaha' => Amalusaha::first(),
        ]);
    }

    public function comment_anonymous(Request $request, $id)
    {

        $validateData = $request->validate([
            'komentar_berita' => 'required',
            'portalberita_id' => 'required',
        ]);

        Komentarberita::create($validateData);
        $portalberita = Portalberita::with(['Komentarberita' => function($query) {
            $query->orderBy('created_at', 'desc');
        }])->findOrFail($id);
        return view("lihatberita", [
                'portalberita' => $portalberita,
                'pengaturan' => Setting::first(),
                'amalusaha' => Amalusaha::first(),
        ]);

        // return redirect('/dashboard/portal-berita/')->with('success', 'Komentar berhasil ditambahkan!');
    }


}
