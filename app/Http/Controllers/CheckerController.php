<?php

namespace App\Http\Controllers;

use PDF;
use App\Models\User;
use App\Models\Checker;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;

class CheckerController extends Controller

{

  public function testSchedule()
  {
  
    return response([
      "user" => 'method run every minute ',
      "time" => Carbon::now(),
     
    ]);
  }

  // Generate PDF
    public function createPDF() {
      // retreive all records from db
      $data = collect(User::all());
     view()->share('user',$data);
      $pdf = PDF::loadView('fiche_paie_pdf', $data);
//dd( $pdf);
      // download PDF file with download method
      return $pdf->download('pdf_file.pdf');
    }

    /**
   * Registration
   */
  public function register(Request $request)
  {
   

    $validatedData = $request->validate([
      "prenom" => "required|max:55",
      "nom" => "required|max:55",
      "adresse" => "nullable",
      "telephone" => "nullable",
      "dob" => "nullable",
      "nb_enfant" => "nullable",
      "etat_civil" => "nullable",
      "email" => "email|required|unique:users",
      "password" => "required|confirmed",
      "avatar" => "nullable",
     ]);
   
    $validatedData["password"] = bcrypt($request->password);
    //return response(["creation" => $validatedData  ]);

    $user = User::create($validatedData);
   //return response(["creation" => $user ]);
  
    $accessToken = $user->createToken("authToken")->accessToken;
    
    //adding employee role
     User::find($user->id)->roles()->attach(1);
     $r=User::find($user->id)->roles()->pluck('name')[0];
    

    return response([
      "user" => $user,
      "role" => $r,
      "access_token" => $accessToken,
    ]);
  }

  /**
   * Login
   */
  public function login(Request $request)
  {
    

    $loginData = $request->validate([
      "email" => "email|required",
      "password" => "required",
    ]);
    
    if (!auth()->attempt($loginData)) {
      return response(["message" => "erreur authentification"]);
    }
    
    $accessToken = auth()
      ->user()
      ->createToken("authToken")->accessToken;

      //return response(["message" => $accessToken]);
    $role=auth()->user()->roles()->pluck('name')[0];
   // return $role;
   
    return response([
      "user" => auth()->user(),
      "role" => $role,
      "access_token" => $accessToken,
    ]);
  }

/**
 * return user info
 * 
 * @return \Illuminate\Http\Response
 */
public function user(Request $request, $id){

   //return response(["user" => Auth::check()]);

  if (Auth::check()) {

    $user = DB::table('users')->where('id', $id)->get();
    //return $user->toArray();
    return response()->json(["user" => $user->toArray()], 200);
  } else {
    return response()->json(["error" => "not logged"], 500);
  }

  }

/**
 * return user info
 * 
 * @return \Illuminate\Http\Response
 */
public function admin(Request $request){


    return response()->json(["user" => 'admin from authcontroller'], 200);
  

  }


  /**
   * Logout api
   *
   * @return \Illuminate\Http\Response
   */
  public function logout(Request $request)
  {
    return 'inside logout';

    if (Auth::check()) {

      $logoutStatus = Auth::user()
        ->token()
        ->revoke();

      if ($logoutStatus) {
        return response()->json(["success" => "logout_success"], 200);
      } else {
        return response()->json(["error" => "logout issue "], 200);
      }

    } else {

      return response()->json(["error" => "server error"], 500);
      
    }
  }


  
}
