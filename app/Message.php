<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Message extends Model
{
    public $table = "gwc_messages";
    protected $guarded = ['id'];
}
