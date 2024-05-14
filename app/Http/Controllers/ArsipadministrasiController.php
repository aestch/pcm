<?php

namespace App\Http\Controllers;

use App\Models\Arsipadministrasi;
use Illuminate\Http\Request;

class ArsipadministrasiController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('dashboard.arsip-administrasi.index', [
            'arsipadministrasis' => Arsipadministrasi::latest()->paginate(10)
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(Arsipadministrasi $arsipadministrasi)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Arsipadministrasi $arsipadministrasi)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Arsipadministrasi $arsipadministrasi)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Arsipadministrasi $arsipadministrasi)
    {
        //
    }
}
