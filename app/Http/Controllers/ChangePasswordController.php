<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
class ChangePasswordController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index($id)
    {
        $user = User::findOrFail($id);
        return view('dashboard.change-password.index', [
            'user' => $user
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
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        $user = User::findOrFail($id);
        return view('dashboard.change-password.index', [
            'user' => $user
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, User $user,$id)
    {
        $user = User::findOrFail($id);
        $rules = [
            'password' => 'required|min:6'
        ];

        $validateData = $request->validate($rules);
    
        $validateData['password'] = Hash::make($request->password);
    
        // Perbarui data pengguna
        $user->update($validateData);
    
        return redirect('/dashboard')->with('success', 'Kata Sandi berhasil diganti!');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
