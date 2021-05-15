<?php

namespace App\Http\Controllers;

use App\Models\Checker;
use App\Models\User;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;

class CheckerController extends Controller
{
    /**
   * Registration
   */
  public function register(Request $request)
  {
   

    $validatedData = $request->validate([
      "prenom" => "required|max:55",
      "nom" => "required|max:55",
      "adresse" => "required|max:255",
      "telephone" => "required|max:55",
      "email" => "email|required|unique:users",
      "password" => "required|confirmed",
      "avatar" => "required",
     ]);
   
    $validatedData["password"] = bcrypt($request->password);
    //return response(["creation" => $validatedData  ]);

    $user = User::create($validatedData);
   //return response(["creation" => $user ]);
  
    $accessToken = $user->createToken("authToken")->accessToken;
    
    return response([
      "user" => $user,
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
      return response(["message" => "Invalid Credentials"]);
    }
    
    $accessToken = auth()
      ->user()
      ->createToken("authToken")->accessToken;

      //return response(["message" => $accessToken]);

    return response([
      "user" => auth()->user(),
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
