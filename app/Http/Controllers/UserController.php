<?php

namespace App\Http\Controllers;

use App\User;
use Illuminate\Http\Request;
use JWTAuth;

class UserController extends Controller
{

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    private $user;
    public function __construct(User $user)
    {
        $this->user = $user;
    }

    public function register(Request $request)
    { 
         $unique_id = mt_rand(100000, 999999);
        $user = $this->user->create([
            'first_name' => $request->first_name,
            'last_name' => $request->last_name,
             'phone' => $request->phone,
            'email' => $request->email,
            'gender' => $request->gender,
            'remember_token' => bcrypt($unique_id),
        ]);
        return response()->json(['status' => true, 'message' => 'User created successfully', 'data' => $user]);
    }

    public function login(Request $request)
    {
        $credentials = $request->email;
        print_r( $credentials); exit;
        $token = null;
        try {
            if (!$token = JWTAuth::attempt($credentials)) {
                return response()->json(['invalid_email_or_password'], 422);
            }
        } catch (JWTAuthException $e) {
            return response()->json(['failed_to_create_token'], 500);
        }
        return response()->json(compact('token'));
    }
    public function getAuthUser(Request $request)
    {
        $user = JWTAuth::toUser($request->token);
        return response()->json(['result' => $user]);
    }

}
