<?php

// File: database/seeders/OldPesertaSeeder.php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

class OldPesertaSeeder extends Seeder
{
    public static array $pesertaIdMap = [];

    public function run(): void
    {
        Schema::disableForeignKeyConstraints();
        // DB::table('master_psrt')->truncate();
        Schema::enableForeignKeyConstraints();

        $oldPeserta = DB::connection('mysql_old')->table('master_psrt')->get();

        foreach ($oldPeserta as $peserta) {
            // Validasi: Pastikan magang induknya ada di map
            if (!isset(OldMagangSeeder::$permintaanIdMap[$peserta->id_mgng])) {
                continue;
            }

            $newMemberId = (isset(OldMasterBidangMemberSeeder::$memberIdMap[$peserta->id_bdng_member]))
                ? OldMasterBidangMemberSeeder::$memberIdMap[$peserta->id_bdng_member]
                : null;

            $newPesertaId = DB::table('master_psrt')->insertGetId([
                'permintaan_mgng_id' => OldMagangSeeder::$permintaanIdMap[$peserta->id_mgng],
                'nama_peserta' => $peserta->nama_peserta,
                'jenis_kelamin' => $peserta->jenis_kelamin,
                'nik_peserta' => $peserta->nik_peserta,
                'nis_peserta' => $peserta->nis_peserta,
                'program_studi' => $peserta->program_studi,
                'no_handphone_peserta' => $peserta->no_handphone_peserta,
                'email_peserta' => $peserta->email_peserta,
                'nilai_akhir' => $peserta->nilai_akhir,
                'status_penilaian' => $peserta->status_penilaian,
                'scan_penilaian' => $peserta->scan_penilaian,
                'status_scan_penilaian' => $peserta->status_scan_penilaian,
                'catatan' => $peserta->catatan,
                'scan_sertifikat' => $peserta->scan_sertifikat,
                'status_sertifikat' => $peserta->status_sertifikat,
                'id_bdng_member' => $newMemberId,
                'created_at' => $peserta->created_at,
                'updated_at' => $peserta->updated_at,
                // Kolom nilai lainnya bisa ditambahkan di sini jika perlu
            ]);

            self::$pesertaIdMap[$peserta->id] = $newPesertaId;
        }
    }
}
