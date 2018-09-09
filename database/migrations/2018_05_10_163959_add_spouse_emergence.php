<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddSpouseEmergence extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
          Schema::table('prlemployeemaster', function($table) {
          
            $table->string('spousename')->after('email2comment')->nullable();
            $table->string('spouseemail')->nullable();
             $table->string('spouseaddress')->nullable();
              $table->string('spousephone')->nullable();
               $table->string('nextofkinname')->nullable();
                $table->string('nextofkinemail')->nullable();
                 $table->string('nextofkinphone')->nullable();
                  $table->string('nextofkinaddress')->nullable();
            
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
        $table->dropColumn('spousename');
         $table->dropColumn('spouseemail');
          $table->dropColumn('spouseaddress');
           $table->dropColumn('spousephone');
            $table->dropColumn('nextofkinname');
             $table->dropColumn('snextofkinemail');
              $table->dropColumn('extofkinphone');
               $table->dropColumn('nextofkinaddress');
     });
    }
}
