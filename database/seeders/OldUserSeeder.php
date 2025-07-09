<?php

// File: database/seeders/OldUserSeeder.php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Str;

class OldUserSeeder extends Seeder
{
    public static array $userIdMap = [];

    public function run(): void
    {
        // Memastikan tabel bersih sebelum seeding
        Schema::disableForeignKeyConstraints();
        // DB::table('users')->truncate();
        Schema::enableForeignKeyConstraints();

        $oldUsers = DB::connection('mysql_old')->table('users')->get();

        foreach ($oldUsers as $user) {
            // Cek duplikasi email, lewati jika sudah ada
            if (DB::table('users')->where('email', $user->email)->exists()) {
                continue;
            }

            $role_id = match ($user->privilege) {
                'superadmin', 'admin', 'adminbidang' => 1,
                default => 2,
            };

            $newUserId = DB::table('users')->insertGetId([
                'role_id' => $role_id,
                'fullname' => $user->name,
                'username' => Str::slug($user->name, '_') . '_' . $user->id,
                'email' => $user->email,
                'password' => Hash::make('Sima123456!'), // Password di-reset
                'akun_diverifikasi' => $user->akun_diverifikasi,
                'is_active' => 1,
                'remember_token' => $user->remember_token,
                'email_verified_at' => now(),
                'created_at' => $user->created_at,
                'updated_at' => $user->updated_at,
                'is_data_completed' => 1,
            ]);

            // Simpan pemetaan ID lama ke ID baru
            self::$userIdMap[$user->id] = $newUserId;
        }
    }
}
