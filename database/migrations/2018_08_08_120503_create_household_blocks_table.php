<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateHouseholdBlocksTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('household_blocks', function (Blueprint $table) {
            $table->increments('id');
            $table->string('number')->nullable();
            $table->double('size');
            $table->string('size_unit');
            $table->unsignedInteger('farm_id')->nullable();
            $table->unsignedInteger('product_id')->nullable();
            $table->text('description');
            $table->enum('status', ["active", "inactive"])->default("active");
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
        Schema::dropIfExists('household_blocks');
    }
}
