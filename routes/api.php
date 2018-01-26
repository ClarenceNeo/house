<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });

Route::get('/user', function(Request $request){
    dd($GLOBALS['__BSESSION__']['user']);
    $user = $GLOBALS['__BSESSION__']['user'];
    // return null;
    // return response()->json([
    //         'status' => false,
    //         'authenticated' => false,
    //         'message' => 'Credentials not match'
    //     ],421);
});

Route::get('/house/read', function(){
    return 1;
});

Route::post('/register','RegisterController@register');
Route::post('/login','LoginController@login');