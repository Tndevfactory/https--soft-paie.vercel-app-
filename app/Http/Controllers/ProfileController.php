<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use App\Models\User;
use App\Models\Ressource;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use App\Models\Qualification;
use Illuminate\Support\Facades\DB;

class ProfileController extends Controller
{
  /**
   * Display a listing of the resource.
   *
   * @return \Illuminate\Http\Response
   */
  public function index(Request $request)
  {
    if ($request->item == "") {
      return User::all()->toArray();
    } else {
      // recherche ciblée reduite s
      $items = DB::table("users")
        ->where("price", "LIKE", "%" . $request->item . "%")
        ->orWhere("description", "LIKE", "%" . $request->item . "%")
        ->orderBy(
          $request->criteria1 ?? "created_at",
          $request->sort1 ?? "DESC"
        )
        ->orderBy(
          $request->criteria2 ?? "created_at",
          $request->sort2 ?? "DESC"
        )
        ->get()
        ->toArray();

      if ($items) {
        return $items;
      } else {
        return response(["success" => "not found"]);
      }
    }
  }

  /**
   * Store a newly created resource in storage.
   *
   * @param  \Illuminate\Http\Request  $request
   * @return \Illuminate\Http\Response
   */
  public function store(Request $request)
  {
    return $request->all();
    $file = $request->file;
    $info_file = $file->getSize();

    // return($info_file);

    $request->validate([
      "description" => "required",
      "price" => "numeric|required",
    ]);

    $rec = User::create($request->all());

    if ($rec->exists) {
      return response(["success" => "created with success"]);
    }
  }

  /**
   * Display the specified resource.
   *
   * @param  \App\Models\User  $User
   * @return \Illuminate\Http\Response
   */
  public function show($id)
  {
    $found = User::find($id);
    if ($found) {
      $role = $found->roles->first()->name;
    }

    if ($found) {
      return response(["user" => $found, "role" => $role]);
    } else {
      return response(["success" => "profil non existant"]);
    }
  }
  /**
   * Display detailsview admin crud for one employee
   *
   * @param  \App\Models\User  $User
   * @return \Illuminate\Http\Response
   */
  public function showAdminCrudOne($id)
  {


   //tables
   //users // hierarchie // role // resource
   $employee = DB::table('users')
   ->leftJoin('qualifications', 'users.id', '=', 'qualifications.user_id')
   ->leftJoin('ressources', 'users.id', '=', 'ressources.user_id')
   
   
   ->select(
     'users.id', 
     'users.nom',
     'users.prenom',
     'users.email',
     'users.password',
     'users.gsm',
     'users.adresse',
     'ressources.etat_civil',
     'ressources.nb_enfants',
     'ressources.num_cnss',
     'ressources.type_contrat',
     'ressources.rib',
     'qualifications.qualification',
    
     )
     ->where( 'users.id', '=', $id)
     ->get();

     return $employee;


  }





  /**
   * Update the specified resource in storage.
   *
   * @param  \Illuminate\Http\Request  $request
   * @param  \App\Models\User  $User
   * @return \Illuminate\Http\Response
   */
  public function update(Request $request, $id)
  {
    $found = User::find($id);
    $role = $found->roles->first()->name;

    $validatedData = $request->validate([
      "prenom" => "nullable|required|max:55",
      "nom" => "nullable|required|max:55",
      "adresse" => "nullable|required|max:130",
      "telephone" => "nullable",
      "password" => "nullable",
      "email" => "unique:users,email," . $request->id,
      "file" => "nullable",
    ]);
    // "file"=> "nullable|sometimes|image|mimes:jpeg,png,jpg,gif,svg|max:2048",
    //return 'done';
    $validatedData["nom"] = Str::lower($request->nom);

    //initialisation
    $path_info = $found->file;

    if ($request->hasFile("file")) {
      $file = $request->file;
      $file_name = $file->getClientOriginalName();
      $file_extension = $file->getClientOriginalExtension();
      $file_path = $file->getRealPath();
      $file_size = $file->getSize();
      $file_mimetype = $file->getMimeType();

      if ($file_extension != "jpg") {
        $error_bag = [
          "ok" => false,
          "response" => "mauvais format",
          "data" => [],
        ];
        return $error_bag;
      }

      if ($role == "admin") {
        $manualPath = "uploads/users/admin/" . $found->nom . "-" . $found->id;
      } elseif ($role == "manager") {
        $manualPath = "uploads/users/manager/" . $found->nom . "-" . $found->id;
      } elseif ($role == "employe") {
        $manualPath = "uploads/users/employe/" . $found->nom . "-" . $found->id;
      }

      if (User::where("id", $found->id)->pluck("file")[0] == null) {
        $path = $manualPath;
      } else {
        $filepath = User::where("id", $found->id)->pluck("file")[0];
        $path = Str::of($filepath)->dirname();
      }

      $current = Carbon::now()->format("YmdHs");
      $path_info = $file->move(
        $path,
        $found->prenom . $current . "." . $file_extension
      );
    }

    $record = User::where("id", $id)->update([
      "nom" => Str::lower($request->nom),
      "prenom" => Str::lower($request->prenom),
      "gsm" => Str::lower($request->telephone),
      "email" => Str::lower($request->email),
      "adresse" => Str::lower($request->adresse),
      "file" => Str::lower($path_info),
    ]);

    if ($record) {
      $ok = true;
      $response = "modifier avec succes";
      $data = "";
    } else {
      $ok = false;
      $response = "erreur modification impossibe";
      $data = "";
    }

    return [
      "ok" => $ok,
      "response" => $response,
      "data" => $data,
    ];
  }




