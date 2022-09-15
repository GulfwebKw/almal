<?php

namespace App;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

class job extends Model
{
    public function getCreatedAtAttribute( $value ) {
        return  Carbon::parse($value)->format('M d, Y');
    }
}
