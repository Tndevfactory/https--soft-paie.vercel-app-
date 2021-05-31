<?php

namespace App\Http\Controllers;

use App\Models\Ressource;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class RessourceController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Ressource  $ressource
     * @return \Illuminate\Http\Response
     */
    public function show(Ressource $ressource)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Ressource  $ressource
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        // localize the record and update

        if($id != 3){
            $u=DB::table('ressources')->where('user_id', $id)->update(['actif'=> $request->actif]);
        }

           
       
        if( $u == 1){
            return [
                'ok' => true,
                'employeeId'=> $id,
                
                'actif'=> $request->actif,
                'response'=> ' success active state changed',
                'data' => "",
              ];
        }else{
            return [
                'ok' => false,
                'employeeId'=> $id,
                'actif'=> $request->actif,
                'response'=> 'impossible de modifier erreur',
                'data' => "",
              ];

        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Ressource  $ressource
     * @return \Illuminate\Http\Response
     */
    public function destroy(Ressource $ressource)
    {
        //
    }
}
