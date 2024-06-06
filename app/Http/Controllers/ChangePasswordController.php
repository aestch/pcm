<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Setting;
use Illuminate\Support\Facades\Hash;
class ChangePasswordController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
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
            'user' => $user,
            'pengaturan' => Setting::first()
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, User $user,$id)
    {
        $user = User::findOrFail($id);

        $rules = [
            'password' => [
                'required',
                'string',
                'min:8', // minimal 8 karakter
                'regex:/[a-z]/', // harus mengandung huruf kecil
                'regex:/[A-Z]/', // harus mengandung huruf besar
                'regex:/[0-9]/', // harus mengandung angka
                'regex:/[@$!%*?&#]/', // harus mengandung simbol
                'confirmed', // harus sesuai dengan password_confirmation
            ],
        ];

        $messages = [
            'password.required' => 'Password harus diisi.',
            'password.string' => 'Password harus berupa string.',
            'password.min' => 'Password minimal harus terdiri dari 8 karakter.',
            'password.regex' => 'Password harus terdiri dari minimal 8 karakter dan mengandung huruf besar, huruf kecil, angka, dan simbol.',
            'password.confirmed' => 'Konfirmasi kata sandi tidak cocok.',
        ];

        $validateData = $request->validate($rules, $messages);

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
