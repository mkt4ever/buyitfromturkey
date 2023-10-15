<?php

namespace App\Http\Controllers;

use App\Models\Brand;
use App\Models\FAQ;
use App\Models\OurOffer;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;
use App\Models\Service;
use App\Models\Slider;

class HomeController extends Controller
{
    public function index(){
        $compact = Cache::rememberForever('homepage_'.app()->getLocale(), function(){
            $services = Service::withTranslation(app()->getLocale())->get()->translate(app()->getLocale());
            $sliders = Slider::withTranslation(app()->getLocale())->where('active', 1)->orderByDesc('order')->get()->translate(app()->getLocale());
            $offers = OurOffer::withTranslation(app()->getLocale())->where('active', 1)->orderByDesc('order')->get()->translate(app()->getLocale());
            $brands = Brand::withTranslation(app()->getLocale())->where('active', 1)->orderByDesc('order')->get()->translate(app()->getLocale());
            $faqs = FAQ::withTranslation(app()->getLocale())->where('is_homepage', 1)->orderByDesc('order')->get()->translate(app()->getLocale());

            return [
                "services" => $services,
                "sliders" => $sliders,
                "offers" => $offers ,
                "brands" => $brands,
                "faqs" => $faqs,
            ];

    });

    // dd($compact) ;

        return view('homepage')->with($compact);
    }
}
