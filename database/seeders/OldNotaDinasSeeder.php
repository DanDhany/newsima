<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

class OldNotaDinasSeeder extends Seeder
{
    public static array $notaDinasIdMap = [];

    public function run(): void
    {
        // Nonaktifkan pengecekan foreign key untuk sementara
        Schema::disableForeignKeyConstraints();
        // DB::table('nota_dinas_item')->truncate();
        // DB::table('nota_dinas')->truncate();

        $oldNotaDinas = DB::connection('mysql_old')->table('nota_dnas')->get();

        foreach ($oldNotaDinas as $nota) {
            // 1. Validasi dependensi utama
            if (
                !isset(OldMagangSeeder::$masterMgngIdMap[$nota->id_mgng]) ||
                !isset(OldMagangSeeder::$permintaanIdMap[$nota->id_mgng])
            ) {
                // Jika data magang induknya tidak ada di map, lewati nota dinas ini
                continue;
            }

            // 2. Cek duplikasi berdasarkan nomor nota dinas
            if (!is_null($nota->nomor_nota_dinas) && DB::table('nota_dinas')->where('nomor_nota_dinas', $nota->nomor_nota_dinas)->exists()) {
                continue;
            }

            // 3. Mapping ID Member/Pejabat
            $newMemberId = null;
            if (!is_null($nota->id_bdng_member) && isset(OldMasterBidangMemberSeeder::$memberIdMap[$nota->id_bdng_member])) {
                $newMemberId = OldMasterBidangMemberSeeder::$memberIdMap[$nota->id_bdng_member];
            }

            // 4. Ambil ID baru dari map
            $newMasterMgngId = OldMagangSeeder::$masterMgngIdMap[$nota->id_mgng];
            $newPermintaanMgngId = OldMagangSeeder::$permintaanIdMap[$nota->id_mgng];

            // 5. Insert ke tabel nota_dinas
            $newNotaDinasId = DB::table('nota_dinas')->insertGetId([
                'master_mgng_id' => $newMasterMgngId,
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

            // Simpan pemetaan ID untuk referensi jika dibutuhkan
            self::$notaDinasIdMap[$nota->id] = $newNotaDinasId;

            // ==================================================================
            // LOGIKA BARU YANG LEBIH TANGGUH UNTUK MENGISI NOTA_DINAS_ITEM
            // ==================================================================
            // Daripada mengandalkan tabel nota_dnas_item lama, kita bangun ulang relasinya.
            // Cari semua peserta di DB lama yang memiliki id_mgng yang sama dengan nota dinas ini.
            $oldPesertasTerkait = DB::connection('mysql_old')->table('master_psrt')
                ->where('id_mgng', $nota->id_mgng)
                ->get();

            foreach ($oldPesertasTerkait as $peserta) {
                // Cek apakah ID peserta lama ini ada di map peserta yang baru
                if (isset(OldPesertaSeeder::$pesertaIdMap[$peserta->id])) {
                    $newPsrtId = OldPesertaSeeder::$pesertaIdMap[$peserta->id];

                    // Insert relasi ke tabel pivot nota_dinas_item
                    DB::table('nota_dinas_item')->insert([
                        'nota_dinas_id' => $newNotaDinasId,
                        'master_psrt_id' => $newPsrtId,
                        'created_at' => $peserta->created_at ?? now(),
                        'updated_at' => $peserta->updated_at ?? now(),
                    ]);
                }
            }
        }

        // Aktifkan kembali pengecekan foreign key
        Schema::enableForeignKeyConstraints();
    }
}
