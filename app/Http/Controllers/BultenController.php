<?php

namespace App\Http\Controllers;

use App\Models\Bulten;
use Illuminate\Http\Request;

class BultenController extends Controller
{
    public function store(Request $request){

        $validatedData = $request->validate([
            'email' => 'required'

        ]);

        $bulten = new Bulten;
        $bulten->email = $validatedData['email'];
        $bulten->save();

        // $targetMail = TargetMail::where('model' , 'Bulten')->first();

        // Mail::to(targetMail->Email)->send(new BultenMail($bulten));

        return redirect()->back()->with('success', text('bulten_submitted'));

        

    }
}
