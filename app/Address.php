<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Address extends Model
{
    protected $fillable = [
        'user_id', 'full_name', 'country', 'state', 'city', 'zipcode', 'address', 'phone', 'mobile'
    ];
  public function user(){
      return $this->belongsTo(User::class);
  }
}
