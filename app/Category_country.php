<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Category_country extends Model
{
    public $table="country_resume";
    public function resume()
    {
        return $this->hasMany(Submit_resume::class);
    }
}
