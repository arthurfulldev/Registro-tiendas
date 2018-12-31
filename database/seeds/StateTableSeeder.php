<?php

use Illuminate\Database\Seeder;
use TiendaBNN\State;

class StateTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        State::create([
            "name" => "CDMX"
        ]);
    }
}
