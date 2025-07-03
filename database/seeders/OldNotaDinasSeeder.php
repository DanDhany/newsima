<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

class OldNotaDinasSeeder extends Seeder
{
    public function run(): void
    {
        Schema::disableForeignKeyConstraints();
        // DB::table('nota_dinas')->truncate();
        // DB::table('nota_dinas_item')->truncate();
        Schema::enableForeignKeyConstraints();

        $oldNotaDinas = DB::connection('mysql_old')->table('nota_dnas')->get();

        foreach ($oldNotaDinas as $nota) {

            // Cek apakah ID magang dari data lama ada di map. Jika tidak, lewati.
            // Kita bisa menggunakan salah satu map (permintaanIdMap atau masterMgngIdMap) sebagai acuan.
            if (!isset(OldMagangSeeder::$masterMgngIdMap[$nota->id_mgng])) {
                continue;
            }

            // Mapping untuk member (jika ada)
            $newMemberId = null;
            if (!is_null($nota->id_bdng_member) && isset(OldMasterBidangMemberSeeder::$memberIdMap[$nota->id_bdng_member])) {
                $newMemberId = OldMasterBidangMemberSeeder::$memberIdMap[$nota->id_bdng_member];
            }

            // --- PERBAIKAN UTAMA ADA DI SINI ---
            $newMasterMgngId = OldMagangSeeder::$masterMgngIdMap[$nota->id_mgng];
            $newPermintaanMgngId = OldMagangSeeder::$permintaanIdMap[$nota->id_mgng];

            $newNotaDinasId = DB::table('nota_dinas')->insertGetId([
                'master_mgng_id' => $newMasterMgngId, // GUNAKAN ID BARU
                'permintaan_mgng_id' => $newPermintaanMgngId,
                'master_bdng_id' => $nota->id_bdng,
                'nomor_nota_dinas' => $nota->nomor_nota_dinas,
                'tanggal_nota_dinas' => $nota->tanggal_nota_dinas,
                'sifat_nota_dinas' => $nota->sifat_nota_dinas,
                'lampiran_nota_dinas' => $nota->lampiran_nota_dinas,
                'scan_nota_dinas' => $nota->scan_nota_dinas,
                'status_nota_dinas' => $nota->status_nota_dinas,
                'bdng_member_id' => $newMemberId,
                'scan_laporan_magang' => $nota->scan_laporan_magang,
                'status_laporan' => $nota->status_laporan,
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
