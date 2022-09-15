<?php

namespace App;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

class News extends Model
{
    public $table="news_tbl";

    public function getCreatedAtAttribute( $value ) {
      return  Carbon::parse($value)->format('M d, Y');
    }

    public function category()
    {
        return $this->belongsTo(Category::class);
    }
}
