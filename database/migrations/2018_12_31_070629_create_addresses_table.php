<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Eloquent\SoftDeletes;

class CreateAddressesTable extends Migration
{
    use SoftDeletes;
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('addresses', function (Blueprint $table) {
            $table->increments('id');
            $table->text('street');
            $table->text('number');
            $table->unsignedInteger('country_id');
            $table->unsignedInteger('state_id');
            $table->unsignedInteger('thownship_id');
            $table->timestamps();
            $table->softDeletes();

            // Foreign keys
            $table->foreign('country_id')
                        ->references('id')
                        ->on('countries')
                        ->onDelete('cascade')
                        ->onUpdate('cascade');
            $table->foreign('state_id')
                        ->references('id')
                        ->on('states')
                        ->onDelete('cascade')
                        ->onUpdate('cascade');
            $table->foreign('thownship_id')
                        ->references('id')
                        ->on('thownships')
                        ->onDelete('cascade')
                        ->onUpdate('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('addresses');
    }
}
