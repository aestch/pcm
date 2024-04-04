<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\View\View;
use App\Models\User;

class UsersController extends Controller
{
    public function index() : View
    {
        //get all users
        $users = User::latest()->paginate(10);

        //render view with users
        return view('admin.users.users', compact('users'))->with('i', (request()->input('page', 1) - 1) * 5);
    }
}
