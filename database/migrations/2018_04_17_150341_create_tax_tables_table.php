<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTaxTablesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('prltaxtablerate', function (Blueprint $table) {
            $table->increments('id');
            $table->decimal('rangefrom', 12, 2);
            $table->decimal('rangeto', 12, 2);
            $table->decimal('fixtaxableamount', 12, 2);
            $table->decimal('fixtax', 12, 2);
            $table->double('percentofexcessamount', 12, 2);
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
        Schema::dropIfExists('prltaxtablerate');
    }
}
