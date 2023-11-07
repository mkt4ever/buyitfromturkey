<?php

namespace App\Providers;

use App\FormFields\MapFormField;
use App\Models\SiteText;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\View;
use Illuminate\Support\ServiceProvider;
use TCG\Voyager\Facades\Voyager;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        $this->app->singleton('VoyagerGuard', function () {
            return 'admin';
        });
        Voyager::addFormField(MapFormField::class);
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        View::composer(['errors::*', 'errors.*'], function ($view) {
            $locale = request()->segment(1);
            if(!$locale || !in_array($locale, config('voyager.multilingual.locales')))
                $locale = "tr";
            
            App::setLocale($locale);

            Session::put('locale', $locale);
        
            $siteTextsArray = Cache::rememberForever('siteTexts_'.app()->getLocale(), function() use ($locale){

                $siteTexts = SiteText::withTranslation(app()->getLocale())->get()->translate($locale);
                $siteTextsArray = [];
                foreach($siteTexts as $text)
                    $siteTextsArray[$text->key] = $text->content;
                
                return $siteTextsArray;
            });
            
            Session::put('siteTexts', $siteTextsArray);
        });
    }
}
