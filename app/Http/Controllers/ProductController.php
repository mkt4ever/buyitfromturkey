<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function index(Request $request){

        return view('products.index') ;
    }

    public function show(Request $request){

        return view('products.show') ;

    }
}
