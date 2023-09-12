<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\DB;

class VoyagerHelperController extends Controller
{
    public function changeImagesSort(Request $request)
    {
        DB::table(str_replace('-', '_', $request->table))->where('id', $request->id)->update([$request->fieldName => json_encode($request->images)]);

        return response('updated', 204);
    }    
}
