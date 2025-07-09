<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;

class OldUserSeeder extends Seeder
{
    /**
     * Peta untuk menghubungkan ID pengguna lama dengan ID baru.
     * @var array
     */
    public static array $userIdMap = [];

    /**
     * Jalankan proses seeding database.
     *
     * @return void
     */
    public function run(): void
    {
        // Mengambil semua pengguna dari koneksi database lama.
        $oldUsers = DB::connection('mysql_old')->table('users')->get();

        foreach ($oldUsers as $user) {
            // Cek apakah email dari data lama sudah ada di database baru.
            if (DB::table('users')->where('email', $user->email)->exists()) {
                // Jika email sudah terdaftar, lewati pengguna ini untuk menghindari duplikat.
                continue;
            }

            // Menentukan role_id berdasarkan kolom 'privilege' dari data lama.
            $role_id = match ($user->privilege) {
                'superadmin', 'admin', 'adminbidang' => 1, // Ditetapkan sebagai Admin
                'operator' => 2, // Ditetapkan sebagai Operator
                default => 2, // Default adalah Operator
            };

            // --- PERUBAHAN UTAMA PADA PASSWORD ---
            // Semua password pengguna diatur ulang menjadi 'Sima123456!' dan di-hash.
            $newPassword = Hash::make('Sima123456!');

            // Memasukkan data pengguna ke database baru dan mendapatkan ID-nya.
            $newUserId = DB::table('users')->insertGetId([
                'role_id' => $role_id,
                'fullname' => $user->name,
                'username' => Str::slug($user->name, '_') . '_' . $user->id,
                'email' => $user->email,
                'password' => $newPassword, // Menggunakan password baru yang sudah di-hash
                'akun_diverifikasi' => $user->akun_diverifikasi,
                'is_active' => 1,
                'remember_token' => $user->remember_token,
                'email_verified_at' => now(),
                'created_at' => $user->created_at,
                'updated_at' => $user->updated_at,
                'is_data_completed' => 1,
            ]);

            // Menyimpan pemetaan ID lama ke ID baru untuk digunakan di seeder lain jika diperlukan.
            self::$userIdMap[$user->id] = $newUserId;
        }
    }
}
