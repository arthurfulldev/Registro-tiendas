<?php

use Illuminate\Database\Seeder;
use TiendaBNN\Country;

class CountryTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Country::create([
            "name" => 'Mexico'
        ]);
    }
}
