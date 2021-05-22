<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\MailController;
use App\Http\Controllers\CheckerController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\ProfileController;



//scheduler
Route::get('/schedule', [CheckerController::class, 'testSchedule']);

//pdf
Route::get('/pdf', [CheckerController::class, 'createPDF']);

//profiles
Route::get('/profiles', [ProfileController::class, 'index']);
Route::post('/profiles', [ProfileController::class, 'store']);
Route::get('/profiles/{id}', [ProfileController::class, 'show']);
Route::put('/profiles/{id}', [ProfileController::class, 'update']);
Route::delete('/profiles/{id}', [ProfileController::class, 'destroy']);

//protected routes
Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

//open routes
//auth
Route::post("register", [CheckerController::class, "register"])->name("register");
Route::post("login", [CheckerController::class, "login"])->name("login");

//protected routes
Route::middleware("auth:api")->group(function () {
   Route::get("/logout", [CheckerController::class, "logout"])->name("logout"); 
    });

//resource product
Route::apiResource('products', ProductController::class);

//api mail
Route::post('simple-mail-api', [MailController::class, 'simpleMail']);