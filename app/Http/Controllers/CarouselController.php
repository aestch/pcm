<?php

namespace App\Http\Controllers;

use App\Models\Carousel;
use App\Models\Setting;
use Illuminate\Http\Request;
use Illuminate\Http\RedirectResponse;
use Illuminate\Support\Facades\Storage;

class CarouselController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('dashboard.carousel.index', [
            'carousels' => Carousel::latest()->paginate(12),
            'pengaturan' => Setting::first()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('dashboard.carousel.create', [
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
            'judul'=> 'required|max:150',
            'image' => 'required|image|mimes:jpeg,jpg,png|max:2048',
            'user_id' => 'required',
        ]);

        // upload image
        $image = $request->file('image');
        $image->storeAs('public/carousel', $image->hashName());

        // create carousel
        Carousel::create([
            'judul' => $request->input('judul'),
            'image' => $image->hashName(),
            'user_id' => auth()->user()->id, // mengambil id pengguna yang sedang login
        ]);

        // redirect to index
        return redirect()->route('carousel.index')->with(['success' => 'Data berhasil disimpan!']);
    }

    /**
     * Display the specified resource.
     */
    public function show(Carousel $carousel)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        $carousel = Carousel::findOrFail($id);
        return view('dashboard.carousel.edit', [
            'carousel' => $carousel,
            'pengaturan' => Setting::first()
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $carousel = Carousel::findOrFail($id);
     
         $rules = [
             'judul'=> 'required|max:150',
             'image' => 'image|max:2048', // Validasi untuk gambar
             'user_id' => 'required',
         ];
     
         $request->validate($rules);
     
         // Jika terdapat file gambar yang diunggah
         if ($request->hasFile('image')) {
             // Hapus gambar lama jika ada
             if ($carousel->image) {
                 Storage::delete('public/carousel/' . $carousel->image); // Ubah path penyimpanan gambar lama
             }
     
             // Simpan gambar yang diunggah ke direktori 'public'
             $imagePath = $request->file('image')->store('public/carousel');
     
             // Ambil nama file tanpa direktori
             $imageName = basename($imagePath);
     
             // Simpan nama file ke dalam database
             $carousel->image = $imageName;
         }
     
         // Update judul
         $carousel->judul = $request->judul;
     
         // Simpan perubahan pada data carousel
         $carousel->save();
     
         return redirect('/dashboard/carousel')->with('success', 'Data berhasil diupdate!');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        //get foto by ID
        $carousel = Carousel::findOrFail($id);

        //delete image
        Storage::delete('public/carousel/'. $carousel->image);

        //delete product
        $carousel->delete();

        //redirect to index
        return redirect()->route('carousel.index')->with(['success' => 'Data Berhasil Dihapus!']);
    }
}
