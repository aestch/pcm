<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Http\RedirectResponse;
use Illuminate\Support\Facades\Hash;
use App\Models\User;
use Illuminate\Support\Facades\Log;

class RegisterController extends Controller
{   

    
    public function register(Request $request)
    {
        $validated = $request->validate([
            'email' => 'required|email|unique:users,email',
            'password' => 'required|min:8',
        ]);
    
        $user = User::create([
            'email' => $validated['email'],
            'password' => Hash::make($validated['password']),
            
        ]);
    
        return response()->json([
            'message' => 'User registered successfully',
            'user' => $user,
        ], 201);

        Log::info('Request Data:', $request->all());
    }
}
