<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\MailController;
use App\Http\Controllers\RoleController;
use App\Http\Controllers\CheckerController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\FichepaieController;
use App\Http\Controllers\RessourceController;
use App\Http\Controllers\HierarchieController;
use App\Http\Controllers\DemandecongeController;

use App\Http\Controllers\NotificationappController;
use App\Http\Controllers\DepotreclamationController;




//CheckerController
Route::post("register", [CheckerController::class, "register"])->name("register");
Route::post("login", [CheckerController::class, "login"])->name("login");

Route::middleware("auth:api")->group(function () {

   Route::get("/logout", [CheckerController::class, "logout"])->name("logout"); 
   Route::delete("/delete-user/{id}", [CheckerController::class, "deleteUser"])->name("deleteUser"); 

});

//NotificationappController
//employee 
Route::get('/notifications-employee/{id}', [NotificationappController::class, 'notificationCountEmployee']); 
Route::get('/notifications-reset-employee/{id}', [NotificationappController::class, 'notificationResetEmployee']);
Route::get('/notifications-data-employee/{id}', [NotificationappController::class, 'notificationDataEmployee']);

// manager 
Route::get('/notifications', [NotificationappController::class, 'notificationCount']); 
Route::get('/notifications-data', [NotificationappController::class, 'notificationData']); 
Route::get('/notifications-reset', [NotificationappController::class, 'notificationReset']); 

Route::put('/notifications-validation-conge', [NotificationappController::class, 'notificationValidationConge']); 
Route::put('/notifications-negation-conge', [NotificationappController::class, 'notificationNegationConge']); 

//DepotreclamationController
Route::post('/demande-reclamation', [DepotreclamationController::class, 'store']); 

//DemandecongeController
Route::post('/demande-conge', [DemandecongeController::class, 'store']); 


//FichepaieController 
Route::get('/downloadFile/{year}/{month}/{id}', [FichepaieController::class, 'downloadFile']); //download file from public storage
Route::get('/pdf', [FichepaieController::class, 'createPDF']); //make pdf from db

//RessourceController
Route::put('/ressources/{id}', [RessourceController::class, 'update']);

//roleController
Route::put('/roles/{id}', [RoleController::class, 'update']);

//hierarchieController
Route::put('/hierarchies/{id}', [HierarchieController::class, 'update']);

//profiles
//profile admin
Route::get('/profiles/crud-admin', [ProfileController::class, 'crudEmployeeAdmin']);
Route::get('/profiles', [ProfileController::class, 'index']);
Route::post('/profiles', [ProfileController::class, 'store']);
Route::get('/profiles/{id}', [ProfileController::class, 'show']);
Route::put('/profiles/{id}', [ProfileController::class, 'update']);
Route::delete('/profiles/{id}', [ProfileController::class, 'destroy']);


//services
//api mail
Route::post('simple-mail-api', [MailController::class, 'simpleMail']);
//Route::get('mail-pdf/{yearm}/{monthm}/', [MailController::class, 'SenderFichePaieFromPublic']);
Route::get('mail-pdf/{yearm}/{monthm}/', [MailController::class, 'createSendMassFichePaieFromPublic']);

//scheduler
Route::get('/schedule', [CheckerController::class, 'testSchedule']);

//resource product
Route::apiResource('products', ProductController::class);