<?php

use Illuminate\Database\Seeder;
use TiendaBNN\Store;

class StoreTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Store::create([
            'name' => 'Patito',
            'logo' => 'patito.png',
            'address_id' => 1
        ]);
    }
}
