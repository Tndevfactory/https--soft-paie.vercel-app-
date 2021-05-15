<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CheckerController;
use App\Http\Controllers\ProductController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::post("register", [CheckerController::class, "register"])->name("register");
Route::post("login", [CheckerController::class, "login"])->name("login");

Route::middleware("auth:api")->group(function () {
   Route::get("/logout", [CheckerController::class, "logout"])->name("logout"); 
    });

Route::apiResource('products', ProductController::class);
