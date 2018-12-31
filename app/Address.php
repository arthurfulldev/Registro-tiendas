<?php

namespace TiendaBNN;

use Illuminate\Database\Eloquent\Model;

use TiendaBNN\Store;
use TiendaBNN\Country;
use TiendaBNN\State;
use TiendaBNN\Thownship;

class Address extends Model
{
    protected $table = "addresses";

    protected $dates = [ 
        'created_at', 
        'updated_at', 
        'deleted_at' 
    ];

    protected $fillable = [
        'street',
        'number',
        'country_id',
        'state_id',
        'thownship_id'
    ];
    
    public function store ()
    {
        return $this->hasOne(Store::class);
    }

    public function country ()
    {
        return $this->belongsTo(Country::class);
    }

    public function state ()
    {
        return $this->belongsTo(State::class);
    }

    public function thownship () {
        return $this->belongsTo(Thownship::class);
    }
}   
