<?php

namespace App\Http\Controllers;

use App\Models\Mediasosial;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;

class MediasosialController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('dashboard.media-sosial.index', [
            'mediasosials' => Mediasosial::latest()->paginate(10)
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('dashboard.media-sosial.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validateData = $request->validate([
            'nama_medsos' => 'required',
            'link_medsos' => 'required',
        ]);

        Mediasosial::create($validateData);

        return redirect('/dashboard/media-sosial')->with('success', 'Media Sosial berhasil ditambahkan!');
    }

    /**
     * Display the specified resource.
     */
    public function show(Mediasosial $mediasosial)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Mediasosial $mediasosial)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Mediasosial $mediasosial)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id): RedirectResponse
    {
        $mediasosial = Mediasosial::findOrFail($id);

        $mediasosial->delete();

        return redirect('/dashboard/media-sosial')->with('success', 'Media Sosial berhasil dihapus!');
    }
}
