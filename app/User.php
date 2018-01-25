<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use Notifiable;

    public $table = 'user';
    protected $guarded = ['id'];

    protected $fillable = [
        'username', 'email', 'password',
    ];
    
}
