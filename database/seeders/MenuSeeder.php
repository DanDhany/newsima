<?php

namespace Database\Seeders;

use App\Models\Menu;
use Carbon\Carbon;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class MenuSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('menus')->insert([
            ['id' => 1, 'name' => 'Beranda', 'icon' => 'mdi-home', 'parent_id' => null, 'url' => 'home', 'order' => 1, 'is_active' => 1, 'match_segment' => 'home', 'created_at' => '2025-04-16 10:10:24', 'updated_at' => '2025-04-16 10:10:24', 'deleted_at' => null, 'is_data_complete' => 0],
            ['id' => 2, 'name' => 'Master', 'icon' => 'mdi-text-box-multiple', 'parent_id' => null, 'url' => null, 'order' => 2, 'is_active' => 1, 'match_segment' => 'master', 'created_at' => '2025-04-16 10:10:24', 'updated_at' => '2025-04-16 10:10:24', 'deleted_at' => null, 'is_data_complete' => 0],
            ['id' => 3, 'name' => 'Menu', 'icon' => null, 'parent_id' => 2, 'url' => 'menu.index', 'order' => 1, 'is_active' => 1, 'match_segment' => 'menu', 'created_at' => '2025-04-16 10:10:24', 'updated_at' => '2025-04-16 10:10:24', 'deleted_at' => null, 'is_data_complete' => 0],
            ['id' => 4, 'name' => 'Role & Permission', 'icon' => null, 'parent_id' => 2, 'url' => null, 'order' => 2, 'is_active' => 1, 'match_segment' => 'role-&-permission', 'created_at' => '2025-04-16 10:10:24', 'updated_at' => '2025-04-16 10:10:24', 'deleted_at' => null, 'is_data_complete' => 0],
            ['id' => 5, 'name' => 'test', 'icon' => 'mdi-minus', 'parent_id' => null, 'url' => 'user_extras', 'order' => 3, 'is_active' => 1, 'match_segment' => null, 'created_at' => '2025-04-16 10:15:03', 'updated_at' => '2025-04-16 10:15:03', 'deleted_at' => null, 'is_data_complete' => 0],
            ['id' => 6, 'name' => 'Lembaga Pendidikan', 'icon' => 'mdi-bank', 'parent_id' => null, 'url' => 'master_sklh', 'order' => 4, 'is_active' => 1, 'match_segment' => null, 'created_at' => '2025-04-19 01:47:52', 'updated_at' => '2025-04-19 15:19:00', 'deleted_at' => null, 'is_data_complete' => 0],
            ['id' => 7, 'name' => 'Permohonan Magang', 'icon' => 'mdi-inbox', 'parent_id' => null, 'url' => 'proposal_masuk', 'order' => 5, 'is_active' => 1, 'match_segment' => null, 'created_at' => '2025-04-19 01:49:29', 'updated_at' => '2025-04-26 08:56:50', 'deleted_at' => null, 'is_data_complete' => 0],
            ['id' => 10, 'name' => 'Balasan Magang', 'icon' => 'mdi-send', 'parent_id' => null, 'url' => 'proposal_keluar', 'order' => 6, 'is_active' => 1, 'match_segment' => null, 'created_at' => '2025-04-19 01:51:58', 'updated_at' => '2025-05-06 08:40:38', 'deleted_at' => null, 'is_data_complete' => 0],
            ['id' => 11, 'name' => 'Nota Dinas Magang', 'icon' => 'mdi-note-text-outline', 'parent_id' => null, 'url' => 'nota_dinas.daftar', 'order' => 7, 'is_active' => 1, 'match_segment' => null, 'created_at' => '2025-04-19 02:00:56', 'updated_at' => '2025-05-12 01:54:45', 'deleted_at' => null, 'is_data_complete' => 0],
            ['id' => 12, 'name' => 'Laporan & Sertifikat', 'icon' => 'mdi-decagram', 'parent_id' => null, 'url' => 'proposal_final.daftar', 'order' => 8, 'is_active' => 1, 'match_segment' => null, 'created_at' => '2025-04-19 02:02:03', 'updated_at' => '2025-05-15 20:02:51', 'deleted_at' => null, 'is_data_complete' => 0],
            ['id' => 13, 'name' => 'Kelola Penilai', 'icon' => 'mdi-account-group', 'parent_id' => null, 'url' => 'master_petugas', 'order' => 9, 'is_active' => 1, 'match_segment' => null, 'created_at' => '2025-04-19 02:02:42', 'updated_at' => '2025-04-19 09:58:38', 'deleted_at' => null, 'is_data_complete' => 0],
            ['id' => 14, 'name' => 'Lengkapi Data', 'icon' => 'mdi-plus', 'parent_id' => null, 'url' => 'lengkapi_data', 'order' => 3, 'is_active' => 1, 'match_segment' => null, 'created_at' => '2025-04-20 06:45:44', 'updated_at' => '2025-04-21 02:08:15', 'deleted_at' => null, 'is_data_complete' => 0],
            ['id' => 15, 'name' => 'Detail Data', 'icon' => 'mdi-eye', 'parent_id' => null, 'url' => 'detail_data', 'order' => 4, 'is_active' => 1, 'match_segment' => null, 'created_at' => '2025-04-20 20:54:28', 'updated_at' => '2025-04-21 19:36:56', 'deleted_at' => null, 'is_data_complete' => 0],
            ['id' => 16, 'name' => 'Edit Data', 'icon' => 'mdi-pencil', 'parent_id' => null, 'url' => 'edit_data', 'order' => 5, 'is_active' => 1, 'match_segment' => null, 'created_at' => '2025-04-21 00:49:43', 'updated_at' => '2025-04-21 20:04:12', 'deleted_at' => null, 'is_data_complete' => 0],
            ['id' => 17, 'name' => 'Buat Permohonan', 'icon' => 'mdi-plus', 'parent_id' => null, 'url' => 'buat_permohonan', 'order' => 6, 'is_active' => 1, 'match_segment' => null, 'created_at' => '2025-04-21 21:25:58', 'updated_at' => '2025-04-21 21:29:02', 'deleted_at' => null, 'is_data_complete' => 0],
            ['id' => 18, 'name' => 'Daftar Permohonan', 'icon' => 'mdi-email', 'parent_id' => null, 'url' => 'user.daftar_permohonan', 'order' => 7, 'is_active' => 1, 'match_segment' => null, 'created_at' => '2025-04-23 01:20:40', 'updated_at' => '2025-04-28 00:40:09', 'deleted_at' => null, 'is_data_complete' => 0],
            ['id' => 19, 'name' => 'Daftar Diterima', 'icon' => 'mdi-inbox', 'parent_id' => null, 'url' => 'user.daftar_permohonanmasuk', 'order' => 8, 'is_active' => 1, 'match_segment' => null, 'created_at' => '2025-04-23 01:21:44', 'updated_at' => '2025-05-07 19:30:16', 'deleted_at' => null, 'is_data_complete' => 0],
            ['id' => 20, 'name' => 'Daftar Laporan', 'icon' => 'mdi-file', 'parent_id' => null, 'url' => 'user.daftar_laporanmagang', 'order' => 9, 'is_active' => 1, 'match_segment' => null, 'created_at' => '2025-04-23 01:22:29', 'updated_at' => '2025-05-15 04:32:03', 'deleted_at' => null, 'is_data_complete' => 0],
        ]);
    }
}
