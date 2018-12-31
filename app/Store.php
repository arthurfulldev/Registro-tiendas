<?php

namespace TiendaBNN;

use Illuminate\Database\Eloquent\Model;
use TiendaBNN\Address;

class Store extends Model
{
    protected $dates = [ 
        'created_at', 
        'updated_at', 
        'deleted_at' 
    ];

    protected $fillable = [ 
        'name', 
        'logo', 
        'address_id' 
    ];

    public function address()
    {
        return $this->belongsTo(Address::class);
    }
}
