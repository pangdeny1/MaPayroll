<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class UpdateTableHdmf extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
     public function up()
    {
         Schema::table('prlhdmftable', function($table) {
          
            $table->string('bracket')->after('id')->nullable;
            
    });
           
    }

    /**
     * Reverse the migrations.
     *
     * @return void
       */
    public function down()
    {
        Schema::table('prlhdmftable', function($table) {
        $table->dropColumn('bracket');
     });
    }
}
