<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;
use App\Models\Service;


class HomeController extends Controller
{
    public function index(){
        $compact = Cache::rememberForever('homepage_'.app()->getLocale(), function(){
            $services = Service::withTranslation(app()->getLocale())->get()->translate(app()->getLocale());


            return [
                "services" => $services,
            ];

    });

    // dd($compact) ;

        return view('homepage')->with($compact);
    }
}
