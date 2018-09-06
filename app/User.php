<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;
use OwenIt\Auditing\Contracts\Auditable;
use Silber\Bouncer\Database\HasRolesAndAbilities;

class User extends Authenticatable implements Auditable
{
    use \OwenIt\Auditing\Auditable;

    use Notifiable;

    use HasRolesAndAbilities;

    protected $guarded  = [];

    protected $hidden   = [
        'password',
        'remember_token',
    ];

    public function address()
    {
        return $this->morphOne(Address::class, "addressable");
    }

    public function addresses()
    {
        return $this->morphMany(Address::class, "addressable");
    }

    public function role()
    {
        if (! $this->roles()->exists()) {
            return "Staff";
        }

        return $this->roles()->first()->title;
    }

    public function getFullNameAttribute()
    {
        return $this->attributes["first_name"] ." ". $this->attributes["last_name"];
    }

    public function setPasswordAttribute($password)
    {
        $this->attributes["password"] = bcrypt($password);
    }
}
