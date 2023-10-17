<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\ContactUs;
use App\Models\Language;
use App\Models\SEO;
use App\Models\StaticPage;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\View;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
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
        $this->middleware('guest')->except('logout');
    }

    public function showLoginForm()
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
        
        return view('auth.login');
    }
}
