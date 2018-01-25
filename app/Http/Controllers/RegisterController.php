<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;

class RegisterController extends Controller
{
    public function register(Request $request)
    {
        
        (new User)->fill($request->all())->save();

        return response()->json(['status'=> true, 'message' => 'User Created!']);
        
    }
}
