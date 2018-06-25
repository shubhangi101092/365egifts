<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Transaction extends Model
{
    public function save_transaction($data)
    {
        $table = 'transactions';
        $this->transaction_id = $data['transaction_id'];
        $this->user_id = $data['user_id'];
        $this->gift_ids = $data['gift_ids'];
        $this->cart_detail = $data['cart_detail'];
        $this->status = $data['status'];
        $this->payment_method = $data['payment_method'];
        $this->transaction_amount = $data['transaction_amount'];
        $this->details = $data['details'];
        $this->save();
    }
    //
}
