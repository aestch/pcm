<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('users')->insert([
            'name' => 'Admin',
            'email' => 'admin@example.com',
            'password' => Hash::make('password'),
            'role' => 'admin',
        ]);

        DB::table('users')->insert([
            'name' => 'Bendahara',
            'email' => 'treasurer@example.com',
            'password' => Hash::make('password'),
            'role' => 'treasurer',
        ]);

        DB::table('users')->insert([
            'name' => 'Sekretaris',
            'email' => 'secretary@example.com',
            'password' => Hash::make('password'),
            'role' => 'secretary',
        ]);
    }
}
