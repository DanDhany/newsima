<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Str;

class OldUserSeeder extends Seeder
{
    /**
     * @var array<int, int>
     */
    public static array $userIdMap = [];

    public function run(): void
    {
        Schema::disableForeignKeyConstraints();
        // DB::table('users')->truncate();
        // DB::table('master_sklh')->truncate();
        Schema::enableForeignKeyConstraints();

        $oldUsers = DB::connection('mysql_old')->table('users')->get();
        $newUsers = [];

        foreach ($oldUsers as $user) {
            $newId = $user->id;

            // Mapping privilege ke role_id
            $role_id = match ($user->privilege) {
                'superadmin', 'admin', 'adminbidang' => 1,
                'operator' => 2,
                default => 2,
            };

            $newUsers[] = [
                'id' => $newId,
                'role_id' => $role_id,
                'fullname' => $user->name,
                'username' => Str::slug($user->name, '_') . '_' . $user->id,
                'email' => $user->email,
                'password' => $user->password ?: Hash::make('password'), // Beri password default jika null
                'akun_diverifikasi' => $user->akun_diverifikasi,
                'is_active' => 1,
                'remember_token' => $user->remember_token,
                'email_verified_at' => now(),
                'created_at' => $user->created_at,
                'updated_at' => $user->updated_at,
                'is_data_completed' => 1, // Asumsikan data lengkap
            ];

            self::$userIdMap[$user->id] = $newId;
        }

        DB::table('users')->insert($newUsers);
    }
}
