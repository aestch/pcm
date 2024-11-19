<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Storage;
use Illuminate\Http\RedirectResponse;
use App\Models\Bidangkajian;
use App\Models\Setting;
use App\Models\Amalusaha;
use App\Models\Kajian;
use App\Models\Komentarkajian;

class KajianController extends Controller
{
    public function index(Request $request)
    {   

        $Kajian = Kajian::latest();
        if ($request->wantsJson()) {
            return response()->json($Kajian->get(), 200);
        } 

        return view('dashboard.kajian.index', [
            'kajians' => Kajian::latest()->paginate(10),
            'pengaturan' => Setting::first()
        ]);
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        $kajian = Kajian::findOrFail($id);
        return view("dashboard.kajian.show", [
            'kajian' => $kajian,
            'pengaturan' => Setting::first()
        ]);
    }

    public function comment(Request $request, $id)
    {

        $validateData = $request->validate([
            'komentar_kajian' => 'required',
            'kajian_id' => 'required',
        ]);

        Komentarkajian::create($validateData);
        $kajian = Kajian::with(['komentarkajian' => function($query) {
            $query->orderBy('created_at', 'desc');
        }])->findOrFail($id);
        return view("dashboard.kajian.show", [
                'kajian' => $kajian,
                'pengaturan'=> Setting::first(),
                'amalusaha' => Amalusaha::first(),
        ]);

        // return redirect('/dashboard/portal-berita/')->with('success', 'Komentar berhasil ditambahkan!');
    }

    public function kajian()
    {
        $title = '';
        if(request('kajian')){
            $kajian = Bidangkajian::firstWhere('judul', request('bidangkajian'));
            $title = ' in ' . $bidangkajian->bidang_kajian;
        }


        return view('kajian', [
            "title" => "Semua Kajian" . $title,
            "active" => 'bidangkajians',
            "bidangkajians" => Kajian::latest()->paginate(7)->withQueryString(),
            "kajians" => Kajian::latest()->paginate(7)->withQueryString(),
            'pengaturan'=> Setting::first(),
            'amalusaha' => Amalusaha::first(),
        ]);
    }

    public function show_guest($id)
    {
        $kajian = Kajian::with(['Komentarkajian' => function($query) {
            $query->orderBy('created_at', 'desc');
        }])->findOrFail($id);
        return view("lihatkajian", [
                'kajian' => $kajian,
                'pengaturan' => Setting::first(),
                'amalusaha' => Amalusaha::first(),
        ]);
    }

    public function comment_anonymous(Request $request, $id)
    {

        $validateData = $request->validate([
            'komentar_kajian' => 'required',
            'kajian_id' => 'required',
        ]);

        Komentarkajian::create($validateData);
        $kajian = Kajian::with(['Komentarkajian' => function($query) {
            $query->orderBy('created_at', 'desc');
        }])->findOrFail($id);
        return view("lihatkajian", [
                'kajian' => $kajian,
                'pengaturan' => Setting::first(),
                'amalusaha' => Amalusaha::first(),
        ]);

        // return redirect('/dashboard/portal-berita/')->with('success', 'Komentar berhasil ditambahkan!');
    }
}
