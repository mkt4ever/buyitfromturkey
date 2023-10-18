<?php

namespace App\Http\Middleware;

use Illuminate\Auth\Middleware\Authenticate as Middleware;
use Illuminate\Support\Facades\Session;

class Authenticate extends Middleware
{
    /**
     * Get the path the user should be redirected to when they are not authenticated.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return string|null
     */
    protected function redirectTo($request)
    {
        if (! $request->expectsJson()) {
            $locale = request()->segment(1);
            if(!$locale || !in_array($locale, config('voyager.multilingual.locales')))
                $locale = "tr";
            
            return route($locale.'.login');
        }
    }
}
