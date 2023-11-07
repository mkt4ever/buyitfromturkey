<?php

namespace App\Http\Controllers;

use App\Models\ContactOrder;
use App\Models\FAQ;
use App\Models\Meta;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cache;

class ContactOrderController extends Controller
{
    public function index(){
        $compact = Cache::rememberForever('contactUs_'.app()->getLocale(), function(){
            // $meta = Meta::where('page_name', 'iletisim')->first()->translate(app()->getLocale());
            $faqs = FAQ::withTranslation(app()->getLocale())->orderByDesc('order')->get()->translate(app()->getLocale());
            return [
                // "meta" => $meta,
                "faqs" => $faqs,
            ];
        });
        return view('contactUs')->with($compact);
    }

    public function store(Request $request){


        $validatedData = $request->validate([
            'first_name' => 'required|max:255',
            'last_name' => 'max:255',
            'email' => 'required|max:255|email',
            'subject' => 'max:255',
            'message' => 'required',
            'g-recaptcha-response' => 'recaptcha',
        ]);


        $contactOrder = new ContactOrder();
        $contactOrder->first_name = $validatedData['first_name'];
        $contactOrder->last_name = $validatedData['last_name'] ?? "";
        $contactOrder->email = $validatedData['email'];
        $contactOrder->subject = $validatedData['subject'] ?? "";
        $contactOrder->message = $validatedData['message'];

        $contactOrder->save();

        // $targetMail = TargetMail::where('model' , 'ContactOrder')->first();

        // if($targetMail) Mail::to($targetMail->email)->send(new ContactOrderMail($contactOrder));


        return redirect()->back()->with('msg', text('Contact_Order_submitted'));
    }
}
