<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;

class ProfileController extends Controller
{
    public function update(){

        $id = $GLOBALS['__BSESSION__']['meta']['user_id'];

        User::find($id)->update(request()->only('username','email'));
        
        return response()->json([
            'status' => true
        ]);
    }
}
