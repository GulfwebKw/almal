<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateEducationFinancesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('education_finances', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('name');
            $table->string('parent_school_id_number');
            $table->string('mobile');
            $table->string('email');
            $table->string('school');
            $table->string('installment_number');
            $table->string('amount');
            $table->string('image');
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
        Schema::dropIfExists('education_finances');
    }
}
