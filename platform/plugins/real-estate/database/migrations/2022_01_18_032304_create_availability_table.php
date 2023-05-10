<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateAvailabilityTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        //$this->down();
        Schema::create('re_availabilities', function (Blueprint $table) {
            $table->id();

			$table->integer('property_id')->unsigned()->references('id')->on('re_properties')->onDelete('cascade');

            $table->date('avail_date')->nullable();
            $table->string('from_hour',50)->nullable();
            $table->string('from_min',50)->nullable();
            $table->string('from_formate',50)->nullable();

            $table->string('to_hour',50)->nullable();
            $table->string('to_min',50)->nullable();
			$table->string('to_formate',50)->nullable();

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::disableForeignKeyConstraints();
        Schema::dropIfExists('re_availabilities');        
    }
}
