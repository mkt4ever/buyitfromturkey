<?php

namespace App\Http\Controllers;

use App\Models\Blog;
use App\Models\BlogCategory;
use Illuminate\Support\Facades\Cache;


use Illuminate\Http\Request;

class BlogController extends Controller
{
    public function index(){

        $compact = Cache::rememberForever('blogs_index_'.app()->getLocale(), function(){

            $blogsCategories = BlogCategory::get()->translate(app()->getLocale());

            $featured_blogs = Blog::withTranslation(app()->getLocale())->where('is_featured', 1)->orderByDesc('date')->get()->translate(app()->getLocale());

            return [
                "blogsCategories" => $blogsCategories ,
                "featured_blogs" => $featured_blogs ,
            ];

        });

        $compact["latest_blogs"] = Cache::rememberForever('latest_blogs_'.app()->getLocale(), function(){
            $latest_blogs = Blog::withTranslation(app()->getLocale())->with(['author', 'blog_tags','blog_category'])->orderByDesc('date')->take(6)->get()->translate(app()->getLocale());

            return $latest_blogs;
        });

        return view('blogs.index')->with($compact);
    }

    public function show(Request $request){

        return view('blogs.show');
    }
}
