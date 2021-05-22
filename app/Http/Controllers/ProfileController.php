<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class ProfileController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
           return User::all()->toArray();
        
         if($request->item == ''){
           // recherche globale 
           return User::all()->toArray();
            

        }else{

             // recherche ciblée reduite s
               $items= DB::table('users')
                ->where('price', 'LIKE', '%'.$request->item.'%')
                ->orWhere('description', 'LIKE', '%'.$request->item.'%')
                ->orderBy( $request->criteria1 ?? 'created_at', $request->sort1 ?? 'DESC')
                ->orderBy( $request->criteria2 ?? 'created_at', $request->sort2 ?? 'DESC')
                ->get()->toArray();

                if($items){
                    return $items;
                }else{
                      return response(['success'=> 'not found']);
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
         $file= $request->file;

          //File Name
        //$info_file=$file->getClientOriginalName();

        //Display File Extension
       //$info_file=$file->getClientOriginalExtension();

        //Display File Real Path
       // $info_file=$file->getRealPath();

        //Display File Size
        $info_file=$file->getSize();

        //Display File Mime Type
        //$info_file=$file->getMimeType();

        //Move Uploaded File
        //$destinationPath = 'uploads';
        //$info_file=$file->move($destinationPath,$file->getClientOriginalName());

        //dd($info_file);
        return($info_file);

        $request->validate([
            'description'=>'required',
            'price'=>'numeric|required',
        ]);

        $rec = User::create($request->all());

            if($rec->exists){
                return response(['success'=> 'created with success']);
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
       
        $found = collect(User::find($id));
     
        if(count($found) > 0){
          return response($found);
        }else{
            return response(['success'=> 'profil non existant']);
        }
      
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

       // return 'inside update';
        //return $request->nom;
         $file = $request->file;

          //File Name
        //$info_file=$file->getClientOriginalName();

        //Display File Extension
       //$info_file=$file->getClientOriginalExtension();

        //Display File Real Path
       // $info_file=$file->getRealPath();

        //Display File Size
        $info_file=$file->getSize();

        //Display File Mime Type
        //$info_file=$file->getMimeType();

        //Move Uploaded File
        //$destinationPath = 'uploads';
        //$info_file=$file->move($destinationPath,$file->getClientOriginalName());

        //dd($info_file);
        return($info_file);

        return $request->all();
        //return $id;
         $filename = $request->file->getClientOriginalName();
         return $filename ;
       
       

         $name = Input::file('photo')->getClientOriginalName();

        return $name;
       
        $found = User::find($id);

         if($found){
                $found->update($request->all());
                return response(['success'=> 'mise a jour avec succes']);
           }else{
                return response(['success'=> 'profil non existant']);
           }
       
        
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

         if($found){
                $found->delete();
                return response(['success'=> 'suppression avec succes']);
           }else{
                return response(['success'=> 'profil non existant']);
           }
       
    }

}
