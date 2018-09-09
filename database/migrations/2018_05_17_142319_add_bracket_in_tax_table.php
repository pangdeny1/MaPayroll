<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddBracketInTaxTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('prltaxtablerate', function($table) {
          
            //$table->string('bracket')->after('rangeto')->nullable();
            $table->decimal('bracket', 12, 2)->after('id')->nullable();
            });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
          Schema::table('prltaxtablerate', function($table) {
        $table->dropColumn('bracket');
     });
    }
}
