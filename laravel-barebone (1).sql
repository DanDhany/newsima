-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 02, 2025 at 12:47 PM
-- Server version: 8.4.3
-- PHP Version: 8.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel-barebone`
--

-- --------------------------------------------------------

--
-- Table structure for table `balasan_mgng`
--

CREATE TABLE `balasan_mgng` (
  `id` bigint UNSIGNED NOT NULL,
  `master_mgng_id` bigint UNSIGNED NOT NULL,
  `permintaan_mgng_id` bigint UNSIGNED DEFAULT NULL,
  `nomor_surat_balasan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_surat_balasan` date DEFAULT NULL,
  `sifat_surat_balasan` enum('biasa','penting','segera') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'biasa',
  `metode_magang` enum('offline','online') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'offline',
  `lampiran_surat_balasan` enum('tidakada','selembar') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'tidakada',
  `scan_surat_balasan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_awal_magang` date DEFAULT NULL,
  `tanggal_akhir_magang` date DEFAULT NULL,
  `status_surat_balasan` enum('belum','terkirim') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'belum',
  `status_baca_surat_balasan` enum('belum','dibaca','belumbacaupdate','dibacaupdate') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'belum',
  `id_bdng_member` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `balasan_mgng`
--

INSERT INTO `balasan_mgng` (`id`, `master_mgng_id`, `permintaan_mgng_id`, `nomor_surat_balasan`, `tanggal_surat_balasan`, `sifat_surat_balasan`, `metode_magang`, `lampiran_surat_balasan`, `scan_surat_balasan`, `tanggal_awal_magang`, `tanggal_akhir_magang`, `status_surat_balasan`, `status_baca_surat_balasan`, `id_bdng_member`, `created_at`, `updated_at`) VALUES
(67, 2, NULL, '4445', '2025-05-09', 'biasa', 'offline', 'selembar', 'q1xom8umGQarJfKaNdUFPLTlsoj8rm7J6ATzIU3y.pdf', '2025-04-30', '2025-05-16', 'terkirim', 'belum', NULL, '2025-05-09 00:14:15', '2025-05-15 21:30:43'),
(69, 3, NULL, '2456', '2025-05-15', 'biasa', 'offline', 'selembar', 'pAx6bCtQck0dJMKMW1bpryikZxfr9bmpNEyDQaJX.pdf', '2025-05-16', '2025-05-30', 'terkirim', 'belum', 2, '2025-05-15 06:13:08', '2025-05-15 06:15:11'),
(70, 5, NULL, '123123123554', '2025-05-17', 'segera', 'offline', 'selembar', 'CSM3jLwALNQN1Xsjk4iQ8pRc4EFzsC7ahxPg5o8S.pdf', '2025-05-16', '2025-05-28', 'terkirim', 'belum', 2, '2025-05-16 00:50:18', '2025-05-24 08:38:17'),
(74, 8, 24, '789099', '2025-06-05', 'biasa', 'offline', 'selembar', 'ZmxZ7WgZmOybBM11tw0leCfdQKvSGtPMkoekPsLV.pdf', '2025-06-06', '2025-06-20', 'terkirim', 'belum', 2, '2025-06-04 20:46:08', '2025-06-04 21:40:12'),
(76, 9, 25, '45678', '2025-06-13', 'biasa', 'offline', 'selembar', 'AqA87c6cXz1nEr7j5MiF8NuNrSoHGuB7ylHYo0sg.pdf', '2025-06-20', '2025-06-27', 'terkirim', 'dibaca', 2, '2025-06-13 00:05:48', '2025-06-14 21:58:51'),
(77, 10, 28, '23456789', '2025-06-15', 'biasa', 'offline', 'selembar', 'N1IWXj1I84vNS5bn69LrDnwP4vztC4AjtcAFfujz.pdf', '2025-06-19', '2025-06-26', 'terkirim', 'dibaca', 2, '2025-06-14 22:17:22', '2025-06-14 22:18:36'),
(78, 11, 34, '900', '2025-06-18', 'biasa', 'offline', 'selembar', 'mrmRlvQJnevjYbPiotcDGjl3Ii21p3BFv6hu4i67.pdf', '2025-06-18', '2025-06-18', 'terkirim', 'dibaca', 2, '2025-06-18 01:20:24', '2025-06-18 01:23:12'),
(79, 12, 35, '45', '2025-06-27', 'segera', 'online', 'selembar', 'IyZYHyPSpi6l5rdmtE5AxQQq1ZB8ODqsU1S3MxiG.pdf', '2025-06-27', '2025-06-27', 'terkirim', 'dibaca', 2, '2025-06-27 09:13:09', '2025-06-27 09:28:23'),
(82, 13, 37, '4555', '2025-06-28', 'biasa', 'offline', 'selembar', 'crZWmsyNPb8NlNHdJ23Aa0Kdu542B6eOOkaDef8K.pdf', '2025-06-28', '2025-06-28', 'terkirim', 'dibaca', 2, '2025-06-28 08:20:40', '2025-06-28 08:21:52'),
(83, 14, 38, '423221', '2025-06-28', 'biasa', 'offline', 'selembar', '24ODGyR81bhe9DsSGbqXf1gUtWIHvi8SwzbktjR6.pdf', '2025-06-28', '2025-06-28', 'terkirim', 'dibaca', 2, '2025-06-28 08:39:15', '2025-06-28 08:45:10'),
(84, 15, 39, '3555', '2025-06-29', 'biasa', 'offline', 'selembar', '3iMYMSfhaPKkFIq9BW5TSZTbwxVrRU3eJiHcJ5xk.pdf', '2025-06-29', '2025-06-29', 'terkirim', 'dibaca', 2, '2025-06-28 23:36:24', '2025-06-28 23:39:30'),
(85, 17, 42, '2345687348286', '2024-01-02', 'penting', 'offline', 'selembar', 'mk4J1PSWgiioIaxuFKX1eZXmgLiZZBwxZX2ImmtP.pdf', '2024-01-08', '2024-06-08', 'terkirim', 'dibaca', 2, '2025-06-30 01:40:46', '2025-06-30 01:43:03');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_bdng`
--

CREATE TABLE `master_bdng` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_bidang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_bdng`
--

INSERT INTO `master_bdng` (`id`, `nama_bidang`, `created_at`, `updated_at`) VALUES
(1, 'Sekretariat', '2025-04-19 18:08:13', '2025-04-19 18:08:13'),
(2, 'Bidang Informasi Publik', '2025-04-19 18:08:39', '2025-04-19 18:08:39'),
(3, 'Bidang Komunikasi Publik', '2025-04-19 18:09:10', '2025-04-19 18:09:10'),
(4, 'Bidang Aplikasi Informatika', '2025-04-19 18:09:33', '2025-04-19 18:09:33'),
(5, 'Bidang Infrastruktur TIK', '2025-04-19 18:09:59', '2025-04-19 18:09:59'),
(6, 'Bidang Data dan Statistik', '2025-04-19 18:10:21', '2025-04-19 18:10:21'),
(114, 'Dinas Komunikasi dan Informatika', '2025-04-19 18:10:57', '2025-04-19 18:10:57');

-- --------------------------------------------------------

--
-- Table structure for table `master_bdng_member`
--

CREATE TABLE `master_bdng_member` (
  `id` bigint UNSIGNED NOT NULL,
  `id_bdng` bigint UNSIGNED NOT NULL,
  `nama_pejabat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nip_pejabat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pangkat_pejabat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `golongan_pejabat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ruang_pejabat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jabatan_pejabat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_bidang_pejabat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_bdng_member`
--

INSERT INTO `master_bdng_member` (`id`, `id_bdng`, `nama_pejabat`, `nip_pejabat`, `pangkat_pejabat`, `golongan_pejabat`, `ruang_pejabat`, `jabatan_pejabat`, `sub_bidang_pejabat`, `created_at`, `updated_at`) VALUES
(1, 114, 'Dr. HUDIYONOo, M.Si.', '19640323 198503 1 010', 'Pembina Utama Muda', 'IV', 'A', 'Plt. Kepala', '-', '2025-03-21 01:32:28', '2025-06-30 01:49:09'),
(2, 1, 'EDI SUPAJI, S.H., M.M.', '19670530 198903 1 006', 'Pembina Tingkat I', 'IV', 'b', 'Sekretaris', '-', '2025-03-21 01:32:28', '2025-06-10 22:44:10'),
(3, 1, 'RATNA DIAH AYUNINGTYAS, S.E.', '19800224 201001 2 009', 'Penata Tingkat I', 'III', 'd', 'Kepala Sub Bagian Umum dan Kepegawaian', '-', '2025-03-21 01:32:28', '2025-03-21 01:32:28'),
(4, 1, 'TUGIRIN, S.E.', '19820213 201101 1 010', 'Penata', 'III', 'c', 'Analis Kebijakan Ahli Muda', '-', '2025-03-21 01:32:28', '2025-03-21 01:32:28'),
(5, 1, 'VENUS VEBRYANA, S.STP.', '19920201 201206 2 002', 'Penata', 'III', 'c', 'Perencana  Ahli Muda', '-', '2025-03-21 01:32:28', '2025-03-21 01:32:28'),
(6, 2, 'ASSYARI, S.Pd., M.Pd.', '19730506 199802 1 001', 'Pembina', 'IV', 'a', 'Plt. Kepala Bidang', '-', '2025-03-21 01:32:28', '2025-03-21 01:32:28'),
(7, 2, 'Drs. AGUNG SRIONO, S.H., M.M.', '19680722 199003 1 006', 'Pembina', 'IV', 'a', 'Pranata Humas Ahli Muda', '-', '2025-03-21 01:32:28', '2025-03-21 01:32:28'),
(8, 2, 'PUTUT DARMAWAN, S.E.', '19740411 199803 1 004', 'Penata Tingkat I', 'III', 'd', 'Pranata Humas Ahli Muda', '-', '2025-03-21 01:32:28', '2025-03-21 01:32:28'),
(9, 2, 'LENNY MARTARINA, S.E., M.M., Ak., C.A.', '19750304 200112 2 006', 'Pembina', 'IV', 'a', 'Pranata Humas Ahli Muda', '-', '2025-03-21 01:32:28', '2025-03-21 01:32:28'),
(10, 3, 'ASSYARI, S.Pd., M.Pd.', '19730506 199802 1 001', 'Pembina', 'IV', 'a', 'Kepala Bidang', '-', '2025-03-21 01:32:28', '2025-03-21 01:32:28'),
(11, 3, 'EKO SETIAWAN, S.I.Kom., M.Med.Kom.', '19871029 201101 1 007', 'Penata', 'III', 'c', 'Pranata Humas Ahli Muda', '-', '2025-03-21 01:32:28', '2025-03-21 01:32:28'),
(12, 3, 'SOFIA KURNIAWATI, S.E., M.Si.', '19661117 199011 2 001', 'Pembina', 'IV', 'a', 'Pranata Humas Ahli Muda', '-', '2025-03-21 01:32:28', '2025-03-21 01:32:28'),
(13, 3, 'Dra. SITI PURWATININGSIH, M.M.', '19670620 199403 2 007', 'Pembina', 'IV', 'a', 'Pranata Humas Ahli Muda', '-', '2025-03-21 01:32:28', '2025-03-21 01:32:28'),
(14, 4, 'ACHMAD FADLIL CHUSNI, S.Kom., M.MT.', '19721031 200604 1 005', 'Pembina', 'IV', 'a', 'Kepala Bidang', '-', '2025-03-21 01:32:28', '2025-03-21 01:32:28'),
(15, 4, 'AULIA BAHAR PERNAMA, S.Kom., M.ISM.', '19851024 200912 1 012', 'Penata Tingkat I', 'III', 'd', 'Kepala Seksi Persandian dan Keamanan', '-', '2025-03-21 01:32:28', '2025-03-21 01:32:28'),
(16, 4, 'DENDY EKA PUSPAWADI, S.Si.', '19711009 199901 1 001', 'Penata Tingkat I', 'III', 'd', 'Pranata Komputer Ahli Muda', '-', '2025-03-21 01:32:28', '2025-03-21 01:32:28'),
(17, 4, 'I WAYAN RUDY ARTHA, S.Kom.', '19770517 200901 1 005', 'Penata Tingkat I', 'III', 'd', 'Pranata Komputer Ahli Muda', '-', '2025-03-21 01:32:28', '2025-03-21 01:32:28'),
(18, 5, 'Dra. PATRIANA DYAH SETYOWATI, M.Si.', '19650305 198903 2 011', 'Pembina Tingkat I', 'IV', 'b', 'Kepala Bidang', '-', '2025-03-21 01:32:28', '2025-03-21 01:32:28'),
(19, 5, 'GUGI ALIFRIANTO WICAKSONO, S.T., M.M.', '19821016 201101 1 005', 'Penata', 'III', 'c', 'Pranata Komputer Ahli Muda', '-', '2025-03-21 01:32:28', '2025-03-21 01:32:28'),
(20, 5, 'NOFIAN ADI PRASETYAWAN, S.Kom., M.T.', '19851127 201001 1 008', 'Penata', 'III', 'c', 'Pranata Komputer Ahli Muda', '-', '2025-03-21 01:32:28', '2025-03-21 01:32:28'),
(21, 6, 'Dra.Ec. NIRMALA DEWI, M.M.', '19650909 199403 2 006', 'Pembina Tingkat I', 'IV', 'b', 'Kepala Bidang', '-', '2025-03-21 01:32:28', '2025-03-21 01:32:28'),
(22, 6, 'AGUS BUDI SAMPURNO, S.E.', '19690214 198803 1 002', 'Penata Tingkat I', 'III', 'd', 'Statistisi Ahli Muda', '-', '2025-03-21 01:32:28', '2025-03-21 01:32:28'),
(23, 6, 'Drs SATRIYO WAHYUDI, M.Si.', '19691211 198911 1 002', 'Pembina', 'IV', 'a', 'Statistisi Ahli Muda', '-', '2025-03-21 01:32:28', '2025-03-21 01:32:28'),
(24, 6, 'IDHAM ASHARI KASIM PUTRA, S.T., M.M.', '19720126 199803 1 007', 'Pembina', 'I', 'a', 'Statistisi Ahli Muda', '-', '2025-03-21 01:32:28', '2025-03-21 01:32:28');

-- --------------------------------------------------------

--
-- Table structure for table `master_mgng`
--

