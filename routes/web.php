<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\LabController;
use App\Http\Controllers\MailController;

//lab
Route::get('/lab', [LabController::class, 'mutatorLab']);



Route::get('/', function () { return view('fiche_paie_pdf');});

//autre test
Route::get('fiche-paie-pdf', [MailController::class, 'fichePaie']);
Route::get('mass-fiche-paie-pdf', [MailController::class, 'massFichePaie']);
Route::post('simple-mail', [MailController::class, 'simpleMail'])->name('sendMail');
Route::get('mail-pdf', [MailController::class, 'SenderFichePaieFromPublic']);