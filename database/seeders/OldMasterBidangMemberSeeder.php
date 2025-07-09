<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

class OldMasterBidangMemberSeeder extends Seeder
{
    public static array $memberIdMap = [];

    public function run(): void
    {
        // TRUNCATE DIHAPUS agar tidak menghapus data yang sudah ada

        $oldMembers = DB::connection('mysql_old')->table('master_bdng_member')->get();

        foreach ($oldMembers as $member) {
            $newId = null;

            // --- PERUBAHAN UTAMA ---
            // Cek apakah member dengan NIP ini sudah ada di database baru.
            // Hanya lakukan pengecekan jika NIP tidak kosong.
            $existingMember = null;
            if (!empty($member->nip_pejabat)) {
                $existingMember = DB::table('master_bdng_member')->where('nip_pejabat', $member->nip_pejabat)->first();
            }

            if ($existingMember) {
                // JIKA SUDAH ADA: Jangan insert data baru.
                // Cukup ambil ID dari data yang sudah ada untuk digunakan di map.
                $newId = $existingMember->id;
            } else {
                // JIKA BELUM ADA: Insert sebagai data baru dan dapatkan ID-nya.
                $newId = DB::table('master_bdng_member')->insertGetId([
                    'id_bdng' => $member->id_bdng,
                    'nama_pejabat' => $member->nama_pejabat,
                    'nip_pejabat' => $member->nip_pejabat,
                    'pangkat_pejabat' => $member->pangkat_pejabat,
                    'golongan_pejabat' => $member->golongan_pejabat,
                    'ruang_pejabat' => $member->ruang_pejabat,
                    'jabatan_pejabat' => $member->jabatan_pejabat,
                    'sub_bidang_pejabat' => $member->sub_bidang_pejabat,
                    'created_at' => $member->created_at,
                    'updated_at' => $member->updated_at,
                ]);
            }
            // --- AKHIR PERUBAHAN ---

            // Simpan pemetaan ID lama ke ID baru (baik yang baru dibuat maupun yang sudah ada)
            self::$memberIdMap[$member->id] = $newId;
        }
    }
}
