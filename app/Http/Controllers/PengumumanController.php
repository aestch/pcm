<?php

namespace App\Http\Controllers;

use App\Models\Pengumuman;
use App\Models\Setting;
use Illuminate\Http\Request;

class PengumumanController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('dashboard.pengumuman.index', [
            'pengumumans' => Pengumuman::latest()->paginate(10),
            'pengaturan' => Setting::first()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('dashboard.pengumuman.create', [
            'pengaturan' => Setting::first()
        ]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validateData = $request->validate([
            'judul_pengumuman' => 'required|max:255',
            'isi_pengumuman' => 'required',
            'user_id' => 'required',
        ]);

        Pengumuman::create($validateData);

        return redirect('/dashboard/pengumuman')->with('success', 'Pengumuman berhasil ditambahkan!');
    }

    /**
     * Display the specified resource.
     */
    public function show(Pengumuman $pengumuman)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        $pengumuman = Pengumuman::findOrFail($id);
        return view('dashboard.pengumuman.edit',[
            'pengumuman' => $pengumuman,
            'pengaturan' => Setting::first()
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $pengumuman = Pengumuman::findOrFail($id);
        $validateData = $request->validate([
            'judul_pengumuman' => 'required|max:255',
            'isi_pengumuman' => 'required',
            'user_id' => 'required',
        ]);

        $pengumuman->update($validateData);
        return redirect('/dashboard/pengumuman')->with('success', 'Pengumuman berhasil diupdate!');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $pengumuman = Pengumuman::findOrFail($id);

        $pengumuman->delete();

        return redirect('/dashboard/pengumuman')->with('success', 'Pengumuman berhasil dihapus!');
    }
}
