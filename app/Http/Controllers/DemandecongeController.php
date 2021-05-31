<?php

namespace App\Http\Controllers;

use App\Models\Demandeconge;
use Illuminate\Http\Request;

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
