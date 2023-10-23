<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateApplicationOrdersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('application_orders', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('last_name')->nullable();
            $table->string('company_name')->nullable();
            $table->string('email');
            $table->string('link')->nullable();
            $table->integer('sectors')->nullable();
            $table->integer('products_services')->nullable();
            $table->integer('quantity')->nullable();
            $table->integer('price_terms')->nullable();
            $table->integer('payment_method')->nullable();
            $table->integer('country')->nullable();
            $table->longText('details')->nullable();
            $table->longText('request')->nullable();
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
        Schema::dropIfExists('application_orders');
    }
}
