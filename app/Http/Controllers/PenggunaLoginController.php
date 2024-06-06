<?php

namespace App\Http\Controllers;
use App\Models\User;
use App\Models\Role;
use App\Models\Setting;
use Illuminate\Support\Facades\Hash;


use Illuminate\Http\Request;
use Illuminate\Http\RedirectResponse;
use \Cviebrock\EloquentSluggable\Services\SlugService;

class PenggunaLoginController extends Controller
{
    public function index()
    {
        // return view('dashboard.pengguna-login.index', [
        //     'users' => User::all()
        // ]);
        return view('dashboard.pengguna-login.index', [
            'users' => User::latest()->paginate(10),
            'pengaturan' => Setting::first()
        ]); 
    }

    public function create()
    {
        $roles = Role::all();
        $pengaturan = Setting::first();
        return view('dashboard.pengguna-login.create', compact('roles', 'pengaturan'));
    }

    public function store(Request $request)
    {
        $validateData = $request->validate([
            'name' => 'required|max:255',
            'username' => 'required|unique:users',
            'email' => 'required|unique:users',
            'password' => 'required|min:6', 
            'role_id' => 'required'
        ]);

        User::create($validateData);

        return redirect('/dashboard/pengguna-login')->with('success', 'Pengguna baru berhasil ditambahkan!');
    }

    public function edit($id)
    {
        $user = User::findOrFail($id);
        return view('dashboard.pengguna-login.edit', [
            'user' => $user,
            'roles' => Role::all(),
            'pengaturan' => Setting::first()
        ]);

    }

    public function update(Request $request, User $user,$id)
    {
        $user = User::findOrFail($id);
        $rules = [
            'name' => 'required|max:255',
            'username' => 'required',
            'email' => 'required',
            'role_id' => 'required'
        ];
    
        // Jika ada perubahan password, tambahkan aturan validasi dan sertakan dalam data yang diperbarui
        if ($request->has('password')) {
            $rules['password'] = 'required|min:6';
            $validateData = $request->validate($rules);
    
            $validateData['password'] = Hash::make($request->password);
        } else {
            // Jika tidak ada perubahan password, gunakan data yang diperbarui tanpa menyertakan password
            $validateData = $request->validate($rules);
        }
    
        // Perbarui data pengguna
        $user->update($validateData);
    
        return redirect('/dashboard/pengguna-login')->with('success', 'Pengguna berhasil diupdate!');
    }
    

    public function destroy($id): RedirectResponse
    {
        $user = User::findOrFail($id);

        $user->delete();

        return redirect('/dashboard/pengguna-login')->with('success', 'Pengguna telah dihapus!');
    }


}
