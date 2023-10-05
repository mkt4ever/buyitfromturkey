<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\View;
use App\Models\ContactUs;
use App\Models\SEO;
use App\Models\StaticPage;
use App\Models\Language;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    public function __construct()
    {
        $this->middleware(function ($request, $next) {

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

            return $next($request);

        });
    }
}
