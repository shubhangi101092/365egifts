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

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
Route::post('create_gifts', 'GiftController@create');
Route::post('update', 'GiftController@update');
Route::post('send_otp', 'GiftController@send_otp');
Route::post('register', 'UserController@register');
Route::post('login', 'UserController@login');