<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTransactionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('transactions', function (Blueprint $table) {
            $table->engine = 'InnoDB';
            $table->increments('id');
            $table->integer('user_id')->unsigned();
            $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade');   
            $table->string('transaction_id',150)->default(0);
             $table->string('gift_ids',150)->default(0);
            $table->string('cart_detail',150)->default(0);
            $table->enum('status',['approved','failed'])->default('failed');
            $table->string('payment_method',150)->default(0);;
            $table->double('transaction_amount',8,2)->default(0);
            $table->string('details',150)->default(0);
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
        Schema::dropIfExists('transactions');
    }
}
