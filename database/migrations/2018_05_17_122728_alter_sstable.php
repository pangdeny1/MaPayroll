<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AlterSstable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
              Schema::table('prlsstable', function($table) {
          
            //$table->string('salarycredit')->after('rangeto')->nullable();
            $table->renameColumn('pcode', 'pencode');
            
    });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
          Schema::table('prlsstable', function($table) {
        $table->dropColumn('pencode');
     });
    }
}
