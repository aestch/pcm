<?php

namespace App\Http\Controllers;

use App\Models\Galerivideo;
use App\Models\Setting;
use App\Models\Amalusaha;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;

class GalerivideoController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('dashboard.galeri-video.index', [
            'galerivideos' => Galerivideo::latest()->paginate(10),
            'pengaturan' => Setting::first()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('dashboard.galeri-video.create', [
            'pengaturan' => Setting::first()
        ]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validateData = $request->validate([
            'judul_video' => 'required',
            'link_video' => 'required',
            'user_id' => 'required',
        ]);

        Galerivideo::create($validateData);

        return redirect('/dashboard/galeri-video')->with('success', 'Galeri video berhasil ditambahkan!');
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        $galerivideo = Galerivideo::findOrFail($id);

        // Convert regular YouTube URL to embed URL
        $galerivideo->link_video = $this->convertToEmbedUrl($galerivideo->link_video);

        $pengaturan = Setting::first();
        return view('dashboard.galeri-video.show', compact('galerivideo', 'pengaturan'));

        // return view('dashboard.galeri-video.show', [
        //     'galerivideo' => $galerivideo
        // ]);
    }

    private function convertToEmbedUrl($url)
    {
        // Check if the URL is a YouTube URL
        if (strpos($url, 'youtube.com') !== false || strpos($url, 'youtu.be') !== false) {
            // Extract video ID from regular URL
            parse_str(parse_url($url, PHP_URL_QUERY), $urlParams);
            if (isset($urlParams['v'])) {
                $videoId = $urlParams['v'];
            } elseif (strpos($url, 'youtu.be') !== false) {
                $videoId = basename(parse_url($url, PHP_URL_PATH));
            } else {
                return $url; // Return original URL if no video ID found
            }

            // Return embed URL
            return "https://www.youtube.com/embed/{$videoId}";
        }

        return $url; // Return original URL if not a YouTube URL
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        $galerivideo = Galerivideo::findOrFail($id);
        return view('dashboard.galeri-video.edit', [
            'galerivideo' => $galerivideo,
            'pengaturan' => Setting::first()
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id): RedirectResponse
    {
        $galerivideo = Galerivideo::findOrFail($id);

        $validateData = $request->validate([
            'judul_video' => 'required',
            'link_video' => 'required',
            'user_id' => 'required',
        ]);

        // Perbarui data galerivideo
        $galerivideo->update($validateData);

        return redirect('/dashboard/galeri-video')->with('success', 'Data berhasil diupdate!');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        //get galerivideo by ID
        $galerivideo = Galerivideo::findOrFail($id);


        //delete file
        $galerivideo->delete();

        //redirect to index
        return redirect('/dashboard/galeri-video/')->with(['success' => 'Data Berhasil Dihapus!']);
    }

    public function video()
    {
        return view('galerivideo', [
            'galerivideos' => Galerivideo::latest()->paginate(10),
            'pengaturan'=> Setting::first(),
            'amalusaha' => Amalusaha::first()
        ]);
    }
}
