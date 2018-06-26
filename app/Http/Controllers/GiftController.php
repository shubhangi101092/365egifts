<?php

namespace App\Http\Controllers;

use App\Gift;
use App\GiftRecipient;
use App\Transaction;
use Config;
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
        //AES encrypt on data
        //paypal api integration
        //
        $rules = [
            'cards.*.user_id' => 'required|max:30',
            'cards.*.first_name' => 'required|max:30',
            'cards.*.last_name' => 'required|max:30',
            'cards.*.phone' => 'required|numeric',
            'cards.*.email' => 'required|email|max:255|unique:users',
            'cards.*.template_id' => 'required|max:30',
            'cards.*.message' => 'required|max:250',
            'cards.*.amount' => 'required',
            'cards.*.card_type' => 'required',
        ];

        if ($request->hasFile('image')) {
            $rules['image'] = 'image|mimes:jpeg,bmp,png,jpg|max:2000';
        }
        if ($request->has('card_type') && $request->card_type == 'single') {
            $rules = [
                'cards.*.rec_first_name' => 'required|max:30',
                'cards.*.rec_last_name' => 'required|max:30',
                'cards.*.rec_phone' => 'required|max:100',
                'cards.*.rec_email' => 'required|max:255',
            ];

        }
        if ($request->has('is_shipping')) {
            $rules = [
                'cards.*.address' => 'required|max:150',
                'cards.*.city' => 'required|max:50',
                'cards.*.zip' => 'required|max:50',
                'cards.*.state' => 'required|max:50',
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

                foreach ($request->cards as $card) {
                    $gifts = new Gift();
                    $card['gift_id'] = $gifts->savegift($card);
                    $gift_recipient = new GiftRecipient();
                    $gift_recipient->save_receipient($card);
                    // $transctions['gift_ids'][] = $card['gift_id'];
                    $str[] = $card['gift_id'];
                }
                $gift_ids = implode(',', $str);

                foreach ($request->transactions as $transactiondata) {
                    $transction = new Transaction();
                    $transactiondata['gift_ids'] = $gift_ids;
                    $transction->save_transaction($transactiondata);
                }

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
    public function update(Request $request)
    {
        $newEncrypter = new \Illuminate\Encryption\Encrypter('GdwsSry/XLper1Vm4Oco11/VYpSjpbIMEOMC6Fw33NI=', Config::get('app.cipher'));
        $encrypted = $newEncrypter->encrypt('test');
        echo $decrypted = $newEncrypter->decrypt('U2FsdGVkX19D5l+wNnUvv03aiZJ3cdpFp6IXrbrcbCQ=');
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
