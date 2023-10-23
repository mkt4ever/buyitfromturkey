<?php

namespace App\Http\Controllers;

use App\Models\ApplicationOrder;
use Illuminate\Http\Request;

class ApplicationController extends Controller
{
    public function index(){

        return view('forms.application-form');
    }

    public function store(Request $request){

        $validatedData = $request->validate([
            'name' => 'required|string|max:255',
            'last_name' => 'required|string|max:255',
            'company_name' => 'required|string|max:255',
            'email' => 'required|email',
            'sectors' => 'required|string|max:255',
            'products_services' => 'required|string|max:255',
            'link' => 'required|string|max:255',
            'quantity' => 'required|integer|min:1',
            'price_terms' => 'required|integer|min:1',
            'payment_method' => 'required|integer|min:1',
            'country' => 'required|integer|min:1',
            'details' => 'required|string',
            'request' => 'required|string',
            'terms_1' => 'required|in:true,1',
            'terms_2' => 'required|in:true,1',
        ]);

        $application = new ApplicationOrder ;
        $application->name = $validatedData['name'];
        $application->last_name = $validatedData['last_name'];
        $application->company_name = $validatedData['company_name'];
        $application->email = $validatedData['email'];
        $application->sectors = $validatedData['sectors'];
        $application->products_services = $validatedData['products_services'];
        $application->link = $validatedData['link'];
        $application->quantity = $validatedData['quantity'];
        $application->price_terms = $validatedData['price_terms'];
        $application->payment_method = $validatedData['payment_method'];
        $application->country = $validatedData['country'];
        $application->details = $validatedData['details'];
        $application->request = $validatedData['request'];

        $application->save();


        // $targetMail = TargetMail::where('model' , 'ApplicationOrder')->first();

        // if($targetMail) Mail::to($targetMail->email)->send(new ApplicationOrder($application));

        return redirect()->back()->with('success', text('ApplicationOrder_submitted'));

    }
}
