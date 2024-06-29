<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use App\Models\User;

class LoginController extends Controller
{
    //

    public function index(){
        return view('auth.login');
    }

    public function login_proses(Request $request){

        $request -> validate([
        'email' => 'required',
        'password' => 'required'    
        ]);

        $data = [
            'email' => $request->email,
            'password' => $request -> password
        ];


        if(Auth::attempt($data)){
            return redirect()->route('admin.kriteria');            
        } else {
            return redirect()->route('login')->with('failed','Email dan password salah');    
        }
    }
    public function register(){
        return view('auth.register');
    }

    public function register_proses(Request $request){
        // dd($request->all());
        $request -> validate(
            [
                'nama' => 'required',
                'email' => 'required|email|unique:users,email',
                'password' => 'required|min:8'
            ]
        );

        $data['name']  = $request ->nama ;
        $data['email']  = $request ->email;
        $data['password'] = Hash::make($request -> password);

        if(User::create($data)){
            return redirect()->route('login');
        }else{
            return redirect()->route('register');
        }
    }

    public function logout(){
        Auth::logout();
        return redirect()->route('login')->with('success','Kamu berhasil logout');
    }
}


