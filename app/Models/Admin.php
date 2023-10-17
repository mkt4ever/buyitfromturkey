<?php

namespace App\Models;

use Illuminate\Support\Facades\Auth;

class Admin extends \TCG\Voyager\Models\User
{
    public function scopeCurrentUser($query)
    {
        if(Auth::guard('admin')->user()->id != 1)
        return $query->where('id', '!=', 1);
    }    
}
