<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Gift extends Model
{

    public function savegift($data)
    {
        $table = 'gifts';
        $this->template_id = $data['template_id'];
        $this->user_id = $data['user_id'];
        $this->business_name = $data['business_name'];
        $this->url = $data['url'];
        $this->amount = $data['amount'];
        $this->first_name = $data['first_name'];
        $this->last_name = $data['last_name'];
        $this->phone = $data['phone'];
        $this->email = $data['email'];
        $this->message = $data['message'];
        $this->expiry_days = $data['expiry_days'];
        $this->card_limit = $data['card_limit'];
        $this->gift_type = $data['card_type'];
        $gifts->redeem_limit = $data['redeem_limit'];
        $gifts->gift_type = $data['gift_type'];
        $gifts->currency = $data['currency'];
        $this->save();
        return $this->id;
    }

    //
}
