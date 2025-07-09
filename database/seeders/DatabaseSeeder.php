<?php

namespace Database\Seeders;

use App\Models\User;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Schema;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    // File: DatabaseSeeder.php

    public function run(): void
    {
        Schema::disableForeignKeyConstraints();

        $this->call([
            // Master Data Dasar
            OldMasterBidangSeeder::class,
            RoleSeeder::class,
            PermissionSeeder::class,
            OldMasterBidangMemberSeeder::class,

            // Data Pengguna & Sekolah
            OldUserSeeder::class,
            OldMasterSklhSeeder::class,

            // Data Transaksional
            OldMagangSeeder::class,
            OldPesertaSeeder::class,
            OldNotaDinasSeeder::class, // Ini yang paling penting, harus terakhir

            // Data Aplikasi
            MenuSeeder::class,
            MenuRolePermissionSeeder::class,
        ]);

        Schema::enableForeignKeyConstraints();
    }
}
