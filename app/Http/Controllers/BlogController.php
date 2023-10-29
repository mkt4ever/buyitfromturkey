<?php

namespace App\Http\Controllers;

use App\Models\Blog;
use App\Models\BlogCategory;
use Illuminate\Support\Facades\Cache;


use Illuminate\Http\Request;

class BlogController extends Controller
{
    public function index(Request $request){


        $category = null;
        if($request->slug && $request->slug != 'All'){
            $category = BlogCategory::whereTranslation('slug', '=', $request->slug, [app()->getLocale()], app()->getLocale() == 'tr')->firstOrFail();
        }

        $featured_blogs = Blog::withTranslation(app()->getLocale())
                ->when($request->slug && $request->slug != 'All', function ($query) use ($request, $category) {
                    $query->whereRelation('blog_category', 'blog_categories.id', $category->id);
                })
                ->where('is_featured', 1)
                ->orderByDesc('date')
                ->get()
                ->translate(app()->getLocale());

        $compact = Cache::rememberForever('blogs_index_'.app()->getLocale(), function(){

            $blogsCategories = BlogCategory::get()->translate(app()->getLocale());
            return [
                "blogsCategories" => $blogsCategories ,
            ];

        });

        $blogs = Blog::withTranslation(app()->getLocale())
            ->with(['author' => function ($query) {
                $query->withTranslation(app()->getLocale());
            }, 'blog_tags', 'blog_category'])
            ->when($request->slug && $request->slug != 'All', function ($query) use ($request, $category) {
                $query->whereRelation('blog_category', 'blog_categories.id', $category->id);
            })
            ->when($request->search, function ($query) use ($request) {
                $query->where(function ($query2) use ($request) {
                    $query2->whereTranslation('title', 'like', "%$request->search%")
                        ->orWhere(function ($query3) use ($request) {
                            $query3->whereTranslation('content', 'like', "%$request->search%");
                        })
                        ->orWhere(function ($query3) use ($request) {
                            $query3->whereTranslation('brief', 'like', "%$request->search%");
                        });
                });
            })
            ->orderByDesc('date')
            ->get()
            ->all();



        $latest_blogs = collect($blogs)->take(8);
        $hiddenBlogs = collect($blogs)->splice(8);

        return view('blogs.index', compact('latest_blogs','hiddenBlogs','featured_blogs'))->with($compact);
    }

    public function show(Request $request){

        $compact = Cache::rememberForever("blogs_show_{$request->slug}_".app()->getLocale(), function() use ($request){
            $blog = Blog::with(['author', 'blog_tags','blog_category'])->whereTranslation('slug', '=', $request->slug, [app()->getLocale()], app()->getLocale() == 'tr')->firstOrFail()->translate(app()->getLocale());
            $prevBlog = Blog::withTranslations(app()->getLocale())->where('created_at', '<', $blog->created_at)->orderBy('created_at', 'desc')->first();
            $nextBlog = Blog::withTranslations(app()->getLocale())->where('created_at', '>', $blog->created_at)->orderBy('created_at', 'asc')->first();


            return [
                "blog" => $blog,
                "prevBlog" => $prevBlog,
                "nextBlog" => $nextBlog,
            ];


        });
        return view('blogs.show')->with($compact);
    }
}
