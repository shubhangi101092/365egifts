<?php

namespace App\Http\Controllers;

use App\Gift;
use App\GiftRecipient;
use App\Transaction;
use Illuminate\Http\Request;
use Mail;
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
        echo $request->input('transactions.status');exit;
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
            if ($request->has('transactions.status') && $request->transactions('status') == 'approved') {

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
     * Send OTP on mobile number and email.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function send_otp(Request $request)
    {
        $otp = mt_rand(100000, 999999);
        $body = '<html><h1>Hi,</h1><p>You OTP is</p>' . $otp . '</html>';
        $email = $request->email;
        $phone = $request->phone;
        $mail = Mail::raw([], function ($message) use ($body, $email) {
            $message->from('data-delivery@loginworks.com', '365egifts');
            $message->to($email);
            $message->subject('OTP Recieved');
            $message->setBody($body, 'text/html');
            $message->addPart("5% off its awesome\n\nGo get it now!", 'text/plain');
        });
        return response()->json(['success' => true, 'otp' => $otp]);
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

        echo $decrypt_string;

        // $newEncrypter = new \Illuminate\Encryption\Encrypter('GdwsSry/XLper1Vm4Oco11/VYpSjpbIMEOMC6Fw33NI=', Config::get('app.cipher'));
        // $encrypted = $newEncrypter->encrypt('test');
        // echo $decrypted = $newEncrypter->decrypt('U2FsdGVkX19D5l+wNnUvv03aiZJ3cdpFp6IXrbrcbCQ=');

        //Crypt::setMode('tripledes');
        //      $value_to_be_encrypted = 'test';
        //    echo $decrypted_value =  Crypt::encrypt($value_to_be_encrypted);
        //     // return $decrypted_value;
        //     echo Crypt::decrypt($decrypted_value); exit;
    }

    public function encrypt($str)
    {

        //$key = $this->hex2bin($key);
        $iv = 'loginworks092017';
        $key = '092017apponlease';
        $str = "test";
        $td = mcrypt_module_open('rijndael-128', '', 'cbc', $iv);

        mcrypt_generic_init($td, $key, $iv);
        $encrypted = mcrypt_generic($td, $str);

        mcrypt_generic_deinit($td);
        mcrypt_module_close($td);
        return $this->hex2bin($encrypted);
    }

    public function hex2bin($hexdata)
    {
        $bindata = '';

        for ($i = 0; $i < strlen($hexdata); $i += 2) {
            $bindata .= chr(hexdec(substr($hexdata, $i, 2)));
        }

        return $bindata;
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
