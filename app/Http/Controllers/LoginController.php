<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    public function index()
    {
        return view('login.index');
    }

    public function authenticate(Request $request)
    {
        $request->validate([
            'email' => 'required|email',
            'password' => 'required'
        ]);

        $user = User::where('email', $request->email)->first();

        if (!$user) {
            return back()->withErrors([
                'email' => 'Email tidak terdaftar.',
                'password' => 'Password tidak valid.',

            ])->withInput();
        }

        if (Auth::attempt($request->only('email', 'password'))) {
            $request->session()->regenerate();
            return redirect()->intended('/dashboard')->with('success', 'Login Berhasil!');
        }

        return back()->withErrors([
            'password' => 'Password tidak valid.',
        ])->withInput();
    }


    public function logout()
    {

        Auth::logout();
    
        request()->session()->invalidate();
    
        request()->session()->regenerateToken();
    
        return redirect('/');

    }
}
