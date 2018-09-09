<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class UpdateTableHealth extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
         Schema::table('prlphilhealth', function($table) {
          
            $table->string('bracket')->after('id')->nullable;
            
    });
}


    public function down()
    {
        Schema::table('prlphilhealth', function($table) {
        $table->dropColumn('bracket');
   });
    }
    }
