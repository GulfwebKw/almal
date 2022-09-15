<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Spatie\Permission\Traits\HasRoles;

class Admin extends Authenticatable
{
	use Notifiable;
	use HasRoles;


	protected $gaurd_name = "admin";
	
	public $table = "gwc_admins";


    protected $guarded = ['id'];

    protected $hidden = [
        'password', 'remember_token',
    ];

}
