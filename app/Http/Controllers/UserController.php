<?php

namespace App\Http\Controllers;

use App\Models\BillingDetail;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
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

        $billings = BillingDetail::where('user_id', Auth::user()->id)->get();

        return view('users.billing',compact('billings'));
    }
    public function myOffers(Request $request){

        return view('users.myOffers');
    }
    public function myApplications(Request $request){

        return view('users.myApplications') ;

    }

    public function storeBilling(Request $request){

        $validatedData = $request->validate([

            'billing_title' => 'required|string|max:255',
            'name' => 'required|string|max:255',
            'last_name' => 'required|string|max:255',
            'country' => 'required|string|max:255',
            'city' => 'required|string|max:255',
            'district' => 'required|string|max:255',
            'tax_number' => 'nullable|string',
            'address' => 'required|string',
            'type' => 'required|string|max:255',

        ]);

        $billing = new BillingDetail ;

        $billing->user_id = Auth::user()->id;
        $billing->name = $validatedData['name'];
        $billing->title = $validatedData['billing_title'];
        $billing->last_name = $validatedData['last_name'];
        $billing->country = $validatedData['country'];
        $billing->city = $validatedData['city'];
        $billing->district = $validatedData['district'];
        $billing->tax_number = $validatedData['tax_number'];
        $billing->address = $validatedData['address'];
        $billing->type = $validatedData['type'];

        $billing->save();

        // $targetMail = TargetMail::where('model' , 'BillingDetail')->first();

        // if($targetMail) Mail::to($targetMail->email)->send(new BillingDetail($offer));

        return redirect()->back()->with('success', text('BillingDetail_submitted'));
    }

    public function markAsDefulat(Request $request){

        $billing = BillingDetail::where('user_id', Auth::user()->id)->where('id', $request->id)->first();

        if ($billing) {
            $billing->defualt = true;
            $billing->save();
        
            DB::table('billing_details')
                ->where('user_id', Auth::user()->id)
                ->where('id', '<>', $request->id)
                ->update(['defualt' => false]);
        }

        return redirect()->back()->with('success', text('set_to_default'));


    }

    public function deleteBilling(Request $request){

        $billing = BillingDetail::where('user_id', Auth::user()->id)->where('id', $request->id)->first();

        if ($billing) {

            $billing->delete();

        }

        return redirect()->back()->with('success', text('deleted_sucess'));

    }


}
