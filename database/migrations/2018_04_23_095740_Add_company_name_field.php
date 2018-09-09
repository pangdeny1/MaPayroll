<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddCompanyNameField extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
     public function up()
     {
         Schema::table('companies', function($table) {
          
            $table->string('coyname')->after('coycode')->nullable;
            
    });
           
    }

    /**
     * Reverse the migrations.
     *
     * @return void
       */
    public function down()
    {
        Schema::table('companies', function($table) {
        $table->dropColumn('coyname');
     });
    }
}
