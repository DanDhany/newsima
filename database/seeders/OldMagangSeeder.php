<?php

// File: database/seeders/OldMagangSeeder.php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

class OldMagangSeeder extends Seeder
{
    public static array $permintaanIdMap = [];
    public static array $masterMgngIdMap = [];
    public static array $balasanIdMap = [];

    public function run(): void
    {
        Schema::disableForeignKeyConstraints();
        // DB::table('balasan_mgng')->truncate();
        // DB::table('permintaan_mgng')->truncate();
        // DB::table('master_mgng')->truncate();
        Schema::enableForeignKeyConstraints();

        $oldMagang = DB::connection('mysql_old')->table('master_mgng')->get();

        foreach ($oldMagang as $magang) {
            // Validasi dependensi
            if (!isset(OldMasterSklhSeeder::$sekolahIdMap[$magang->id_sklh])) {
                continue;
            }
            if (DB::table('permintaan_mgng')->where('nomor_surat_permintaan', $magang->nomor_surat_permintaan)->exists()) {
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

            // 3. Insert ke balasan_mgng (jika ada)
            if ($magang->nomor_surat_balasan) {
                $newMemberId = (isset(OldMasterBidangMemberSeeder::$memberIdMap[$magang->id_bdng_member]))
                    ? OldMasterBidangMemberSeeder::$memberIdMap[$magang->id_bdng_member]
                    : null;

                $newBalasanId = DB::table('balasan_mgng')->insertGetId([
                    'master_mgng_id' => $newMasterMgngId,
                    'permintaan_mgng_id' => $newPermintaanMgngId, // Relasi penting
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
                self::$balasanIdMap[$magang->id] = $newBalasanId;
            }
        }
    }
}
