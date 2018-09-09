<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableEmployeeQualification extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
       Schema::create('employeequalifications', function (Blueprint $table) {
            $table->increments('id');
            $table->string('qualificationid');
            $table->string('employeeid');
            $table->string('levelid');
            $table->date('datefrom');
            $table->date('dateto');
            $table->string('institutionid');
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
         Schema::dropIfExists('employeequalifications');
    }
}
