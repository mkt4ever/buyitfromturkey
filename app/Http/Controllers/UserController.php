<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Session;
use Illuminate\Validation\Rules;
use Monarobase\CountryList\CountryListFacade as Countries;

class UserController extends Controller
{
    public function profile(){
        
        $locale = Session::get('locale');
        $countries = Countries::getList($locale, 'php');
        return view('users.profile', compact('countries'));
    }

    public function updateProfile(Request $request){
        $request->validate([
            'name' => ['required', 'string', 'max:255'],
            'birth_date' => ['required', 'string', 'max:255'],
            'country' => ['required', 'string', 'max:255'],
            'phone' => ['string', 'max:255'],
        ]);
        $user = User::findOrFail(Auth::user()->id);
        $user->name = $request->name;
        $user->birth_date = $request->birth_date;
        $user->country = $request->country;
        $user->phone = $request->phone;

        $user->save();
        return redirect()->back()->with('msg', 'done');
    }

    public function changePassword(Request $request){
        $request->validate([
            'password_old' => 'required|current_password',
            'password' => ['required', 'confirmed', Rules\Password::defaults()],
        ]);

        $user = User::findOrFail(Auth::user()->id);
        $user->password = Hash::make($request->password);
        $user->setRememberToken(Str::random(60));

        $user->save();
        return redirect()->back()->with('msg', 'done');
    }

    public function billing(Request $request){

        return view('users.billing');
    }
    public function myOffers(Request $request){

        return view('users.myOffers');
    }
    public function myApplications(Request $request){

        return view('users.myApplications') ;

    }


}
