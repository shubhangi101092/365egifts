<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateGiftsRecipientTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('gifts_recipient', function (Blueprint $table) {
             $table->engine = 'InnoDB';
            $table->increments('id');
            $table->integer('gift_id')->unsigned();
            $table->foreign('gift_id')->references('id')->on('gifts')->onDelete('cascade');         
            $table->string('first_name',50)->default(0);
            $table->string('last_name',50)->default(0);
            $table->string('email',150)->default(0);
            $table->string('phone',150)->default(0);
            $table->string('is_shipping',150)->default(0); 
            $table->string('shipping_address',150)->default(0); 
            $table->string('shipping_city',150)->default(0);
            $table->string('shipping_state',150)->default(0);
            $table->string('shipping_zip',150)->default(0);
            $table->boolean('is_redeemed')->default(0);
            $table->boolean('is_sent')->default(0);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('gifts_recipient');
    }
}
