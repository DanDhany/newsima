<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

class OldMagangSeeder extends Seeder
{
    public static array $permintaanIdMap = [];
    public static array $masterMgngIdMap = [];

    public function run(): void
    {
        // --- PERUBAHAN ---
        // TRUNCATE DIHAPUS untuk semua tabel terkait

        $oldMagang = DB::connection('mysql_old')->table('master_mgng')->get();

        foreach ($oldMagang as $magang) {
            // Cek duplikasi berdasarkan nomor surat permintaan untuk menghindari data ganda
            if (DB::table('permintaan_mgng')->where('nomor_surat_permintaan', $magang->nomor_surat_permintaan)->exists()) {
                continue;
            }

            if (!isset(OldMasterSklhSeeder::$sekolahIdMap[$magang->id_sklh])) {
                continue;
            }

            // 1. Insert ke master_mgng
            $newMasterMgngId = DB::table('master_mgng')->insertGetId([
                'master_sklh_id' => OldMasterSklhSeeder::$sekolahIdMap[$magang->id_sklh],
                'created_at' => $magang->created_at,
                'updated_at' => $magang->updated_at,
            ]);

            self::$masterMgngIdMap[$magang->id] = $newMasterMgngId;

            // 2. Insert ke permintaan_mgng
            $newPermintaanMgngId = DB::table('permintaan_mgng')->insertGetId([
                'master_mgng_id' => $newMasterMgngId,
                'nomor_surat_permintaan' => $magang->nomor_surat_permintaan,
                'tanggal_surat_permintaan' => $magang->tanggal_surat_permintaan,
                // ... kolom lainnya ...
                'created_at' => $magang->created_at,
                'updated_at' => $magang->updated_at,
            ]);

            self::$permintaanIdMap[$magang->id] = $newPermintaanMgngId;

            // 3. Insert ke balasan_mgng
            if ($magang->nomor_surat_balasan) {
                $newMemberId = null;
                if (!is_null($magang->id_bdng_member) && isset(OldMasterBidangMemberSeeder::$memberIdMap[$magang->id_bdng_member])) {
                    $newMemberId = OldMasterBidangMemberSeeder::$memberIdMap[$magang->id_bdng_member];
                }

                DB::table('balasan_mgng')->insert([
                    'master_mgng_id' => $newMasterMgngId,
                    'permintaan_mgng_id' => $newPermintaanMgngId,
                    'nomor_surat_balasan' => $magang->nomor_surat_balasan,
                    // ... kolom lainnya ...
                    'id_bdng_member' => $newMemberId,
                    'created_at' => $magang->created_at,
                    'updated_at' => $magang->updated_at,
                ]);
            }
        }
    }
}
