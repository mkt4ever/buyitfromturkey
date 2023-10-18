<?php

use App\Http\Controllers\BlogController;
use App\Http\Controllers\ContactOrderController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Models\SiteText;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\VoyagerHelperController;
use App\Models\Language;


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


Auth::routes();
Route::group(['middleware'=>['locale', 'ttl:8640']], function () use($translations){

    Route::get('/', [HomeController::class, 'index'])->name('homepage');

    foreach(Language::all() as $lang){
        $langTranslations = $translations->translate($lang->code);
        Route::group(['prefix' => $lang->code], function () use ($lang, $langTranslations){
            Route::group(["as" => "$lang->code."], function(){
                Auth::routes();
            });

            Route::get('/', [HomeController::class, 'index'])->name($lang->code.'.homepage');

            Route::get('/'.transRoute('routeBlogs', $langTranslations).'/{slug?}', [BlogController::class, 'index'])->name($lang->code.'.blogs.index');
            Route::get('/'.transRoute('routeBlogDetails', $langTranslations).'/{slug}', [BlogController::class, 'show'])->name($lang->code.'.blogs.show');

            Route::get('/'.transRoute('routeProducts', $langTranslations).'/{slug?}', [ProductController::class, 'index'])->name($lang->code.'.products.index');
            Route::get('/'.transRoute('routeProductDetails', $langTranslations).'/{slug}', [ProductController::class, 'show'])->name($lang->code.'.products.show');

            Route::group(['middleware'=>['auth']], function () use($langTranslations, $lang){
                Route::get('/'.transRoute('routeProfile', $langTranslations), [UserController::class, 'profile'])->name($lang->code.'.profile');
                Route::post('/'.transRoute('routeProfile', $langTranslations).'/update', [UserController::class, 'updateProfile'])->name($lang->code.'.profile.update');
                Route::post('/'.transRoute('routeProfile', $langTranslations).'/changePassword', [UserController::class, 'changePassword'])->name($lang->code.'.profile.changePassword');
            });

            Route::get('/'.transRoute('routePage', $langTranslations).'/{slug}', [HomeController::class, 'staticPage'])->name($lang->code.'.staticPage');

            Route::get('/'.transRoute('routeContact', $langTranslations).'', [ContactOrderController::class, 'index'])->name($lang->code.'.contactUs.index');
            Route::post('/'.transRoute('routeContact', $langTranslations).'', [ContactOrderController::class, 'store'])->name($lang->code.'.contactUs.store');

        });

    }



});
