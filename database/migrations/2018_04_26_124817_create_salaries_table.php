<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSalariesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('salaries', function (Blueprint $table) {
            $table->increments('id');
            $table->string('employeeid');
            $table->decimal('salaryfrom', 12, 2)->default(0);
            $table->decimal('salaryto', 12, 2)->default(0);;
            $table->string('changedby')->default(0);;
            $table->string('percentage')->default(0);;
            $table->string('payrollid')->nullable;
            $table->date('datechanged');
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
        Schema::dropIfExists('salaries');
    }
}
