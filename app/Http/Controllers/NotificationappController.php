<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use App\Models\Notificationapp;

class NotificationappController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function notificationCount()
    {
        return Notificationapp::where('active_state_employee', 1)->count();
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function notificationCountEmployee(Request $request, $id)
    {
        //return  $id;
        return Notificationapp::where('active_state_manager', 1 )->where('user_id', $id)->count();
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function notificationData()
    {
        // return Notificationapp::where('validation', != , 1)->get()->toArray();
        //Notificationapp::whereNull('validation')->get()->toArray();
        //Notificationapp::get()->toArray();
        return Notificationapp::whereNull('validation')->orderBy('updated_at', 'desc')->get()->toArray();
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function notificationDataEmployee($id)
    {
        // return Notificationapp::where('validation', != , 1)->get()->toArray();
        //Notificationapp::whereNull('validation')->get()->toArray();
        //Notificationapp::get()->toArray();
        return Notificationapp::where('user_id', $id)->whereNotNull('validation')->orderBy('updated_at', 'desc')->get()->toArray();
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function notificationReset()
    {
        return  Notificationapp::where('active_state_employee', 1 )->update(['active_state_employee'=> 0]);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function notificationResetEmployee($id)
    {
       // return  $id;
        return  Notificationapp::where('user_id', $id )->where('active_state_manager', 1 )->update(['active_state_manager'=> 0]);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function notificationValidationConge(Request $request)
    {

      
        $managerNom = User::where('id', $request->idManager)->pluck('nom')[0];
        $managerprenom= User::where('id', $request->idManager)->pluck('prenom')[0];
        //return  $managerNom.' '.$managerprenom;
        // $validationOk= Notificationapp::where('id',  $request->idDemande  )->pluck('validation')[0];

         Notificationapp::where('id', $request->idDemande )->update(['validation' => 1, 'active_state_manager' => 1, 'validator_name'=> $managerNom.' '.$managerprenom,'emitter_id' => $request->idManager ]);

       //Notificationapp::where('id', 33 )->update(['validation' => 1, 'active_state_manager' => 1, 'validator_name'=> 'ch','emitter_id' => 2 ]);
         
           

        return Notificationapp::where('id', $request->idDemande )->get();
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function notificationNegationConge(Request $request)
    {

        $managerNom = User::where('id', $request->idManager)->pluck('nom')[0];
        $managerprenom= User::where('id', $request->idManager)->pluck('prenom')[0];
        //return  $managerNom.' '.$managerprenom;
        // $validationOk= Notificationapp::where('id',  $request->idDemande  )->pluck('validation')[0];

         Notificationapp::where('id', $request->idDemande )->update(['validation' => 0, 'active_state_manager' => 1, 'validator_name'=> $managerNom.' '.$managerprenom,'emitter_id' => $request->idManager ]);

       //Notificationapp::where('id', 33 )->update(['validation' => 1, 'active_state_manager' => 1, 'validator_name'=> 'ch','emitter_id' => 2 ]);
         
           

        return Notificationapp::where('id', $request->idDemande )->get();
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
     * @param  \App\Models\Notificationapp  $notificationapp
     * @return \Illuminate\Http\Response
     */
    public function show(Notificationapp $notificationapp)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Notificationapp  $notificationapp
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Notificationapp $notificationapp)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Notificationapp  $notificationapp
     * @return \Illuminate\Http\Response
     */
    public function destroy(Notificationapp $notificationapp)
    {
        //
    }
}
