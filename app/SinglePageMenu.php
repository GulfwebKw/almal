<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SinglePageMenu extends Model
{
    protected $table="single_page_menu";
    

    public function category()
    {
      return $this->belongsTo(Category::class);
    }

}
