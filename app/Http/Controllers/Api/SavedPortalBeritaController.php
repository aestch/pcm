<?php

namespace App\Http\Controllers\Api;

use App\Models\SavedPortalBerita;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\Models\User;
use Tymon\JWTAuth\Facades\JWTAuth;
use Illuminate\Support\Facades\Auth;

class SavedPortalBeritaController extends Controller
{
    public function store(Request $request)
    {
        $request->validate([
            'portalberita_id' => 'required|exists:portalberitas,id',
        ]);

        $exists = SavedPortalBerita::where('user_id', Auth::id())
            ->where('portalberita_id', $request->portalberita_id)
            ->exists();

        if ($exists) {
            return response()->json(['message' => 'Berita sudah disimpan'], 400);
        }

        SavedPortalBerita::create([
            'user_id' => Auth::id(),
            'portalberita_id' => $request->portalberita_id,
        ]);

        return response()->json(['message' => 'Berita berhasil disimpan']);
    }

    public function index()
    {
        $savedBeritas = SavedPortalBerita::where('user_id', Auth::id())
            ->with('berita')
            ->get();
    
        if ($savedBeritas->isEmpty()) {
            return response()->json([
                'message' => 'Tidak ada berita tersimpan',
                'data' => [],
            ]);
        }
    
        return response()->json($savedBeritas);
    }

    public function destroy($portalberita_id)
    {
        try {
            $savedBerita = SavedPortalBerita::where('user_id', Auth::id())
                ->where('portalberita_id', $portalberita_id)
                ->first();

            if (!$savedBerita) {
                return response()->json([
                    'message' => 'Berita tersimpan tidak ditemukan'
                ], 404);
            }

            $savedBerita->delete();

            return response()->json([
                'message' => 'Berita berhasil dihapus dari daftar tersimpan'
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'message' => 'Gagal menghapus berita tersimpan',
                'error' => $e->getMessage()
            ], 500);
        }
    }
}