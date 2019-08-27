<?php

use Illuminate\Database\Seeder;

class SettingsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        \App\Setting::create([
        	'site_name' => 'CodeHut',
        	'address' => 'Dhaka, Bangladesh',
        	'contact_number' => '+880 179 7703 131',
            'contact_email' => 'codehut.info@gmail.com',
            'faq' => 'FAQ of site goes here!'
        ]);
    }
}
