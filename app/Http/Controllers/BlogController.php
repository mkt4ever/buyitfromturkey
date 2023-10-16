<?php

namespace App\Http\Controllers;

use App\Models\Blog;
use App\Models\BlogCategory;
use Illuminate\Support\Facades\Cache;


use Illuminate\Http\Request;

class BlogController extends Controller
{
    public function index(Request $request){

        $compact = Cache::rememberForever('blogs_index_'.app()->getLocale(), function(){

            $blogsCategories = BlogCategory::get()->translate(app()->getLocale());

            $featured_blogs = Blog::withTranslation(app()->getLocale())->where('is_featured', 1)->orderByDesc('date')->get()->translate(app()->getLocale());

            return [
                "blogsCategories" => $blogsCategories ,
                "featured_blogs" => $featured_blogs ,
            ];

        });

        $category = null;
        if($request->slug){
            $category = BlogCategory::whereTranslation('slug', '=', $request->slug, [app()->getLocale()], app()->getLocale() == 'tr')->firstOrFail();
        }

        $blogs = Blog::withTranslation(app()->getLocale())->with(['author' => function ($query) {
            $query->withTranslation(app()->getLocale());
        }, 'blog_tags','blog_category'])

        ->when($request->slug, function($query) use($request, $category){
            $query->whereRelation('blog_category', 'blog_categories.id', $category->id);
        })

        ->when($request->tag, function($query) use($request){
            $query->whereRelation('blog_tags', 'blog_tags.id', $request->unit);
        })

        ->when($request->search, function($query) use($request){
            $query->whereTranslation('title', 'like', "%$request->search%")
                  ->orWhere(function ($query2) use($request){
                    $query2->whereTranslation('content', 'like', "%$request->search%");
                  })
                  ->orWhere(function ($query2) use($request){
                    $query2->whereTranslation('brief', 'like', "%$request->search%");
                  });

        })
        ->orderByDesc('date')->get()->all();


        $latest_blogs = collect($blogs)->take(8);
        $hiddenBlogs = collect($blogs)->splice(8);

        return view('blogs.index', compact('latest_blogs','hiddenBlogs'))->with($compact);
    }

    public function show(Request $request){

        return view('blogs.show');
    }
}
