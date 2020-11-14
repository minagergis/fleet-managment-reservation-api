<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DesitnationsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('destinations')->insert([
            ['name' => 'Alexandria'],
            ['name' => 'Aswan'],
            ['name' => 'Asyut'],
            ['name' => 'Beheira'],
            ['name' => 'Beni Suef'],
            ['name' => 'Cairo'],
            ['name' => 'Dakahlia'],
            ['name' => 'Damitta'],
            ['name' => 'Faiyoum'],
            ['name' => 'Gharbia'],
            ['name' => 'Giza'],
            ['name' => 'Ismalia'],
            ['name' => 'Kafr elsheikh'],
            ['name' => 'Luxor'],
            ['name' => 'Matruh'],
            ['name' => 'Minya'],
            ['name' => 'Munofia'],
            ['name' => 'New valley'],
            ['name' => 'North Sinai'],
            ['name' => 'Port said'],
            ['name' => 'Qualibia'],
            ['name' => 'Red sea'],
            ['name' => 'Sharkia'],
            ['name' => 'Suhag'],
            ['name' => 'South sinai'],
            ['name' => 'Suiz']
        ]);
    }
}
