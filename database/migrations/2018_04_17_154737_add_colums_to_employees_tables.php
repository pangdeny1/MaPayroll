<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddColumsToEmployeesTables extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
            Schema::table('prlemployeemaster', function($table) {
          
            $table->integer('hdmfcode')->after('hdmfnumber')->nullable;
            $table->integer('healthcode')->after('phnumber')->nullable;
            
    });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('prlemployeemaster', function($table) {
        $table->dropColumn('healthcode');
        $table->dropColumn('hdmfcode');
    });
    }
}
