<?php

namespace App\Http\Controllers;

use App\Models\Mediasosial;
use App\Models\Setting;
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
            'mediasosials' => Mediasosial::latest()->paginate(10),
            'pengaturan' => Setting::first()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('dashboard.media-sosial.create', [
            'pengaturan' => Setting::first()
        ]);
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
    public function edit($id)
    {
        $mediasosial = Mediasosial::findOrFail($id);
        return view('dashboard.media-sosial.edit',[
            'mediasosial' => $mediasosial,
            'pengaturan' => Setting::first()
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $mediasosial = Mediasosial::findOrFail($id);
        $validateData = $request->validate([
            'nama_medsos' => 'required',
            'link_medsos' => 'required',
        ]);

        $mediasosial->update($validateData);
        return redirect('/dashboard/media-sosial')->with('success', 'Data berhasil diupdate!');
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
