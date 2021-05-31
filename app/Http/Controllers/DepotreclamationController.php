<?php

namespace App\Http\Controllers;

use App\Models\Depotreclamation;
use Illuminate\Http\Request;

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

        //logique 
        return [
            'ok' => true,
            'type reclamation'=> $request->reclamationType,
            'corps reclamation '=> $request->reclamationCorps,
            'response'=> ' demande reclamation recu ',
            'data' => "",
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