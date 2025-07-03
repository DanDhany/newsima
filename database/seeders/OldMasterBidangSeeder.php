<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;
use Carbon\Carbon;

class OldMasterBidangSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(): void
    {
        // Mengosongkan tabel terlebih dahulu
        Schema::disableForeignKeyConstraints();
        // DB::table('master_bdng')->truncate();
        Schema::enableForeignKeyConstraints();

        // Menyiapkan data bidang yang benar
        $now = Carbon::now();
        $daftar_bidang = [
            ['id' => 1, 'nama_bidang' => 'Sekretariat', 'created_at' => $now, 'updated_at' => $now],
            ['id' => 2, 'nama_bidang' => 'Bidang Informasi Komunikasi Publik', 'created_at' => $now, 'updated_at' => $now],
            ['id' => 4, 'nama_bidang' => 'Bidang Persandian dan Keamanan Informasi', 'created_at' => $now, 'updated_at' => $now],
            ['id' => 5, 'nama_bidang' => 'Bidang Aplikasi Informatika', 'created_at' => $now, 'updated_at' => $now],
            ['id' => 6, 'nama_bidang' => 'Bidang Data dan Statistik', 'created_at' => $now, 'updated_at' => $now],
            ['id' => 114, 'nama_bidang' => 'Dinas Komunikasi dan Informatika', 'created_at' => $now, 'updated_at' => $now],
        ];

        // Memasukkan data ke dalam database
        DB::table('master_bdng')->insert($daftar_bidang);
    }
}
