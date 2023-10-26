<?php

use App\Http\Controllers\ApplicationController;
use App\Http\Controllers\BlogController;
use App\Http\Controllers\BultenController;
use App\Http\Controllers\ContactOrderController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Models\SiteText;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\OfferOrderController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\QuestionController;
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
                Route::get('/'.transRoute('routeProfile', $langTranslations).'/'.transRoute('routeBilling', $langTranslations), [UserController::class, 'billing'])->name($lang->code.'.billing');
                Route::get('/'.transRoute('routeProfile', $langTranslations).'/'.transRoute('routeMyOffers', $langTranslations), [UserController::class, 'myOffers'])->name($lang->code.'.myOffers');
                Route::get('/'.transRoute('routeProfile', $langTranslations).'/'.transRoute('routeMyApplications', $langTranslations), [UserController::class, 'myApplications'])->name($lang->code.'.myApplications');

                Route::get('/'.transRoute('routeProfile', $langTranslations), [UserController::class, 'profile'])->name($lang->code.'.profile');
                Route::post('/'.transRoute('routeProfile', $langTranslations).'/store', [UserController::class, 'storeBilling'])->name($lang->code.'.billing.store');
                Route::post('/'.transRoute('routeProfile', $langTranslations).'/update', [UserController::class, 'updateProfile'])->name($lang->code.'.profile.update');
                Route::post('/'.transRoute('routeProfile', $langTranslations).'/changePassword', [UserController::class, 'changePassword'])->name($lang->code.'.profile.changePassword');
            });

            Route::get('/'.transRoute('routePage', $langTranslations).'/{slug}', [HomeController::class, 'staticPage'])->name($lang->code.'.staticPage');

            Route::get('/'.transRoute('routeContact', $langTranslations).'', [ContactOrderController::class, 'index'])->name($lang->code.'.contactUs.index');
            Route::post('/'.transRoute('routeContact', $langTranslations).'', [ContactOrderController::class, 'store'])->name($lang->code.'.contactUs.store');

            Route::get('/'.transRoute('routeHowitwork', $langTranslations).'', [HomeController::class, 'howItWork'])->name($lang->code.'.howItWork');
            Route::get('/'.transRoute('routeWhyChoose', $langTranslations).'', [HomeController::class, 'WhyChoose'])->name($lang->code.'.WhyChoose');
            Route::get('/'.transRoute('routeWhoweare', $langTranslations).'', [HomeController::class, 'Whoweare'])->name($lang->code.'.Whoweare');
            Route::get('/'.transRoute('routeWhatweoffer', $langTranslations).'', [HomeController::class, 'Whatweoffer'])->name($lang->code.'.Whatweoffer');

            Route::get('/'.transRoute('routeApplicationForm', $langTranslations).'', [ApplicationController::class, 'index'])->name($lang->code.'.application.index');
            Route::post('/'.transRoute('routeApplicationForm', $langTranslations).'', [ApplicationController::class, 'store'])->name($lang->code.'.application.store');

            Route::get('/'.transRoute('routeOfferForm', $langTranslations).'', [OfferOrderController::class, 'index'])->name($lang->code.'.offer.index');
            Route::post('/'.transRoute('routeOfferForm', $langTranslations).'', [OfferOrderController::class, 'store'])->name($lang->code.'.offer.store');

            Route::post('/'.transRoute('routeQuestionStore', $langTranslations).'', [QuestionController::class, 'store'])->name($lang->code.'.question.store');

            Route::post('/'.transRoute('routeBulten', $langTranslations).'', [BultenController::class, 'store'])->name($lang->code.'.bulten');
        });

    }



});
