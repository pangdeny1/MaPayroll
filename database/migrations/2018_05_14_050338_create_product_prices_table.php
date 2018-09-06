<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateProductPricesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('product_prices', function (Blueprint $table) {
            $table->increments('id');
            $table->double('amount');
            $table->string('currency');
            $table->string('unit');
            $table->double('unit_value');
            $table->timestamp('valid_from')->nullable();
            $table->timestamp('valid_till')->nullable();
            $table->boolean('is_current_price')->default(true);
            $table->unsignedInteger('product_id')->nullable();
            $table->unsignedInteger('group_id')->nullable();
            $table->unsignedInteger('creator_id')->nullable();
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
        Schema::dropIfExists('product_prices');
    }
}
