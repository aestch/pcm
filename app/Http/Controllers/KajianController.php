<?php

namespace App\Http\Controllers;

use App\Models\Bidangkajian;
use App\Models\Kajian;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Storage;
use Illuminate\Http\RedirectResponse;

class KajianController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('dashboard.kajian.index', [
            'kajians' => Kajian::latest()->paginate(10)
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $bidangkajians = Bidangkajian::all();
        return view('dashboard.kajian.create', compact('bidangkajians'));
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
            'bidangkajian_id' => 'required',
        ]);

        // upload image 
        if($request->hasFile('image')) {
            $image = $request->file('image');
            $imageName = hash('sha256', $image->getClientOriginalName()) . '.' . $image->getClientOriginalExtension();
            $image->storeAs('public/kajian', $imageName);
            $validateData['image'] = $imageName;
        }

        $validateData['excerpt'] = Str::limit(strip_tags($request->body), 200);

        Kajian::create($validateData);

        return redirect('/dashboard/kajian')->with('success', 'Kajian berhasil ditambahkan!');
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        $kajian = Kajian::findOrFail($id);
        return view("dashboard.kajian.show", [
            'kajian' => $kajian,
        ]);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        $kajian = Kajian::findOrFail($id);
        return view('dashboard.kajian.edit', [
            'kajian' => $kajian,
            'bidangkajians' => Bidangkajian::all()
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $kajian = Kajian::findOrFail($id);

        $validateData = $request->validate([
            'judul' => 'required',
            'image' => 'nullable|image|mimes:jpg,png,jpeg,heic|max:2048',
            'body' => 'required',
            'bidangkajian_id' => 'required',
        ]);

        // Hapus image lama jika ada image baru yang diunggah
        if($request->hasFile('image')) {
            Storage::delete('public/kajian/' . $kajian->image);
            $image = $request->file('image');
            $imageName = hash('sha256', $image->getClientOriginalName()) . '.' . $image->getClientOriginalExtension();
            $image->storeAs('public/kajian', $imageName);
            $validateData['image'] = $imageName;
        }

        // Perbarui data kajian
        $kajian->update($validateData);

        return redirect('/dashboard/kajian')->with('success', 'Data berhasil diupdate!');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id): RedirectResponse
    {
        $kajian = Kajian::findOrFail($id);

        // Hapus file image dari storage
        if ($kajian->image) {
            Storage::delete('public/kajian/' . $kajian->image);
        }

        // Hapus entri dari tabel
        $kajian->delete();

        return redirect('/dashboard/kajian')->with('success', 'Kajian telah dihapus!');
    }
}
