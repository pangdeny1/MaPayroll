<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSocialSecuritySchemesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('prlsstable', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('bracket');
            $table->decimal('rangefrom', 12, 2);
            $table->decimal('rangeto', 12, 2);
            $table->string('pcode');
            $table->string('penname');
            $table->decimal('employerss', 12, 2);
            $table->decimal('employerec', 12, 2);
            $table->decimal('employeess', 12, 2);
            $table->decimal('total', 12, 2);
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
        Schema::dropIfExists('prlsstable');
    }
}
