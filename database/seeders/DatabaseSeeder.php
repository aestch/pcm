<?php

namespace Database\Seeders;

use App\Models\User;
use App\Models\Role;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // User::factory(10)->create();


        User::create([
            'name' => 'Mabrur Almutaqi',
            'username' => 'mabruralmutaqi',
            'email' => 'mabruralmutaqi@gmail.com',
            'password' => bcrypt('123456'),
            'role_id' => 1,
        ]);
    }
}
