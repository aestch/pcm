<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Http\RedirectResponse;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Storage;
use App\Models\Komentarberita;
use App\Models\Setting;
use App\Models\Amalusaha;
use App\Models\Portalberita;
use App\Models\Kategoriberita;

class PortalberitaController extends Controller
{
    public function index(Request $request)
    {   

        $Portalberita = Portalberita::latest();
        if ($request->wantsJson()) {
            return response()->json($Portalberita->get(), 200);
        } 

        return view('dashboard.portal-berita.index', [
            'portalberitas' => Portalberita::latest()->paginate(10),
            'pengaturan' => Setting::first()
        ]); 
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
