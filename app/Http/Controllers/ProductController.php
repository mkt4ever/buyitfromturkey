<?php

namespace App\Http\Controllers;

use App\Models\ProductCategory;
use App\Models\ProductSector;
use App\Models\ProductsSlider;
use App\Models\ProductTag;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;


class ProductController extends Controller
{
    public function index(Request $request){

        $compact = Cache::rememberForever('products_index_'.app()->getLocale(), function(){

            $products_tags = ProductTag::get()->translate(app()->getLocale()); 
            $products_sectores = ProductSector::get()->translate(app()->getLocale());
            $products_category = ProductCategory::get()->translate(app()->getLocale());
            $products_sliders = ProductsSlider::withTranslations(app()->getLocale())->where('active', 1)->orderBy('order')->get();

            return [
                "products_tags" => $products_tags ,
                "products_sectores" => $products_sectores ,
                "products_category" => $products_category ,
                "products_sliders" => $products_sliders ,
            ];

        });
        return view('products.index')->with($compact);
    }

    public function show(Request $request){

        return view('products.show') ;

    }
}
