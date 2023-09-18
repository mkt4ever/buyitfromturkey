<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBlogsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('blogs', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('author_id');
            $table->foreign('author_id')->on('authors')->references('id');
            $table->unsignedBigInteger('blog_category_id');
            $table->foreign('blog_category_id')->on('blog_categories')->references('id');
            $table->string('title', 500)->nullable();
            $table->string('slug', 500);
            $table->text('brief')->nullable();
            $table->string('date', 255)->nullable();
            $table->string('thumbnail_image', 255)->nullable();
            $table->string('cover_image', 255)->nullable();
            $table->longText('content')->nullable();
            $table->boolean('is_featured')->default(0);
            $table->string('meta_title', 255)->nullable();
            $table->string('meta_description', 255)->nullable();
            $table->string('meta_keyword', 255)->nullable();
            $table->string('meta_canonical', 255)->nullable();
            $table->string('meta_ogimage', 255)->nullable();
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
        Schema::dropIfExists('blogs');
    }
}		