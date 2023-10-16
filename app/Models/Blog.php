<?php

namespace App\Models;

use App\Models\BlogTag;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;
use TCG\Voyager\Traits\Translatable;

class Blog extends Model implements Auditable
{
    use HasFactory, \OwenIt\Auditing\Auditable, Translatable;
    protected $translatable = [
        'title',
        'slug',
        'brief',
        'meta_title',
        'meta_description' ,
        'meta_keyword' ,
        'meta_canonical',
        'meta_ogimage',
        'content'
    ];

    public function author()
    {
        return $this->belongsTo(Author::class);
    }

    public function blog_category()
    {
        return $this->belongsTo(BlogCategory::class);
    }

    public function blog_tags()
    {
        return $this->belongsToMany(BlogTag::class,'blog_tag');
    }

    public function comments(){

        return $this->hasMany(Comment::class);
    }
}
