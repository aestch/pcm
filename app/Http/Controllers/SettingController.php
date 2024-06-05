<?php

namespace App\Http\Controllers;

use App\Models\Setting;
use Illuminate\Http\Request;
use Illuminate\Http\RedirectResponse;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Storage;

class SettingController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('dashboard.setting.index', [
            'pengaturans' => Setting::latest()->paginate(3)
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('dashboard.setting.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request): RedirectResponse
    {
        // validate form
        $request->validate([
            'title'=> 'required|max:100',
            'favicon' => 'required|image|mimes:jpeg,jpg,png|max:2048',
            'nama_website' => 'required|max:100',
            'logo' => 'required|image|mimes:jpeg,jpg,png|max:2048',
            'no_telp'=> 'required|max:20',
            'email'=> 'required|max:40',
            'alamat'=> 'required|max:80',
            'footer'=> 'required|max:80',
        ]);

        // upload favicon
        if ($request->hasFile('favicon')) {
            $favicon = $request->file('favicon');
            $favicon->storeAs('public/favicon', $favicon->hashName());
        }

        // upload logo
        if ($request->hasFile('logo')) {
            $logo = $request->file('logo');
            $logo->storeAs('public/logo', $logo->hashName());
        }

        // create settings record
        Setting::create([
            'title' => $request->input('title'),
            'favicon' => $favicon->hashName(),
            'nama_website' => $request->input('nama_website'),
            'logo' => $logo->hashName(),
            'no_telp' => $request->input('no_telp'),
            'email' => $request->input('email'),
            'alamat' => $request->input('alamat'),
            'footer' => $request->input('footer'),
        ]);

        // redirect to index
        return redirect()->route('pengaturan.index')->with(['success' => 'Data berhasil disimpan!']);
    }


    /**
     * Display the specified resource.
     */
    public function show(Setting $setting)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Setting $setting)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Setting $setting)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id): RedirectResponse
    {
        //get favicon by ID
        $pengaturan = Setting::findOrFail($id);

        //delete image
        Storage::delete('public/favicon/'. $pengaturan->favicon);
        Storage::delete('public/logo/'. $pengaturan->logo);

        //delete image
        $pengaturan->delete();

        //redirect to index
        return redirect()->route('pengaturan.index')->with(['success' => 'Data Berhasil Dihapus!']);
    }
}
