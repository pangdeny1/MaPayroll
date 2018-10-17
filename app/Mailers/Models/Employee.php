<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use jeremykenedy\LaravelRoles\Traits\HasRoleAndPermission;

class Employee extends Model
{
    //use HasRoleAndPermission;
    use Notifiable;
    use SoftDeletes;

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'prlemployeemaster';

    /**
     * The attributes that are not mass assignable.
     *
     * @var array
     */
    protected $guarded = ['employeeid'];

    protected $primaryKey='employeeid';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
          
           'employeecode',
           'tittle',
           'lastname',
            'firstname',
            'middlename',
            'address1',
            'address2',
            'city',
            'state',
            'zip',
            'country',
            'gender',
            'phone1',
            'phone1comment',
            'phone2',
            'phone2comment',
            'email1',
            'email1comment',
            'email2',
            'email2comment',
            'atmnumber',
            'bankid',
            'ssnumber',
            'hdmfnumber',
            'isPension',
            'pencode',
            'isHdmf',
            'isTaxed',
            'isGratuity',
            'isHeslb',
            'phnumber',
            'taxactnumber',
            'birthdate',
            'hiredate',
            'terminatedate',
            'probdate',
            'retireddate',
            'paytype',
            'payperiodid',
            'periodrate',
            'hourlyrate',
            'glactcode',
            'marital',
            'taxstatusid',
            'employmentid',
            'active',
            'terminatereason',
            'suspfrom',
            'suspto',
            'companyid',
            'branchid',
            'deptid',
            'jobgroupid',
            'jobid',
            'costcenterid',
            'position',
            'employeepicture',
            'spouseemail',
            'spouseaddress',
            'spousephone',
            'nextofkinname',
            'nextofkinemail',
            'nextofkinphone',
            'nextofkinphone',
            'nextofkinaddress',
            'reportto',
            'governmentid',
            'accountname',
            'spousename'
       
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
  

    protected $dates = [
        'deleted_at'
    ];

    /**
     * Build Social Relationships
     *
     * @var array
     */
    public function social()
    {
        return $this->hasMany('App\Models\Social');
    }

    /**
     * User Profile Relationships
     *
     * @var array
     */
    public function profile()
    {
        return $this->hasOne('App\Models\Profile');
    }


    // User Profile Setup - SHould move these to a trait or interface...

    public function profiles()
    {
        return $this->belongsToMany('App\Models\Profile')->withTimestamps();
    }

    public function hasProfile($name)
    {
        foreach($this->profiles as $profile)
        {
            if($profile->name == $name) return true;
        }

        return false;
    }

    public function assignProfile($profile)
    {
        return $this->profiles()->attach($profile);
    }

    public function removeProfile($profile)
    {
        return $this->profiles()->detach($profile);
    }

    public function job()
{
    return $this->belongsTo(job::class);
} 

    public function Bank()
{
    return $this->belongsTo(Bank::class);
} 

}
