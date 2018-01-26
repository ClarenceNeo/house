<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;

class PasswordController extends Controller
{
    public function update(){

        $id = $GLOBALS['__BSESSION__']['meta']['user_id'];

        User::find($id)->update(['password' => request('password')]);
        
        return response()->json([
            'status' => true
        ]);
    }
}
