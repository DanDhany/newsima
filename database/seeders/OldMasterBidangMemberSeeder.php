<?php

// File: database/seeders/OldMasterBidangMemberSeeder.php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

class OldMasterBidangMemberSeeder extends Seeder
{
    public static array $memberIdMap = [];

    public function run(): void
    {
        Schema::disableForeignKeyConstraints();
        // DB::table('master_bdng_member')->truncate();
        Schema::enableForeignKeyConstraints();

        $oldMembers = DB::connection('mysql_old')->table('master_bdng_member')->get();

        foreach ($oldMembers as $member) {
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

            self::$memberIdMap[$member->id] = $newId;
        }
    }
}
