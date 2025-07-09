<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class OldMasterSklhSeeder extends Seeder
{
    /**
     * @var array<int, int>
     */
    public static array $sekolahIdMap = [];

    public function run(): void
    {
        // --- PERUBAHAN ---
        // TRUNCATE DIHAPUS

        $oldSekolah = DB::connection('mysql_old')->table('master_sklh')->get();

        foreach ($oldSekolah as $sekolah) {
            // Cek apakah user_id ada di map (user mungkin di-skip karena duplikat)
            if (!isset(OldUserSeeder::$userIdMap[$sekolah->id_user])) {
                continue;
            }

            // Insert satu per satu dan dapatkan ID baru
            $newSekolahId = DB::table('master_sklh')->insertGetId([
                // 'id' tidak di-set
                'id_user' => OldUserSeeder::$userIdMap[$sekolah->id_user],
                'jenis_sklh' => $sekolah->jenis_sklh,
                'alamat_sklh' => $sekolah->alamat_sklh,
                'kabko_sklh' => $sekolah->kabko_sklh,
                'telp_sklh' => $sekolah->telp_sklh,
                'akreditasi_sklh' => $sekolah->akreditasi_sklh,
                'no_akreditasi_sklh' => $sekolah->no_akreditasi_sklh,
                'scan_surat_akreditasi_sklh' => $sekolah->scan_surat_akreditasi_sklh,
                'nama_narahubung' => $sekolah->nama_narahubung,
                'jenis_kelamin_narahubung' => $sekolah->jenis_kelamin_narahubung,
                'jabatan_narahubung' => $sekolah->jabatan_narahubung,
                'handphone_narahubung' => $sekolah->handphone_narahubung,
                'created_at' => $sekolah->created_at,
                'updated_at' => $sekolah->updated_at,
            ]);

            // Simpan pemetaan ID lama ke ID baru
            self::$sekolahIdMap[$sekolah->id] = $newSekolahId;
        }
    }
}
