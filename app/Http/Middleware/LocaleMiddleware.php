<?php

namespace App\Http\Middleware;

use App\Models\SiteText;
use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Session;

class LocaleMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next)
    {
        $locale = Session::get('locale');
        if(!in_array($locale, config('voyager.multilingual.locales'))){
            $locale = 'tr';
        }
        App::setLocale($locale);

        if(!Session::has('siteTexts')){
            // $siteTexts = SiteText::all()->translate($locale);
            $siteTexts = SiteText::all();
            $siteTextsArray = [];
            foreach($siteTexts as $text)
                $siteTextsArray[$text->key] = $text->content;

                Session::put('siteTexts', $siteTextsArray);
        }

        return $next($request);
    }
}
