<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePrlssfilesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('prlssfiles', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('employee_id')->nullable(),
            $table->integer('sstype_id')->nullable(),
            $table->double('employee_percent')->nullable(),
            $table->double('employer_percent')->nullable(),
            $table->double('total')->nullable(),
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
        Schema::dropIfExists('prlssfiles');
    }
}
