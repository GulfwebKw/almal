<?php

namespace App;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

class Disclosure extends Model
{
    public function getDateAttribute( $value ) {
        if ($value)
        return  Carbon::parse($value)->format('M d, Y');
    }

    public function scopeYear($query, $year)
    {
        if ($year!=null) {
            return $query->whereYear('date', $year);
        }
        return null;
    }
}
