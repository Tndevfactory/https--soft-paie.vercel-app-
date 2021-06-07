<?php

namespace App\Http\Controllers;

use PDF;
use App\Models\User;
use App\Models\Checker;
use App\Models\Ressource;
use App\Models\Hierarchie;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use App\Models\Qualification;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\File;

class CheckerController extends Controller
{
  /**
   * Registration
   */
  public function register(Request $request)
  {
    $validatedData = $request->validate([
      "nom" => "required|max:55",
      "prenom" => "required|max:55",
      "adresse" => "nullable",
      "gsm" => "nullable",
      "email" => "email|required|unique:users",
      "password" => "required|confirmed",
      "file" => "nullable",
    ]);

    $validatedData["nom"] = Str::lower($request->nom);
    $validatedData["password"] = bcrypt($request->password);
    //return response(["creation" => $validatedData  ]);

    $user = User::create($validatedData);
    // insert into users ("nom","prenom" ... ) value($request->nom), $request->prenom ...)
    //return response(["creation" => $user ]);

    $accessToken = $user->createToken("authToken")->accessToken;

    //adding employee role ==> 3
    User::find($user->id)
      ->roles()
      ->attach(3);
      
    $role = User::find($user->id)
      ->roles()
      ->pluck("name")[0];

      // adding user to hierarchie  table
      Hierarchie::create(["user_id" => $user->id, "manager_id" => 2, "validator_id" => 3 ]);

      // adding user to qualification  table
      Qualification::create(["user_id" => $user->id, "qualification" => 'employe', "validator_id" => 3 ]);

      // adding user to ressource humaine table
      Ressource::create(["user_id" => $user->id, "etat_civil" => "celibataire" , "nb_enfants" => 0 ,"num_cnss" => 54326789086 ,"validator_id" => 3 ]);


    // creating directory for user
    $directory = $user->nom . "-" . $user->id;
    $path = public_path("uploads/users/" . $role . "/" . $directory);

    if (!File::isDirectory($path)) {
      File::makeDirectory($path, 0777, true, true);
    }

    return response([
      "user" => $user,
      "role" => $role,
      "access_token" => $accessToken,
      "Directory" => $path,
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
    $role = auth()
      ->user()
      ->roles()
      ->pluck("name")[0];
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
  public function user(Request $request, $id)
  {
    //return response(["user" => Auth::check()]);

    if (Auth::check()) {
      $user = DB::table("users")
        ->where("id", $id)
        ->get();
      //return $user->toArray();
      return response()->json(["user" => $user->toArray()], 200);
    } else {
      return response()->json(["error" => "not logged"], 500);
    }
  }

 
  /**
   * Logout api
   *
   * @return \Illuminate\Http\Response
   */
  public function logout(Request $request)
  {
    return "inside logout";

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


   /**
   * delete user 
   *
   * @return \Illuminate\Http\Response
   */
  public function deleteUser($id)

    {

     $u=User::find($id)->delete();
     $Qualification=Qualification::where('user_id',$id)->delete();
     $ressource=Ressource::where('user_id',$id)->delete();
     

        if($u){
          return [
            'ok' => true,
            'employeeId'=> $id,
          
            'response'=> ' success deletion ok',
            'data' => "",
          ];

        }else{
          return [
            'ok' => false,
            'employeeId'=> $id,
          
            'response'=> ' fail deletion not ok',
            'data' => "",
          ];
        }
            
  }



}