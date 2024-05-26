<?php

namespace Database\Seeders;

use App\Models\Saldo;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class SaldoTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Saldo::create([
            'total_saldo' => '0.00',
        ]);
    }
}
