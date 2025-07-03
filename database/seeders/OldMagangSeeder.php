<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

class OldMagangSeeder extends Seeder
{
    /**
     * Map dari ID magang LAMA ke ID permintaan BARU
     * @var array<int, int>
     */
    public static array $permintaanIdMap = [];

    /**
     * Map dari ID magang LAMA ke ID master_mgng BARU
     * @var array<int, int>
     */
    public static array $masterMgngIdMap = []; // <-- TAMBAHKAN INI

    public function run(): void
    {
        Schema::disableForeignKeyConstraints();
        // DB::table('master_mgng')->truncate();
        // DB::table('permintaan_mgng')->truncate();
        // DB::table('balasan_mgng')->truncate();
        Schema::enableForeignKeyConstraints();

        $oldMagang = DB::connection('mysql_old')->table('master_mgng')->get();

        foreach ($oldMagang as $magang) {
            if (!isset(OldMasterSklhSeeder::$sekolahIdMap[$magang->id_sklh])) {
                continue; // Skip jika sekolah tidak ditemukan
            }

            // 1. Insert ke master_mgng
            $newMasterMgngId = DB::table('master_mgng')->insertGetId([
                'master_sklh_id' => OldMasterSklhSeeder::$sekolahIdMap[$magang->id_sklh],
                'created_at' => $magang->created_at,
                'updated_at' => $magang->updated_at,
            ]);

            // ---- SIMPAN ID BARU KE MAP ----
            self::$masterMgngIdMap[$magang->id] = $newMasterMgngId; // <-- TAMBAHKAN INI

            // 2. Insert ke permintaan_mgng
            $newPermintaanMgngId = DB::table('permintaan_mgng')->insertGetId([
                'master_mgng_id' => $newMasterMgngId,
                'nomor_surat_permintaan' => $magang->nomor_surat_permintaan,
                'tanggal_surat_permintaan' => $magang->tanggal_surat_permintaan,
                'perihal_surat_permintaan' => $magang->perihal_surat_permintaan,
                'ditandatangani_oleh' => $magang->ditandatangani_oleh,
                'scan_surat_permintaan' => $magang->scan_surat_permintaan,
                'scan_proposal_magang' => $magang->scan_proposal_magang,
                'status_surat_permintaan' => $magang->status_surat_permintaan,
                'status_baca_surat_permintaan' => $magang->status_baca_surat_permintaan,
                'created_at' => $magang->created_at,
                'updated_at' => $magang->updated_at,
            ]);

            self::$permintaanIdMap[$magang->id] = $newPermintaanMgngId;

            // 3. Insert ke balasan_mgng (jika ada data balasan)
            if ($magang->nomor_surat_balasan) {
                $newMemberId = null;
                if (!is_null($magang->id_bdng_member) && isset(OldMasterBidangMemberSeeder::$memberIdMap[$magang->id_bdng_member])) {
                    $newMemberId = OldMasterBidangMemberSeeder::$memberIdMap[$magang->id_bdng_member];
                }

                DB::table('balasan_mgng')->insert([
                    'master_mgng_id' => $newMasterMgngId,
                    'permintaan_mgng_id' => $newPermintaanMgngId,
                    'nomor_surat_balasan' => $magang->nomor_surat_balasan,
                    'tanggal_surat_balasan' => $magang->tanggal_surat_balasan,
                    'sifat_surat_balasan' => $magang->sifat_surat_balasan,
                    'metode_magang' => $magang->metode_magang,
                    'lampiran_surat_balasan' => $magang->lampiran_surat_balasan,
                    'scan_surat_balasan' => $magang->scan_surat_balasan,
                    'tanggal_awal_magang' => $magang->tanggal_awal_magang,
                    'tanggal_akhir_magang' => $magang->tanggal_akhir_magang,
                    'status_surat_balasan' => $magang->status_surat_balasan,
                    'status_baca_surat_balasan' => $magang->status_baca_surat_balasan,
                    'id_bdng_member' => $newMemberId,
                    'created_at' => $magang->created_at,
                    'updated_at' => $magang->updated_at,
                ]);
            }
        }
    }
}
