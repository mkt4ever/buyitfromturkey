<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;
use TCG\Voyager\Traits\Translatable;


class Product extends Model implements Auditable
{
    use HasFactory, \OwenIt\Auditing\Auditable, Translatable;

    protected $translatable = [
        'title',
        'slug',
        'brief',
        'content'
    ];

    public function product_category(){
        return $this->belongsTo(ProductCategory::class);
    }
    public function product_tags()
    {
        return $this->belongsToMany(ProductTag::class,'product_tag');
    }
    public function product_sectors()
    {
        return $this->belongsToMany(ProductSector::class,'product_sector');
    }
}
