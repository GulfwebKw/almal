<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Foundation\Auth\User as Authenticatable;

class Freelancer extends Authenticatable
{
    protected $guarded = ['id'];
    public function services()
    {
        return $this->hasMany(FreelancerServices::class, 'freelancer_id');
    }
}
