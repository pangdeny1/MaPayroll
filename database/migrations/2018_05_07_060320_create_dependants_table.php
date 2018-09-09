<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateDependantsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('dependants', function (Blueprint $table) {
            $table->increments('id');
            $table->string('fullname');
            $table->string('employeeid');
            $table->string('deptypeid');
            $table->string('sex');
            $table->string('email')->nullable();
            $table->date('dob');
            $table->string('phone')->nullable();
            $table->integer('nextofkeen')->default(2);
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
        Schema::dropIfExists('dependants');
    }
}
