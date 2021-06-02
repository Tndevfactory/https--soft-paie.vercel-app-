<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Depotreclamation extends Model
{
    use HasFactory;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'user_id',
        'active_state',
        'content',
        'resolved_date',
         'resolved_comment',
        'validator_id',
        'type_reclamation',
    ];
}
