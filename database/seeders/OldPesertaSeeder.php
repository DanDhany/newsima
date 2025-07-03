<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;
// Pastikan seeder untuk mapping member di-import
use Database\Seeders\OldMasterBidangMemberSeeder;

class OldPesertaSeeder extends Seeder
{
    /**
     * @var array<int, int>
     */
    public static array $pesertaIdMap = [];

    public function run(): void
    {
        Schema::disableForeignKeyConstraints();
        // DB::table('master_psrt')->truncate(); // Diaktifkan untuk membersihkan tabel
        Schema::enableForeignKeyConstraints();

        $oldPeserta = DB::connection('mysql_old')->table('master_psrt')->get();
        $newPesertaList = [];

        foreach ($oldPeserta as $peserta) {
            // Lewati jika magang (permintaan) tidak ditemukan di map
            if (!isset(OldMagangSeeder::$permintaanIdMap[$peserta->id_mgng])) {
                continue;
            }

            // --- PERBAIKAN DIMULAI DI SINI ---

            // 1. Logika mapping untuk id_bdng_member
            $newMemberId = null;
            if (!is_null($peserta->id_bdng_member) && isset(OldMasterBidangMemberSeeder::$memberIdMap[$peserta->id_bdng_member])) {
                $newMemberId = OldMasterBidangMemberSeeder::$memberIdMap[$peserta->id_bdng_member];
            }

            $newId = $peserta->id;
            $newPesertaList[] = [
                'id' => $newId,
                'permintaan_mgng_id' => OldMagangSeeder::$permintaanIdMap[$peserta->id_mgng],
                'nama_peserta' => $peserta->nama_peserta,
                'jenis_kelamin' => $peserta->jenis_kelamin,
                'nik_peserta' => $peserta->nik_peserta,
                'nis_peserta' => $peserta->nis_peserta,
                'program_studi' => $peserta->program_studi,
                'no_handphone_peserta' => $peserta->no_handphone_peserta,
                'email_peserta' => $peserta->email_peserta,

                // 2. Set semua kolom nilai baru ke 0 sebagai default
                'nilai_kehadiran' => 0,
                'nilai_kerapian' => 0,
                'nilai_sikap' => 0,
                'nilai_tanggungjawab' => 0,
                'nilai_kepatuhan' => 0,
                'nilai_komunikasi' => 0,
                'nilai_kerjasama' => 0,
                'nilai_inisiatif' => 0,
                'nilai_teknis1' => 0,
                'nilai_teknis2' => 0,
                'nilai_teknis3' => 0,
                'nilai_teknis4' => 0,
                'nilai_akhir' => 0, // Nilai akhir juga di-default ke 0

                'status_penilaian' => $peserta->status_penilaian,
                'scan_penilaian' => $peserta->scan_penilaian,
                'status_scan_penilaian' => $peserta->status_scan_penilaian,
                'catatan' => $peserta->catatan,
                'scan_sertifikat' => $peserta->scan_sertifikat,
                'status_sertifikat' => $peserta->status_sertifikat,
                'id_bdng_member' => $newMemberId, // Menggunakan ID member yang sudah dipetakan
                'created_at' => $peserta->created_at,
                'updated_at' => $peserta->updated_at,
            ];

            self::$pesertaIdMap[$peserta->id] = $newId;
        }

        // Chunk insert untuk performa yang lebih baik pada data besar
        foreach (array_chunk($newPesertaList, 200) as $chunk) {
            DB::table('master_psrt')->insert($chunk);
        }
    }
}
