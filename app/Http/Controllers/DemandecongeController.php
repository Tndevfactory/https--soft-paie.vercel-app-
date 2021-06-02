<?php

namespace App\Http\Controllers;

use App\Models\Demandeconge;

use Illuminate\Http\Request;
use App\Models\Notificationapp;

class DemandecongeController extends Controller
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


        $u=Demandeconge::create([
            'start_date'=> $request->startDate,
             'end_date'=> $request->endDate,
             'content'=> $request->corpsDemande,

            'user_id'=> $request->user_id,
            'active_state'=> $request->active_state,
            'validator_id'=> $request->validator_id,
            ]);


            $notif= Notificationapp::create([
                'active_time'=> 30,
                'content'=>$request->corpsDemande,
                'user_id'=> $request->user_id,
                'active_state_manager'=> $request->active_state_manage,
                 'active_state_employee'=> $request->active_state_employee,
                 'nature'=> 'conge',
                
                ]);


        return [
            'ok' => true,
            'corps demande'=> $request->corpsDemande,
            'start date '=> $request->startDate,
            'end date '=> $request->endDate,
            'response'=> ' demande de congé sauvegardée',
            'data' => "",
          ];
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Demandeconge  $demandeconge
     * @return \Illuminate\Http\Response
     */
    public function show(Demandeconge $demandeconge)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Demandeconge  $demandeconge
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Demandeconge $demandeconge)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Demandeconge  $demandeconge
     * @return \Illuminate\Http\Response
     */
    public function destroy(Demandeconge $demandeconge)
    {
        //
    }
}
