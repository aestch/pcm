<?php

namespace App\Http\Controllers;

use App\Models\Arsipfile;
use App\Models\Setting;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Http\RedirectResponse;

class ArsipfileController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('dashboard.arsip-files.index', [
            'arsipfiles' => Arsipfile::latest()->paginate(10),
            'pengaturan' => Setting::first()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('dashboard.arsip-files.create', [
            'pengaturan' => Setting::first()
        ]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validateData = $request->validate([
            'nama_file' => 'required|max:50',
            'tgl_arsipfile' => 'required',
            'upload_arsipfile' => 'required|file|mimes:pdf|max:3096',
            'user_id' => 'required',
        ]);

        // upload arsip file
        if($request->hasFile('upload_arsipfile')) {
            $upload_arsipfile = $request->file('upload_arsipfile');
            $upload_arsipfileName = hash('sha256', $upload_arsipfile->getClientOriginalName()) . '.' . $upload_arsipfile->getClientOriginalExtension();
            $upload_arsipfile->storeAs('public/arsip-files', $upload_arsipfileName);
            $validateData['upload_arsipfile'] = $upload_arsipfileName;
        }

        Arsipfile::create($validateData);

        return redirect('/dashboard/arsip-files')->with('success', 'Arsip Berkas berhasil ditambahkan!');
    }

    /**
     * Display the specified resource.
     */
    public function show(Arsipfile $arsipfile)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        $arsipfile = Arsipfile::findOrFail($id);
        return view('dashboard.arsip-files.edit', [
            'arsipfile' => $arsipfile,
            'pengaturan' => Setting::first()
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $arsipfile = Arsipfile::findOrFail($id);

        $validateData = $request->validate([
            'nama_file' => 'required|max:50',
            'tgl_arsipfile' => 'required',
            'upload_arsipfile' => 'file|mimes:pdf|max:3096',
            'user_id' => 'required',
        ]);

        // Hapus file lama jika ada file baru yang diunggah
        if($request->hasFile('upload_arsipfile')) {
            Storage::delete('public/arsip-files/' . $arsipfile->upload_arsipfile);
            $upload_arsipfile = $request->file('upload_arsipfile');
            $upload_arsipfileName = hash('sha256', $upload_arsipfile->getClientOriginalName()) . '.' . $upload_arsipfile->getClientOriginalExtension();
            $upload_arsipfile->storeAs('public/arsip-files', $upload_arsipfileName);
            $validateData['upload_arsipfile'] = $upload_arsipfileName;
        }

        // Perbarui data arsipfile
        $arsipfile->update($validateData);

        return redirect('/dashboard/arsip-files')->with('success', 'Data berhasil diupdate!');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id) : RedirectResponse
    {
        //get arsipfile by ID
        $arsipfile = Arsipfile::findOrFail($id);

        //delete file
        Storage::delete('public/arsip-files/'. $arsipfile->upload_arsipfile);

        //delete file
        $arsipfile->delete();

        //redirect to index
        return redirect('/dashboard/arsip-files/')->with(['success' => 'Data berhasil dihapus!']);
    }
}
