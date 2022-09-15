<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Submit_resume extends Model
{
    public $table="submit_resume";
    protected $guarded = ['id'];
    public function job() {
        return $this->belongsTo(job::class,'job_id');
    }
}
