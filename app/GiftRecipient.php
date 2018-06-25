<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class GiftRecipient extends Model
{

    public function save_receipient($data)
    {
        $table = 'gifts_recipient';
        $this->gift_id = $data['gift_id'];
        $this->first_name = $data['rec_first_name'];
        $this->last_name = $data['rec_last_name'];
        $this->email = $data['rec_email'];
        $this->phone = $data['rec_phone'];
        $this->is_shipping = $data['is_shipping'];
        $this->shipping_address = $data['address'];
        $this->shipping_city = $data['city'];
        $this->shipping_state = $data['state'];
        $this->shipping_zip = $data['zip'];
        $this->is_redeemed = 0;
        $this->is_sent = 1;
        $this->save();

    }
    //
}
