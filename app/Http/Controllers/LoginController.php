<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;

class LoginController extends Controller
{
    public function login()
    {
        $email = request('email');
        $password = request('password');
        $user = (new User)->where([
            'email' => $email,
            'password' => $password,
        ])->first();

        // dd($user->toArray());

        if(!$user){
            return response()->json([
                'status' => false,
                'message' => 'Credentials not match'
            ],421);
        }

        $this->sync_to_session($user->toArray());

        return response()->json([
                'status' => true,
                'data' => $GLOBALS['__BSESSION__']['meta']
            ]);
    }

    public function sync_to_session(array $user)
    {
        if ( ! $user['id'])
            return false;
        array_set($GLOBALS['__BSESSION__'], 'user', $user);
    }
}
