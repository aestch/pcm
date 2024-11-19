<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Http\RedirectResponse;
use App\Models\Galerivideo;
use App\Models\Setting;
use App\Models\Amalusaha;

class GalerivideoController extends Controller
{
    public function index(Request $request)
    {   

        $Galerivideo = Galerivideo::latest();
        if ($request->wantsJson()) {
            return response()->json($Galerivideo->get(), 200);
        } 

        return view('dashboard.galeri-video.index', [
            'galerivideos' => Galerivideo::latest()->paginate(10),
            'pengaturan' => Setting::first()
        ]);
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

    public function video()
    {
        return view('galerivideo', [
            'galerivideos' => Galerivideo::latest()->paginate(10),
            'pengaturan'=> Setting::first(),
            'amalusaha' => Amalusaha::first()
        ]);
    }
}
