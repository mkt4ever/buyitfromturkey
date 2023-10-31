<?php

namespace App\Http\Controllers;

use App\Models\Advantage;
use App\Models\Blog;
use App\Models\BlogCategory;
use App\Models\Brand;
use App\Models\CoverImage;
use App\Models\FAQ;
use App\Models\Founder;
use App\Models\Meta;
use App\Models\OurOffer;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;
use App\Models\Service;
use App\Models\Slider;
use App\Models\StaticPage;
use Illuminate\Support\Facades\Session;

class HomeController extends Controller
{
    public function index(){
        $compact = Cache::rememberForever('homepage_'.app()->getLocale(), function(){
            $services = Service::withTranslation(app()->getLocale())->get()->translate(app()->getLocale());
            $sliders = Slider::withTranslation(app()->getLocale())->where('active', 1)->orderBy('order')->get()->translate(app()->getLocale());
            $offers = OurOffer::withTranslation(app()->getLocale())->where('active', 1)->orderByDesc('order')->get()->translate(app()->getLocale());
            $brands = Brand::withTranslation(app()->getLocale())->where('active', 1)->orderByDesc('order')->get()->translate(app()->getLocale());
            $faqs = FAQ::withTranslation(app()->getLocale())->where('is_homepage', 1)->orderByDesc('order')->get()->translate(app()->getLocale());
            $blogCategories = BlogCategory::withCount('blogs')->get()->translate(app()->getLocale());
            $blogs = Blog::withTranslation(app()->getLocale())->where('is_featured', 1)->orderByDesc('date')->get()->translate(app()->getLocale());

            return [
                "services" => $services,
                "sliders" => $sliders,
                "offers" => $offers ,
                "brands" => $brands,
                "faqs" => $faqs,
                "blogCategories" => $blogCategories,
                "blogs" => $blogs,
            ];

    });

        return view('homepage')->with($compact);
    }

    public function staticPage(Request $request){
        $compact = Cache::rememberForever("staticPage_{$request->slug}_".app()->getLocale(), function() use ($request){
            $page = StaticPage::whereTranslation('slug', '=', $request->slug, [app()->getLocale()], app()->getLocale() == 'tr')->firstOrFail()->translate(app()->getLocale());

            $meta = New Meta() ;
            $meta->meta_title = $page->meta_title;
            $meta->meta_description = $page->meta_description;
            $meta->meta_keyword = $page->meta_keyword;
            $meta->meta_canonical = $page->meta_canonical;
            $meta->meta_ogimage = $page->meta_ogimage;

            return [
                "page" => $page,
                "meta" => $meta
            ];
        });

        Session::flash('slugObject', $compact["page"]);

        return view('staticPage')->with($compact);
    }

    public function howItWork(Request $request){

        $compact = Cache::rememberForever("howItWork_".app()->getLocale(), function() use ($request){

            $coverImage = CoverImage::where('title', 'nasıl_çalışır')->first()->translate(app()->getLocale());

            return [
                "coverImage" => $coverImage,

            ];
        });

        
        return view('howitwork')->with($compact);

    }


    public function WhyChoose(Request $request){

        $compact = Cache::rememberForever("WhyChoose_".app()->getLocale(), function() use ($request){

            $coverImage = CoverImage::where('title', 'neden_seçtin')->first()->translate(app()->getLocale());
            $advantages = Advantage::withTranslation(app()->getLocale())->where('active', 1)->orderByDesc('order')->get()->translate(app()->getLocale());

            return [
                "coverImage" => $coverImage,
                "advantages" => $advantages,

            ];
        });

        
        return view('whychoose')->with($compact);

    }

    public function whoWeAre(Request $request){

        $compact = Cache::rememberForever("whoWeAre_".app()->getLocale(), function() use ($request){

            $coverImage = CoverImage::where('title', 'Biz_Kimiz')->first()->translate(app()->getLocale());
            $founders = Founder::withTranslation(app()->getLocale())->get()->translate(app()->getLocale());

            return [
                "coverImage" => $coverImage,
                "founders"=> $founders,

            ];
        });

        return view('whoweare')->with($compact);

    }

    public function whatWeOffer(Request $request){

        $compact = Cache::rememberForever("whatWeOffer_".app()->getLocale(), function() use ($request){

            $coverImage = CoverImage::where('title', 'nasıl_çalışır')->first()->translate(app()->getLocale());
            $our_offers = OurOffer::withTranslation(app()->getLocale())->where('active', 1)->orderByDesc('order')->get()->translate(app()->getLocale());

            return [
                "coverImage" => $coverImage,
                "our_offers"=> $our_offers,

            ];
        });

        return view('whatweoffer')->with($compact);

    }





    

}