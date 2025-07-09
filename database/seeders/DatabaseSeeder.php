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

        // Aktifkan kembali truncate di setiap seeder jika diperlukan
        // DB::table('...')->truncate(); 

        $this->call([
            // 1. Master data yang tidak punya dependensi
            OldMasterBidangSeeder::class,
            RoleSeeder::class,
            PermissionSeeder::class,

            // 2. User, menjadi induk untuk sekolah
            OldUserSeeder::class,

            // 3. Member, bergantung pada Bidang
            OldMasterBidangMemberSeeder::class,

            // 4. Sekolah, bergantung pada User
            OldMasterSklhSeeder::class,

            // 5. Magang, bergantung pada Sekolah
            OldMagangSeeder::class,

            // 6. Peserta, bergantung pada Magang dan Member
            OldPesertaSeeder::class,

            // 7. Nota Dinas, bergantung pada banyak seeder sebelumnya
            OldNotaDinasSeeder::class,

            // Seeders untuk setup awal (jika tidak migrasi) bisa dijalankan terpisah
            // UserSeeder::class,
            MenuSeeder::class,
            MenuRolePermissionSeeder::class,
        ]);

        Schema::enableForeignKeyConstraints();
    }
}
