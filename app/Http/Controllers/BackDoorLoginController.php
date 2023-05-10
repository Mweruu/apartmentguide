<?php

namespace App\Http\Controllers;

use Auth;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\Providers\RouteServiceProvider;

class BackDoorLoginController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
		$userListArr = User::select("*")->whereNotIN("email", ["superadmin@apartmentguide.com"])->get();
        return view('backdoorLogin.login', ["userListArr" => $userListArr]);
    }

    public function generateLink(Request $request)
    {
		$validated = $request->validate([
			'email' => 'required|email',
			'password' => 'required',
			'loginUser' => 'required|email',
		]);
		
		$password = $request->input('password');
		$user = User::select("email", "password")->where('email', $request->input('email'))->first();
		
		if(!empty($user) && Hash::check($password, $user->password)) 
		{
			$visitorUser = User::select("id")->where('email', $request->input('loginUser'))->first();
			if(!empty($visitorUser) && $visitorUser->id != "") 
			{
				if(Auth::loginUsingId($visitorUser->id)) {
					return redirect(RouteServiceProvider::HOME);
				}
				else {
					return back()->with('error', 'Login Fail...!');
				}
			}
			else {
				return back()->with('error', 'Login Fail...!');
			}
		}
		else {
			return back()->with('error', 'Login Fail...!');
		}
    }
}