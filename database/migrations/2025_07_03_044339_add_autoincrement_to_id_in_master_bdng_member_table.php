<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\DB;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        // Perintah ini secara eksplisit mengubah kolom 'id' untuk menambahkan AUTO_INCREMENT
        // Pastikan tabelnya sudah ada sebelum migrasi ini dijalankan
        DB::statement('ALTER TABLE `master_bdng_member` MODIFY COLUMN `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT');
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        // Perintah ini mengembalikan kolom ke kondisi semula (tanpa AUTO_INCREMENT) jika Anda melakukan rollback
        DB::statement('ALTER TABLE `master_bdng_member` MODIFY COLUMN `id` BIGINT UNSIGNED NOT NULL');
    }
};
