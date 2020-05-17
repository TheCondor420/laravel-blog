<?php

use Illuminate\Database\Seeder;
use App\User;

class UsersTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        User::truncate();

        User::create([
            'name'     => 'Ivanov Ivan',
            'email'    => 'ivan@mail.ru',
            'password' => bcrypt('password'),
            'is_admin' => true
        ]);
    }
}
