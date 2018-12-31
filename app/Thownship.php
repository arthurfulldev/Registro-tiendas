<?php

namespace TiendaBNN;

use Illuminate\Database\Eloquent\Model;
use TiendaBNN\Address;

class Thownship extends Model
{
    protected $table = 'thownships';

    protected $dates = [ 
        'created_at', 
        'updated_at', 
        'deleted_at' 
    ];

    protected $fillable = [
        'name',
        'zip'
    ];

    public function address(){
        return $this->hasOne(Address::class, 'thownship_id');
    }
}