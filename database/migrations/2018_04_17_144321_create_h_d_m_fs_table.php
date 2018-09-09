<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateHDMFsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('prlhdmftable', function (Blueprint $table) {
            $table->increments('id');
            $table->decimal('rangefrom', 12, 2);
            $table->decimal('rangeto', 12, 2);
            $table->string('dedtypeer', 12, 2);
            $table->decimal('employershare', 12, 2);
            $table->string('dedtypeee', 12, 2);
            $table->decimal('employeeshare', 12, 2);
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
        Schema::dropIfExists('prlhdmftable');
    }
}
