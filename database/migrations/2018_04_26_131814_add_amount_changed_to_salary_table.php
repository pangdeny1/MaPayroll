<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddAmountChangedToSalaryTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
     public function up()
    {
            Schema::table('salaries', function($table) {
          
            $table->integer('changedamount')->after('changedby')->default(0);
           
            
    });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('salaries', function($table) {
        $table->dropColumn('changedamount');
       
    });
    }
}