CREATE TABLE `master_mgng` (
  `id` bigint UNSIGNED NOT NULL,
  `master_sklh_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_mgng`
--

INSERT INTO `master_mgng` (`id`, `master_sklh_id`, `created_at`, `updated_at`) VALUES
(1, 7, '2025-04-25 01:27:46', '2025-04-25 01:27:46'),
(2, 8, '2025-04-27 20:10:54', '2025-04-27 20:10:54'),
(3, 10, '2025-05-08 19:40:33', '2025-05-08 19:40:33'),
(4, 9, '2025-05-14 21:53:12', '2025-05-14 21:53:12'),
(5, 11, '2025-05-16 00:44:15', '2025-05-16 00:44:15'),
(6, 12, '2025-05-17 21:04:37', '2025-05-17 21:04:37'),
(8, 14, '2025-06-04 19:25:06', '2025-06-04 19:25:06'),
(9, 16, '2025-06-12 01:32:48', '2025-06-12 01:32:48'),
(10, 15, '2025-06-14 22:09:17', '2025-06-14 22:09:17'),
(11, 17, '2025-06-17 21:28:18', '2025-06-17 21:28:18'),
(12, 20, '2025-06-27 08:54:54', '2025-06-27 08:54:54'),
(13, 21, '2025-06-28 07:02:48', '2025-06-28 07:02:48'),
(14, 22, '2025-06-28 08:36:07', '2025-06-28 08:36:07'),
(15, 23, '2025-06-28 22:40:44', '2025-06-28 22:40:44'),
(16, 24, '2025-06-29 20:26:26', '2025-06-29 20:26:26'),
(17, 25, '2025-06-30 01:38:07', '2025-06-30 01:38:07');

-- --------------------------------------------------------

--
-- Table structure for table `master_psrt`
--

CREATE TABLE `master_psrt` (
  `id` bigint UNSIGNED NOT NULL,
  `permintaan_mgng_id` bigint UNSIGNED NOT NULL,
  `nama_peserta` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` enum('pria','wanita') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pria',
  `nik_peserta` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nis_peserta` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `program_studi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_handphone_peserta` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_peserta` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nilai_kehadiran` int NOT NULL DEFAULT '0',
  `nilai_kerapian` int NOT NULL DEFAULT '0',
  `nilai_sikap` int NOT NULL DEFAULT '0',
  `nilai_tanggungjawab` int NOT NULL DEFAULT '0',
  `nilai_kepatuhan` int NOT NULL DEFAULT '0',
  `nilai_komunikasi` int NOT NULL DEFAULT '0',
  `nilai_kerjasama` int NOT NULL DEFAULT '0',
  `nilai_inisiatif` int NOT NULL DEFAULT '0',
  `nilai_teknis1` int NOT NULL DEFAULT '0',
  `nilai_teknis2` int NOT NULL DEFAULT '0',
  `nilai_teknis3` int NOT NULL DEFAULT '0',
  `nilai_teknis4` int NOT NULL DEFAULT '0',
  `nilai_akhir` int NOT NULL DEFAULT '0',
  `status_penilaian` enum('belum','sudah') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'belum',
  `scan_penilaian` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_scan_penilaian` enum('belum','sudah') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'belum',
  `catatan` text COLLATE utf8mb4_unicode_ci,
  `scan_sertifikat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_sertifikat` enum('belum','terkirim') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'belum',
  `id_bdng_member` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_psrt`
--

INSERT INTO `master_psrt` (`id`, `permintaan_mgng_id`, `nama_peserta`, `jenis_kelamin`, `nik_peserta`, `nis_peserta`, `program_studi`, `no_handphone_peserta`, `email_peserta`, `nilai_kehadiran`, `nilai_kerapian`, `nilai_sikap`, `nilai_tanggungjawab`, `nilai_kepatuhan`, `nilai_komunikasi`, `nilai_kerjasama`, `nilai_inisiatif`, `nilai_teknis1`, `nilai_teknis2`, `nilai_teknis3`, `nilai_teknis4`, `nilai_akhir`, `status_penilaian`, `scan_penilaian`, `status_scan_penilaian`, `catatan`, `scan_sertifikat`, `status_sertifikat`, `id_bdng_member`, `created_at`, `updated_at`) VALUES
(10, 3, 'Rayhan Nashh', 'pria', '12367383', '22082010238', 'Sistem Informasi', '086737833', 'rayhan@gmail.com', 88, 90, 90, 90, 88, 90, 90, 90, 90, 0, 0, 0, 90, 'sudah', 'uploads/VWbGrx1l3MNpCmoeFamBAjgye2gDemj4yBCZbQOF.pdf', 'sudah', 'OKE', 'uploads/dsPeUouEBIYUQRYs7TBFcXgf0f4ReY3iUFfPkBCI.jpg', 'terkirim', 17, '2025-05-01 23:24:55', '2025-06-03 00:50:27'),
(13, 3, 'Kim', 'wanita', '136378383', '22082010210', 'Sistem Informasi', '083644892', 'kim@gmail.com', 87, 88, 89, 90, 88, 90, 88, 80, 0, 0, 0, 0, 87, 'sudah', 'uploads/GTHxHO2aee8vXUp33pHzXSVgZtK8S5ufL3BlX5CB.pdf', 'sudah', NULL, 'uploads/hfrEjCAXd7HkFwpnzftq4MW69tbJKkk4PEUnitNr.png', 'terkirim', 16, '2025-05-03 16:48:26', '2025-05-21 19:24:19'),
(14, 3, 'Luthfi', 'wanita', '3453673838', '22082010215', 'Sistem Informasi', '0839293', 'luthfi@gmail.com', 87, 89, 86, 88, 99, 80, 88, 90, 0, 0, 0, 0, 89, 'sudah', 'uploads/ZP3nFoNdJ7yoLNo0CyqojA7O7GfAkoGEJZlBBQrI.pdf', 'sudah', 'Terima Kasih', 'uploads/Yhksidj8tFSaMJx5mYsaAGOyZTZHAJTDC4v9PMXh.jpg', 'terkirim', 14, '2025-05-04 22:55:55', '2025-06-03 00:50:05'),
(15, 7, 'Ahza P', 'pria', '087654321', '123490', 'Teknik Informatika', '09876543221', 'ahza@gmail.com', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'belum', NULL, 'belum', NULL, NULL, 'belum', NULL, '2025-05-08 19:42:00', '2025-05-08 19:43:17'),
(17, 11, 'Rayhan', 'pria', '123132343', '23082010238', 'Sistem Informasi', '2323123', 'ryhan@gmail.com', 88, 90, 85, 87, 91, 89, 88, 86, 0, 0, 0, 0, 88, 'sudah', 'uploads/3b8mAykOpqZJOuEzQZtCuJdbII7hMNyReMQPSd6B.pdf', 'sudah', 'MANTAP', 'uploads/0mGptG2MiokxqGZsektWqf9EqydSOZoXpGtxctDO.pdf', 'terkirim', 16, '2025-05-16 00:46:59', '2025-05-29 07:28:15'),
(18, 11, 'Luthfi', 'wanita', '213123213123123', '23082010215', 'Sistem Informasi', '213123123123', 'luthfiazmi@gmail.com', 87, 85, 84, 90, 83, 87, 84, 80, 0, 0, 0, 0, 85, 'sudah', 'uploads/2Gk46kYFerd0cOnSfDyu57Kuqh1gpnj6mj3OEz1u.pdf', 'sudah', NULL, 'uploads/i9V77EbGPRkksABUMhQDc6oV4cubfGpnjfXDCLpL.jpg', 'terkirim', 14, '2025-05-16 00:48:34', '2025-06-03 00:27:07'),
(25, 24, 'Alfan D W K', 'pria', '3780403829', '22082010228', 'Sistem Informasi', '0838922992', 'alfan@mail.com', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'belum', NULL, 'belum', NULL, NULL, 'belum', NULL, '2025-06-04 20:44:55', '2025-06-04 20:44:55'),
(27, 25, 'uouo', 'pria', '98765678', '456789', 'Mesin', '934404', 'uoao@mail.com', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'belum', NULL, 'belum', NULL, NULL, 'belum', NULL, '2025-06-12 23:30:24', '2025-06-12 23:30:24'),
(28, 28, 'huha', 'pria', '089003', '3738930', 'Teknik', '08904904', 'huha@mail.com', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'belum', NULL, 'belum', NULL, NULL, 'belum', NULL, '2025-06-14 22:16:17', '2025-06-14 22:16:17'),
(30, 34, 'Uzuki', 'pria', '456789098765', '29863894', 'Kimia', '07558997', 'uzuki@gmail.com', 91, 88, 87, 89, 92, 91, 84, 83, 88, 84, 82, 89, 84, 'sudah', 'uploads/LmmAEQbihoHVUNmQQVUbHZYmTL0lppRtULDyTtTd.pdf', 'sudah', 'Mantap', 'uploads/T8U4vOSnyTNoEFCRlkqaKLCoqEFXIUwvrp0j3MSO.pdf', 'terkirim', 21, '2025-06-18 01:18:00', '2025-06-21 22:05:30'),
(32, 35, 'yuzu', 'pria', '345678909854', '22082010236', 'Sistem Informasi', '07893920202', 'yuzu@mail.com', 85, 84, 86, 87, 91, 85, 85, 87, 89, 92, 90, 90, 85, 'sudah', 'uploads/dfahAm4b08CtsYwuT0WSmdOQgeg2A512ICBheCnk.pdf', 'sudah', 'SIP', 'uploads/LOWemwqAF11KjBGYMWpVQvgIiOobsBkQJB2pocSS.jpg', 'terkirim', 17, '2025-06-27 08:57:51', '2025-06-27 09:51:50'),
(33, 36, 'Kimberlieee', 'wanita', '32527290202', '22082010236', 'Sistem Informasi', '08326283933', 'kimberlie@gmail.com', 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 87, 'sudah', 'uploads/EvWpdaGZqXyM6q5U4IOqna93YKFvvfrKg4IJ2QND.pdf', 'sudah', 'KEREN', 'uploads/Abc46sfmAds7aZDPMWVy4Csuzyld8olVVcXfPQKq.jpg', 'terkirim', 14, '2025-06-28 07:05:05', '2025-06-28 07:25:57'),
(34, 37, 'Luthfi Azmi', 'wanita', '446273993', '22082010215', 'Sistem Informasi', '08673893933', 'luthfi@gmail.com', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'belum', NULL, 'belum', NULL, NULL, 'belum', NULL, '2025-06-28 07:44:00', '2025-06-28 07:44:00'),
(35, 38, 'Usamah', 'pria', '314252782902', '22082010020', 'Sistem Informasi', '0825178191', 'usamah@gmail.com', 88, 90, 87, 84, 85, 83, 92, 91, 83, 87, 90, 90, 85, 'sudah', 'uploads/dme8hWdK4pIsUJwCxYijqR1bf4wYRr2Xx9g1y0we.pdf', 'sudah', 'SIP', 'uploads/wFZjptWZkjmqBJHEnUFkK0xjLEOn0zSWXTV65UAY.jpg', 'terkirim', 14, '2025-06-28 08:36:42', '2025-06-28 08:52:12'),
(36, 39, 'Usamah Zakiy', 'pria', '3515156880908', '22082010220', 'Sistem Informasi', '08256890902', 'usamah@mail.com', 80, 88, 90, 91, 83, 84, 86, 83, 89, 91, 92, 91, 85, 'sudah', 'uploads/13N6MQNbPAuUPMuXNscrmpyohmkp0NuqYJKzW9CU.pdf', 'sudah', 'KEREN', 'uploads/kodNp9zoA38qssNiX4zKuFfDxlhbSYNIdka1954n.jpg', 'terkirim', 17, '2025-06-28 22:50:35', '2025-06-29 00:39:46'),
(38, 40, 'khansa', 'wanita', '35151346800303', '22082010245', 'Sistem Informasi', '08567272822', 'khansa@gmail.com', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'belum', NULL, 'belum', NULL, NULL, 'belum', NULL, '2025-06-29 20:04:18', '2025-06-29 20:04:18'),
(39, 41, 'nabill', 'pria', '3515235289902', '22082010267', 'Informatika', '08547389333', 'nabil@gmail.com', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'belum', NULL, 'belum', NULL, NULL, 'belum', NULL, '2025-06-29 20:27:11', '2025-06-29 20:27:11'),
(40, 42, 'Rayhan N.', 'pria', '34567832331', '220820101', 'Sistem Informasi', '081234567890', 'rayhan@mail.com', 90, 80, 70, 87, 94, 88, 91, 77, 97, 96, 88, 90, 85, 'sudah', 'uploads/BmqpB7xdvBFtSX97fD72EOyfL5DhYKAc8xtU0sE8.pdf', 'sudah', 'keren!', 'uploads/b9S9A09V7iRoirOymhUOYIrh6oUzZv6TbqiIdYZL.pdf', 'terkirim', 17, '2025-06-30 01:38:50', '2025-06-30 01:48:14'),
(41, 42, 'Usamah Z.', 'pria', '345678312432', '220820102', 'Sistem Informasi', '081234563834', 'usamah@mail.com', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'belum', NULL, 'belum', NULL, NULL, 'belum', NULL, '2025-06-30 01:39:34', '2025-06-30 01:39:34');

-- --------------------------------------------------------

--
-- Table structure for table `master_sklh`
--

CREATE TABLE `master_sklh` (
  `id` bigint UNSIGNED NOT NULL,
  `id_user` bigint UNSIGNED NOT NULL,
  `jenis_sklh` enum('sma','pgt','lpd','upt') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sma',
  `alamat_sklh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kabko_sklh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telp_sklh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `akreditasi_sklh` enum('c','b','a') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'c',
  `no_akreditasi_sklh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scan_surat_akreditasi_sklh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_narahubung` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin_narahubung` enum('pria','wanita') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pria',
  `jabatan_narahubung` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `handphone_narahubung` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_sklh`
--

INSERT INTO `master_sklh` (`id`, `id_user`, `jenis_sklh`, `alamat_sklh`, `kabko_sklh`, `telp_sklh`, `akreditasi_sklh`, `no_akreditasi_sklh`, `scan_surat_akreditasi_sklh`, `nama_narahubung`, `jenis_kelamin_narahubung`, `jabatan_narahubung`, `handphone_narahubung`, `created_at`, `updated_at`) VALUES
(4, 8, 'pgt', 'Mulyorejo, Kec. Mulyorejo, Surabaya, Jawa Timur 60115', 'Kota Surabaya', '789', 'b', '5899', 'uploads/nsEf032zsLd7e19UUxHbRBDHpwfNtP0W3ziSenQ2.pdf', 'luthfi', 'pria', 'koorprodi', '8644677', '2025-04-23 23:44:54', '2025-04-24 21:41:01'),
(5, 8, 'pgt', 'Mulyorejo, Kec. Mulyorejo, Surabaya, Jawa Timur 60115', 'Kota Surabaya', '789', 'b', '5899', 'uploads/XnK4ngjpRP6OGLmwFuVEu4mvG26jo3g9a3qKGA98.pdf', 'luthfi', 'pria', 'koorprodi', '8644677', '2025-04-23 23:51:06', '2025-04-24 21:41:01'),
(6, 8, 'pgt', 'Mulyorejo, Kec. Mulyorejo, Surabaya, Jawa Timur 60115', 'Kota Surabaya', '789', 'b', '5899', 'uploads/OuWdk8tqLgKne9MB7PtZ33ko07bTCY8HkkWrvpNU.pdf', 'luthfi', 'pria', 'koorprodi', '8644677', '2025-04-23 23:55:03', '2025-04-24 21:41:01'),
(7, 11, 'pgt', 'Jl. Lidah Wetan, Surabaya (60213)', 'Kota Surabaya', '9999', 'a', '1000', 'uploads/mcpOFGeKkOrkOchXjF0a81Z317o2YjE4Wgt3xF8b.pdf', 'KIMI', 'pria', 'Koordinator Program Studi', '082138594', '2025-04-24 22:42:43', '2025-04-26 10:40:00'),
(8, 10, 'pgt', 'Jl. Raya Telang, Perumahan Telang Inda, Telang, Kec. Kamal, Kabupaten Bangkalan, Jawa Timur 69162', 'Kabupaten Bangkalan', '3011146', 'a', '955', 'uploads/nWaYl6zCf5y3Ny252WZIveLVEhDuISaCzydYHycb.pdf', 'Bintang', 'pria', 'Koorprodi', '098678134', '2025-04-27 04:13:00', '2025-05-21 21:24:09'),
(9, 12, 'pgt', 'Jl. Raya Kalirungkut, Kali Rungkut, Kec. Rungkut, Surabaya, Jawa Timur 60293', 'Kota Surabaya', '293633', 'a', '666', 'uploads/HL0PBEj9iQAIfyeONM8K8vAsOLxK8VHcaxhptPOA.pdf', 'Usama', 'pria', 'Koordinator Magang', '0821356728', '2025-05-03 10:36:08', '2025-05-03 10:36:08'),
(10, 13, 'pgt', 'Surabaya', 'Kota Surabaya', '08123456789', 'a', '12345678', 'uploads/K9MFZD2nrKt9EejyEKKiDFSNvZlTLy4ccS8a1z7O.pdf', 'Rayhan nnn', 'pria', 'Koordinator Prodi', '08123456789', '2025-05-08 19:39:27', '2025-05-21 22:45:44'),
(11, 14, 'pgt', 'Jl. Teknik Kimia, Keputih, Kec. Sukolilo, Surabaya, Jawa Timur 60111', 'Kota Surabaya', '(031) 5994251', 'a', '12345', 'uploads/iHLeWAS4MfvrL1lUu7iCIF1m8SLJSNx0ZelWBhMU.pdf', 'Nabil Ishfaqqq', 'pria', 'Koor Prodi', '12345678', '2025-05-16 00:42:29', '2025-05-21 22:45:31'),
(12, 15, 'pgt', 'Jl. Cakrawala No.5, Sumbersari, Kec. Lowokwaru, Kota Malang, Jawa Timur 65145', 'Kota Malang', '(0341) 551312', 'a', 'UM77', 'uploads/M5FFP7YhOEt4UxBzTAvEvsS6PLyI7krSqJixQ19L.jpg', 'Usama', 'pria', 'Koordinator Program Studi', '082144565758', '2025-05-17 20:46:25', '2025-05-17 20:46:25'),
(14, 19, 'pgt', 'Jl. Raya Sutorejo No.59, Dukuh Sutorejo, Kec. Mulyorejo, Surabaya, Jawa Timur 60113', 'Kota Surabaya', '0313811966', 'a', '0506', 'uploads/D8NCH87tIGpwtkwvc4Jgq3NeXua0fi4u4VBJjW0r.pdf', 'Khansa', 'wanita', 'Koordinator Magang', '083123234555', '2025-06-04 19:14:05', '2025-06-04 19:14:05'),
(15, 20, 'pgt', 'Jl. Ahmad Yani No.114, Ketintang, Kec. Gayungan, Surabaya, Jawa Timur 60231', 'Kota Surabaya', '(031) 8285602', 'a', '9877', 'uploads/1riTTo39C7oFn9gVxvnNkJ8cf6ZlMoZhUZfJLldQ.pdf', 'Tya', 'wanita', 'Koordinator Magang', '086578893282', '2025-06-12 00:25:46', '2025-06-12 00:25:46'),
(16, 21, 'pgt', 'Ciputtra', 'Kota Surabaya', '0987689', 'a', '78', 'uploads/r2I2bg6HLyHlJZdGFcQrNhurOrLRkvqZzUQvCd3R.pdf', 'Bayu', 'pria', 'Magang', '9763939003', '2025-06-12 00:43:03', '2025-06-12 00:43:03'),
(17, 23, 'sma', 'Jl. Dukuh Menanggal XII, Dukuh Menanggal, Kec. Gayungan, Surabaya, Jawa Timur 60234', 'Kota Surabaya', '(031) 8281181', 'a', '7777', 'uploads/YAO7mECe6fz3aKefQp2I8SczZPVAXr0aLqMFT8ZC.pdf', 'KIMI', 'wanita', 'Koordinator Magang', '08252783933', '2025-06-17 21:26:16', '2025-06-17 21:26:16'),
(19, 24, 'pgt', 'Jl. Dukuh Kupang XXV No.54, Dukuh Kupang, Kec. Dukuhpakis, Surabaya, Jawa Timur 60225', 'Kota Surabaya', '(031) 5677577', 'a', '3457588', 'uploads/fXlsP5Hi8Gex0xrYsTaHHouhmi61jc9Y4bImYznj.pdf', 'Tia', 'wanita', 'Koordinator Magang', '087547892902', '2025-06-23 00:46:53', '2025-06-23 00:46:53'),
(20, 25, 'pgt', 'Jl. Siwalankerto No.121-131, Siwalankerto, Kec. Wonocolo, Surabaya, Jawa Timur 60236', 'Kota Surabaya', '08567899', 'a', '0219/SK/LAM Teknik/AS/IV/2025', 'uploads/3KBnUI1vC9hqBYoNBoZjpk6SjqwzXvRFDMfu6qrb.jpg', 'Jonathan', 'pria', 'Koordinator Magang', '085674687892', '2025-06-27 08:40:13', '2025-06-27 08:53:36'),
(21, 26, 'pgt', 'Jl. Mojopahit No.666 B, Sidowayah, Celep, Kec. Sidoarjo, Kabupaten Sidoarjo, Jawa Timur 61215', 'Kabupaten Sidoarjo', '(031) 8945444', 'a', '9888', 'uploads/3ACtHlc35UvmP3JZCH8s2NZOxOINweISrvRbBXoO.pdf', 'Usamah', 'pria', 'Koordinator Magang', '08678393003', '2025-06-28 06:28:31', '2025-06-28 06:53:28'),
(22, 27, 'pgt', 'Jl. Raya Kedung Baruk No.98, Kedung Baruk, Kec. Rungkut, Surabaya, Jawa Timur 60298', 'Kota Surabaya', '(031) 8721731', 'a', '76', 'uploads/wlFTLJj1IKQL4RG6dcH3vThch9Rdw26fXdPGfXTN.jpg', 'Rehan', 'pria', 'Koordinator Magang', '074683929', '2025-06-28 08:33:06', '2025-06-28 08:33:06'),
(23, 28, 'pgt', 'Jl. Kalimantan Tegalboto No.37, Krajan Timur, Sumbersari, Kec. Sumbersari, Kabupaten Jember, Jawa Timur 68121', 'Kabupaten Jember', '(0331) 330224', 'a', '6778', 'uploads/LtZqdR3CkliuO4Pa4Qo3vHfu3zOURq9Cp8lQL0Nd.jpg', 'Rayhan', 'pria', 'Koordinator Magang', '08214567834', '2025-06-28 22:08:10', '2025-06-28 22:09:31'),
(24, 29, 'pgt', 'Jl. Ketintang No.156, Ketintang, Kec. Gayungan, Surabaya, Jawa Timur 60231', 'Kota Surabaya', '0875498393', 'a', '99', 'uploads/jna6xRYDoVYdTiGfudR7ItgxeKQ0gZeO3TXEFpHL.jpg', 'khasah', 'wanita', 'koordinator magang', '087634628992', '2025-06-29 20:25:20', '2025-06-29 20:25:20'),
(25, 30, 'sma', 'Jalan Ahmad Yani', 'Kota Surabaya', '0812345678', 'a', '1234567890', 'uploads/gtSjaEchrIQQK0EazMt4h0IXCNbk68H6yOd5xq3C.jpg', 'Luthfi', 'wanita', 'Koordinator Program Studi', '081234567890', '2025-06-30 01:36:25', '2025-06-30 01:36:25');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` text COLLATE utf8mb4_unicode_ci,
  `parent_id` bigint UNSIGNED DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `match_segment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `is_data_complete` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `icon`, `parent_id`, `url`, `order`, `is_active`, `match_segment`, `created_at`, `updated_at`, `deleted_at`, `is_data_complete`) VALUES
(1, 'Beranda', 'mdi-home', NULL, 'home', 1, 1, 'home', '2025-04-16 10:10:24', '2025-04-16 10:10:24', NULL, 0),
(2, 'Master', 'mdi-text-box-multiple', NULL, NULL, 2, 1, 'master', '2025-04-16 10:10:24', '2025-04-16 10:10:24', NULL, 0),
(3, 'Menu', NULL, 2, 'menu.index', 1, 1, 'menu', '2025-04-16 10:10:24', '2025-04-16 10:10:24', NULL, 0),
(4, 'Role & Permission', NULL, 2, NULL, 2, 1, 'role-&-permission', '2025-04-16 10:10:24', '2025-04-16 10:10:24', NULL, 0),
(5, 'test', 'mdi-minus', NULL, 'user_extras', 3, 1, NULL, '2025-04-16 10:15:03', '2025-04-16 10:15:03', NULL, 0),
(6, 'Lembaga Pendidikan', 'mdi-bank', NULL, 'master_sklh', 4, 1, NULL, '2025-04-19 01:47:52', '2025-04-19 15:19:00', NULL, 0),
(7, 'Permohonan Magang', 'mdi-inbox', NULL, 'proposal_masuk', 5, 1, NULL, '2025-04-19 01:49:29', '2025-04-26 08:56:50', NULL, 0),
(10, 'Balasan Magang', 'mdi-send', NULL, 'proposal_keluar', 6, 1, NULL, '2025-04-19 01:51:58', '2025-05-06 08:40:38', NULL, 0),
(11, 'Nota Dinas Magang', 'mdi-note-text-outline', NULL, 'nota_dinas.daftar', 7, 1, NULL, '2025-04-19 02:00:56', '2025-05-12 01:54:45', NULL, 0),
(12, 'Laporan & Sertifikat', 'mdi-decagram', NULL, 'proposal_final.daftar', 8, 1, NULL, '2025-04-19 02:02:03', '2025-05-15 20:02:51', NULL, 0),
(13, 'Kelola Penilai', 'mdi-account-group', NULL, 'master_petugas', 9, 1, NULL, '2025-04-19 02:02:42', '2025-04-19 09:58:38', NULL, 0),
(14, 'Lengkapi Data', 'mdi-plus', NULL, 'lengkapi_data', 3, 1, NULL, '2025-04-20 06:45:44', '2025-04-21 02:08:15', NULL, 0),
(15, 'Detail Data', 'mdi-eye', NULL, 'detail_data', 4, 1, NULL, '2025-04-20 20:54:28', '2025-04-21 19:36:56', NULL, 0),
(16, 'Edit Data', 'mdi-pencil', NULL, 'edit_data', 5, 1, NULL, '2025-04-21 00:49:43', '2025-04-21 20:04:12', NULL, 0),
(17, 'Buat Permohonan', 'mdi-plus', NULL, 'buat_permohonan', 6, 1, NULL, '2025-04-21 21:25:58', '2025-04-21 21:29:02', NULL, 0),
(18, 'Daftar Permohonan', 'mdi-email', NULL, 'user.daftar_permohonan', 7, 1, NULL, '2025-04-23 01:20:40', '2025-04-28 00:40:09', NULL, 0),
(19, 'Daftar Diterima', 'mdi-inbox', NULL, 'user.daftar_permohonanmasuk', 8, 1, NULL, '2025-04-23 01:21:44', '2025-05-07 19:30:16', NULL, 0),
(20, 'Daftar Laporan', 'mdi-file', NULL, 'user.daftar_laporanmagang', 9, 1, NULL, '2025-04-23 01:22:29', '2025-05-15 04:32:03', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `menu_role_permissions`
--

CREATE TABLE `menu_role_permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `menu_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  `permission_id` bigint UNSIGNED NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_role_permissions`
--

INSERT INTO `menu_role_permissions` (`id`, `menu_id`, `role_id`, `permission_id`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 1, 1, '2025-04-16 10:10:25', '2025-04-16 10:10:25', NULL),
(2, 1, 1, 2, 1, '2025-04-16 10:10:25', '2025-04-16 10:10:25', NULL),
(3, 1, 1, 3, 1, '2025-04-16 10:10:25', '2025-04-16 10:10:25', NULL),
(4, 1, 1, 4, 1, '2025-04-16 10:10:25', '2025-04-16 10:10:25', NULL),
(5, 1, 1, 5, 1, '2025-04-16 10:10:25', '2025-04-16 10:10:25', NULL),
(6, 1, 1, 6, 1, '2025-04-16 10:10:25', '2025-04-16 10:10:25', NULL),
(7, 1, 1, 7, 1, '2025-04-16 10:10:25', '2025-04-16 10:10:25', NULL),
(8, 2, 1, 1, 1, '2025-04-16 10:10:25', '2025-04-16 10:10:25', NULL),
(9, 2, 1, 2, 1, '2025-04-16 10:10:25', '2025-04-16 10:10:25', NULL),
(10, 2, 1, 3, 1, '2025-04-16 10:10:25', '2025-04-16 10:10:25', NULL),
(11, 2, 1, 4, 1, '2025-04-16 10:10:25', '2025-04-16 10:10:25', NULL),
(12, 2, 1, 5, 1, '2025-04-16 10:10:25', '2025-04-16 10:10:25', NULL),
(13, 2, 1, 6, 1, '2025-04-16 10:10:25', '2025-04-16 10:10:25', NULL),
(14, 2, 1, 7, 1, '2025-04-16 10:10:25', '2025-04-16 10:10:25', NULL),
(15, 3, 1, 1, 1, '2025-04-16 10:10:25', '2025-04-16 10:10:25', NULL),
(16, 3, 1, 2, 1, '2025-04-16 10:10:25', '2025-04-16 10:10:25', NULL),
(17, 3, 1, 3, 1, '2025-04-16 10:10:25', '2025-04-16 10:10:25', NULL),
(18, 3, 1, 4, 1, '2025-04-16 10:10:25', '2025-04-16 10:10:25', NULL),
(19, 3, 1, 5, 1, '2025-04-16 10:10:25', '2025-04-16 10:10:25', NULL),
(20, 3, 1, 6, 1, '2025-04-16 10:10:25', '2025-04-16 10:10:25', NULL),
(21, 3, 1, 7, 1, '2025-04-16 10:10:25', '2025-04-16 10:10:25', NULL),
(22, 4, 1, 1, 1, '2025-04-16 10:10:25', '2025-04-16 10:10:25', NULL),
(23, 4, 1, 2, 1, '2025-04-16 10:10:25', '2025-04-16 10:10:25', NULL),
(24, 4, 1, 3, 1, '2025-04-16 10:10:25', '2025-04-16 10:10:25', NULL),
(25, 4, 1, 4, 1, '2025-04-16 10:10:25', '2025-04-16 10:10:25', NULL),
(26, 4, 1, 5, 1, '2025-04-16 10:10:25', '2025-04-16 10:10:25', NULL),
(27, 4, 1, 6, 1, '2025-04-16 10:10:25', '2025-04-16 10:10:25', NULL),
(28, 4, 1, 7, 1, '2025-04-16 10:10:25', '2025-04-16 10:10:25', NULL),
(36, 13, 1, 1, 1, '2025-04-19 16:46:41', '2025-04-19 16:46:41', NULL),
(37, 13, 1, 2, 1, '2025-04-19 18:29:27', '2025-04-19 18:29:27', NULL),
(38, 13, 1, 3, 1, '2025-04-19 21:53:15', '2025-04-19 21:53:15', NULL),
(39, 13, 1, 4, 1, '2025-04-19 21:53:34', '2025-04-19 21:53:34', NULL),
(40, 13, 1, 5, 1, '2025-04-19 21:53:51', '2025-04-19 21:53:51', NULL),
(41, 13, 1, 6, 1, '2025-04-19 21:54:07', '2025-04-19 21:54:07', NULL),
(42, 13, 1, 7, 1, '2025-04-19 21:54:21', '2025-04-19 21:54:21', NULL),
(43, 6, 1, 1, 1, '2025-04-19 22:12:22', '2025-04-19 22:12:22', NULL),
(44, 6, 1, 2, 1, '2025-04-19 22:12:45', '2025-04-19 22:12:45', NULL),
(45, 6, 1, 3, 1, '2025-04-20 09:02:57', '2025-04-20 09:02:57', NULL),
(46, 6, 1, 4, 1, '2025-04-20 09:02:57', '2025-04-20 09:02:57', NULL),
(47, 6, 1, 5, 1, '2025-04-20 09:03:46', '2025-04-20 09:03:46', NULL),
(48, 6, 1, 6, 1, '2025-04-20 09:04:02', '2025-04-20 09:04:02', NULL),
(49, 6, 1, 7, 1, '2025-04-20 09:12:04', '2025-04-20 09:12:04', NULL),
(50, 7, 1, 1, 1, '2025-04-20 09:13:14', '2025-04-20 09:13:14', NULL),
(51, 7, 1, 2, 1, '2025-04-20 09:13:47', '2025-04-20 09:13:47', NULL),
(52, 7, 1, 3, 1, '2025-04-20 09:14:35', '2025-04-20 09:14:35', NULL),
(53, 7, 1, 4, 1, '2025-04-20 09:15:18', '2025-04-20 09:15:18', NULL),
(54, 7, 1, 5, 1, '2025-04-20 09:15:41', '2025-04-20 09:15:41', NULL),
(55, 7, 1, 6, 1, '2025-04-20 09:16:04', '2025-04-20 09:16:04', NULL),
(56, 7, 1, 7, 1, '2025-04-20 09:16:22', '2025-04-20 09:16:22', NULL),
(57, 10, 1, 1, 1, '2025-04-20 09:17:14', '2025-04-20 09:17:14', NULL),
(58, 10, 1, 2, 1, '2025-04-20 09:17:41', '2025-04-20 09:17:41', NULL),
(59, 10, 1, 3, 1, '2025-04-20 09:17:41', '2025-04-20 09:17:58', NULL),
(60, 10, 1, 4, 1, '2025-04-20 09:18:54', '2025-04-20 09:18:54', NULL),
(61, 10, 1, 5, 1, '2025-04-20 09:19:10', '2025-04-20 09:19:10', NULL),
(62, 10, 1, 6, 1, '2025-04-20 09:19:29', '2025-04-20 09:19:29', NULL),
(63, 10, 1, 7, 1, '2025-04-20 09:19:29', '2025-04-20 09:19:44', NULL),
(64, 11, 1, 1, 1, '2025-04-20 09:39:05', '2025-04-20 09:39:05', NULL),
(65, 11, 1, 2, 1, '2025-04-20 09:39:29', '2025-04-20 09:39:29', NULL),
(66, 11, 1, 3, 1, '2025-04-20 09:39:46', '2025-04-20 09:39:46', NULL),
(67, 11, 1, 4, 1, '2025-04-20 09:40:01', '2025-04-20 09:40:01', NULL),
(68, 11, 1, 5, 1, '2025-04-20 09:40:19', '2025-04-20 09:40:19', NULL),
(69, 11, 1, 6, 1, '2025-04-20 09:40:35', '2025-04-20 09:40:35', NULL),
(70, 11, 1, 7, 1, '2025-04-20 09:40:51', '2025-04-20 09:40:51', NULL),
(71, 12, 1, 1, 1, '2025-04-20 09:41:11', '2025-04-20 09:41:11', NULL),
(72, 12, 1, 2, 1, '2025-04-20 09:41:29', '2025-04-20 09:41:29', NULL),
(73, 12, 1, 3, 1, '2025-04-20 09:41:45', '2025-04-20 09:41:45', NULL),
(74, 12, 1, 4, 1, '2025-04-20 09:42:03', '2025-04-20 09:42:03', NULL),
(75, 12, 1, 5, 1, '2025-04-20 09:42:18', '2025-04-20 09:42:18', NULL),
(76, 12, 1, 6, 1, '2025-04-20 09:42:35', '2025-04-20 09:42:35', NULL),
(77, 12, 1, 7, 1, '2025-04-20 09:42:49', '2025-04-20 09:42:49', NULL),
(78, 1, 2, 1, 1, '2025-04-20 13:22:34', '2025-04-20 13:22:34', NULL),
(79, 1, 2, 2, 1, '2025-04-20 13:28:08', '2025-04-20 13:28:08', NULL),
(80, 1, 2, 3, 1, '2025-04-20 13:34:07', '2025-04-20 13:34:07', NULL),
(81, 1, 2, 4, 1, '2025-04-20 13:34:46', '2025-04-20 13:34:46', NULL),
(82, 1, 2, 5, 1, '2025-04-20 13:35:19', '2025-04-20 13:35:19', NULL),
(83, 1, 2, 6, 1, '2025-04-20 13:35:47', '2025-04-20 13:35:47', NULL),
(84, 1, 2, 7, 1, '2025-04-20 13:36:05', '2025-04-20 13:36:05', NULL),
(92, 3, 2, 1, 1, '2025-04-20 13:42:19', '2025-04-20 13:42:19', NULL),
(93, 3, 2, 2, 1, '2025-04-20 13:42:19', '2025-04-20 13:42:19', NULL),
(94, 3, 2, 3, 1, '2025-04-20 13:42:19', '2025-04-20 13:42:19', NULL),
(95, 3, 2, 4, 1, '2025-04-20 13:42:19', '2025-04-20 13:42:19', NULL),
(96, 3, 2, 5, 1, '2025-04-20 13:42:19', '2025-04-20 13:42:19', NULL),
(97, 3, 2, 6, 1, '2025-04-20 13:42:19', '2025-04-20 13:42:19', NULL),
(98, 3, 2, 7, 1, '2025-04-20 13:42:19', '2025-04-20 13:42:19', NULL),
(99, 14, 2, 1, 1, '2025-04-20 13:47:57', '2025-04-20 13:47:57', NULL),
(100, 14, 2, 2, 1, '2025-04-20 13:47:57', '2025-04-20 13:47:57', NULL),
(101, 14, 2, 3, 1, '2025-04-20 13:47:57', '2025-04-20 13:47:57', NULL),
(102, 14, 2, 4, 1, '2025-04-20 13:47:57', '2025-04-20 13:47:57', NULL),
(103, 14, 2, 5, 1, '2025-04-20 13:47:57', '2025-04-20 13:47:57', NULL),
(104, 14, 2, 6, 1, '2025-04-20 13:47:57', '2025-04-20 13:47:57', NULL),
(105, 14, 2, 7, 1, '2025-04-20 13:47:57', '2025-04-20 13:47:57', NULL),
(106, 15, 2, 1, 1, '2025-04-21 03:55:14', '2025-04-21 03:55:14', NULL),
(107, 15, 2, 2, 1, '2025-04-22 02:24:08', '2025-04-22 02:24:08', NULL),
(108, 15, 2, 3, 1, '2025-04-22 02:38:11', '2025-04-22 02:38:11', NULL),
(109, 15, 2, 4, 1, '2025-04-22 02:38:38', '2025-04-22 02:38:38', NULL),
(110, 15, 2, 5, 1, '2025-04-22 02:44:32', '2025-04-22 02:44:32', NULL),
(111, 15, 2, 6, 1, '2025-04-22 03:04:26', '2025-04-22 03:04:26', NULL),
(112, 15, 2, 7, 1, '2025-04-22 03:04:44', '2025-04-22 03:04:44', NULL),
(113, 16, 2, 1, 1, '2025-04-22 03:05:02', '2025-04-22 03:05:02', NULL),
(114, 16, 2, 2, 1, '2025-04-22 03:08:31', '2025-04-22 03:08:31', NULL),
(115, 16, 2, 3, 1, '2025-04-22 03:17:15', '2025-04-22 03:17:15', NULL),
(116, 16, 2, 4, 1, '2025-04-22 03:17:30', '2025-04-22 03:17:30', NULL),
(117, 16, 2, 5, 1, '2025-04-22 03:17:45', '2025-04-22 03:17:45', NULL),
(118, 16, 2, 6, 1, '2025-04-22 04:08:19', '2025-04-22 04:08:19', NULL),
(119, 16, 2, 7, 1, '2025-04-22 04:08:34', '2025-04-22 04:08:34', NULL),
(120, 17, 2, 1, 1, '2025-04-22 04:29:29', '2025-04-22 04:29:29', NULL),
(121, 17, 2, 2, 1, '2025-04-22 04:33:56', '2025-04-22 04:33:56', NULL),
(122, 17, 2, 3, 1, '2025-04-23 08:33:49', '2025-04-23 08:33:49', NULL),
(123, 17, 2, 4, 1, '2025-04-23 08:33:49', '2025-04-23 08:33:49', NULL),
(124, 17, 2, 5, 1, '2025-04-23 08:35:04', '2025-04-23 08:35:04', NULL),
(125, 17, 2, 6, 1, '2025-04-23 08:35:22', '2025-04-23 08:35:22', NULL),
(126, 17, 2, 7, 1, '2025-04-23 08:35:38', '2025-04-23 08:35:38', NULL),
(127, 18, 2, 1, 1, '2025-04-23 08:35:55', '2025-04-23 08:35:55', NULL),
(128, 18, 2, 2, 1, '2025-04-23 08:37:35', '2025-04-23 08:37:35', NULL),
(129, 18, 2, 3, 1, '2025-04-23 08:37:49', '2025-04-23 08:37:49', NULL),
(130, 18, 2, 4, 1, '2025-04-23 08:38:05', '2025-04-23 08:38:05', NULL),
(131, 18, 2, 5, 1, '2025-04-23 08:38:21', '2025-04-23 08:38:21', NULL),
(132, 18, 2, 6, 1, '2025-04-23 08:38:33', '2025-04-23 08:38:33', NULL),
(133, 18, 2, 7, 1, '2025-04-23 08:38:46', '2025-04-23 08:38:46', NULL),
(134, 19, 2, 1, 1, '2025-04-23 08:42:35', '2025-04-23 08:42:35', NULL),
(135, 19, 2, 2, 1, '2025-04-23 08:43:16', '2025-04-23 08:43:16', NULL),
(136, 19, 2, 3, 1, '2025-04-23 08:43:35', '2025-04-23 08:43:35', NULL),
(137, 19, 2, 4, 1, '2025-04-23 08:43:47', '2025-04-23 08:43:47', NULL),
(138, 19, 2, 5, 1, '2025-04-16 08:43:59', '2025-04-23 08:43:59', NULL),
(139, 19, 2, 6, 1, '2025-04-23 08:44:12', '2025-04-23 08:44:12', NULL),
(140, 19, 2, 7, 1, '2025-04-23 08:44:28', '2025-04-23 08:44:28', NULL),
(141, 20, 2, 1, 1, '2025-04-23 08:44:45', '2025-04-23 08:44:45', NULL),
(142, 20, 2, 2, 1, '2025-04-23 08:45:13', '2025-04-23 08:45:13', NULL),
(143, 20, 2, 3, 1, '2025-04-23 08:45:29', '2025-04-23 08:45:29', NULL),
(144, 20, 2, 4, 1, '2025-04-23 08:45:42', '2025-04-23 08:45:42', NULL),
(145, 20, 2, 5, 1, '2025-04-23 08:46:14', '2025-04-23 08:46:14', NULL),
(146, 20, 2, 6, 1, '2025-04-23 08:46:25', '2025-04-23 08:46:25', NULL),
(147, 20, 2, 7, 1, '2025-04-23 08:46:39', '2025-04-23 08:46:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(9, '0001_01_01_000000_create_users_table', 1),
(10, '0001_01_01_000001_create_cache_table', 1),
(11, '0001_01_01_000002_create_jobs_table', 1),
(12, '2025_02_04_121328_create_menus_table', 1),
(13, '2025_02_04_123935_create_roles_table', 1),
(14, '2025_02_15_032747_create_permissions_table', 1),
(15, '2025_02_15_033141_create_menu_role_permissions_table', 1),
(16, '2025_04_18_080225_create_master_sklh_table', 2),
(17, '2025_04_19_173819_create_master_bdng_table', 3),
(18, '2025_04_19_173928_create_master_bdng_member_table', 4),
(19, '2025_04_23_035045_add_akun_diverifikasi_to_users_table', 5),
(20, '2025_04_25_063714_create_master_mgng_table', 6),
(24, '2025_04_25_064050_create_permintaan_mgng_table', 7),
(25, '2025_04_25_064207_create_balasan_mgng_table', 7),
(26, '2025_04_28_035616_remove_foreign_key_from_master_bdng_member', 8),
(27, '2025_04_28_035911_change_id_column_in_master_bdng_table', 9),
(28, '2025_04_28_040351_change_id_bdng_column_in_master_bdng_member', 10),
(29, '2025_04_28_040437_add_foreign_key_to_master_bdng_member', 11),
(30, '2025_04_28_042203_change_id_column_in_master_bdng_member', 12),
(31, '2025_04_28_042417_create_balasan_mgng_table', 13),
(33, '2025_04_28_043436_create_master_psrt_table', 14),
(34, '2025_04_30_030752_add_is_data_completed_to_users_table', 15),
(35, '2025_05_01_130212_add_permintaan_mgng_id_to_master_psrt', 16),
(36, '2025_05_01_131318_remove_master_mgng_id_from_master_psrt', 17),
(37, '2025_05_05_141552_add_permintaan_mgng_id_to_balasan_mgng_table', 18),
(40, '2025_05_13_075734_create_nota_dinas_table', 19),
(41, '2025_05_13_080722_create_nota_dinas_item_table', 20),
(42, '2025_05_15_120807_add_permintaan_mgng_id_to_nota_dinas_table', 21),
(43, '2025_04_30_024850_add_is_data_complete_to_menus_table', 22),
(44, '2025_06_04_073606_rename_columns_in_master_psrt_table', 22),
(45, '2025_06_04_081346_update_nilai_columns_in_master_psrt_table', 23),
(46, '2025_06_04_081928_add_nilai_teknis_columns_to_master_psrt_table', 24),
(47, '2025_06_04_082852_change_nilai_columns_in_master_psrt_table', 25),
(48, '2025_06_29_073338_change_decimal_to_integer_in_master_psrt_columns', 26),
(49, '2025_06_30_025938_add_default_values_to_nilai_columns_in_master_psrt_table', 27);

-- --------------------------------------------------------

--
-- Table structure for table `nota_dinas`
--

CREATE TABLE `nota_dinas` (
  `id` bigint UNSIGNED NOT NULL,
  `master_mgng_id` bigint UNSIGNED NOT NULL,
  `permintaan_mgng_id` bigint UNSIGNED DEFAULT NULL,
  `master_bdng_id` bigint UNSIGNED NOT NULL,
  `nomor_nota_dinas` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_nota_dinas` date DEFAULT NULL,
  `sifat_nota_dinas` enum('biasa','penting','segera') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'biasa',
  `lampiran_nota_dinas` enum('tidakada','selembar') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'tidakada',
  `scan_nota_dinas` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_nota_dinas` enum('belum','terkirim') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'belum',
  `bdng_member_id` bigint UNSIGNED DEFAULT NULL,
  `scan_laporan_magang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_laporan` enum('belum','terkirim') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'belum',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nota_dinas`
--

INSERT INTO `nota_dinas` (`id`, `master_mgng_id`, `permintaan_mgng_id`, `master_bdng_id`, `nomor_nota_dinas`, `tanggal_nota_dinas`, `sifat_nota_dinas`, `lampiran_nota_dinas`, `scan_nota_dinas`, `status_nota_dinas`, `bdng_member_id`, `scan_laporan_magang`, `status_laporan`, `created_at`, `updated_at`) VALUES
(4, 2, 3, 4, '432', '2025-05-15', 'biasa', 'selembar', 'uploads/H2SPGq0YKeUJUU5ZrX9M2nfE8LVV8l0tO3L17ENY.pdf', 'terkirim', 2, 'uploads/laporan/6IMaKmxk1aiBtZ9a4sRZ1nOJpsNKGHJYAopYZb1X.pdf', 'terkirim', '2025-05-15 05:39:27', '2025-05-15 21:36:43'),
(5, 5, 11, 4, '5678', '2024-08-03', 'biasa', 'selembar', 'uploads/pPq1Sylr5Iap3U1WOKH50UGZEAt34ZGC3QHjM4yR.pdf', 'belum', 2, 'uploads/laporan/nyJRdKy34k7LyRNJFMPM7PoPyprLalULc46dRrxc.pdf', 'terkirim', '2025-05-16 00:52:10', '2025-06-02 19:14:18'),
(7, 8, 24, 4, '6789', '2025-06-07', 'biasa', 'selembar', 'uploads/hAJHXmYOljXsGZTsqNzexm9pVUpJAjYuLE8vk0Li.pdf', 'terkirim', 2, NULL, 'belum', '2025-06-04 21:59:14', '2025-06-04 21:59:51'),
(8, 10, 28, 5, '56789', '2025-06-19', 'biasa', 'selembar', 'uploads/nXvtEuCS2Hm79AkaZfKnymfHDG7IoFgwiz30gfO9.pdf', 'terkirim', 2, NULL, 'belum', '2025-06-15 00:44:34', '2025-06-19 07:02:55'),
(9, 11, 34, 6, '5688', '2025-06-18', 'biasa', 'selembar', 'uploads/94GGJoZNuWovqjfWmjvy1d4H0Sdp8I9nFJ9cYET2.pdf', 'terkirim', 2, 'uploads/laporan/Vmy2TqRMODK5k2qUSLnzu4XHsBd1fxZKLSngscLU.pdf', 'terkirim', '2025-06-18 01:43:04', '2025-06-18 01:46:13'),
(11, 12, 35, 4, '46782', '2025-06-27', 'biasa', 'selembar', 'uploads/YbJqGlJCLqQxXTKZS60t56syLZqDEE7y94AilAkA.pdf', 'terkirim', 2, 'uploads/laporan/vsmREB1DmqFFJIfTT9YvwJ05wIrgew0iyPaAW32u.pdf', 'terkirim', '2025-06-27 09:37:00', '2025-06-27 09:43:48'),
(12, 13, 37, 4, '477', '2025-06-28', 'biasa', 'selembar', 'uploads/XgwCQFhjMzSuZ9XuT8M0HB8I1Dyrn5v7EU1940DS.pdf', 'belum', 2, 'uploads/laporan/kZMfR2PuR8xVTLJH8VJ3n8U4AybysBUrw1L3PicO.jpg', 'terkirim', '2025-06-28 07:17:19', '2025-06-28 08:25:07'),
(13, 14, 38, 4, '777', '2025-06-28', 'biasa', 'selembar', 'uploads/BeeIB9BetAlYLPapYkSxZVQ6tyk8fM0yfPX65jk2.pdf', 'terkirim', 2, 'uploads/laporan/d17N1gD9Jlu8zjZqXjz3b8LcoN0dEAnt0GgiOCUd.jpg', 'terkirim', '2025-06-28 08:44:50', '2025-06-28 08:47:12'),
(14, 15, 39, 4, '88', '2025-06-29', 'biasa', 'selembar', 'uploads/UIeAt8L3gMVDxtvLQECeK4aefc1ZYtuprvj4O6Ev.pdf', 'terkirim', 2, 'uploads/laporan/50vpatTCfj6Vgm9AWhaQk8bOZ3gt1aCAIlAtr0Ix.jpg', 'terkirim', '2025-06-29 00:11:04', '2025-06-29 00:14:15'),
(15, 17, 42, 4, '111111111', '2024-06-04', 'penting', 'selembar', 'uploads/nsrmXu6D2uv9Ct1UqW9WGThFGrQUpIfdU4WdESm5.pdf', 'terkirim', 2, 'uploads/laporan/B4H5c4EXVDgsq0d7mV1GsEg8DVgBNeKyuSWii9qn.pdf', 'terkirim', '2025-06-30 01:44:06', '2025-06-30 01:45:19');

-- --------------------------------------------------------

--
-- Table structure for table `nota_dinas_item`
--

CREATE TABLE `nota_dinas_item` (
  `id` bigint UNSIGNED NOT NULL,
  `nota_dinas_id` bigint UNSIGNED NOT NULL,
  `master_psrt_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nota_dinas_item`
--

INSERT INTO `nota_dinas_item` (`id`, `nota_dinas_id`, `master_psrt_id`, `created_at`, `updated_at`) VALUES
(6, 4, 13, '2025-05-15 05:39:37', '2025-05-15 05:39:37'),
(7, 4, 14, '2025-05-15 05:39:37', '2025-05-15 05:39:37'),
(8, 4, 10, '2025-05-15 05:39:37', '2025-05-15 05:39:37'),
(9, 5, 18, '2025-05-16 00:52:26', '2025-05-16 00:52:26'),
(10, 5, 17, '2025-05-16 00:52:26', '2025-05-16 00:52:26'),
(14, 7, 25, '2025-06-04 21:59:28', '2025-06-04 21:59:28'),
(15, 9, 30, '2025-06-18 01:43:17', '2025-06-18 01:43:17'),
(16, 8, 28, '2025-06-19 07:02:39', '2025-06-19 07:02:39'),
(17, 11, 32, '2025-06-27 09:37:48', '2025-06-27 09:37:48'),
(18, 12, 33, '2025-06-28 07:18:50', '2025-06-28 07:18:50'),
(19, 12, 34, '2025-06-28 08:25:29', '2025-06-28 08:25:29'),
(20, 13, 35, '2025-06-28 08:46:35', '2025-06-28 08:46:35'),
(21, 14, 36, '2025-06-29 00:12:36', '2025-06-29 00:12:36'),
(22, 15, 40, '2025-06-30 01:44:24', '2025-06-30 01:44:24'),
(23, 15, 41, '2025-06-30 01:44:24', '2025-06-30 01:44:24');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('mucherrrtt@gmail.com', '$2y$12$/xpR7wBS5H5beY/nmJJ1Y.tOsmnFKtmlcIxFSLrEqNdNSK.Af4gey', '2025-05-29 05:48:06');

-- --------------------------------------------------------

--
-- Table structure for table `permintaan_mgng`
--

CREATE TABLE `permintaan_mgng` (
  `id` bigint UNSIGNED NOT NULL,
  `master_mgng_id` bigint UNSIGNED NOT NULL,
  `nomor_surat_permintaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_surat_permintaan` date DEFAULT NULL,
  `perihal_surat_permintaan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ditandatangani_oleh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scan_surat_permintaan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scan_proposal_magang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_surat_permintaan` enum('belum','terkirim') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'belum',
  `status_baca_surat_permintaan` enum('belum','dibaca') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'belum',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permintaan_mgng`
--

INSERT INTO `permintaan_mgng` (`id`, `master_mgng_id`, `nomor_surat_permintaan`, `tanggal_surat_permintaan`, `perihal_surat_permintaan`, `ditandatangani_oleh`, `scan_surat_permintaan`, `scan_proposal_magang`, `status_surat_permintaan`, `status_baca_surat_permintaan`, `created_at`, `updated_at`) VALUES
(3, 2, '88889', '2025-05-01', 'Magang Mandiri', 'Koordinator Program Studi', '1746101212_BrosurBeasiswa.pdf', '1746101213_BrosurBeasiswa.pdf', 'terkirim', 'belum', '2025-05-01 05:06:53', '2025-05-04 22:56:02'),
(7, 3, '0987654321', '2025-05-09', 'Permohonan Magang', 'Koordinator Prodi', '1746758433_PermohonanMagang_88889(37).pdf', '1746758433_PermohonanMagang_88889(37).pdf', 'terkirim', 'belum', '2025-05-08 19:40:33', '2025-05-08 19:44:10'),
(8, 2, '88800', '2025-05-15', 'Magang Mandiri', 'Koordinator Program Studi', '1747284217_PROPOSALKOMAS.pdf', '1747284218_PROPOSALKOMAS.pdf', 'belum', 'belum', '2025-05-14 21:43:38', '2025-05-14 21:43:38'),
(9, 4, '150525', '2025-05-15', 'Magang Mandiri', 'Koordinator Program Studi', '1747284792_PROPOSALKOMAS.pdf', '1747284792_PROPOSALKOMAS.pdf', 'belum', 'belum', '2025-05-14 21:53:12', '2025-05-14 21:53:12'),
(10, 4, '0987', '2025-05-16', 'Magang Mandiri', 'Dekan', '1747284831_PROPOSALKOMAS.pdf', '1747284831_PROPOSALKOMAS.pdf', 'belum', 'belum', '2025-05-14 21:53:51', '2025-05-14 21:53:51'),
(11, 5, '12213', '2025-05-16', 'Magang', 'Kaprodi', '1747381505_PermohonanMagang_0987654321(7).pdf', '1747381505_PermohonanMagang_0987654321(7).pdf', 'terkirim', 'belum', '2025-05-16 00:45:05', '2025-05-16 00:48:47'),
(16, 6, '5454', '2025-05-20', 'Magang', 'Koorprodi', 'uploads/qcevlqSOmZlB4SzTEd7rxgLDnQAliiGvUJxXAw75.pdf', 'uploads/uSNxp6vDISmIdouOMJU0H3AqceaK11EqdjzJVmQd.pdf', 'belum', 'belum', '2025-05-20 01:21:50', '2025-05-20 01:21:50'),
(24, 8, '479802', '2025-06-05', 'Magang', 'Koordinator Magang', 'uploads/ZTO525rQhSxc3Lhv9nhZdPk7gYMM5OLBD6X5jJgP.pdf', 'uploads/19VLI5vt87VvgmxWXmawN3hBBiT9EXhoPpNqRMef.pdf', 'terkirim', 'belum', '2025-06-04 20:44:21', '2025-06-04 20:45:02'),
(25, 9, '56789', '2025-06-12', 'Magang', 'Koordinator Magang', 'uploads/TBRtc5ByOakwSBRtwnQNB39c6Vk9Kif7cd5oXYqf.pdf', 'uploads/qenEzqvI5h0Dq1YAd2CUawU7udKtPmuYPLAS6Rmg.pdf', 'terkirim', 'dibaca', '2025-06-12 01:32:48', '2025-06-12 23:30:51'),
(27, 9, '78889', '2025-06-15', 'MAGANG', 'orang', 'uploads/NQOkgWKMPTBWvXPW0JYAYcT0dwc2RMG7oV5A6rbv.pdf', 'uploads/g9DtODGS7rq3QHsdZfD1TL9lw1IojflimFds9hTX.pdf', 'terkirim', 'belum', '2025-06-14 21:59:44', '2025-06-14 21:59:44'),
(28, 10, '3468920', '2025-06-15', 'MAGANG', 'Koordinator Magang', 'uploads/L7CG47lokmFCtyRjZXykLVpwzOfmHnOsEMzpsL4b.pdf', 'uploads/izWBkprPBYgD73IIjDWtrZrzyg41ocsqwxaVoeNM.pdf', 'terkirim', 'dibaca', '2025-06-14 22:09:17', '2025-06-14 22:17:06'),
(29, 9, '34567890', '2025-06-18', 'Magang', 'Koordinator Magang', 'uploads/9PHf6zzXZ47LmpfN9tn4QLa4J9XI8CkwYFOWuukH.pdf', 'uploads/6bEhl48fnmOBgYFwBkZwMasRWbFbpR6sco5S97iI.pdf', 'belum', 'belum', '2025-06-17 21:18:22', '2025-06-17 21:18:22'),
(30, 10, '456789098', '2025-06-18', 'Magang', 'Koordinator Magang', 'uploads/434I9W6IP43e1Cw8jgRhnRaa6toRYJfD66wF31On.pdf', 'uploads/zBfR7JD5rkMSh9MyOPU07t6M0iMX1bcRu25GfqDO.pdf', 'belum', 'belum', '2025-06-17 21:19:59', '2025-06-17 21:19:59'),
(31, 10, '34567', '2025-06-18', 'Magang', 'Koordinator Magang', 'uploads/k9W4w3YXvV9KVwH2PQ2gBaakoBSzS3DUsh1rSmaL.pdf', 'uploads/974LxtWb2jFEualPq8vkZGRWOIf25lTQbCDUXxM3.pdf', 'belum', 'belum', '2025-06-17 21:22:08', '2025-06-17 21:22:08'),
(34, 11, '456789', '2025-06-18', 'Magang', 'Koordinator Magang', 'uploads/qmeTQxBKyL9yGdbnSjIPrQ6UV7z96XfJbuaFXNTI.pdf', 'uploads/GJCzGaRSaGVwCb6qaPidjqY5xDFxjxnKSJjcGP7q.pdf', 'terkirim', 'dibaca', '2025-06-18 01:17:12', '2025-06-18 01:19:39'),
(35, 12, '000755', '2025-06-27', 'Magang', 'Koordinator Magang', 'uploads/VFIoY09YEdkrypG9F8N8x84VDBace7HmktaSVDpx.jpg', 'uploads/axefMksuuok2yPQwlbz4bQ7rRZtI4XiI00YpR87B.jpg', 'terkirim', 'dibaca', '2025-06-27 08:54:55', '2025-06-27 09:11:37'),
(36, 13, '2862025', '2025-06-28', 'Magang Mandiri', 'Koordinator Magang', 'uploads/oJXTexXwxQ83AoLv8h4dkaT7dUMLXWAFeSBw2B38.jpg', 'uploads/7WEnDNycwynVfrbfLMb6JykBqCxwAcB5yk2kjm3A.jpg', 'terkirim', 'dibaca', '2025-06-28 07:02:48', '2025-06-28 07:07:54'),
(37, 13, '5368983', '2025-06-28', 'Magang Mandiri', 'Koordinator Magang', 'uploads/sgcRC3R2FuyU7zSrv5pyBfhP7EpgrLdQwPBUI6dV.jpg', 'uploads/yNxpgSrhycGXhr2NSYrz3zKI3p0aDdMh1h2yn9tZ.jpg', 'terkirim', 'dibaca', '2025-06-28 07:36:01', '2025-06-28 08:16:53'),
(38, 14, '56889', '2025-06-28', 'Magang Mandiri', 'Koordinator Magang', 'uploads/fXeXK7JFMEv6uAFrxVsWHgRGilBGWwmPnKnz2gRA.jpg', 'uploads/lt23i3RuHHbVeTniGnMEr9pQHaooEbHmYUQczltU.jpg', 'terkirim', 'dibaca', '2025-06-28 08:36:07', '2025-06-28 08:37:42'),
(39, 15, '29062025', '2025-06-29', 'Magang Mandiri', 'Koordinator Magang Mandiri', 'uploads/AQE3XG5tv9palB0wqGvLDVMZRcyXgX1DRktY6msH.jpg', 'uploads/82tmRgiCz542FCACKQ4kbtZCT9LoGTTsCv5W6CuJ.jpg', 'terkirim', 'dibaca', '2025-06-28 22:40:44', '2025-06-28 23:35:03'),
(40, 15, '30062025', '2025-06-30', 'Magang Mandiri', 'Koordinator  Magang', 'uploads/R5JUdUXzHId0UJACV4h6IGhvimysTgJBk7UrQpm2.pdf', 'uploads/nncPf7CUZHlR4oihBtgtnzjMzBRBCfiuCVmOnryh.pdf', 'terkirim', 'belum', '2025-06-29 19:01:08', '2025-06-29 20:05:54'),
(41, 16, '4578899', '2025-06-30', 'Magang Mandiri', 'Koordinator Magang', 'uploads/sxeypaXK6cZOAyJjqHoDPzBB7qGVNAjreVNR5yOL.jpg', 'uploads/bXcgvsKj0vO5EB5bI7xyZ6xqyxosx5eZrpeDvreN.jpg', 'terkirim', 'dibaca', '2025-06-29 20:26:26', '2025-06-29 20:27:25'),
(42, 17, '00000000', '2024-01-01', 'Magang', 'Koordinator', 'uploads/18t0hiz2cXygO8LpAiWuvpvKFMJLAzEZ5yaHSqEB.pdf', 'uploads/9DswttoKxClbb8BkWTKw4L8oOW9Sz0oinEFvD3CJ.pdf', 'terkirim', 'dibaca', '2025-06-30 01:38:07', '2025-06-30 01:40:04');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `code`, `action_name`, `http_method`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'View', 'can_view', 'index', 'GET', 1, '2025-04-16 10:10:24', '2025-04-16 10:10:24', NULL),
(2, 'View Detail', 'can_view_detail', 'show', 'GET', 1, '2025-04-16 10:10:24', '2025-04-16 10:10:24', NULL),
(3, 'Create', 'can_create', 'create', 'GET', 1, '2025-04-16 10:10:24', '2025-04-16 10:10:24', NULL),
(4, 'Store', 'can_store', 'store', 'POST', 1, '2025-04-16 10:10:24', '2025-04-16 10:10:24', NULL),
(5, 'Edit', 'can_edit', 'edit', 'GET', 1, '2025-04-16 10:10:24', '2025-04-16 10:10:24', NULL),
(6, 'Update', 'can_update', 'update', 'PUT', 1, '2025-04-16 10:10:24', '2025-04-16 10:10:24', NULL),
(7, 'Delete', 'can_delete', 'destroy', 'DELETE', 1, '2025-04-16 10:10:24', '2025-04-16 10:10:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `peserta`
--

CREATE TABLE `peserta` (
  `id` bigint UNSIGNED NOT NULL,
  `master_mgng_id` bigint UNSIGNED NOT NULL,
  `nama_peserta` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_kelamin` enum('pria','wanita') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pria',
  `nik_peserta` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nis_peserta` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `program_studi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_handphone_peserta` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_peserta` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nilai_kedisiplinan` double NOT NULL DEFAULT '0',
  `nilai_tanggungjawab` double NOT NULL DEFAULT '0',
  `nilai_kerjasama` double NOT NULL DEFAULT '0',
  `nilai_motivasi` double NOT NULL DEFAULT '0',
  `nilai_kepribadian` double NOT NULL DEFAULT '0',
  `nilai_pengetahuan` double NOT NULL DEFAULT '0',
  `nilai_pelaksanaankerja` double NOT NULL DEFAULT '0',
  `nilai_hasilkerja` double NOT NULL DEFAULT '0',
  `nilai_akhir` double NOT NULL DEFAULT '0',
  `status_penilaian` enum('belum','sudah') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'belum',
  `scan_penilaian` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_scan_penilaian` enum('belum','sudah') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'belum',
  `catatan` text COLLATE utf8mb4_unicode_ci,
  `scan_sertifikat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_sertifikat` enum('belum','terkirim') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'belum',
  `id_bdng_member` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Super Admin', 1, '2025-04-16 10:10:24', '2025-04-16 10:10:24', NULL),
(2, 'User', 1, '2025-04-16 10:10:24', '2025-04-16 10:10:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0ZsFHS8LZ1vkM0fsCONBBUbYasaPrzs8Budrc0xL', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiODBPbjdzMVBPNUZVbUdhNWxKQ3VCWTlyZ2JyQWR2bzVwVlFON3hsTSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjEyOiJzaWRlYmFyX3Nlc3MiO2E6ODp7aTowO086ODoic3RkQ2xhc3MiOjEwOntzOjI6ImlkIjtpOjE7czo0OiJuYW1lIjtzOjc6IkJlcmFuZGEiO3M6NDoiaWNvbiI7czo4OiJtZGktaG9tZSI7czo5OiJwYXJlbnRfaWQiO047czozOiJ1cmwiO3M6NDoiaG9tZSI7czo1OiJvcmRlciI7aToxO3M6OToiaXNfYWN0aXZlIjtpOjE7czoxMzoibWF0Y2hfc2VnbWVudCI7czo0OiJob21lIjtzOjEwOiJkZWxldGVkX2F0IjtOO3M6MTY6ImlzX2RhdGFfY29tcGxldGUiO2k6MDt9aToxO086ODoic3RkQ2xhc3MiOjExOntzOjI6ImlkIjtpOjI7czo0OiJuYW1lIjtzOjY6Ik1hc3RlciI7czo0OiJpY29uIjtzOjIxOiJtZGktdGV4dC1ib3gtbXVsdGlwbGUiO3M6OToicGFyZW50X2lkIjtOO3M6MzoidXJsIjtOO3M6NToib3JkZXIiO2k6MjtzOjk6ImlzX2FjdGl2ZSI7aToxO3M6MTM6Im1hdGNoX3NlZ21lbnQiO3M6NjoibWFzdGVyIjtzOjEwOiJkZWxldGVkX2F0IjtOO3M6MTY6ImlzX2RhdGFfY29tcGxldGUiO2k6MDtzOjg6ImNoaWxkcmVuIjthOjI6e2k6MDtPOjg6InN0ZENsYXNzIjoxMDp7czoyOiJpZCI7aTozO3M6NDoibmFtZSI7czo0OiJNZW51IjtzOjQ6Imljb24iO047czo5OiJwYXJlbnRfaWQiO2k6MjtzOjM6InVybCI7czoxMDoibWVudS5pbmRleCI7czo1OiJvcmRlciI7aToxO3M6OToiaXNfYWN0aXZlIjtpOjE7czoxMzoibWF0Y2hfc2VnbWVudCI7czo0OiJtZW51IjtzOjEwOiJkZWxldGVkX2F0IjtOO3M6MTY6ImlzX2RhdGFfY29tcGxldGUiO2k6MDt9aToxO086ODoic3RkQ2xhc3MiOjEwOntzOjI6ImlkIjtpOjQ7czo0OiJuYW1lIjtzOjE3OiJSb2xlICYgUGVybWlzc2lvbiI7czo0OiJpY29uIjtOO3M6OToicGFyZW50X2lkIjtpOjI7czozOiJ1cmwiO047czo1OiJvcmRlciI7aToyO3M6OToiaXNfYWN0aXZlIjtpOjE7czoxMzoibWF0Y2hfc2VnbWVudCI7czoxNzoicm9sZS0mLXBlcm1pc3Npb24iO3M6MTA6ImRlbGV0ZWRfYXQiO047czoxNjoiaXNfZGF0YV9jb21wbGV0ZSI7aTowO319fWk6MjtPOjg6InN0ZENsYXNzIjoxMDp7czoyOiJpZCI7aTo2O3M6NDoibmFtZSI7czoxODoiTGVtYmFnYSBQZW5kaWRpa2FuIjtzOjQ6Imljb24iO3M6ODoibWRpLWJhbmsiO3M6OToicGFyZW50X2lkIjtOO3M6MzoidXJsIjtzOjExOiJtYXN0ZXJfc2tsaCI7czo1OiJvcmRlciI7aTo0O3M6OToiaXNfYWN0aXZlIjtpOjE7czoxMzoibWF0Y2hfc2VnbWVudCI7TjtzOjEwOiJkZWxldGVkX2F0IjtOO3M6MTY6ImlzX2RhdGFfY29tcGxldGUiO2k6MDt9aTozO086ODoic3RkQ2xhc3MiOjEwOntzOjI6ImlkIjtpOjc7czo0OiJuYW1lIjtzOjE3OiJQZXJtb2hvbmFuIE1hZ2FuZyI7czo0OiJpY29uIjtzOjk6Im1kaS1pbmJveCI7czo5OiJwYXJlbnRfaWQiO047czozOiJ1cmwiO3M6MTQ6InByb3Bvc2FsX21hc3VrIjtzOjU6Im9yZGVyIjtpOjU7czo5OiJpc19hY3RpdmUiO2k6MTtzOjEzOiJtYXRjaF9zZWdtZW50IjtOO3M6MTA6ImRlbGV0ZWRfYXQiO047czoxNjoiaXNfZGF0YV9jb21wbGV0ZSI7aTowO31pOjQ7Tzo4OiJzdGRDbGFzcyI6MTA6e3M6MjoiaWQiO2k6MTA7czo0OiJuYW1lIjtzOjE0OiJCYWxhc2FuIE1hZ2FuZyI7czo0OiJpY29uIjtzOjg6Im1kaS1zZW5kIjtzOjk6InBhcmVudF9pZCI7TjtzOjM6InVybCI7czoxNToicHJvcG9zYWxfa2VsdWFyIjtzOjU6Im9yZGVyIjtpOjY7czo5OiJpc19hY3RpdmUiO2k6MTtzOjEzOiJtYXRjaF9zZWdtZW50IjtOO3M6MTA6ImRlbGV0ZWRfYXQiO047czoxNjoiaXNfZGF0YV9jb21wbGV0ZSI7aTowO31pOjU7Tzo4OiJzdGRDbGFzcyI6MTA6e3M6MjoiaWQiO2k6MTE7czo0OiJuYW1lIjtzOjE3OiJOb3RhIERpbmFzIE1hZ2FuZyI7czo0OiJpY29uIjtzOjIxOiJtZGktbm90ZS10ZXh0LW91dGxpbmUiO3M6OToicGFyZW50X2lkIjtOO3M6MzoidXJsIjtzOjE3OiJub3RhX2RpbmFzLmRhZnRhciI7czo1OiJvcmRlciI7aTo3O3M6OToiaXNfYWN0aXZlIjtpOjE7czoxMzoibWF0Y2hfc2VnbWVudCI7TjtzOjEwOiJkZWxldGVkX2F0IjtOO3M6MTY6ImlzX2RhdGFfY29tcGxldGUiO2k6MDt9aTo2O086ODoic3RkQ2xhc3MiOjEwOntzOjI6ImlkIjtpOjEyO3M6NDoibmFtZSI7czoyMDoiTGFwb3JhbiAmIFNlcnRpZmlrYXQiO3M6NDoiaWNvbiI7czoxMjoibWRpLWRlY2FncmFtIjtzOjk6InBhcmVudF9pZCI7TjtzOjM6InVybCI7czoyMToicHJvcG9zYWxfZmluYWwuZGFmdGFyIjtzOjU6Im9yZGVyIjtpOjg7czo5OiJpc19hY3RpdmUiO2k6MTtzOjEzOiJtYXRjaF9zZWdtZW50IjtOO3M6MTA6ImRlbGV0ZWRfYXQiO047czoxNjoiaXNfZGF0YV9jb21wbGV0ZSI7aTowO31pOjc7Tzo4OiJzdGRDbGFzcyI6MTA6e3M6MjoiaWQiO2k6MTM7czo0OiJuYW1lIjtzOjE0OiJLZWxvbGEgUGVuaWxhaSI7czo0OiJpY29uIjtzOjE3OiJtZGktYWNjb3VudC1ncm91cCI7czo5OiJwYXJlbnRfaWQiO047czozOiJ1cmwiO3M6MTQ6Im1hc3Rlcl9wZXR1Z2FzIjtzOjU6Im9yZGVyIjtpOjk7czo5OiJpc19hY3RpdmUiO2k6MTtzOjEzOiJtYXRjaF9zZWdtZW50IjtOO3M6MTA6ImRlbGV0ZWRfYXQiO047czoxNjoiaXNfZGF0YV9jb21wbGV0ZSI7aTowO319czoxMToiYWNjZXNzX3Nlc3MiO086Mjk6IklsbHVtaW5hdGVcU3VwcG9ydFxDb2xsZWN0aW9uIjoyOntzOjg6IgAqAGl0ZW1zIjthOjEwOntpOjE7TzoyOToiSWxsdW1pbmF0ZVxTdXBwb3J0XENvbGxlY3Rpb24iOjI6e3M6ODoiACoAaXRlbXMiO2E6Nzp7czo4OiJjYW5fdmlldyI7YjoxO3M6MTU6ImNhbl92aWV3X2RldGFpbCI7YjoxO3M6MTA6ImNhbl9jcmVhdGUiO2I6MTtzOjk6ImNhbl9zdG9yZSI7YjoxO3M6ODoiY2FuX2VkaXQiO2I6MTtzOjEwOiJjYW5fdXBkYXRlIjtiOjE7czoxMDoiY2FuX2RlbGV0ZSI7YjoxO31zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7fWk6MjtPOjI5OiJJbGx1bWluYXRlXFN1cHBvcnRcQ29sbGVjdGlvbiI6Mjp7czo4OiIAKgBpdGVtcyI7YTo3OntzOjg6ImNhbl92aWV3IjtiOjE7czoxNToiY2FuX3ZpZXdfZGV0YWlsIjtiOjE7czoxMDoiY2FuX2NyZWF0ZSI7YjoxO3M6OToiY2FuX3N0b3JlIjtiOjE7czo4OiJjYW5fZWRpdCI7YjoxO3M6MTA6ImNhbl91cGRhdGUiO2I6MTtzOjEwOiJjYW5fZGVsZXRlIjtiOjE7fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9aTozO086Mjk6IklsbHVtaW5hdGVcU3VwcG9ydFxDb2xsZWN0aW9uIjoyOntzOjg6IgAqAGl0ZW1zIjthOjc6e3M6ODoiY2FuX3ZpZXciO2I6MTtzOjE1OiJjYW5fdmlld19kZXRhaWwiO2I6MTtzOjEwOiJjYW5fY3JlYXRlIjtiOjE7czo5OiJjYW5fc3RvcmUiO2I6MTtzOjg6ImNhbl9lZGl0IjtiOjE7czoxMDoiY2FuX3VwZGF0ZSI7YjoxO3M6MTA6ImNhbl9kZWxldGUiO2I6MTt9czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO31pOjQ7TzoyOToiSWxsdW1pbmF0ZVxTdXBwb3J0XENvbGxlY3Rpb24iOjI6e3M6ODoiACoAaXRlbXMiO2E6Nzp7czo4OiJjYW5fdmlldyI7YjoxO3M6MTU6ImNhbl92aWV3X2RldGFpbCI7YjoxO3M6MTA6ImNhbl9jcmVhdGUiO2I6MTtzOjk6ImNhbl9zdG9yZSI7YjoxO3M6ODoiY2FuX2VkaXQiO2I6MTtzOjEwOiJjYW5fdXBkYXRlIjtiOjE7czoxMDoiY2FuX2RlbGV0ZSI7YjoxO31zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7fWk6MTM7TzoyOToiSWxsdW1pbmF0ZVxTdXBwb3J0XENvbGxlY3Rpb24iOjI6e3M6ODoiACoAaXRlbXMiO2E6Nzp7czo4OiJjYW5fdmlldyI7YjoxO3M6MTU6ImNhbl92aWV3X2RldGFpbCI7YjoxO3M6MTA6ImNhbl9jcmVhdGUiO2I6MTtzOjk6ImNhbl9zdG9yZSI7YjoxO3M6ODoiY2FuX2VkaXQiO2I6MTtzOjEwOiJjYW5fdXBkYXRlIjtiOjE7czoxMDoiY2FuX2RlbGV0ZSI7YjoxO31zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7fWk6NjtPOjI5OiJJbGx1bWluYXRlXFN1cHBvcnRcQ29sbGVjdGlvbiI6Mjp7czo4OiIAKgBpdGVtcyI7YTo3OntzOjg6ImNhbl92aWV3IjtiOjE7czoxNToiY2FuX3ZpZXdfZGV0YWlsIjtiOjE7czoxMDoiY2FuX2NyZWF0ZSI7YjoxO3M6OToiY2FuX3N0b3JlIjtiOjE7czo4OiJjYW5fZWRpdCI7YjoxO3M6MTA6ImNhbl91cGRhdGUiO2I6MTtzOjEwOiJjYW5fZGVsZXRlIjtiOjE7fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9aTo3O086Mjk6IklsbHVtaW5hdGVcU3VwcG9ydFxDb2xsZWN0aW9uIjoyOntzOjg6IgAqAGl0ZW1zIjthOjc6e3M6ODoiY2FuX3ZpZXciO2I6MTtzOjE1OiJjYW5fdmlld19kZXRhaWwiO2I6MTtzOjEwOiJjYW5fY3JlYXRlIjtiOjE7czo5OiJjYW5fc3RvcmUiO2I6MTtzOjg6ImNhbl9lZGl0IjtiOjE7czoxMDoiY2FuX3VwZGF0ZSI7YjoxO3M6MTA6ImNhbl9kZWxldGUiO2I6MTt9czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO31pOjEwO086Mjk6IklsbHVtaW5hdGVcU3VwcG9ydFxDb2xsZWN0aW9uIjoyOntzOjg6IgAqAGl0ZW1zIjthOjc6e3M6ODoiY2FuX3ZpZXciO2I6MTtzOjE1OiJjYW5fdmlld19kZXRhaWwiO2I6MTtzOjEwOiJjYW5fY3JlYXRlIjtiOjE7czo5OiJjYW5fc3RvcmUiO2I6MTtzOjg6ImNhbl9lZGl0IjtiOjE7czoxMDoiY2FuX3VwZGF0ZSI7YjoxO3M6MTA6ImNhbl9kZWxldGUiO2I6MTt9czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO31pOjExO086Mjk6IklsbHVtaW5hdGVcU3VwcG9ydFxDb2xsZWN0aW9uIjoyOntzOjg6IgAqAGl0ZW1zIjthOjc6e3M6ODoiY2FuX3ZpZXciO2I6MTtzOjE1OiJjYW5fdmlld19kZXRhaWwiO2I6MTtzOjEwOiJjYW5fY3JlYXRlIjtiOjE7czo5OiJjYW5fc3RvcmUiO2I6MTtzOjg6ImNhbl9lZGl0IjtiOjE7czoxMDoiY2FuX3VwZGF0ZSI7YjoxO3M6MTA6ImNhbl9kZWxldGUiO2I6MTt9czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO31pOjEyO086Mjk6IklsbHVtaW5hdGVcU3VwcG9ydFxDb2xsZWN0aW9uIjoyOntzOjg6IgAqAGl0ZW1zIjthOjc6e3M6ODoiY2FuX3ZpZXciO2I6MTtzOjE1OiJjYW5fdmlld19kZXRhaWwiO2I6MTtzOjEwOiJjYW5fY3JlYXRlIjtiOjE7czo5OiJjYW5fc3RvcmUiO2I6MTtzOjg6ImNhbl9lZGl0IjtiOjE7czoxMDoiY2FuX3VwZGF0ZSI7YjoxO3M6MTA6ImNhbl9kZWxldGUiO2I6MTt9czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO319czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO31zOjE0OiJpc0RhdGFDb21wbGV0ZSI7YjowO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM5OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvcHJvcG9zYWwvNDEvYmFsYXMiO319', 1751254045),
('EvQVrMNMR0614Rn41S8VTtrP7hKqxDTqhewfAsdJ', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiaG9FTFFjT0U1M0tvQ21rWEV0WlJGSmI5VkVYTW9xS2lYS0EySmVNNSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czoxNDoiaXNEYXRhQ29tcGxldGUiO2I6MDtzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo0OToiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3Byb3Bvc2FsLWZpbmFsL3BlbmlsYWlhbi80MSI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxMjoic2lkZWJhcl9zZXNzIjthOjg6e2k6MDtPOjg6InN0ZENsYXNzIjoxMDp7czoyOiJpZCI7aToxO3M6NDoibmFtZSI7czo3OiJCZXJhbmRhIjtzOjQ6Imljb24iO3M6ODoibWRpLWhvbWUiO3M6OToicGFyZW50X2lkIjtOO3M6MzoidXJsIjtzOjQ6ImhvbWUiO3M6NToib3JkZXIiO2k6MTtzOjk6ImlzX2FjdGl2ZSI7aToxO3M6MTM6Im1hdGNoX3NlZ21lbnQiO3M6NDoiaG9tZSI7czoxMDoiZGVsZXRlZF9hdCI7TjtzOjE2OiJpc19kYXRhX2NvbXBsZXRlIjtpOjA7fWk6MTtPOjg6InN0ZENsYXNzIjoxMTp7czoyOiJpZCI7aToyO3M6NDoibmFtZSI7czo2OiJNYXN0ZXIiO3M6NDoiaWNvbiI7czoyMToibWRpLXRleHQtYm94LW11bHRpcGxlIjtzOjk6InBhcmVudF9pZCI7TjtzOjM6InVybCI7TjtzOjU6Im9yZGVyIjtpOjI7czo5OiJpc19hY3RpdmUiO2k6MTtzOjEzOiJtYXRjaF9zZWdtZW50IjtzOjY6Im1hc3RlciI7czoxMDoiZGVsZXRlZF9hdCI7TjtzOjE2OiJpc19kYXRhX2NvbXBsZXRlIjtpOjA7czo4OiJjaGlsZHJlbiI7YToyOntpOjA7Tzo4OiJzdGRDbGFzcyI6MTA6e3M6MjoiaWQiO2k6MztzOjQ6Im5hbWUiO3M6NDoiTWVudSI7czo0OiJpY29uIjtOO3M6OToicGFyZW50X2lkIjtpOjI7czozOiJ1cmwiO3M6MTA6Im1lbnUuaW5kZXgiO3M6NToib3JkZXIiO2k6MTtzOjk6ImlzX2FjdGl2ZSI7aToxO3M6MTM6Im1hdGNoX3NlZ21lbnQiO3M6NDoibWVudSI7czoxMDoiZGVsZXRlZF9hdCI7TjtzOjE2OiJpc19kYXRhX2NvbXBsZXRlIjtpOjA7fWk6MTtPOjg6InN0ZENsYXNzIjoxMDp7czoyOiJpZCI7aTo0O3M6NDoibmFtZSI7czoxNzoiUm9sZSAmIFBlcm1pc3Npb24iO3M6NDoiaWNvbiI7TjtzOjk6InBhcmVudF9pZCI7aToyO3M6MzoidXJsIjtOO3M6NToib3JkZXIiO2k6MjtzOjk6ImlzX2FjdGl2ZSI7aToxO3M6MTM6Im1hdGNoX3NlZ21lbnQiO3M6MTc6InJvbGUtJi1wZXJtaXNzaW9uIjtzOjEwOiJkZWxldGVkX2F0IjtOO3M6MTY6ImlzX2RhdGFfY29tcGxldGUiO2k6MDt9fX1pOjI7Tzo4OiJzdGRDbGFzcyI6MTA6e3M6MjoiaWQiO2k6NjtzOjQ6Im5hbWUiO3M6MTg6IkxlbWJhZ2EgUGVuZGlkaWthbiI7czo0OiJpY29uIjtzOjg6Im1kaS1iYW5rIjtzOjk6InBhcmVudF9pZCI7TjtzOjM6InVybCI7czoxMToibWFzdGVyX3NrbGgiO3M6NToib3JkZXIiO2k6NDtzOjk6ImlzX2FjdGl2ZSI7aToxO3M6MTM6Im1hdGNoX3NlZ21lbnQiO047czoxMDoiZGVsZXRlZF9hdCI7TjtzOjE2OiJpc19kYXRhX2NvbXBsZXRlIjtpOjA7fWk6MztPOjg6InN0ZENsYXNzIjoxMDp7czoyOiJpZCI7aTo3O3M6NDoibmFtZSI7czoxNzoiUGVybW9ob25hbiBNYWdhbmciO3M6NDoiaWNvbiI7czo5OiJtZGktaW5ib3giO3M6OToicGFyZW50X2lkIjtOO3M6MzoidXJsIjtzOjE0OiJwcm9wb3NhbF9tYXN1ayI7czo1OiJvcmRlciI7aTo1O3M6OToiaXNfYWN0aXZlIjtpOjE7czoxMzoibWF0Y2hfc2VnbWVudCI7TjtzOjEwOiJkZWxldGVkX2F0IjtOO3M6MTY6ImlzX2RhdGFfY29tcGxldGUiO2k6MDt9aTo0O086ODoic3RkQ2xhc3MiOjEwOntzOjI6ImlkIjtpOjEwO3M6NDoibmFtZSI7czoxNDoiQmFsYXNhbiBNYWdhbmciO3M6NDoiaWNvbiI7czo4OiJtZGktc2VuZCI7czo5OiJwYXJlbnRfaWQiO047czozOiJ1cmwiO3M6MTU6InByb3Bvc2FsX2tlbHVhciI7czo1OiJvcmRlciI7aTo2O3M6OToiaXNfYWN0aXZlIjtpOjE7czoxMzoibWF0Y2hfc2VnbWVudCI7TjtzOjEwOiJkZWxldGVkX2F0IjtOO3M6MTY6ImlzX2RhdGFfY29tcGxldGUiO2k6MDt9aTo1O086ODoic3RkQ2xhc3MiOjEwOntzOjI6ImlkIjtpOjExO3M6NDoibmFtZSI7czoxNzoiTm90YSBEaW5hcyBNYWdhbmciO3M6NDoiaWNvbiI7czoyMToibWRpLW5vdGUtdGV4dC1vdXRsaW5lIjtzOjk6InBhcmVudF9pZCI7TjtzOjM6InVybCI7czoxNzoibm90YV9kaW5hcy5kYWZ0YXIiO3M6NToib3JkZXIiO2k6NztzOjk6ImlzX2FjdGl2ZSI7aToxO3M6MTM6Im1hdGNoX3NlZ21lbnQiO047czoxMDoiZGVsZXRlZF9hdCI7TjtzOjE2OiJpc19kYXRhX2NvbXBsZXRlIjtpOjA7fWk6NjtPOjg6InN0ZENsYXNzIjoxMDp7czoyOiJpZCI7aToxMjtzOjQ6Im5hbWUiO3M6MjA6IkxhcG9yYW4gJiBTZXJ0aWZpa2F0IjtzOjQ6Imljb24iO3M6MTI6Im1kaS1kZWNhZ3JhbSI7czo5OiJwYXJlbnRfaWQiO047czozOiJ1cmwiO3M6MjE6InByb3Bvc2FsX2ZpbmFsLmRhZnRhciI7czo1OiJvcmRlciI7aTo4O3M6OToiaXNfYWN0aXZlIjtpOjE7czoxMzoibWF0Y2hfc2VnbWVudCI7TjtzOjEwOiJkZWxldGVkX2F0IjtOO3M6MTY6ImlzX2RhdGFfY29tcGxldGUiO2k6MDt9aTo3O086ODoic3RkQ2xhc3MiOjEwOntzOjI6ImlkIjtpOjEzO3M6NDoibmFtZSI7czoxNDoiS2Vsb2xhIFBlbmlsYWkiO3M6NDoiaWNvbiI7czoxNzoibWRpLWFjY291bnQtZ3JvdXAiO3M6OToicGFyZW50X2lkIjtOO3M6MzoidXJsIjtzOjE0OiJtYXN0ZXJfcGV0dWdhcyI7czo1OiJvcmRlciI7aTo5O3M6OToiaXNfYWN0aXZlIjtpOjE7czoxMzoibWF0Y2hfc2VnbWVudCI7TjtzOjEwOiJkZWxldGVkX2F0IjtOO3M6MTY6ImlzX2RhdGFfY29tcGxldGUiO2k6MDt9fXM6MTE6ImFjY2Vzc19zZXNzIjtPOjI5OiJJbGx1bWluYXRlXFN1cHBvcnRcQ29sbGVjdGlvbiI6Mjp7czo4OiIAKgBpdGVtcyI7YToxMDp7aToxO086Mjk6IklsbHVtaW5hdGVcU3VwcG9ydFxDb2xsZWN0aW9uIjoyOntzOjg6IgAqAGl0ZW1zIjthOjc6e3M6ODoiY2FuX3ZpZXciO2I6MTtzOjE1OiJjYW5fdmlld19kZXRhaWwiO2I6MTtzOjEwOiJjYW5fY3JlYXRlIjtiOjE7czo5OiJjYW5fc3RvcmUiO2I6MTtzOjg6ImNhbl9lZGl0IjtiOjE7czoxMDoiY2FuX3VwZGF0ZSI7YjoxO3M6MTA6ImNhbl9kZWxldGUiO2I6MTt9czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO31pOjI7TzoyOToiSWxsdW1pbmF0ZVxTdXBwb3J0XENvbGxlY3Rpb24iOjI6e3M6ODoiACoAaXRlbXMiO2E6Nzp7czo4OiJjYW5fdmlldyI7YjoxO3M6MTU6ImNhbl92aWV3X2RldGFpbCI7YjoxO3M6MTA6ImNhbl9jcmVhdGUiO2I6MTtzOjk6ImNhbl9zdG9yZSI7YjoxO3M6ODoiY2FuX2VkaXQiO2I6MTtzOjEwOiJjYW5fdXBkYXRlIjtiOjE7czoxMDoiY2FuX2RlbGV0ZSI7YjoxO31zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7fWk6MztPOjI5OiJJbGx1bWluYXRlXFN1cHBvcnRcQ29sbGVjdGlvbiI6Mjp7czo4OiIAKgBpdGVtcyI7YTo3OntzOjg6ImNhbl92aWV3IjtiOjE7czoxNToiY2FuX3ZpZXdfZGV0YWlsIjtiOjE7czoxMDoiY2FuX2NyZWF0ZSI7YjoxO3M6OToiY2FuX3N0b3JlIjtiOjE7czo4OiJjYW5fZWRpdCI7YjoxO3M6MTA6ImNhbl91cGRhdGUiO2I6MTtzOjEwOiJjYW5fZGVsZXRlIjtiOjE7fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9aTo0O086Mjk6IklsbHVtaW5hdGVcU3VwcG9ydFxDb2xsZWN0aW9uIjoyOntzOjg6IgAqAGl0ZW1zIjthOjc6e3M6ODoiY2FuX3ZpZXciO2I6MTtzOjE1OiJjYW5fdmlld19kZXRhaWwiO2I6MTtzOjEwOiJjYW5fY3JlYXRlIjtiOjE7czo5OiJjYW5fc3RvcmUiO2I6MTtzOjg6ImNhbl9lZGl0IjtiOjE7czoxMDoiY2FuX3VwZGF0ZSI7YjoxO3M6MTA6ImNhbl9kZWxldGUiO2I6MTt9czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO31pOjEzO086Mjk6IklsbHVtaW5hdGVcU3VwcG9ydFxDb2xsZWN0aW9uIjoyOntzOjg6IgAqAGl0ZW1zIjthOjc6e3M6ODoiY2FuX3ZpZXciO2I6MTtzOjE1OiJjYW5fdmlld19kZXRhaWwiO2I6MTtzOjEwOiJjYW5fY3JlYXRlIjtiOjE7czo5OiJjYW5fc3RvcmUiO2I6MTtzOjg6ImNhbl9lZGl0IjtiOjE7czoxMDoiY2FuX3VwZGF0ZSI7YjoxO3M6MTA6ImNhbl9kZWxldGUiO2I6MTt9czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO31pOjY7TzoyOToiSWxsdW1pbmF0ZVxTdXBwb3J0XENvbGxlY3Rpb24iOjI6e3M6ODoiACoAaXRlbXMiO2E6Nzp7czo4OiJjYW5fdmlldyI7YjoxO3M6MTU6ImNhbl92aWV3X2RldGFpbCI7YjoxO3M6MTA6ImNhbl9jcmVhdGUiO2I6MTtzOjk6ImNhbl9zdG9yZSI7YjoxO3M6ODoiY2FuX2VkaXQiO2I6MTtzOjEwOiJjYW5fdXBkYXRlIjtiOjE7czoxMDoiY2FuX2RlbGV0ZSI7YjoxO31zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7fWk6NztPOjI5OiJJbGx1bWluYXRlXFN1cHBvcnRcQ29sbGVjdGlvbiI6Mjp7czo4OiIAKgBpdGVtcyI7YTo3OntzOjg6ImNhbl92aWV3IjtiOjE7czoxNToiY2FuX3ZpZXdfZGV0YWlsIjtiOjE7czoxMDoiY2FuX2NyZWF0ZSI7YjoxO3M6OToiY2FuX3N0b3JlIjtiOjE7czo4OiJjYW5fZWRpdCI7YjoxO3M6MTA6ImNhbl91cGRhdGUiO2I6MTtzOjEwOiJjYW5fZGVsZXRlIjtiOjE7fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9aToxMDtPOjI5OiJJbGx1bWluYXRlXFN1cHBvcnRcQ29sbGVjdGlvbiI6Mjp7czo4OiIAKgBpdGVtcyI7YTo3OntzOjg6ImNhbl92aWV3IjtiOjE7czoxNToiY2FuX3ZpZXdfZGV0YWlsIjtiOjE7czoxMDoiY2FuX2NyZWF0ZSI7YjoxO3M6OToiY2FuX3N0b3JlIjtiOjE7czo4OiJjYW5fZWRpdCI7YjoxO3M6MTA6ImNhbl91cGRhdGUiO2I6MTtzOjEwOiJjYW5fZGVsZXRlIjtiOjE7fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9aToxMTtPOjI5OiJJbGx1bWluYXRlXFN1cHBvcnRcQ29sbGVjdGlvbiI6Mjp7czo4OiIAKgBpdGVtcyI7YTo3OntzOjg6ImNhbl92aWV3IjtiOjE7czoxNToiY2FuX3ZpZXdfZGV0YWlsIjtiOjE7czoxMDoiY2FuX2NyZWF0ZSI7YjoxO3M6OToiY2FuX3N0b3JlIjtiOjE7czo4OiJjYW5fZWRpdCI7YjoxO3M6MTA6ImNhbl91cGRhdGUiO2I6MTtzOjEwOiJjYW5fZGVsZXRlIjtiOjE7fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9aToxMjtPOjI5OiJJbGx1bWluYXRlXFN1cHBvcnRcQ29sbGVjdGlvbiI6Mjp7czo4OiIAKgBpdGVtcyI7YTo3OntzOjg6ImNhbl92aWV3IjtiOjE7czoxNToiY2FuX3ZpZXdfZGV0YWlsIjtiOjE7czoxMDoiY2FuX2NyZWF0ZSI7YjoxO3M6OToiY2FuX3N0b3JlIjtiOjE7czo4OiJjYW5fZWRpdCI7YjoxO3M6MTA6ImNhbl91cGRhdGUiO2I6MTtzOjEwOiJjYW5fZGVsZXRlIjtiOjE7fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9fQ==', 1751273622),
('pgJUwHLgACUEefwU62kFB4hSfmHtsiZ6MBGn7sat', 29, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoibHg0cnpYekhBWXdyMWJLYXd3V1pmZ29hbnNld1VINUFIYlBzWnFXSCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czoxNDoiaXNEYXRhQ29tcGxldGUiO2I6MTtzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo0MjoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3Blcm1vaG9uYW4vNDEvZGV0YWlsIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6Mjk7czoxMjoic2lkZWJhcl9zZXNzIjthOjg6e2k6MDtPOjg6InN0ZENsYXNzIjoxMDp7czoyOiJpZCI7aToxO3M6NDoibmFtZSI7czo3OiJCZXJhbmRhIjtzOjQ6Imljb24iO3M6ODoibWRpLWhvbWUiO3M6OToicGFyZW50X2lkIjtOO3M6MzoidXJsIjtzOjQ6ImhvbWUiO3M6NToib3JkZXIiO2k6MTtzOjk6ImlzX2FjdGl2ZSI7aToxO3M6MTM6Im1hdGNoX3NlZ21lbnQiO3M6NDoiaG9tZSI7czoxMDoiZGVsZXRlZF9hdCI7TjtzOjE2OiJpc19kYXRhX2NvbXBsZXRlIjtpOjA7fWk6MTtPOjg6InN0ZENsYXNzIjoxMDp7czoyOiJpZCI7aToxNDtzOjQ6Im5hbWUiO3M6MTM6IkxlbmdrYXBpIERhdGEiO3M6NDoiaWNvbiI7czo4OiJtZGktcGx1cyI7czo5OiJwYXJlbnRfaWQiO047czozOiJ1cmwiO3M6MTM6ImxlbmdrYXBpX2RhdGEiO3M6NToib3JkZXIiO2k6MztzOjk6ImlzX2FjdGl2ZSI7aToxO3M6MTM6Im1hdGNoX3NlZ21lbnQiO047czoxMDoiZGVsZXRlZF9hdCI7TjtzOjE2OiJpc19kYXRhX2NvbXBsZXRlIjtpOjA7fWk6MjtPOjg6InN0ZENsYXNzIjoxMDp7czoyOiJpZCI7aToxNTtzOjQ6Im5hbWUiO3M6MTE6IkRldGFpbCBEYXRhIjtzOjQ6Imljb24iO3M6NzoibWRpLWV5ZSI7czo5OiJwYXJlbnRfaWQiO047czozOiJ1cmwiO3M6MTE6ImRldGFpbF9kYXRhIjtzOjU6Im9yZGVyIjtpOjQ7czo5OiJpc19hY3RpdmUiO2k6MTtzOjEzOiJtYXRjaF9zZWdtZW50IjtOO3M6MTA6ImRlbGV0ZWRfYXQiO047czoxNjoiaXNfZGF0YV9jb21wbGV0ZSI7aTowO31pOjM7Tzo4OiJzdGRDbGFzcyI6MTA6e3M6MjoiaWQiO2k6MTY7czo0OiJuYW1lIjtzOjk6IkVkaXQgRGF0YSI7czo0OiJpY29uIjtzOjEwOiJtZGktcGVuY2lsIjtzOjk6InBhcmVudF9pZCI7TjtzOjM6InVybCI7czo5OiJlZGl0X2RhdGEiO3M6NToib3JkZXIiO2k6NTtzOjk6ImlzX2FjdGl2ZSI7aToxO3M6MTM6Im1hdGNoX3NlZ21lbnQiO047czoxMDoiZGVsZXRlZF9hdCI7TjtzOjE2OiJpc19kYXRhX2NvbXBsZXRlIjtpOjA7fWk6NDtPOjg6InN0ZENsYXNzIjoxMDp7czoyOiJpZCI7aToxNztzOjQ6Im5hbWUiO3M6MTU6IkJ1YXQgUGVybW9ob25hbiI7czo0OiJpY29uIjtzOjg6Im1kaS1wbHVzIjtzOjk6InBhcmVudF9pZCI7TjtzOjM6InVybCI7czoxNToiYnVhdF9wZXJtb2hvbmFuIjtzOjU6Im9yZGVyIjtpOjY7czo5OiJpc19hY3RpdmUiO2k6MTtzOjEzOiJtYXRjaF9zZWdtZW50IjtOO3M6MTA6ImRlbGV0ZWRfYXQiO047czoxNjoiaXNfZGF0YV9jb21wbGV0ZSI7aTowO31pOjU7Tzo4OiJzdGRDbGFzcyI6MTA6e3M6MjoiaWQiO2k6MTg7czo0OiJuYW1lIjtzOjE3OiJEYWZ0YXIgUGVybW9ob25hbiI7czo0OiJpY29uIjtzOjk6Im1kaS1lbWFpbCI7czo5OiJwYXJlbnRfaWQiO047czozOiJ1cmwiO3M6MjI6InVzZXIuZGFmdGFyX3Blcm1vaG9uYW4iO3M6NToib3JkZXIiO2k6NztzOjk6ImlzX2FjdGl2ZSI7aToxO3M6MTM6Im1hdGNoX3NlZ21lbnQiO047czoxMDoiZGVsZXRlZF9hdCI7TjtzOjE2OiJpc19kYXRhX2NvbXBsZXRlIjtpOjA7fWk6NjtPOjg6InN0ZENsYXNzIjoxMDp7czoyOiJpZCI7aToxOTtzOjQ6Im5hbWUiO3M6MTU6IkRhZnRhciBEaXRlcmltYSI7czo0OiJpY29uIjtzOjk6Im1kaS1pbmJveCI7czo5OiJwYXJlbnRfaWQiO047czozOiJ1cmwiO3M6Mjc6InVzZXIuZGFmdGFyX3Blcm1vaG9uYW5tYXN1ayI7czo1OiJvcmRlciI7aTo4O3M6OToiaXNfYWN0aXZlIjtpOjE7czoxMzoibWF0Y2hfc2VnbWVudCI7TjtzOjEwOiJkZWxldGVkX2F0IjtOO3M6MTY6ImlzX2RhdGFfY29tcGxldGUiO2k6MDt9aTo3O086ODoic3RkQ2xhc3MiOjEwOntzOjI6ImlkIjtpOjIwO3M6NDoibmFtZSI7czoxNDoiRGFmdGFyIExhcG9yYW4iO3M6NDoiaWNvbiI7czo4OiJtZGktZmlsZSI7czo5OiJwYXJlbnRfaWQiO047czozOiJ1cmwiO3M6MjU6InVzZXIuZGFmdGFyX2xhcG9yYW5tYWdhbmciO3M6NToib3JkZXIiO2k6OTtzOjk6ImlzX2FjdGl2ZSI7aToxO3M6MTM6Im1hdGNoX3NlZ21lbnQiO047czoxMDoiZGVsZXRlZF9hdCI7TjtzOjE2OiJpc19kYXRhX2NvbXBsZXRlIjtpOjA7fX1zOjExOiJhY2Nlc3Nfc2VzcyI7TzoyOToiSWxsdW1pbmF0ZVxTdXBwb3J0XENvbGxlY3Rpb24iOjI6e3M6ODoiACoAaXRlbXMiO2E6OTp7aToxO086Mjk6IklsbHVtaW5hdGVcU3VwcG9ydFxDb2xsZWN0aW9uIjoyOntzOjg6IgAqAGl0ZW1zIjthOjc6e3M6ODoiY2FuX3ZpZXciO2I6MTtzOjE1OiJjYW5fdmlld19kZXRhaWwiO2I6MTtzOjEwOiJjYW5fY3JlYXRlIjtiOjE7czo5OiJjYW5fc3RvcmUiO2I6MTtzOjg6ImNhbl9lZGl0IjtiOjE7czoxMDoiY2FuX3VwZGF0ZSI7YjoxO3M6MTA6ImNhbl9kZWxldGUiO2I6MTt9czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO31pOjM7TzoyOToiSWxsdW1pbmF0ZVxTdXBwb3J0XENvbGxlY3Rpb24iOjI6e3M6ODoiACoAaXRlbXMiO2E6Nzp7czo4OiJjYW5fdmlldyI7YjoxO3M6MTU6ImNhbl92aWV3X2RldGFpbCI7YjoxO3M6MTA6ImNhbl9jcmVhdGUiO2I6MTtzOjk6ImNhbl9zdG9yZSI7YjoxO3M6ODoiY2FuX2VkaXQiO2I6MTtzOjEwOiJjYW5fdXBkYXRlIjtiOjE7czoxMDoiY2FuX2RlbGV0ZSI7YjoxO31zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7fWk6MTQ7TzoyOToiSWxsdW1pbmF0ZVxTdXBwb3J0XENvbGxlY3Rpb24iOjI6e3M6ODoiACoAaXRlbXMiO2E6Nzp7czo4OiJjYW5fdmlldyI7YjoxO3M6MTU6ImNhbl92aWV3X2RldGFpbCI7YjoxO3M6MTA6ImNhbl9jcmVhdGUiO2I6MTtzOjk6ImNhbl9zdG9yZSI7YjoxO3M6ODoiY2FuX2VkaXQiO2I6MTtzOjEwOiJjYW5fdXBkYXRlIjtiOjE7czoxMDoiY2FuX2RlbGV0ZSI7YjoxO31zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7fWk6MTU7TzoyOToiSWxsdW1pbmF0ZVxTdXBwb3J0XENvbGxlY3Rpb24iOjI6e3M6ODoiACoAaXRlbXMiO2E6Nzp7czo4OiJjYW5fdmlldyI7YjoxO3M6MTU6ImNhbl92aWV3X2RldGFpbCI7YjoxO3M6MTA6ImNhbl9jcmVhdGUiO2I6MTtzOjk6ImNhbl9zdG9yZSI7YjoxO3M6ODoiY2FuX2VkaXQiO2I6MTtzOjEwOiJjYW5fdXBkYXRlIjtiOjE7czoxMDoiY2FuX2RlbGV0ZSI7YjoxO31zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7fWk6MTY7TzoyOToiSWxsdW1pbmF0ZVxTdXBwb3J0XENvbGxlY3Rpb24iOjI6e3M6ODoiACoAaXRlbXMiO2E6Nzp7czo4OiJjYW5fdmlldyI7YjoxO3M6MTU6ImNhbl92aWV3X2RldGFpbCI7YjoxO3M6MTA6ImNhbl9jcmVhdGUiO2I6MTtzOjk6ImNhbl9zdG9yZSI7YjoxO3M6ODoiY2FuX2VkaXQiO2I6MTtzOjEwOiJjYW5fdXBkYXRlIjtiOjE7czoxMDoiY2FuX2RlbGV0ZSI7YjoxO31zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7fWk6MTc7TzoyOToiSWxsdW1pbmF0ZVxTdXBwb3J0XENvbGxlY3Rpb24iOjI6e3M6ODoiACoAaXRlbXMiO2E6Nzp7czo4OiJjYW5fdmlldyI7YjoxO3M6MTU6ImNhbl92aWV3X2RldGFpbCI7YjoxO3M6MTA6ImNhbl9jcmVhdGUiO2I6MTtzOjk6ImNhbl9zdG9yZSI7YjoxO3M6ODoiY2FuX2VkaXQiO2I6MTtzOjEwOiJjYW5fdXBkYXRlIjtiOjE7czoxMDoiY2FuX2RlbGV0ZSI7YjoxO31zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7fWk6MTg7TzoyOToiSWxsdW1pbmF0ZVxTdXBwb3J0XENvbGxlY3Rpb24iOjI6e3M6ODoiACoAaXRlbXMiO2E6Nzp7czo4OiJjYW5fdmlldyI7YjoxO3M6MTU6ImNhbl92aWV3X2RldGFpbCI7YjoxO3M6MTA6ImNhbl9jcmVhdGUiO2I6MTtzOjk6ImNhbl9zdG9yZSI7YjoxO3M6ODoiY2FuX2VkaXQiO2I6MTtzOjEwOiJjYW5fdXBkYXRlIjtiOjE7czoxMDoiY2FuX2RlbGV0ZSI7YjoxO31zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7fWk6MTk7TzoyOToiSWxsdW1pbmF0ZVxTdXBwb3J0XENvbGxlY3Rpb24iOjI6e3M6ODoiACoAaXRlbXMiO2E6Nzp7czo4OiJjYW5fdmlldyI7YjoxO3M6MTU6ImNhbl92aWV3X2RldGFpbCI7YjoxO3M6MTA6ImNhbl9jcmVhdGUiO2I6MTtzOjk6ImNhbl9zdG9yZSI7YjoxO3M6ODoiY2FuX2VkaXQiO2I6MTtzOjEwOiJjYW5fdXBkYXRlIjtiOjE7czoxMDoiY2FuX2RlbGV0ZSI7YjoxO31zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7fWk6MjA7TzoyOToiSWxsdW1pbmF0ZVxTdXBwb3J0XENvbGxlY3Rpb24iOjI6e3M6ODoiACoAaXRlbXMiO2E6Nzp7czo4OiJjYW5fdmlldyI7YjoxO3M6MTU6ImNhbl92aWV3X2RldGFpbCI7YjoxO3M6MTA6ImNhbl9jcmVhdGUiO2I6MTtzOjk6ImNhbl9zdG9yZSI7YjoxO3M6ODoiY2FuX2VkaXQiO2I6MTtzOjEwOiJjYW5fdXBkYXRlIjtiOjE7czoxMDoiY2FuX2RlbGV0ZSI7YjoxO31zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7fX1zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7fX0=', 1751254036),
('ug3gqKRFwnhCiAlQRmFYTEONclR39gMA7tVUttHc', 30, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiOTZvc2hwVjVtVk4zeGdlTGRUV3Y4OFFRNVFhVmVpNVlKS3F1M0p3VyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC91c2VyL3Blcm1vaG9uYW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTozMDtzOjEyOiJzaWRlYmFyX3Nlc3MiO2E6ODp7aTowO086ODoic3RkQ2xhc3MiOjEwOntzOjI6ImlkIjtpOjE7czo0OiJuYW1lIjtzOjc6IkJlcmFuZGEiO3M6NDoiaWNvbiI7czo4OiJtZGktaG9tZSI7czo5OiJwYXJlbnRfaWQiO047czozOiJ1cmwiO3M6NDoiaG9tZSI7czo1OiJvcmRlciI7aToxO3M6OToiaXNfYWN0aXZlIjtpOjE7czoxMzoibWF0Y2hfc2VnbWVudCI7czo0OiJob21lIjtzOjEwOiJkZWxldGVkX2F0IjtOO3M6MTY6ImlzX2RhdGFfY29tcGxldGUiO2k6MDt9aToxO086ODoic3RkQ2xhc3MiOjEwOntzOjI6ImlkIjtpOjE0O3M6NDoibmFtZSI7czoxMzoiTGVuZ2thcGkgRGF0YSI7czo0OiJpY29uIjtzOjg6Im1kaS1wbHVzIjtzOjk6InBhcmVudF9pZCI7TjtzOjM6InVybCI7czoxMzoibGVuZ2thcGlfZGF0YSI7czo1OiJvcmRlciI7aTozO3M6OToiaXNfYWN0aXZlIjtpOjE7czoxMzoibWF0Y2hfc2VnbWVudCI7TjtzOjEwOiJkZWxldGVkX2F0IjtOO3M6MTY6ImlzX2RhdGFfY29tcGxldGUiO2k6MDt9aToyO086ODoic3RkQ2xhc3MiOjEwOntzOjI6ImlkIjtpOjE1O3M6NDoibmFtZSI7czoxMToiRGV0YWlsIERhdGEiO3M6NDoiaWNvbiI7czo3OiJtZGktZXllIjtzOjk6InBhcmVudF9pZCI7TjtzOjM6InVybCI7czoxMToiZGV0YWlsX2RhdGEiO3M6NToib3JkZXIiO2k6NDtzOjk6ImlzX2FjdGl2ZSI7aToxO3M6MTM6Im1hdGNoX3NlZ21lbnQiO047czoxMDoiZGVsZXRlZF9hdCI7TjtzOjE2OiJpc19kYXRhX2NvbXBsZXRlIjtpOjA7fWk6MztPOjg6InN0ZENsYXNzIjoxMDp7czoyOiJpZCI7aToxNjtzOjQ6Im5hbWUiO3M6OToiRWRpdCBEYXRhIjtzOjQ6Imljb24iO3M6MTA6Im1kaS1wZW5jaWwiO3M6OToicGFyZW50X2lkIjtOO3M6MzoidXJsIjtzOjk6ImVkaXRfZGF0YSI7czo1OiJvcmRlciI7aTo1O3M6OToiaXNfYWN0aXZlIjtpOjE7czoxMzoibWF0Y2hfc2VnbWVudCI7TjtzOjEwOiJkZWxldGVkX2F0IjtOO3M6MTY6ImlzX2RhdGFfY29tcGxldGUiO2k6MDt9aTo0O086ODoic3RkQ2xhc3MiOjEwOntzOjI6ImlkIjtpOjE3O3M6NDoibmFtZSI7czoxNToiQnVhdCBQZXJtb2hvbmFuIjtzOjQ6Imljb24iO3M6ODoibWRpLXBsdXMiO3M6OToicGFyZW50X2lkIjtOO3M6MzoidXJsIjtzOjE1OiJidWF0X3Blcm1vaG9uYW4iO3M6NToib3JkZXIiO2k6NjtzOjk6ImlzX2FjdGl2ZSI7aToxO3M6MTM6Im1hdGNoX3NlZ21lbnQiO047czoxMDoiZGVsZXRlZF9hdCI7TjtzOjE2OiJpc19kYXRhX2NvbXBsZXRlIjtpOjA7fWk6NTtPOjg6InN0ZENsYXNzIjoxMDp7czoyOiJpZCI7aToxODtzOjQ6Im5hbWUiO3M6MTc6IkRhZnRhciBQZXJtb2hvbmFuIjtzOjQ6Imljb24iO3M6OToibWRpLWVtYWlsIjtzOjk6InBhcmVudF9pZCI7TjtzOjM6InVybCI7czoyMjoidXNlci5kYWZ0YXJfcGVybW9ob25hbiI7czo1OiJvcmRlciI7aTo3O3M6OToiaXNfYWN0aXZlIjtpOjE7czoxMzoibWF0Y2hfc2VnbWVudCI7TjtzOjEwOiJkZWxldGVkX2F0IjtOO3M6MTY6ImlzX2RhdGFfY29tcGxldGUiO2k6MDt9aTo2O086ODoic3RkQ2xhc3MiOjEwOntzOjI6ImlkIjtpOjE5O3M6NDoibmFtZSI7czoxNToiRGFmdGFyIERpdGVyaW1hIjtzOjQ6Imljb24iO3M6OToibWRpLWluYm94IjtzOjk6InBhcmVudF9pZCI7TjtzOjM6InVybCI7czoyNzoidXNlci5kYWZ0YXJfcGVybW9ob25hbm1hc3VrIjtzOjU6Im9yZGVyIjtpOjg7czo5OiJpc19hY3RpdmUiO2k6MTtzOjEzOiJtYXRjaF9zZWdtZW50IjtOO3M6MTA6ImRlbGV0ZWRfYXQiO047czoxNjoiaXNfZGF0YV9jb21wbGV0ZSI7aTowO31pOjc7Tzo4OiJzdGRDbGFzcyI6MTA6e3M6MjoiaWQiO2k6MjA7czo0OiJuYW1lIjtzOjE0OiJEYWZ0YXIgTGFwb3JhbiI7czo0OiJpY29uIjtzOjg6Im1kaS1maWxlIjtzOjk6InBhcmVudF9pZCI7TjtzOjM6InVybCI7czoyNToidXNlci5kYWZ0YXJfbGFwb3Jhbm1hZ2FuZyI7czo1OiJvcmRlciI7aTo5O3M6OToiaXNfYWN0aXZlIjtpOjE7czoxMzoibWF0Y2hfc2VnbWVudCI7TjtzOjEwOiJkZWxldGVkX2F0IjtOO3M6MTY6ImlzX2RhdGFfY29tcGxldGUiO2k6MDt9fXM6MTE6ImFjY2Vzc19zZXNzIjtPOjI5OiJJbGx1bWluYXRlXFN1cHBvcnRcQ29sbGVjdGlvbiI6Mjp7czo4OiIAKgBpdGVtcyI7YTo5OntpOjE7TzoyOToiSWxsdW1pbmF0ZVxTdXBwb3J0XENvbGxlY3Rpb24iOjI6e3M6ODoiACoAaXRlbXMiO2E6Nzp7czo4OiJjYW5fdmlldyI7YjoxO3M6MTU6ImNhbl92aWV3X2RldGFpbCI7YjoxO3M6MTA6ImNhbl9jcmVhdGUiO2I6MTtzOjk6ImNhbl9zdG9yZSI7YjoxO3M6ODoiY2FuX2VkaXQiO2I6MTtzOjEwOiJjYW5fdXBkYXRlIjtiOjE7czoxMDoiY2FuX2RlbGV0ZSI7YjoxO31zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7fWk6MztPOjI5OiJJbGx1bWluYXRlXFN1cHBvcnRcQ29sbGVjdGlvbiI6Mjp7czo4OiIAKgBpdGVtcyI7YTo3OntzOjg6ImNhbl92aWV3IjtiOjE7czoxNToiY2FuX3ZpZXdfZGV0YWlsIjtiOjE7czoxMDoiY2FuX2NyZWF0ZSI7YjoxO3M6OToiY2FuX3N0b3JlIjtiOjE7czo4OiJjYW5fZWRpdCI7YjoxO3M6MTA6ImNhbl91cGRhdGUiO2I6MTtzOjEwOiJjYW5fZGVsZXRlIjtiOjE7fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9aToxNDtPOjI5OiJJbGx1bWluYXRlXFN1cHBvcnRcQ29sbGVjdGlvbiI6Mjp7czo4OiIAKgBpdGVtcyI7YTo3OntzOjg6ImNhbl92aWV3IjtiOjE7czoxNToiY2FuX3ZpZXdfZGV0YWlsIjtiOjE7czoxMDoiY2FuX2NyZWF0ZSI7YjoxO3M6OToiY2FuX3N0b3JlIjtiOjE7czo4OiJjYW5fZWRpdCI7YjoxO3M6MTA6ImNhbl91cGRhdGUiO2I6MTtzOjEwOiJjYW5fZGVsZXRlIjtiOjE7fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9aToxNTtPOjI5OiJJbGx1bWluYXRlXFN1cHBvcnRcQ29sbGVjdGlvbiI6Mjp7czo4OiIAKgBpdGVtcyI7YTo3OntzOjg6ImNhbl92aWV3IjtiOjE7czoxNToiY2FuX3ZpZXdfZGV0YWlsIjtiOjE7czoxMDoiY2FuX2NyZWF0ZSI7YjoxO3M6OToiY2FuX3N0b3JlIjtiOjE7czo4OiJjYW5fZWRpdCI7YjoxO3M6MTA6ImNhbl91cGRhdGUiO2I6MTtzOjEwOiJjYW5fZGVsZXRlIjtiOjE7fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9aToxNjtPOjI5OiJJbGx1bWluYXRlXFN1cHBvcnRcQ29sbGVjdGlvbiI6Mjp7czo4OiIAKgBpdGVtcyI7YTo3OntzOjg6ImNhbl92aWV3IjtiOjE7czoxNToiY2FuX3ZpZXdfZGV0YWlsIjtiOjE7czoxMDoiY2FuX2NyZWF0ZSI7YjoxO3M6OToiY2FuX3N0b3JlIjtiOjE7czo4OiJjYW5fZWRpdCI7YjoxO3M6MTA6ImNhbl91cGRhdGUiO2I6MTtzOjEwOiJjYW5fZGVsZXRlIjtiOjE7fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9aToxNztPOjI5OiJJbGx1bWluYXRlXFN1cHBvcnRcQ29sbGVjdGlvbiI6Mjp7czo4OiIAKgBpdGVtcyI7YTo3OntzOjg6ImNhbl92aWV3IjtiOjE7czoxNToiY2FuX3ZpZXdfZGV0YWlsIjtiOjE7czoxMDoiY2FuX2NyZWF0ZSI7YjoxO3M6OToiY2FuX3N0b3JlIjtiOjE7czo4OiJjYW5fZWRpdCI7YjoxO3M6MTA6ImNhbl91cGRhdGUiO2I6MTtzOjEwOiJjYW5fZGVsZXRlIjtiOjE7fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9aToxODtPOjI5OiJJbGx1bWluYXRlXFN1cHBvcnRcQ29sbGVjdGlvbiI6Mjp7czo4OiIAKgBpdGVtcyI7YTo3OntzOjg6ImNhbl92aWV3IjtiOjE7czoxNToiY2FuX3ZpZXdfZGV0YWlsIjtiOjE7czoxMDoiY2FuX2NyZWF0ZSI7YjoxO3M6OToiY2FuX3N0b3JlIjtiOjE7czo4OiJjYW5fZWRpdCI7YjoxO3M6MTA6ImNhbl91cGRhdGUiO2I6MTtzOjEwOiJjYW5fZGVsZXRlIjtiOjE7fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9aToxOTtPOjI5OiJJbGx1bWluYXRlXFN1cHBvcnRcQ29sbGVjdGlvbiI6Mjp7czo4OiIAKgBpdGVtcyI7YTo3OntzOjg6ImNhbl92aWV3IjtiOjE7czoxNToiY2FuX3ZpZXdfZGV0YWlsIjtiOjE7czoxMDoiY2FuX2NyZWF0ZSI7YjoxO3M6OToiY2FuX3N0b3JlIjtiOjE7czo4OiJjYW5fZWRpdCI7YjoxO3M6MTA6ImNhbl91cGRhdGUiO2I6MTtzOjEwOiJjYW5fZGVsZXRlIjtiOjE7fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9aToyMDtPOjI5OiJJbGx1bWluYXRlXFN1cHBvcnRcQ29sbGVjdGlvbiI6Mjp7czo4OiIAKgBpdGVtcyI7YTo3OntzOjg6ImNhbl92aWV3IjtiOjE7czoxNToiY2FuX3ZpZXdfZGV0YWlsIjtiOjE7czoxMDoiY2FuX2NyZWF0ZSI7YjoxO3M6OToiY2FuX3N0b3JlIjtiOjE7czo4OiJjYW5fZWRpdCI7YjoxO3M6MTA6ImNhbl91cGRhdGUiO2I6MTtzOjEwOiJjYW5fZGVsZXRlIjtiOjE7fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9fXM6Mjg6IgAqAGVzY2FwZVdoZW5DYXN0aW5nVG9TdHJpbmciO2I6MDt9czoxNDoiaXNEYXRhQ29tcGxldGUiO2I6MTt9', 1751274042);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED DEFAULT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `akun_diverifikasi` enum('belum','sudah','suspended') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'belum',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `is_data_completed` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `fullname`, `username`, `email`, `password`, `akun_diverifikasi`, `is_active`, `remember_token`, `email_verified_at`, `created_at`, `updated_at`, `deleted_at`, `is_data_completed`) VALUES
(1, 1, 'Kominfo', 'skibidi bidi', 'skibidi@mail.com', '$2y$12$nIkasul41BVUY2Au0IHN7eQ8xkyE/RUkHD3YKW2QSttxHQnePD392', 'belum', 1, NULL, '2025-04-20 03:35:59', '2025-04-20 03:36:00', '2025-06-30 01:51:33', NULL, 0),
(2, 2, 'UPNVJTT', 'upnvjt', 'test@mail.com', '$2y$12$788arwuqa.3.9DjnW57wP.TxBTaevcPxGhhzCkvPaKJzySi.HKdmG', 'sudah', 1, NULL, '2025-04-20 03:36:00', '2025-04-20 03:36:00', '2025-05-25 07:44:41', NULL, 0),
(8, 2, 'UNAIR', 'unairsby', 'unair@mail.com', '$2y$12$I1ABMG34iF3NJt1UvBLJlu2PPDoL.UTIEgODCPSgs.fjD4j2j60x.', 'sudah', 1, NULL, NULL, '2025-04-23 22:47:06', '2025-04-27 03:27:15', NULL, 0),
(10, 2, 'Universitas Trunojoyo Maduraa', 'Universitas Trunojoyo Madura', 'utm@mail.com', '$2y$12$f2MrwKRFD82QzwNmkW9QpuyixjqTaodJWjTnptclWPpXFPIFSxGVW', 'sudah', 1, NULL, NULL, '2025-04-24 19:52:21', '2025-05-30 08:22:07', NULL, 0),
(11, 2, 'Universitas Negeri Surabaya', 'Universitas Negeri Surabaya', 'unesa@mail.com', '$2y$12$lNLiVsiga4ws.hmocHoG6uIAcd6rWpx6ldADsRyn3cYpESY06.qV6', 'sudah', 1, NULL, NULL, '2025-04-24 22:41:12', '2025-04-26 08:36:41', NULL, 0),
(12, 2, 'Universitas Surabaya', 'ubaya', 'hello@example.com', '$2y$12$5Y378RvBxpvS8y2Mu/DHTOWnyTXkCPlx7FDUaE1DOHdoWozMh3of.', 'sudah', 1, NULL, NULL, '2025-05-03 10:35:14', '2025-06-10 23:45:37', NULL, 1),
(13, 2, 'UINSA', 'uinsasurabaya', 'uinsa@mail.com', '$2y$12$K.sh.jGULy1T6m4ULB4Vg.qMCSWS7ieGODfS7k0/s7v6YodxQDVsO', 'sudah', 1, NULL, NULL, '2025-05-08 19:38:19', '2025-05-22 01:07:48', NULL, 1),
(14, 2, 'Institut Teknologi Sepuluh Nopember', 'ITS', 'its@gmail.com', '$2y$12$Rk/fpKIKQoLgW5Nu6PD7p.rrP/LSQqnJIsRtkrlPy5ET5Pge.fNtC', 'sudah', 1, NULL, NULL, '2025-05-16 00:40:18', '2025-06-02 19:44:47', NULL, 1),
(15, 2, 'Universitas Negeri Malang', 'Universitas Negeri Malang', 'um@gmail.com', '$2y$12$N5SRqCOcSrMOOm4//lsKXOG9PFRrk8gbqfY4WO3IJVglVnTzuK7nq', 'sudah', 1, NULL, NULL, '2025-05-17 20:30:38', '2025-06-12 01:22:10', NULL, 1),
(16, 1, 'COBA', 'cobacoba', 'coba@gmail.com', '$2y$12$6TAtVzKxzIHu/0Fx0zJBMeDu/Sevhj8FgoSyLJ7MGPoLmem8.A8bO', 'belum', 1, NULL, NULL, '2025-05-25 08:03:08', '2025-05-25 08:18:56', NULL, 0),
(17, 2, 'Universitas Brawijaya', 'ubraw', 'ub@mail.com', '$2y$12$Hqzk9P8Si1S.FGeKcSb4P.148cy7tp4.C8NEXhNiuoLK/51vbw2dO', 'belum', 0, NULL, NULL, '2025-05-25 08:05:44', '2025-05-25 08:05:44', NULL, 0),
(18, 2, 'Universitas 17 Agustus', 'untagsurabya', 'untag@mail.com', '$2y$12$rAxPPhBjDSwLfMuTUWrKDeZrdVV2p3i/Bkt6damwlm5x/5jVXZRg.', 'sudah', 1, NULL, NULL, '2025-06-02 19:17:53', '2025-06-02 19:19:33', NULL, 1),
(19, 2, 'Universitas Muhammadiyah Surabaya', 'UM SURABAYA', 'umsby@gmail.com', '$2y$12$S9mz0xqKKaoM3NEyXGrwyORvpXALPi51CsGzwksY6Hkj90OvMqHIS', 'sudah', 1, NULL, NULL, '2025-06-04 19:12:42', '2025-06-12 20:53:24', NULL, 1),
(20, 2, 'Universitas Bhayangkara Surabaya', 'Universitas Bhayangkara Surabaya', 'UBS@mail.com', '$2y$12$LVHKhAwYGHvz4kTctwoFv.5HXjGHMyKDOfDdYqR5IJFWfyxjuKWYK', 'sudah', 1, NULL, NULL, '2025-06-12 00:19:48', '2025-06-14 22:08:17', NULL, 1),
(21, 2, 'Universitas Ciputra', 'Universitas Ciputra', 'UC@mail.com', '$2y$12$u3c97BL63QPRwdYMJ5IcJOoD/mY3cAmo7cz/szMWWH9CjoQnbAsDS', 'sudah', 1, NULL, NULL, '2025-06-12 00:42:27', '2025-06-12 01:31:48', NULL, 1),
(23, 2, 'Universitas PGRI Adi Buana Surabaya', 'Universitas PGRI Adi Buana Surabaya', 'adibuana@mail.com', '$2y$12$u9QScvfRrVZ/Rh7xrqFLre22R9p/C30noNwyO0pYHx90qirXy5phq', 'sudah', 1, NULL, NULL, '2025-06-17 21:25:02', '2025-06-17 21:27:17', NULL, 1),
(24, 2, 'Universitas Wijaya Kusuma Surabaya', 'Universitas Wijaya Kusuma Surabaya', 'UWK@mail.com', '$2y$12$M6n0SEKjSn49tWYd7/efu.p/TWAQAC5F7j6N/zuS7RpOl9L3ZgnpC', 'sudah', 1, NULL, NULL, '2025-06-23 00:37:21', '2025-06-23 01:07:54', NULL, 1),
(25, 2, 'Universitas Kristen Petra', 'Universitas Kristen Petra', 'UKP@mail.com', '$2y$12$sStQ7u/Kb9u9PmJkgulwneM9I3ILaWV/0pqite682z2r7i.p3gypi', 'sudah', 1, NULL, NULL, '2025-06-27 08:36:48', '2025-06-27 08:53:56', NULL, 1),
(26, 2, 'Universitas Muhammadiyah Sidoarjo', 'Universitas Muhammadiyah Sidoarjo', 'ums@gmail.com', '$2y$12$S4fWf.mWqgeDnyQnmMwwguiPOZs9BKF6Tv2pTV.szhfNcODBdiedC', 'sudah', 1, NULL, NULL, '2025-06-28 06:25:38', '2025-06-28 06:59:00', NULL, 1),
(27, 2, 'Universitas Dinamika', 'Universitas Dinamika', 'dinamika@gmail.com', '$2y$12$dJluwgmmWtljmxz4rVNXzewGLizfxi3Ugkl3.3adrmaPtvb28WZHK', 'sudah', 1, NULL, NULL, '2025-06-28 08:32:26', '2025-06-28 08:35:02', NULL, 1),
(28, 2, 'Universitas Jember', 'Universitas Jember', 'unej@gmail.com', '$2y$12$.XT/oM.kxqji504w1HKsY.iPcvxDTW1judnxyUKykxaarLH5Gtozi', 'sudah', 1, NULL, NULL, '2025-06-28 21:42:24', '2025-06-28 22:34:46', NULL, 1),
(29, 2, 'Universitas Telkom Surabaya', 'Universitas Telkom Surabaya', 'telkom@mail.com', '$2y$12$ETBl2pJINGKeUk5swp.3PuTtK4aBOKup9F45SI0tzgk3asHppqLiW', 'sudah', 1, NULL, NULL, '2025-06-29 05:19:01', '2025-06-29 20:25:35', NULL, 1),
(30, 2, 'SMA 2 Surabaya', 'smadasurabaya', 'smada@mail.com', '$2y$12$9ZIn9inPod422VQIqTY3geni2oeUxufDKxLdb.cphVUjuCxRy3FcW', 'sudah', 1, NULL, NULL, '2025-06-30 01:35:12', '2025-06-30 01:37:11', NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `balasan_mgng`
--
ALTER TABLE `balasan_mgng`
  ADD PRIMARY KEY (`id`),
  ADD KEY `balasan_mgng_master_mgng_id_foreign` (`master_mgng_id`),
  ADD KEY `balasan_mgng_id_bdng_member_foreign` (`id_bdng_member`),
  ADD KEY `balasan_mgng_permintaan_mgng_id_foreign` (`permintaan_mgng_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_bdng`
--
ALTER TABLE `master_bdng`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_bdng_member`
--
ALTER TABLE `master_bdng_member`
  ADD PRIMARY KEY (`id`),
  ADD KEY `master_bdng_member_id_bdng_foreign` (`id_bdng`);

--
-- Indexes for table `master_mgng`
--
ALTER TABLE `master_mgng`
  ADD PRIMARY KEY (`id`),
  ADD KEY `master_mgng_master_sklh_id_foreign` (`master_sklh_id`);

--
-- Indexes for table `master_psrt`
--
ALTER TABLE `master_psrt`
  ADD PRIMARY KEY (`id`),
  ADD KEY `master_psrt_id_bdng_member_foreign` (`id_bdng_member`),
  ADD KEY `master_psrt_permintaan_mgng_id_foreign` (`permintaan_mgng_id`);

--
-- Indexes for table `master_sklh`
--
ALTER TABLE `master_sklh`
  ADD PRIMARY KEY (`id`),
  ADD KEY `master_sklh_id_user_foreign` (`id_user`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menus_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `menu_role_permissions`
--
ALTER TABLE `menu_role_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menu_role_permissions_menu_id_role_id_permission_id_unique` (`menu_id`,`role_id`,`permission_id`),
  ADD KEY `menu_role_permissions_role_id_foreign` (`role_id`),
  ADD KEY `menu_role_permissions_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nota_dinas`
--
ALTER TABLE `nota_dinas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nota_dinas_master_mgng_id_foreign` (`master_mgng_id`),
  ADD KEY `nota_dinas_master_bdng_id_foreign` (`master_bdng_id`),
  ADD KEY `nota_dinas_bdng_member_id_foreign` (`bdng_member_id`),
  ADD KEY `nota_dinas_permintaan_mgng_id_foreign` (`permintaan_mgng_id`);

--
-- Indexes for table `nota_dinas_item`
--
ALTER TABLE `nota_dinas_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nota_dinas_item_nota_dinas_id_foreign` (`nota_dinas_id`),
  ADD KEY `nota_dinas_item_master_psrt_id_foreign` (`master_psrt_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permintaan_mgng`
--
ALTER TABLE `permintaan_mgng`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permintaan_mgng_nomor_surat_permintaan_unique` (`nomor_surat_permintaan`),
  ADD KEY `permintaan_mgng_master_mgng_id_foreign` (`master_mgng_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peserta`
--
ALTER TABLE `peserta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `peserta_master_mgng_id_foreign` (`master_mgng_id`),
  ADD KEY `peserta_id_bdng_member_foreign` (`id_bdng_member`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `balasan_mgng`
--
ALTER TABLE `balasan_mgng`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_bdng`
--
ALTER TABLE `master_bdng`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `master_mgng`
--
ALTER TABLE `master_mgng`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `master_psrt`
--
ALTER TABLE `master_psrt`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `master_sklh`
--
ALTER TABLE `master_sklh`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `menu_role_permissions`
--
ALTER TABLE `menu_role_permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `nota_dinas`
--
ALTER TABLE `nota_dinas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `nota_dinas_item`
--
ALTER TABLE `nota_dinas_item`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `permintaan_mgng`
--
ALTER TABLE `permintaan_mgng`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `peserta`
--
ALTER TABLE `peserta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `balasan_mgng`
--
ALTER TABLE `balasan_mgng`
  ADD CONSTRAINT `balasan_mgng_id_bdng_member_foreign` FOREIGN KEY (`id_bdng_member`) REFERENCES `master_bdng_member` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `balasan_mgng_master_mgng_id_foreign` FOREIGN KEY (`master_mgng_id`) REFERENCES `master_mgng` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `balasan_mgng_permintaan_mgng_id_foreign` FOREIGN KEY (`permintaan_mgng_id`) REFERENCES `permintaan_mgng` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `master_bdng_member`
--
ALTER TABLE `master_bdng_member`
  ADD CONSTRAINT `master_bdng_member_id_bdng_foreign` FOREIGN KEY (`id_bdng`) REFERENCES `master_bdng` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `master_mgng`
--
ALTER TABLE `master_mgng`
  ADD CONSTRAINT `master_mgng_master_sklh_id_foreign` FOREIGN KEY (`master_sklh_id`) REFERENCES `master_sklh` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `master_psrt`
--
ALTER TABLE `master_psrt`
  ADD CONSTRAINT `master_psrt_id_bdng_member_foreign` FOREIGN KEY (`id_bdng_member`) REFERENCES `master_bdng_member` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `master_psrt_permintaan_mgng_id_foreign` FOREIGN KEY (`permintaan_mgng_id`) REFERENCES `permintaan_mgng` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `master_sklh`
--
ALTER TABLE `master_sklh`
  ADD CONSTRAINT `master_sklh_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menus`
--
ALTER TABLE `menus`
  ADD CONSTRAINT `menus_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menu_role_permissions`
--
ALTER TABLE `menu_role_permissions`
  ADD CONSTRAINT `menu_role_permissions_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `menu_role_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `menu_role_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `nota_dinas`
--
ALTER TABLE `nota_dinas`
  ADD CONSTRAINT `nota_dinas_bdng_member_id_foreign` FOREIGN KEY (`bdng_member_id`) REFERENCES `master_bdng_member` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nota_dinas_master_bdng_id_foreign` FOREIGN KEY (`master_bdng_id`) REFERENCES `master_bdng` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nota_dinas_master_mgng_id_foreign` FOREIGN KEY (`master_mgng_id`) REFERENCES `master_mgng` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nota_dinas_permintaan_mgng_id_foreign` FOREIGN KEY (`permintaan_mgng_id`) REFERENCES `permintaan_mgng` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `nota_dinas_item`
--
ALTER TABLE `nota_dinas_item`
  ADD CONSTRAINT `nota_dinas_item_master_psrt_id_foreign` FOREIGN KEY (`master_psrt_id`) REFERENCES `master_psrt` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `nota_dinas_item_nota_dinas_id_foreign` FOREIGN KEY (`nota_dinas_id`) REFERENCES `nota_dinas` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permintaan_mgng`
--
ALTER TABLE `permintaan_mgng`
  ADD CONSTRAINT `permintaan_mgng_master_mgng_id_foreign` FOREIGN KEY (`master_mgng_id`) REFERENCES `master_mgng` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `peserta`
--
ALTER TABLE `peserta`
  ADD CONSTRAINT `peserta_id_bdng_member_foreign` FOREIGN KEY (`id_bdng_member`) REFERENCES `master_bdng_member` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `peserta_master_mgng_id_foreign` FOREIGN KEY (`master_mgng_id`) REFERENCES `master_mgng` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
