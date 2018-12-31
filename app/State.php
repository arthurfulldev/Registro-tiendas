<?php

namespace TiendaBNN;

use Illuminate\Database\Eloquent\Model;
use TiendaBNN\Address;

class State extends Model
{
    protected $table = 'states';

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
