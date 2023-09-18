<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;
use TCG\Voyager\Traits\Translatable;

class Author extends Model
{
    use HasFactory, \OwenIt\Auditing\Auditable, Translatable;
    
    protected $translatable= ['name','slug'];
}
