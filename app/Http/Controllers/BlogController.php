<?php

namespace App\Http\Controllers;

use App\Models\BlogCategory;
use Illuminate\Support\Facades\Cache;


use Illuminate\Http\Request;

class BlogController extends Controller
{
    public function index(){

        $compact = Cache::rememberForever('blogs_index_'.app()->getLocale(), function(){

            $blogsCategories = BlogCategory::get()->translate(app()->getLocale());

            return [
                "blogsCategories" => $blogsCategories ,
            ];

        });

        return view('blogs.index')->with($compact);
    }

    public function show(Request $request){

        return view('blogs.show');
    }
}
