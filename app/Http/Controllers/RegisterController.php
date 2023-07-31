<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Hash;
use Illuminate\Http\Request;
use App\Models\User;

class RegisterController extends Controller
{
    public function index()
    {
        return view('register.index', [
            'title' => 'Register Acount',
            'active' => 'Register'
        ]);
    }

    public function store(Request $request)
    {
        $valditionData = $request->validate([
            'name' => 'required|max:255',
            'username' => ['required', 'min:6', 'max:25', 'unique:users'],
            'email' => 'required|unique:users|email:dns',
            'password' => 'required|max:255|min:6'
        ]);

        // $valditionData['password'] = bcrypt($valditionData['password']);
        $valditionData['password'] = Hash::make($valditionData['password']);

        User::create($valditionData);
        
        // $request->session()->flash('Success', 'Registrasi Success Full , Pliss Login..');

        return redirect('/login')->with('success','Registrasi Success Full , Pliss Login..' );
    
    }
}
