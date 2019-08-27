<?php

use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
      $user = App\User::create([

       	'name' => 'shamsul huda',
       	'email' => 'shamsulhuda310@gmail.com',
       	'password' => bcrypt('123456'),
        'admin' => 1
       ]);

       App\Profile::create([
        'user_id' => $user->id,
        'avatar' => 'uploads/avatars/1.png',
        'about' => 'Here goes all about an user Here goes all about an user Here goes all about an user Here goes all about an user ',
        'facebook' => 'facebook.com',
        'youtube' => 'youtube.com'

       ]);
    }
}
