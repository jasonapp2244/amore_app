<?php
namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Plan;

class PlanSeeder extends Seeder
{
    public function run(): void
    {
        Plan::insert([
            [
                'slug' => 'message_pack_5',
                'title' => '500 Message Pack',
                'messages' => 500,
                'rings' => 0,
                'amount' => 4.99,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'slug' => 'ring_pack_1',
                'title' => '1 Ring Exchange',
                'messages' => 0,
                'rings' => 1,
                'amount' => 5.99,
                'created_at' => now(),
                'updated_at' => now(),
            ]
        ]);
    }
}
