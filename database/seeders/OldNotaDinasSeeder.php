<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

class OldNotaDinasSeeder extends Seeder
{
    public function run(): void
    {
        // --- PERUBAHAN ---
        // TRUNCATE DIHAPUS

        $oldNotaDinas = DB::connection('mysql_old')->table('nota_dnas')->get();

        foreach ($oldNotaDinas as $nota) {

            // Cek dependensi utama: jika magang-nya saja tidak ada di map, lewati
            if (!isset(OldMagangSeeder::$masterMgngIdMap[$nota->id_mgng])) {
                continue;
            }

            // Cek duplikasi berdasarkan nomor nota dinas
            if (!is_null($nota->nomor_nota_dinas) && DB::table('nota_dinas')->where('nomor_nota_dinas', $nota->nomor_nota_dinas)->exists()) {
                continue;
            }

            // Mapping untuk member
            $newMemberId = null;
            if (!is_null($nota->id_bdng_member) && isset(OldMasterBidangMemberSeeder::$memberIdMap[$nota->id_bdng_member])) {
                $newMemberId = OldMasterBidangMemberSeeder::$memberIdMap[$nota->id_bdng_member];
            }

            // Ambil semua ID baru dari map
            $newMasterMgngId = OldMagangSeeder::$masterMgngIdMap[$nota->id_mgng];
            $newPermintaanMgngId = OldMagangSeeder::$permintaanIdMap[$nota->id_mgng];

            $newNotaDinasId = DB::table('nota_dinas')->insertGetId([
                'master_mgng_id' => $newMasterMgngId,
                'permintaan_mgng_id' => $newPermintaanMgngId,
                'master_bdng_id' => $nota->id_bdng,
                // ... kolom lainnya ...
                'bdng_member_id' => $newMemberId,
                'created_at' => $nota->created_at,
                'updated_at' => $nota->updated_at,
            ]);

            // Migrasi item nota dinas
            $oldNotaItems = DB::connection('mysql_old')->table('nota_dnas_item')->where('id_nota_dnas', $nota->id)->get();
            foreach ($oldNotaItems as $item) {
                if (!isset(OldPesertaSeeder::$pesertaIdMap[$item->id_psrt])) {
                    continue;
                }

                DB::table('nota_dinas_item')->insert([
                    'nota_dinas_id' => $newNotaDinasId,
                    'master_psrt_id' => OldPesertaSeeder::$pesertaIdMap[$item->id_psrt],
                    'created_at' => $item->created_at,
                    'updated_at' => $item->updated_at,
                ]);
            }
        }
    }
}
