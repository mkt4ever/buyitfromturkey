<?php

namespace App\Http\Controllers;

use App\Models\OfferOrder;
use Illuminate\Http\Request;

class OfferOrderController extends Controller
{
    public function index(){

        return view('forms.offer-form');
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


        // dd($validatedData);

        $offer = new OfferOrder ;
        $offer->name = $validatedData['name'];
        $offer->last_name = $validatedData['last_name'];
        $offer->company_name = $validatedData['company_name'];
        $offer->email = $validatedData['email'];
        $offer->sectors = $validatedData['sectors'];
        $offer->products_services = $validatedData['products_services'];
        $offer->link = $validatedData['link'];
        $offer->quantity = $validatedData['quantity'];
        $offer->price_terms = $validatedData['price_terms'];
        $offer->payment_method = $validatedData['payment_method'];
        $offer->country = $validatedData['country'];
        $offer->details = $validatedData['details'];
        $offer->request = $validatedData['request'];

        $offer->save();


        // $targetMail = TargetMail::where('model' , 'offerOrder')->first();

        // if($targetMail) Mail::to($targetMail->email)->send(new offerOrder($offer));

        return redirect()->back()->with('success', text('offerOrder_submitted'));

    }
}
