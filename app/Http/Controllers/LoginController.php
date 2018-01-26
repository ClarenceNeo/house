<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use \App\Bsession as BS;

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
        ],200);
    }

    public function logout()
    {
        $s_id = $GLOBALS['__BSESSION__']['meta']['id'];
        BS::where(['id' => $s_id])->delete();
    }

    public function sync_to_session(array $user)
    {
        if ( ! $user['id'])
            return false;
        $s_id = $GLOBALS['__BSESSION__']['meta']['id'];
        BS::where(['id' => $s_id])->update(['user_id' => $user['id']]);
        array_set($GLOBALS['__BSESSION__'], 'user', $user);
    }
}
