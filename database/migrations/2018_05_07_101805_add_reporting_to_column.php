<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddReportingToColumn extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
       Schema::table('prlemployeemaster', function($table) {
          
            $table->string('reportto')->after('companyid')->nullable();
                 
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
        $table->dropColumn('reportto');
     });
    }
}
