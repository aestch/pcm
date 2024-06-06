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
            'pengaturans' => Setting::latest()->paginate(10)
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('dashboard.setting.create', [
            'pengaturan' => Setting::first()
        ]);
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
    public function edit($id)
    {
        $pengaturan = Setting::findOrFail($id);
        return view('dashboard.setting.edit', [
            'pengaturan' => $pengaturan
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id): RedirectResponse
    {
        $pengaturan = Setting::findOrFail($id);

        // Define validation rules
        $rules = [
            'title'=> 'required|max:100',
            'favicon' => 'nullable|image|mimes:jpeg,jpg,png|max:2048', // Make favicon optional
            'nama_website' => 'required|max:100',
            'logo' => 'nullable|image|mimes:jpeg,jpg,png|max:2048', // Make logo optional
            'no_telp'=> 'required|max:20',
            'email'=> 'required|max:40',
            'alamat'=> 'required|max:80',
            'footer'=> 'required|max:80',
        ];

        $request->validate($rules);

        // Handle favicon upload
        if ($request->hasFile('favicon')) {
            // Delete old favicon if it exists
            if ($pengaturan->favicon) {
                Storage::delete('public/favicon/' . $pengaturan->favicon);
            }

            // Store new favicon
            $faviconPath = $request->file('favicon')->store('public/favicon');
            $faviconName = basename($faviconPath);
            $pengaturan->favicon = $faviconName;
        }

        // Handle logo upload
        if ($request->hasFile('logo')) {
            // Delete old logo if it exists
            if ($pengaturan->logo) {
                Storage::delete('public/logo/' . $pengaturan->logo);
            }

            // Store new logo
            $logoPath = $request->file('logo')->store('public/logo');
            $logoName = basename($logoPath);
            $pengaturan->logo = $logoName;
        }

        // Update other fields
        $pengaturan->title = $request->input('title');
        $pengaturan->nama_website = $request->input('nama_website');
        $pengaturan->no_telp = $request->input('no_telp');
        $pengaturan->email = $request->input('email');
        $pengaturan->alamat = $request->input('alamat');
        $pengaturan->footer = $request->input('footer');
        
        // Save changes
        $pengaturan->save();

        return redirect('/dashboard/pengaturan')->with('success', 'Data berhasil diupdate!');
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
