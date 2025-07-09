<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class OldPesertaSeeder extends Seeder
{
    /**
     * @var array<int, int>
     */
    public static array $pesertaIdMap = [];

    public function run(): void
    {
        // --- PERUBAHAN ---
        // TRUNCATE DIHAPUS

        $oldPeserta = DB::connection('mysql_old')->table('master_psrt')->get();

        foreach ($oldPeserta as $peserta) {
            if (!isset(OldMagangSeeder::$permintaanIdMap[$peserta->id_mgng])) {
                continue;
            }

            $newMemberId = null;
            if (!is_null($peserta->id_bdng_member) && isset(OldMasterBidangMemberSeeder::$memberIdMap[$peserta->id_bdng_member])) {
                $newMemberId = OldMasterBidangMemberSeeder::$memberIdMap[$peserta->id_bdng_member];
            }

            // Insert satu per satu untuk mendapatkan ID baru
            $newPesertaId = DB::table('master_psrt')->insertGetId([
                // 'id' tidak di-set
                'permintaan_mgng_id' => OldMagangSeeder::$permintaanIdMap[$peserta->id_mgng],
                'nama_peserta' => $peserta->nama_peserta,
                'jenis_kelamin' => $peserta->jenis_kelamin,
                'nik_peserta' => $peserta->nik_peserta,
                'nis_peserta' => $peserta->nis_peserta,
                'program_studi' => $peserta->program_studi,
                'no_handphone_peserta' => $peserta->no_handphone_peserta,
                'email_peserta' => $peserta->email_peserta,
                'nilai_akhir' => 0,
                'status_penilaian' => $peserta->status_penilaian,
                'scan_penilaian' => $peserta->scan_penilaian,
                'status_scan_penilaian' => $peserta->status_scan_penilaian,
                'catatan' => $peserta->catatan,
                'scan_sertifikat' => $peserta->scan_sertifikat,
                'status_sertifikat' => $peserta->status_sertifikat,
                'id_bdng_member' => $newMemberId,
                'created_at' => $peserta->created_at,
                'updated_at' => $peserta->updated_at,
            ]);

            self::$pesertaIdMap[$peserta->id] = $newPesertaId;
        }
    }
}
