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
        // --- PERUBAHAN ---
        // TRUNCATE DIHAPUS agar tidak menghapus data bidang yang sudah ada di produksi.

        $now = Carbon::now();
        $daftar_bidang = [
            ['nama_bidang' => 'Sekretariat'],
            ['nama_bidang' => 'Bidang Informasi Komunikasi Publik'],
            ['nama_bidang' => 'Bidang Persandian dan Keamanan Informasi'],
            ['nama_bidang' => 'Bidang Aplikasi Informatika'],
            ['nama_bidang' => 'Bidang Data dan Statistik'],
            ['nama_bidang' => 'Dinas Komunikasi dan Informatika'],
        ];

        foreach ($daftar_bidang as $bidang) {
            // --- PERUBAHAN ---
            // Gunakan updateOrInsert untuk menghindari error duplikasi.
            // Jika nama_bidang sudah ada, data tidak akan diubah/ditambah.
            // Jika belum ada, data baru akan ditambahkan.
            DB::table('master_bdng')->updateOrInsert(
                ['nama_bidang' => $bidang['nama_bidang']], // Kondisi untuk cek
                ['created_at' => $now, 'updated_at' => $now] // Data untuk diinsert/update
            );
        }
    }
}
