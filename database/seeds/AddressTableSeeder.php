<?php

use Illuminate\Database\Seeder;
use TiendaBNN\Address;

class AddressTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Address::create([
            "street" => "Jose Ma. Morelos y Pavon",
            "number" => "39",
            "country_id" => 1,
            "state_id" => 1,
            "thownship_id" => 1
        ]);
    }
}
