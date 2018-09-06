<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateBatchesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('batches', function (Blueprint $table) {
            $table->increments('id');
            $table->string('number');
            $table->integer('max_count');
            $table->timestamp('valid_from')->nullable();
            $table->timestamp('valid_till')->nullable();
            $table->unsignedInteger("block_id")->nullable();
            $table->unsignedInteger("group_id")->nullable();
            $table->timestamp('expected_arrival_time')->nullable();
            $table->string('expected_arrival_temperature')->nullable();
            $table->timestamp('expected_harvest_time')->nullable();
            $table->timestamp('expected_delivery_time')->nullable();
            $table->timestamp('expected_departure_time')->nullable();
            $table->enum("status", ["open", "active", "closed"])->default("open");
            $table->text("description");
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
        Schema::dropIfExists('batches');
    }
}
