<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Notification extends Model
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
       'active_time',
       'emitter_id',
    ];
}
