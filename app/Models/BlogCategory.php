<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;
use TCG\Voyager\Traits\Translatable;

class BlogCategory extends Model implements Auditable 
{
    use HasFactory, \OwenIt\Auditing\Auditable, Translatable;
    protected $translatable= ['title','slug'];
    protected $with= ['translations'];

    public function blogs(){

        return $this->hasMany(Blog::class,'blog_category_id');
    }
}
