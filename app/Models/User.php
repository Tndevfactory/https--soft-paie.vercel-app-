<?php

namespace App\Models;

use App\Models\Role;
use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
 use Laravel\Passport\HasApiTokens;

class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'nom',
        'prenom',
        'adresse',
        'gsm',
         'file',
        'email',
        'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];
     public function roles(){
       return $this->belongsToMany(Role::class);
    }
       
    /**
         * accessor return data on the fly
         *
         * @return string
         */
        public function getFullAttribute()
        {
           return "{$this->nom} {$this->prenom}";
        }



        //     /**
        //  * will modify the data when create it and save it to  table usefull for haashing password
        //  *
        //  * @param  string  $value
        //  * @return void
        //  */
        // public function setNomAttribute($value)
        // {
        //     $this->attributes['nom'] = strtoupper($value);
        // }

}
