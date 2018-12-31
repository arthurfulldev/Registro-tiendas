<?php

namespace TiendaBNN;

use Illuminate\Database\Eloquent\Model;
use TiendaBNN\Address;

class Country extends Model
{
    protected $table = 'countries';

    protected $dates = [ 
        'created_at', 
        'updated_at', 
        'deleted_at' 
    ];

    protected $fillable = [
        'name'
    ];

    public function address(){
        return $this->hasOne(Address::class);
    }
}
