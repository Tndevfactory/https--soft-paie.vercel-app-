<?php

namespace App\Http\Controllers;

use App\Models\Hierarchie;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class HierarchieController extends Controller
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
     * @param  \App\Models\Hierarchie  $hierarchie
     * @return \Illuminate\Http\Response
     */
    public function show(Hierarchie $hierarchie)
    {
        //
    }

    /**
     * 
     * hierarchie modifier call from crud admin gestion employee
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Hierarchie  $hierarchie
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,  $id)
    
    {

        // locate the record and update
        $u=DB::table('hierarchies')->where('user_id', $id)->update(['manager_id'=> $request->managerId]);
       
        if( $u == 1){
            return [
                'ok' => true,
                'employeeId'=> $id,
                'managerId'=> $request->managerId,
                'response'=> ' success manager id changed',
                'data' => "",
              ];
        }else{
            return [
                'ok' => false,
                'employeeId'=> $id,
                'managerId'=> $request->managerId,
                'response'=> 'impossible de modifier erreur',
                'data' => "",
              ];

        }
        
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Hierarchie  $hierarchie
     * @return \Illuminate\Http\Response
     */
    public function destroy(Hierarchie $hierarchie)
    {
        //
    }
}
