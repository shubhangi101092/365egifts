<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateGiftsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('gifts', function (Blueprint $table) {
            $table->engine = 'InnoDB';
            $table->increments('id');
            $table->integer('template_id')->unsigned();
            $table->enum('gift_type',['gift','crypto']);
            $table->integer('user_id')->unsigned();
            $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade');           
            $table->double('amount',8,2)->default(0);
            $table->string('first_name', 150)->default(0);
            $table->string('last_name',150)->default(0);   
            $table->string('phone',150)->default(0);
            $table->string('email',200)->default(0);
            $table->string('image',200)->default(0);
            $table->string('message',200)->default(0);
            $table->integer('expiry_days',200)->default(0);
            $table->string('redeem_code',200)->default(0);
            $table->string('redeem_limit',200)->default(0);
            $table->enum('card_limit',['single','bulk','marketing'])->default('single');
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
        Schema::dropIfExists('gifts');
    }
}
