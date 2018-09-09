<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddFinacialId extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
   
            Schema::table('prlpayrollperiod', function($table) {
          
            $table->string('financial_id')->after('fsyear')->nullable();
            
    });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
            Schema::table('prlpayrollperiod', function($table) {
        $table->dropColumn('financial_id');
     });
    }
}
