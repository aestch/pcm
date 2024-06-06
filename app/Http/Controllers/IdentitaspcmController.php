<?php

namespace App\Http\Controllers;

use App\Models\Identitaspcm;
use App\Models\Setting;
use Illuminate\Http\Request;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Response;

class IdentitaspcmController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('dashboard.identitas-pcm.index', [
            'identitaspcms' => Identitaspcm::latest()->paginate(10),
            'pengaturan' => Setting::first()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {   
        
        return view('dashboard.identitas-pcm.create',[
            'pengaturan' => Setting::first()
        ]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validateData = $request->validate([
            'sejarah' => 'required',
            'kata_sambutan' => 'required',
            'visimisi' => 'required',
        ]);

        Identitaspcm::create($validateData);

        return redirect('/dashboard/identitas-pcm')->with('success', 'Identitas PCM Berhasil Ditambahkan!');
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        $identitaspcm = Identitaspcm::findOrFail($id);
        return view("dashboard.identitas-pcm.show", [
                'identitaspcm' => $identitaspcm,
                'pengaturan' => Setting::first()
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        $identitaspcm = Identitaspcm::findOrFail($id);
        return view('dashboard.identitas-pcm.edit',[
            'identitaspcm' => $identitaspcm,
            'pengaturan' => Setting::first()
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $identitaspcm = Identitaspcm::findOrFail($id);
        $validateData = $request->validate([
            'sejarah' => 'required',
            'kata_sambutan' => 'required',
            'visimisi' => 'required',
        ]);

        $identitaspcm->update($validateData);
        return redirect('/dashboard/identitas-pcm')->with('success', 'Data berhasil diupdate!');
    }

    /**
     * Remove the specified resource from storage.
     */

    public function destroy($id): RedirectResponse
    {
        $identitaspcm = Identitaspcm::findOrFail($id);

        $identitaspcm->delete();

        return redirect('/dashboard/identitas-pcm')->with('success', 'Identitas PCM Berhasil Dihapus!');
    }

    public function sejarah()
    {
        return view('sejarah', [
            "identitaspcms" => Identitaspcm::all()
        ]);
    }
    public function katasambutan()
    {
        return view('katasambutan', [
            "identitaspcms" => Identitaspcm::all()
        ]);
    }
    public function visimisi()
    {
        return view('visimisi', [
            "identitaspcms" => Identitaspcm::all()
        ]);
    }
}
