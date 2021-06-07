<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Ressource extends Model
{
    use HasFactory;

    use HasFactory;
    /**
    * The attributes that are mass assignable.
    *
    * @var array
    */
   protected $fillable = [
       'user_id',
       'etat_civil',
       'dob',
       'nb_enfants',
       'num_cnss',
       'type_contrat',
       'date_recrutement',
       'date_titularisation',
       'date_licenciement',
       'actif',
       'rib',
       'validator_id',
      
   ];
}
