<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ApplicationController extends Controller
{
    public function index(){

        return view('forms.application-form');
    }

    public function store(Request $request){

    }
}
