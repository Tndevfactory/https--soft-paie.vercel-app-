<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddTypeReclamationToDepotreclamationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('depotreclamations', function (Blueprint $table) {
            $table->string('type_reclamation')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('depotreclamations', function (Blueprint $table) {
            $table->dropColumn('type_reclamation');
        });
    }
}
