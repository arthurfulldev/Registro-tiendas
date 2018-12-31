<?php

use Illuminate\Database\Seeder;
use TiendaBNN\Thownship;

class ThownshipTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Thownship::create([
            "name" => "Iztapalapa",
            "zip" => 09706
        ]);
    }
}
