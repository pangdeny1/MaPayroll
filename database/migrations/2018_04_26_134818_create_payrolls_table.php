<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreatePayrollsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('prlpayrollperiod', function (Blueprint $table) {
            $table->increments('id');
            $table->string('payrollid');
            $table->string('payrolldesc');
            $table->integer('payperiodid');
            $table->date('startdate');
            $table->date('enddate');
            $table->integer('fsmonth');
            $table->double('fsyear');
            $table->integer('deductsss')->default(0);
            $table->integer('deducthdmf')->default(0);
            $table->integer('deductphilhealth')->default(0);
            $table->integer('iscurrent')->default(1);
            $table->integer('payclosed')->default(1);
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
        Schema::dropIfExists('prlpayrollperiod');
    }
}
