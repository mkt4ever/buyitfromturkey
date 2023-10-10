<?php

namespace App\Http\Controllers;

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

            return [
                "services" => $services,
                "sliders" => $sliders,
            ];

    });

    // dd($compact) ;

        return view('homepage')->with($compact);
    }
}
