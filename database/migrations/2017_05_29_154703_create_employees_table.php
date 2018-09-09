<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateEmployeesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
         Schema::create('prlemployeemaster', function (Blueprint $table) {

            $table->increments('employeeid');
            $table->string('employeecode');
            $table->string('title');
            $table->string('lastname');
            $table->string('firstname');
            $table->string('middlename')->nullable();
            $table->string('address1')->nullable();
            $table->string('address2')->nullable();
            $table->string('city')->nullable();
            $table->string('state')->nullable();
            $table->string('zip')->nullable();
            $table->string('country')->nullable();
            $table->string('gender')->nullable();
            $table->string('phone1')->nullable();
            $table->string('phone1comment')->nullable();
            $table->string('phone2')->nullable();
            $table->string('phone2comment')->nullable();
            $table->string('email1')->nullable();
            $table->string('email1comment')->nullable();
            $table->string('email2')->nullable();
            $table->string('email2comment')->nullable();
            $table->string('atmnumber')->nullable();
            $table->string('bankid')->nullable();
            $table->string('ssnumber')->nullable();
            $table->string('hdmfnumber')->nullable();
            $table->integer('isPension')->nullable();
            $table->string('pencode')->nullable();
            $table->integer('isHdmf')->nullable();
            $table->integer('isTaxed')->nullable();
            $table->integer('isGratuity')->nullable();
            $table->integer('isHeslb')->nullable();
            $table->string('phnumber')->nullable();
            $table->string('taxactnumber')->nullable();
            $table->date('birthdate')->nullable();;
            $table->date('hiredate')->nullable();;
            $table->date('terminatedate')->nullable();;
            $table->date('probdate')->nullable();;
            $table->date('retireddate')->nullable();;
            $table->integer('paytype')->nullable();
            $table->integer('payperiodid');
            $table->decimal('periodrate',12,2);
            $table->decimal('hourlyrate',12,2);
            $table->integer('glactcode');
            $table->string('marital')->nullable();;
            $table->string('taxstatusid')->nullable();;
            $table->integer('employmentid');
            $table->integer('active')->nullable();
            $table->string('terminatereason')->nullable();;
            $table->date('suspfrom');
            $table->date('suspto');
            $table->string('companyid')->nullable();;
            $table->string('branchid')->nullable();;
            $table->string('deptid')->nullable();;
            $table->string('jobgroupid')->nullable();;
            $table->string('jobid')->nullable();;
            $table->string('costcenterid')->nullable();
            $table->string('position')->nullable();
            $table->string('employeepicture')->nullable();



            $table->timestamps();
            $table->softDeletes();

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('prlemployeemaster');
    }
}
