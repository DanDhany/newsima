<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\DB;
use Exception;

class TestOldDbConnection extends Command
{
    protected $signature = 'db:test-old';
    protected $description = 'Test the connection to the old database';

    public function handle()
    {
        $this->info("Mencoba menghubungkan ke database lama (mysql_old)...");

        try {
            // Mengambil koneksi 'mysql_old' dari config/database.php
            DB::connection('mysql_old')->getPdo();
            
            $dbName = DB::connection('mysql_old')->getDatabaseName();
            
            $this->info("✅ Sukses! Terhubung ke database '{$dbName}'.");
            return 0;

        } catch (Exception $e) {
            $this->error("❌ Gagal terhubung ke database lama.");
            $this->error("Pesan Error: " . $e->getMessage());
            $this->warn("\nPastikan hal berikut:");
            $this->warn("1. Kontainer 'mysql_old' sedang berjalan (`docker-compose ps`).");
            $this->warn("2. Variabel DB_OLD_* di file .env sudah benar (host harus 'mysql_old').");
            $this->warn("3. Konfigurasi koneksi 'mysql_old' ada di config/database.php.");
            return 1;
        }
    }
}