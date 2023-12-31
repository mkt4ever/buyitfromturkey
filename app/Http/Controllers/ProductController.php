<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\ProductCategory;
use App\Models\ProductSector;
use App\Models\ProductsSlider;
use App\Models\ProductTag;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;
use TCG\Voyager\Models\Category;


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

        $products = Product::withTranslation(app()->getLocale())
            ->with(['product_tags', 'product_sectors', 'product_category'])
            ->when($request->category && $request->category != 'All', function ($query) use ($request) {
                $query->whereRelation('product_category', 'product_categories.slug', $request->category);
            })
            ->when($request->tag && $request->tag != 'All', function ($query) use ($request) {
                $query->whereHas('product_tags', function ($tagQuery) use ($request) {
                    $tagQuery->where('product_tags.slug', $request->tag);
                });
            })
            ->when($request->sector && $request->sector != 'All', function ($query) use ($request) {
                $query->whereHas('product_sectors', function ($sectorQuery) use ($request) {
                    $sectorQuery->where('product_sectors.slug', $request->sector);
                });
            })
            ->when($request->search, function ($query) use ($request) {
                $query->whereTranslation('title', 'like', "%$request->search%")
                    ->orWhere(function ($query2) use ($request) {
                        $query2->whereTranslation('content', 'like', "%$request->search%");
                    })
                    ->orWhere(function ($query2) use ($request) {
                        $query2->whereTranslation('brief', 'like', "%$request->search%");
                    });
            })
            ->orderByDesc('created_at')
            ->get()
            ->all();

        $productCount = count($products);

        return view('products.index',compact('products','productCount'))->with($compact);
    }

    public function show(Request $request){

        $compact = Cache::rememberForever("products_show_{$request->slug}_".app()->getLocale(), function() use ($request){
            $product = Product::with(['product_tags', 'product_sectors','product_category'])->whereTranslation('slug', '=', $request->slug, [app()->getLocale()], app()->getLocale() == 'tr')->firstOrFail()->translate(app()->getLocale());
            $images = json_decode($product->Images);

            $similars = Product::withTranslations(app()->getLocale())->where('product_category_id', $product->product_category_id)->where('id', '!=', $product->id)->get();

            return [
                "product" => $product,
                "images" => $images,
                "similars" => $similars,

            ];


        });
        return view('products.show')->with($compact);

    }
}
