<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\ContactUs;
use App\Models\Language;
use App\Models\SEO;
use App\Models\StaticPage;
use App\Providers\RouteServiceProvider;
use App\Models\User;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\View;
use Monarobase\CountryList\CountryListFacade as Countries;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = RouteServiceProvider::HOME;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'password' => ['required', 'string', 'min:8', 'confirmed'],
            'birth_date' => ['required', 'string', 'max:255'],
            'country' => ['required', 'string', 'max:255'],
        ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\Models\User
     */
    protected function create(array $data)
    {
        $user = User::create([
            'name' => $data['name'],
            'email' => $data['email'],
            'password' => Hash::make($data['password']),
            'birth_date' => $data['birth_date'],
            'country' => $data['country'],
        ]);

        // Mail::to($user->email)->send(new RegisterMail($user));

        return $user;
    }

    public function showRegistrationForm()
    {
        $shared = Cache::rememberForever('shared_'.app()->getLocale(), function(){
            $contactUs = ContactUs::first()->translate(app()->getLocale());
            $seo = SEO::withTranslation(app()->getLocale())->first()->translate(app()->getLocale());
            $pages = StaticPage::withTranslation(app()->getLocale())->get()->translate(app()->getLocale());

            $kvkk = $pages->where('is_KVKK', true)->first();

            $langs = Language::where('active', 1)->get();

            return [
                "contactUs" => $contactUs,
                "seo" => $seo,
                "pages" => $pages,
                "kvkk" => $kvkk,
                "langs" => $langs,
            ];
        });

        View::share($shared);
        
        $locale = Session::get('locale');
        $countries = Countries::getList($locale, 'php');
        return view('auth.register', compact('countries'));
    }
}
