<?php

namespace App\Http\Controllers;

use App\Gift;
use Illuminate\Http\Request;
use Validator;

class GiftController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        $rules = [
            'user_id' => 'required|max:30',
            'first_name' => 'required|max:30',
            'last_name' => 'required|max:30',
            'phone' => 'required|numeric|max:100',
            'email' => 'required|email|max:255|unique:users',
            'template_id' => 'required|max:30',
            'message' => 'required|max:250',
            'amount' => 'required',
            'productType' => 'required',
        ];

        if ($request->hasFile('image')) {
            $rules['image'] = 'image|mimes:jpeg,bmp,png,jpg|max:2000';
        }
        if ($request->has('productType') && $request->productType == 'single') {
            $rules = [
                'rec_first_name' => 'required|max:30',
                'rec_last_name' => 'required|max:30',
                'rec_phone' => 'required|max:100',
                'rec_email' => 'required|max:255',
            ];

        }
        if ($request->has('is_shipping')) {
            $rules = [
                'address' => 'required|max:150',
                'city' => 'required|max:50',
                'zip' => 'required|max:50',
                'state' => 'required|max:50',
            ];

        }

        $validator = Validator::make($request->all(), $rules);
        if ($validator->fails()) {
            return response()->json(['success' => false, 'error' => $validator->messages()]);
        } else {
            /*
            insert record into gifts table
             */
            if ($request->has('transaction_status') && $request->transaction_status == 'approved') {
                $gifts = new Gift();
                $gifts->template_id = $request->template_id;
                $gifts->gift_type = $request->productType;
                $gifts->user_id = $request->user_id;
                $gifts->amount = $request->amount;
                $gifts->first_name = $request->first_name;
                $gifts->last_name = $request->last_name;
                $gifts->phone = $request->phone;
                $gifts->email = $request->email;
                $gifts->message = $request->message;
                $gifts->expiry_days = $request->expiry_days;
                $gifts->card_limit = $request->card_limit;
                if ($request->has('card_type') && $request->card_type = 'single') {
                    $gifts->redeem_limit = 1;
                } else {
                    $gifts->redeem_limit = 5000;
                }

                if ($request->hasFile('image')) {
                    //upload the image
                    $file = $request->file('image');
                    $fileName = $file->getClientOriginalName();
                    $destinationPath = public_path() . '/upload/';
                    $file->move($destinationPath, $fileName);
                    $gifts->image = '/upload/' . $fileName;
                }

                $gifts->save();

            } else {
                return response()->json(['success' => false, 'msg' => 'Transation has been failed.']);
            }

        }

        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
