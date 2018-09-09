<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateHealthInsuarancesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('prlphilhealth', function (Blueprint $table) {
            $table->increments('id');
            $table->decimal('rangefrom', 12, 2);
            $table->decimal('rangeto', 12, 2);
            $table->decimal('salarycredit', 12, 2);
            $table->decimal('employerph', 12, 2);
            $table->decimal('employerec', 12, 2);
            $table->decimal('employeeph', 12, 2);
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
        Schema::dropIfExists('prlphilhealth');
    }
}
