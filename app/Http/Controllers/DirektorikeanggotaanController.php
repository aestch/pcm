<?php

namespace App\Http\Controllers;

use App\Models\Setting;
use App\Models\Direktorikeanggotaan;
use Illuminate\Http\Request;
use Illuminate\Http\RedirectResponse;
use Illuminate\Support\Facades\Storage;


class DirektorikeanggotaanController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('dashboard.direktori-keanggotaan.index', [
            'direktorikeanggotaans' => Direktorikeanggotaan::latest()->paginate(10),
            'pengaturan' => Setting::first()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('dashboard.direktori-keanggotaan.create', [
            'pengaturan' => Setting::first()
        ]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validateData = $request->validate([
            'nama' => 'required|max:255',
            'nbm' => 'required|numeric',
            'jenis_kelamin' => 'required|max:20',
            'tempat_lahir' => 'required|max:30',
            'tanggal_lahir' => 'required', 
            'cabang' => 'required|max:15', 
            'ranting' => 'required|max:15', 
            'alamat' => 'required|max:50', 
            'status_pernikahan' => 'required|max:50', 
            'email' => 'required|email|unique:direktorikeanggotaans,email',
            'no_hp' => 'required',
            'pekerjaan' => 'required|max:30',
            'foto_diri' => 'image|mimes:jpeg,png,jpg|max:3096',
            'ktam' => 'nullable|file|mimes:jpeg,jpg,png,pdf|max:3096',
            'jabatan' => 'required',
            'status' => 'required',
        ]);

        // upload image foto diri
        if($request->hasFile('foto_diri')) {
            $foto_diri = $request->file('foto_diri');
            $foto_diriName = hash('sha256', $foto_diri->getClientOriginalName()) . '.' . $foto_diri->getClientOriginalExtension();
            $foto_diri->storeAs('public/foto-diri', $foto_diriName);
            $validateData['foto_diri'] = $foto_diriName;
        }

        // upload image KTAM
        if($request->hasFile('ktam')) {
            $ktam = $request->file('ktam');
            $ktamName = hash('sha256', $ktam->getClientOriginalName()) . '.' . $ktam->getClientOriginalExtension();
            $ktam->storeAs('public/ktam', $ktamName);
            $validateData['ktam'] = $ktamName;
        }

        // create direktorikeanggotaan
        Direktorikeanggotaan::create($validateData);

        return redirect('/dashboard/direktori-keanggotaan')->with('success', 'Keanggotaan baru berhasil ditambahkan!');
    }



        

    /**
     * Display the specified resource.
     */
    public function show(Direktorikeanggotaan $direktorikeanggotaan)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        $direktorikeanggotaan = Direktorikeanggotaan::findOrFail($id);
        return view('dashboard.direktori-keanggotaan.edit', [
            'direktorikeanggotaan' => $direktorikeanggotaan,
            'pengaturan' => Setting::first()
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $direktorikeanggotaan = Direktorikeanggotaan::findOrFail($id);

        $validateData = $request->validate([
            'nama' => 'required|max:255',
            'nbm' => 'required|numeric',
            'jenis_kelamin' => 'required|max:20',
            'tempat_lahir' => 'required|max:30',
            'tanggal_lahir' => 'required', 
            'cabang' => 'required|max:15', 
            'ranting' => 'required|max:15', 
            'alamat' => 'required|max:50', 
            'status_pernikahan' => 'required|max:50', 
            'email' => 'required', 
            'no_hp' => 'required',
            'pekerjaan' => 'required|max:30',
            'foto_diri' => 'image|mimes:jpeg,png,jpg|max:3096',
            'ktam' => 'nullable|mimes:jpeg,jpg,png,pdf|max:3096',
            'jabatan' => 'required',
            'status' => 'required',
        ]);

        // Hapus foto_diri lama jika ada foto baru yang diunggah
        if($request->hasFile('foto_diri')) {
            Storage::delete('public/foto-diri/' . $direktorikeanggotaan->foto_diri);
            $foto_diri = $request->file('foto_diri');
            $foto_diriName = hash('sha256', $foto_diri->getClientOriginalName()) . '.' . $foto_diri->getClientOriginalExtension();
            $foto_diri->storeAs('public/foto-diri', $foto_diriName);
            $validateData['foto_diri'] = $foto_diriName;
        }

        // Hapus ktam lama jika ada ktam baru yang diunggah
        if($request->hasFile('ktam')) {
            Storage::delete('public/ktam/' . $direktorikeanggotaan->ktam);
            $ktam = $request->file('ktam');
            $ktamName = hash('sha256', $ktam->getClientOriginalName()) . '.' . $ktam->getClientOriginalExtension();
            $ktam->storeAs('public/ktam', $ktamName);
            $validateData['ktam'] = $ktamName;
        }

        // Perbarui data direktorikeanggotaan
        $direktorikeanggotaan->update($validateData);

        return redirect('/dashboard/direktori-keanggotaan')->with('success', 'Data berhasil diupdate!');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id): RedirectResponse
    {
        $direktorikeanggotaan = Direktorikeanggotaan::findOrFail($id);

        // Hapus file foto diri dari storage
        if ($direktorikeanggotaan->foto_diri) {
            Storage::delete('public/foto-diri/' . $direktorikeanggotaan->foto_diri);
        }

        // Hapus file KTAM dari storage
        if ($direktorikeanggotaan->ktam) {
            Storage::delete('public/ktam/' . $direktorikeanggotaan->ktam);
        }

        // Hapus entri dari tabel
        $direktorikeanggotaan->delete();

        return redirect('/dashboard/direktori-keanggotaan')->with('success', 'Keanggotaan telah dihapus!');
    }

    public function pengajuan()
    {
        return view('pengajuan', [
            'pengaturan' => Setting::first()
        ]);
    }

    // public function kirim(Request $request)
    // {
    //     $validateData = $request->validate([
    //         'nama' => 'required|max:255',
    //         'nbm' => 'required|numeric',
    //         'jenis_kelamin' => 'required|max:20',
    //         'tempat_lahir' => 'required|max:30',
    //         'tanggal_lahir' => 'required', 
    //         'cabang' => 'required|max:15', 
    //         'ranting' => 'required|max:15', 
    //         'alamat' => 'required|max:50', 
    //         'status_pernikahan' => 'required|max:50', 
    //         'email' => 'required|email|unique:direktorikeanggotaans,email',
    //         'no_hp' => 'required',
    //         'pekerjaan' => 'required|max:30',
    //         'foto_diri' => 'image|mimes:jpeg,png,jpg|max:3096',
    //         'ktam' => 'nullable|file|mimes:jpeg,jpg,png,pdf|max:3096',
    //         'jabatan' => 'required',
    //         'status' => 'required',
    //     ]);

    //     // upload image foto diri
    //     if($request->hasFile('foto_diri')) {
    //         $foto_diri = $request->file('foto_diri');
    //         $foto_diriName = hash('sha256', $foto_diri->getClientOriginalName()) . '.' . $foto_diri->getClientOriginalExtension();
    //         $foto_diri->storeAs('public/foto-diri', $foto_diriName);
    //         $validateData['foto_diri'] = $foto_diriName;
    //     }

    //     // upload image KTAM
    //     if($request->hasFile('ktam')) {
    //         $ktam = $request->file('ktam');
    //         $ktamName = hash('sha256', $ktam->getClientOriginalName()) . '.' . $ktam->getClientOriginalExtension();
    //         $ktam->storeAs('public/ktam', $ktamName);
    //         $validateData['ktam'] = $ktamName;
    //     }

    //     // create direktorikeanggotaan
    //     Direktorikeanggotaan::create($validateData);

    //     return redirect('/direktori-keanggotaan')->with('success', 'Silakan pantau website ini sampai admin menyetujui pengajuan Anda. Nama Anda akan muncul setelah disetujui.');
    // }

    public function kirim(Request $request)
    {
        // Mengatur nilai default untuk 'jabatan' dan 'status'
        $request->merge([
            'jabatan' => 'Anggota',
            'status' => 'Menunggu Persetujuan'
        ]);

        $validateData = $request->validate([
            'nama' => 'required|max:255',
            'nbm' => 'required|numeric',
            'jenis_kelamin' => 'required|max:20',
            'tempat_lahir' => 'required|max:30',
            'tanggal_lahir' => 'required', 
            'cabang' => 'required|max:15', 
            'ranting' => 'required|max:15', 
            'alamat' => 'required|max:50', 
            'status_pernikahan' => 'required|max:50', 
            'email' => 'required|email|unique:direktorikeanggotaans,email',
            'no_hp' => 'required',
            'pekerjaan' => 'required|max:30',
            'foto_diri' => 'image|mimes:jpeg,png,jpg|max:3096',
            'ktam' => 'nullable|file|mimes:jpeg,jpg,png,pdf|max:3096',
            'jabatan' => 'required',
            'status' => 'required',
        ]);

        // upload image foto diri
        if($request->hasFile('foto_diri')) {
            $foto_diri = $request->file('foto_diri');
            $foto_diriName = hash('sha256', $foto_diri->getClientOriginalName()) . '.' . $foto_diri->getClientOriginalExtension();
            $foto_diri->storeAs('public/foto-diri', $foto_diriName);
            $validateData['foto_diri'] = $foto_diriName;
        }

        // upload image KTAM
        if($request->hasFile('ktam')) {
            $ktam = $request->file('ktam');
            $ktamName = hash('sha256', $ktam->getClientOriginalName()) . '.' . $ktam->getClientOriginalExtension();
            $ktam->storeAs('public/ktam', $ktamName);
            $validateData['ktam'] = $ktamName;
        }

        // create direktorikeanggotaan
        Direktorikeanggotaan::create($validateData);

        return redirect('/direktori-keanggotaan')->with('success', 'Silakan pantau website ini sampai admin menyetujui pengajuan Anda. Nama Anda akan muncul setelah disetujui.');
    }
}
