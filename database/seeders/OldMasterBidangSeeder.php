<?php

// File: database/seeders/OldMasterBidangSeeder.php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;
use Carbon\Carbon;

class OldMasterBidangSeeder extends Seeder
{
    public function run(): void
    {
        Schema::disableForeignKeyConstraints();
        // DB::table('master_bdng')->truncate();
        Schema::enableForeignKeyConstraints();

        $oldBidang = DB::connection('mysql_old')->table('master_bdng')->get();

        foreach ($oldBidang as $bidang) {
            DB::table('master_bdng')->insert([
                'id' => $bidang->id, // Pertahankan ID lama untuk konsistensi
                'nama_bidang' => $bidang->nama_bidang,
                'created_at' => $bidang->created_at,
                'updated_at' => $bidang->updated_at,
            ]);
        }
    }
}