  /**
   * manager update one profile
   *
   * @param  \Illuminate\Http\Request  $request
   * @param  \App\Models\User  $User
   * @return \Illuminate\Http\Response
   */
  public function profileUpdateDashboard2(Request $request, $id)
  {
   // return $request->all();
      
    $validatedData = $request->validate([
      "prenom" => "nullable|required|max:55",
      "nom" => "nullable|required|max:55",
      "adresse" => "nullable|required|max:130",
      "telephone" => "nullable",
      "password" => "nullable",
      "email" => "unique:users,email," . $request->id,
    
    ]);
    
      
// update table user 
    $users = User::where("id", $id)->update([
      "nom" => Str::lower($request->nom),
      "prenom" => Str::lower($request->prenom),
      "gsm" => Str::lower($request->telephone),
      "email" => Str::lower($request->email),
      "adresse" => Str::lower($request->adresse),
      "password" => bcrypt($request->password),
      
    ]);

// update table ressources
    $ressources = Ressource::where("user_id", $id)->update([
      "etat_civil" => Str::lower($request->etat_civil),
      "rib" => $request->rib,
      "nb_enfants" => $request->nb_enfants,
      "type_contrat" => $request->type_contrat,
      "num_cnss" => $request->num_cnss,
     
    ]);

// update table qualification

    $qualification = Qualification::where("user_id", $id)->update([
      "qualification" => $request->qualification,
      
    ]);

    if ($users) {
      $ok = true;
      $response = "modifier avec succes";
      $data = "";
    } else {
      $ok = false;
      $response = "erreur modification impossibe";
      $data = "";
    }

    return [
      "ok" => $ok,
      "response" => $response,
      "data" => $data,
    ];
  }

  /**
   * Remove the specified resource from storage.
   *
   * @param  \App\Models\User  $User
   * @return \Illuminate\Http\Response
   */
  public function destroy($id)
  {
    $found = User::find($id);

    if ($found) {
      $found->delete();
      return response(["success" => "suppression avec succes"]);
    } else {
      return response(["success" => "profil non existant"]);
    }
  }

  /**
   * crudEmployeeAdmin dans admin // gestiom employee crud
   *
   * @param  \App\Models\User  $User
   * @return \Illuminate\Http\Response
   */
  public function crudEmployeeAdmin()
  {
   //tables
   //users // hierarchie // role // resource
   $employees = DB::table('users')
   ->leftJoin('hierarchies', 'users.id', '=', 'hierarchies.user_id')
   ->leftJoin('ressources', 'users.id', '=', 'ressources.user_id')
   ->leftJoin('role_user', 'users.id', 'role_user.user_id')
   ->leftJoin('roles', 'role_user.role_id', 'roles.id')
   ->select(
     'users.id', 
     'users.nom',
     'users.prenom',
     'users.file',
     'hierarchies.manager_name',
     'hierarchies.manager_id',
     'ressources.actif', 
     'roles.id as roleId'
     )->get()->toArray();	
  
   return $employees;

  }

  /**
   * crudEmployeeMANAGER  // gestiom employee crud MANAGER 
   *
   * @param  \App\Models\User  $User
   * @return \Illuminate\Http\Response
   */
  public function crudEmployeeManager($id)
  {
    
   //tables
   //users // hierarchie // role // resource
   $employees = DB::table('users')
   ->leftJoin('hierarchies', 'users.id', '=', 'hierarchies.user_id')
   ->leftJoin('ressources', 'users.id', '=', 'ressources.user_id')
   ->leftJoin('role_user', 'users.id', 'role_user.user_id')
   ->leftJoin('roles', 'role_user.role_id', 'roles.id')
   
   ->select(
     'users.id', 
     'users.nom',
     'users.prenom',
     'users.file',
     'hierarchies.manager_name',
     'hierarchies.manager_id',
     'ressources.actif', 
     'roles.id as roleId'
     )
     ->where( 'hierarchies.manager_id', '=', $id)
     ->get()->toArray();	
     
   
   return $employees;

  }

 

  /**
   * Display detailsview manager crud for one employee
   *
   * @param  \App\Models\User  $User
   * @return \Illuminate\Http\Response
   */
  public function profileShowOneDahboard2($id)
  {


   //tables
   //users // hierarchie // role // resource
   $employee = DB::table('users')
   ->leftJoin('qualifications', 'users.id', '=', 'qualifications.user_id')
   ->leftJoin('ressources', 'users.id', '=', 'ressources.user_id')
   
   
   ->select(
     'users.id', 
     'users.nom',
     'users.prenom',
     'users.email',
     'users.password',
     'users.gsm',
     'users.adresse',
     'ressources.etat_civil',
     'ressources.nb_enfants',
     'ressources.num_cnss',
     'ressources.type_contrat',
     'ressources.rib',
     'qualifications.qualification',
    
     )
     ->where( 'users.id', '=', $id)
     ->get();

     return $employee;


  }

}