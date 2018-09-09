<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCompaniesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('companies', function (Blueprint $table) {
            $table->increments('id');
            $table->string('coycode');
            $table->string('gstno');
            $table->string('companynumber');
            $table->string('regoffice1');
            $table->string('regoffice2');
            $table->string('regoffice3');
            $table->string('regoffice4');
            $table->string('regoffice5');
            $table->string('regoffice6');
            $table->string('telephone');
            $table->string('fax');
            $table->string('email');
            $table->string('currentdefault');
            $table->integer('pytdiscountact');
            $table->integer('creditorsact');
            $table->integer('payrollact');
            $table->integer('grnact');
            $table->integer('exchangediffact');
            $table->integer('purchasesexchangediffact');
            $table->integer('retainedearnings');
            $table->integer('gillink_debtors')->nullable;
            $table->integer('gillink_creditors')->nullable;
            $table->integer('gillink_dstock')->nullable;
            $table->integer('freightact');

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
        Schema::dropIfExists('companies');
    }
}
