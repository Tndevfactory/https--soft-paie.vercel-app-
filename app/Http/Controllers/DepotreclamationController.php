<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Notificationapp;
use App\Models\Depotreclamation;

class DepotreclamationController extends Controller
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

                // return $request->all();


                $u=Depotreclamation::create([
                    'type_reclamation'=> $request->reclamationType,
                     'content'=> $request->reclamationCorps,
                    'user_id'=> $request->user_id,
                    'active_state'=> 1,
                   
                    ]);


                    $notif= Notificationapp::create([
                        'active_time'=> 30,
                        'content'=>$request->reclamationCorps,
                        'user_id'=> $request->user_id,
                        'active_state_employee'=> 1,
                        'nature' => 'reclamation',
                        
                        ]);


                return [
                    'ok' => true,
                    'content'=> $request->reclamationCorps,
                    'type_reclamation'=> $request->reclamationType,
                    'user_id'=> $request->user_id,
                   
                ];




    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Depotreclamation  $depotreclamation
     * @return \Illuminate\Http\Response
     */
    public function show(Depotreclamation $depotreclamation)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Depotreclamation  $depotreclamation
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Depotreclamation $depotreclamation)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Depotreclamation  $depotreclamation
     * @return \Illuminate\Http\Response
     */
    public function destroy(Depotreclamation $depotreclamation)
    {
        //
    }
}
