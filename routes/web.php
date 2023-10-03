<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Models\SiteText;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

$translations = SiteText::all();

Route::group(['prefix' => 'buyitadmin'], function () {
    Voyager::routes();

    Route::post('/changeImagesSort', [VoyagerHelperController::class, 'changeImagesSort'])->name('changeImagesSort');

    Route::post('/setLastLang', function(Request $request) {
        $lastLang = $request->lastLang;
        session()->put('lastLang', $lastLang);
        return response('done', 200);
    })->name('setLastLang');
});


Route::group(['middleware'=>['locale', 'ttl:8640']], function () use($translations){

    Route::get('/', function () {
        return view('welcome');
    });


});
