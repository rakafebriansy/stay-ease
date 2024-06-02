-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 02, 2024 at 10:57 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agrilend`
--
CREATE DATABASE IF NOT EXISTS `agrilend` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `agrilend`;

-- --------------------------------------------------------

--
-- Table structure for table `data_akun_pemerintah`
--

CREATE TABLE `data_akun_pemerintah` (
  `id_pemerintah` bigint UNSIGNED NOT NULL,
  `username_pemerintah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_pemerintah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_kota` bigint UNSIGNED NOT NULL,
  `no_tlp` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_akun_pemerintah`
--

INSERT INTO `data_akun_pemerintah` (`id_pemerintah`, `username_pemerintah`, `password`, `nama_pemerintah`, `id_kota`, `no_tlp`) VALUES
(1, 'LMJ123', '$2y$10$MS.LWis6Lv0TSDBfyOYzV.N1Ves3NDNfnmBUocwU7g9/f2ij/Dc.i', 'Dinas Lumajinggggg', 2, '081222342222');

-- --------------------------------------------------------

--
-- Table structure for table `data_akun_petani`
--

CREATE TABLE `data_akun_petani` (
  `id_petani` bigint UNSIGNED NOT NULL,
  `username_petani` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nik` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_petani` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ttl_petani` date NOT NULL,
  `pekerjaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat_petani` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_desa` bigint UNSIGNED NOT NULL,
  `no_tlp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_poktan` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_akun_petani`
--

INSERT INTO `data_akun_petani` (`id_petani`, `username_petani`, `password`, `nik`, `nama_petani`, `ttl_petani`, `pekerjaan`, `alamat_petani`, `id_desa`, `no_tlp`, `id_poktan`) VALUES
(1, 'qwerty12', '$2y$10$WtyjVLjUgUkYSRCur7wPlesw5QCN9vyhjtuqvrKMNuxgS27ytklgG', '3514092222222222', 'Syahdiladarama', '2024-05-06', 'mahasiswa', 'Jl. Melati no 23', 1, '081244444444', 1),
(2, 'saya123', '$2y$10$WUUQyxMJeBEBSKAQ7f4/8OliZWGNDGeXcmJlM1ycgJvDzSnxr9uQu', '3514095555555555', 'saya', '1986-07-17', 'buruh', 'jl. jawa no3', 1, '081288888888', 2);

-- --------------------------------------------------------

--
-- Table structure for table `data_akun_poktan`
--

CREATE TABLE `data_akun_poktan` (
  `id_poktan` bigint UNSIGNED NOT NULL,
  `username_poktan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_poktan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat_poktan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_desa` bigint UNSIGNED NOT NULL,
  `id_pemerintah` bigint UNSIGNED NOT NULL,
  `no_tlp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_akun_poktan`
--

INSERT INTO `data_akun_poktan` (`id_poktan`, `username_poktan`, `password`, `nama_poktan`, `alamat_poktan`, `id_desa`, `id_pemerintah`, `no_tlp`) VALUES
(1, 'MLT1234', '$2y$10$5WlkP62rf3qfycvRWK8HYeJONjAcyMQH0MbH5eXkAo3bhUCzHMHkW', 'Poktan Melati', 'JL. Melati Desa Nogosari', 1, 1, '081233333333'),
(2, 'LMJ1234', '$2y$10$5OZx/bIPKruL8OsIgs2Lx.1e9oRQFTDdlJMip77QVGWTIOQEfC/ZO', 'Poktan Anggur', 'JL. Anggur Desa Holywings', 1, 1, '081233777333');

-- --------------------------------------------------------

--
-- Table structure for table `data_desa`
--

CREATE TABLE `data_desa` (
  `id_desa` bigint UNSIGNED NOT NULL,
  `desa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_kota` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_desa`
--

INSERT INTO `data_desa` (`id_desa`, `desa`, `id_kota`) VALUES
(1, 'Nogosari', 1);

-- --------------------------------------------------------

--
-- Table structure for table `data_kota`
--

CREATE TABLE `data_kota` (
  `id_kota` bigint UNSIGNED NOT NULL,
  `kota` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_kota`
--

INSERT INTO `data_kota` (`id_kota`, `kota`) VALUES
(1, 'Lumajang'),
(2, 'Jember');

-- --------------------------------------------------------

--
-- Table structure for table `data_laporan`
--

CREATE TABLE `data_laporan` (
  `id_laporan` bigint UNSIGNED NOT NULL,
  `id_poktan` bigint UNSIGNED NOT NULL,
  `laporan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_status_laporan` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_laporan`
--

INSERT INTO `data_laporan` (`id_laporan`, `id_poktan`, `laporan`, `id_status_laporan`) VALUES
(1, 1, 'Laporan B2 Tugas Akhir Datmin.pdf', 1);

-- --------------------------------------------------------

--
-- Table structure for table `data_metode_bayar`
--

CREATE TABLE `data_metode_bayar` (
  `id_metode_bayar` bigint UNSIGNED NOT NULL,
  `metode_bayar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_metode_bayar`
--

INSERT INTO `data_metode_bayar` (`id_metode_bayar`, `metode_bayar`) VALUES
(1, 'Transfer'),
(2, 'Tunai');

-- --------------------------------------------------------

--
-- Table structure for table `data_pembayaran`
--

CREATE TABLE `data_pembayaran` (
  `id_pembayaran` bigint UNSIGNED NOT NULL,
  `tgl_pembayaran` timestamp NOT NULL,
  `id_tagihan` bigint UNSIGNED NOT NULL,
  `id_metode_bayar` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_pembayaran`
--

INSERT INTO `data_pembayaran` (`id_pembayaran`, `tgl_pembayaran`, `id_tagihan`, `id_metode_bayar`) VALUES
(1, '2024-05-26 17:38:32', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `data_pengajuan_modal`
--

CREATE TABLE `data_pengajuan_modal` (
  `id_pengajuan` bigint UNSIGNED NOT NULL,
  `id_petani` bigint UNSIGNED NOT NULL,
  `id_status_pengajuan` bigint UNSIGNED NOT NULL,
  `jml_pinjam` int NOT NULL,
  `bunga` int NOT NULL,
  `jml_diterima` int NOT NULL,
  `tgl_pinjam` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tgl_kembali` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_pengajuan_modal`
--

INSERT INTO `data_pengajuan_modal` (`id_pengajuan`, `id_petani`, `id_status_pengajuan`, `jml_pinjam`, `bunga`, `jml_diterima`, `tgl_pinjam`, `tgl_kembali`) VALUES
(1, 1, 3, 500000, 59000, 441000, '2024-05-23 17:00:00', '2024-05-23 17:00:00'),
(2, 1, 3, 500000, 59000, 441000, '2024-05-23 17:00:00', '2024-05-23 17:00:00'),
(3, 1, 3, 500000, 59000, 441000, '2024-05-23 17:00:00', '2024-05-24 17:00:00'),
(4, 1, 1, 1000000, 94000, 906000, '2024-05-23 17:00:00', '2024-05-24 17:00:00'),
(5, 1, 3, 1000000, 94000, 906000, '2024-05-27 00:29:17', '2024-05-26 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `data_status_laporan`
--

CREATE TABLE `data_status_laporan` (
  `id_status_laporan` bigint UNSIGNED NOT NULL,
  `status_laporan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_status_laporan`
--

INSERT INTO `data_status_laporan` (`id_status_laporan`, `status_laporan`) VALUES
(1, 'Belum Terkonfirmasi'),
(2, 'Terkonfirmasi');

-- --------------------------------------------------------

--
-- Table structure for table `data_status_pengajuan_modal`
--

CREATE TABLE `data_status_pengajuan_modal` (
  `id_status_pengajuan` bigint UNSIGNED NOT NULL,
  `status_pengajuan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_status_pengajuan_modal`
--

INSERT INTO `data_status_pengajuan_modal` (`id_status_pengajuan`, `status_pengajuan`) VALUES
(1, 'Belum Dikonfirmasi'),
(2, 'Terkonfirmasi'),
(3, 'Sudah Diterima'),
(4, 'Ditolak');

-- --------------------------------------------------------

--
-- Table structure for table `data_status_tagihan`
--

CREATE TABLE `data_status_tagihan` (
  `id_status_tagihan` bigint UNSIGNED NOT NULL,
  `status_tagihan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_status_tagihan`
--

INSERT INTO `data_status_tagihan` (`id_status_tagihan`, `status_tagihan`) VALUES
(1, 'Belum Bayar'),
(2, 'Tidak Bisa Bayar'),
(3, 'Belum Bayar Bunga'),
(4, 'Sudah Bayar Bunga'),
(5, 'Sudah Bayar'),
(6, 'Selesai');

-- --------------------------------------------------------

--
-- Table structure for table `data_tagihan`
--

CREATE TABLE `data_tagihan` (
  `id_tagihan` bigint UNSIGNED NOT NULL,
  `id_pengajuan` bigint UNSIGNED NOT NULL,
  `id_status_tagihan` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_tagihan`
--

INSERT INTO `data_tagihan` (`id_tagihan`, `id_pengajuan`, `id_status_tagihan`) VALUES
(1, 1, 6),
(2, 1, 2),
(3, 3, 1),
(4, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `data_tidak_bisa_bayar`
--

CREATE TABLE `data_tidak_bisa_bayar` (
  `id_tidak_bisa_bayar` bigint UNSIGNED NOT NULL,
  `tgl_kembali_bunga` timestamp NULL DEFAULT NULL,
  `bunga` int NOT NULL,
  `id_tagihan` bigint UNSIGNED NOT NULL,
  `id_metode_bayar` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_tidak_bisa_bayar`
--

INSERT INTO `data_tidak_bisa_bayar` (`id_tidak_bisa_bayar`, `tgl_kembali_bunga`, `bunga`, `id_tagihan`, `id_metode_bayar`) VALUES
(1, '2024-05-26 17:20:54', 59000, 1, 1),
(2, NULL, 59000, 2, 2),
(3, '2024-05-26 17:37:40', 94000, 4, 2);

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_05_24_125246_data_kota', 1),
(6, '2024_05_24_125750_data_desa', 1),
(7, '2024_05_24_125909_data_akun_pemerintah', 1),
(8, '2024_05_24_130228_data_akun_poktan', 1),
(9, '2024_05_24_130602_data_status_laporan', 1),
(10, '2024_05_24_130635_data_laporan', 1),
(11, '2024_05_24_130739_data_akun_petani', 1),
(12, '2024_05_24_131339_data_status_pengajuan_modal', 1),
(13, '2024_05_24_131449_data_pengajuan_modal', 1),
(14, '2024_05_24_131834_data_status_tagihan', 1),
(15, '2024_05_24_131921_data_tagihan', 1),
(16, '2024_05_24_134219_data_metode_bayar', 1),
(17, '2024_05_24_134237_data_pembayaran', 1),
(18, '2024_05_24_134556_data_tidak_bisa_bayar', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_akun_pemerintah`
--
ALTER TABLE `data_akun_pemerintah`
  ADD PRIMARY KEY (`id_pemerintah`),
  ADD KEY `data_akun_pemerintah_id_kota_foreign` (`id_kota`);

--
-- Indexes for table `data_akun_petani`
--
ALTER TABLE `data_akun_petani`
  ADD PRIMARY KEY (`id_petani`),
  ADD KEY `data_akun_petani_id_poktan_foreign` (`id_poktan`),
  ADD KEY `data_akun_petani_id_desa_foreign` (`id_desa`);

--
-- Indexes for table `data_akun_poktan`
--
ALTER TABLE `data_akun_poktan`
  ADD PRIMARY KEY (`id_poktan`),
  ADD KEY `data_akun_poktan_id_desa_foreign` (`id_desa`),
  ADD KEY `data_akun_poktan_id_pemerintah_foreign` (`id_pemerintah`);

--
-- Indexes for table `data_desa`
--
ALTER TABLE `data_desa`
  ADD PRIMARY KEY (`id_desa`),
  ADD KEY `data_desa_id_kota_foreign` (`id_kota`);

--
-- Indexes for table `data_kota`
--
ALTER TABLE `data_kota`
  ADD PRIMARY KEY (`id_kota`);

--
-- Indexes for table `data_laporan`
--
ALTER TABLE `data_laporan`
  ADD PRIMARY KEY (`id_laporan`),
  ADD KEY `data_laporan_id_poktan_foreign` (`id_poktan`),
  ADD KEY `data_laporan_id_status_laporan_foreign` (`id_status_laporan`);

--
-- Indexes for table `data_metode_bayar`
--
ALTER TABLE `data_metode_bayar`
  ADD PRIMARY KEY (`id_metode_bayar`);

--
-- Indexes for table `data_pembayaran`
--
ALTER TABLE `data_pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`),
  ADD KEY `data_pembayaran_id_metode_bayar_foreign` (`id_metode_bayar`),
  ADD KEY `data_pembayaran_id_tagihan_foreign` (`id_tagihan`);

--
-- Indexes for table `data_pengajuan_modal`
--
ALTER TABLE `data_pengajuan_modal`
  ADD PRIMARY KEY (`id_pengajuan`),
  ADD KEY `data_pengajuan_modal_id_petani_foreign` (`id_petani`),
  ADD KEY `data_pengajuan_modal_id_status_pengajuan_foreign` (`id_status_pengajuan`);

--
-- Indexes for table `data_status_laporan`
--
ALTER TABLE `data_status_laporan`
  ADD PRIMARY KEY (`id_status_laporan`);

--
-- Indexes for table `data_status_pengajuan_modal`
--
ALTER TABLE `data_status_pengajuan_modal`
  ADD PRIMARY KEY (`id_status_pengajuan`);

--
-- Indexes for table `data_status_tagihan`
--
ALTER TABLE `data_status_tagihan`
  ADD PRIMARY KEY (`id_status_tagihan`);

--
-- Indexes for table `data_tagihan`
--
ALTER TABLE `data_tagihan`
  ADD PRIMARY KEY (`id_tagihan`),
  ADD KEY `data_tagihan_id_pengajuan_foreign` (`id_pengajuan`),
  ADD KEY `data_tagihan_id_status_tagihan_foreign` (`id_status_tagihan`);

--
-- Indexes for table `data_tidak_bisa_bayar`
--
ALTER TABLE `data_tidak_bisa_bayar`
  ADD PRIMARY KEY (`id_tidak_bisa_bayar`),
  ADD KEY `data_tidak_bisa_bayar_id_metode_bayar_foreign` (`id_metode_bayar`),
  ADD KEY `data_tidak_bisa_bayar_id_tagihan_foreign` (`id_tagihan`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_akun_pemerintah`
--
ALTER TABLE `data_akun_pemerintah`
  MODIFY `id_pemerintah` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `data_akun_petani`
--
ALTER TABLE `data_akun_petani`
  MODIFY `id_petani` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_akun_poktan`
--
ALTER TABLE `data_akun_poktan`
  MODIFY `id_poktan` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_desa`
--
ALTER TABLE `data_desa`
  MODIFY `id_desa` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `data_kota`
--
ALTER TABLE `data_kota`
  MODIFY `id_kota` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_laporan`
--
ALTER TABLE `data_laporan`
  MODIFY `id_laporan` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `data_metode_bayar`
--
ALTER TABLE `data_metode_bayar`
  MODIFY `id_metode_bayar` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_pembayaran`
--
ALTER TABLE `data_pembayaran`
  MODIFY `id_pembayaran` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `data_pengajuan_modal`
--
ALTER TABLE `data_pengajuan_modal`
  MODIFY `id_pengajuan` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `data_status_laporan`
--
ALTER TABLE `data_status_laporan`
  MODIFY `id_status_laporan` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_status_pengajuan_modal`
--
ALTER TABLE `data_status_pengajuan_modal`
  MODIFY `id_status_pengajuan` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `data_status_tagihan`
--
ALTER TABLE `data_status_tagihan`
  MODIFY `id_status_tagihan` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `data_tagihan`
--
ALTER TABLE `data_tagihan`
  MODIFY `id_tagihan` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `data_tidak_bisa_bayar`
--
ALTER TABLE `data_tidak_bisa_bayar`
  MODIFY `id_tidak_bisa_bayar` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_akun_pemerintah`
--
ALTER TABLE `data_akun_pemerintah`
  ADD CONSTRAINT `data_akun_pemerintah_id_kota_foreign` FOREIGN KEY (`id_kota`) REFERENCES `data_kota` (`id_kota`);

--
-- Constraints for table `data_akun_petani`
--
ALTER TABLE `data_akun_petani`
  ADD CONSTRAINT `data_akun_petani_id_desa_foreign` FOREIGN KEY (`id_desa`) REFERENCES `data_desa` (`id_desa`),
  ADD CONSTRAINT `data_akun_petani_id_poktan_foreign` FOREIGN KEY (`id_poktan`) REFERENCES `data_akun_poktan` (`id_poktan`);

--
-- Constraints for table `data_akun_poktan`
--
ALTER TABLE `data_akun_poktan`
  ADD CONSTRAINT `data_akun_poktan_id_desa_foreign` FOREIGN KEY (`id_desa`) REFERENCES `data_desa` (`id_desa`),
  ADD CONSTRAINT `data_akun_poktan_id_pemerintah_foreign` FOREIGN KEY (`id_pemerintah`) REFERENCES `data_akun_pemerintah` (`id_pemerintah`);

--
-- Constraints for table `data_desa`
--
ALTER TABLE `data_desa`
  ADD CONSTRAINT `data_desa_id_kota_foreign` FOREIGN KEY (`id_kota`) REFERENCES `data_kota` (`id_kota`);

--
-- Constraints for table `data_laporan`
--
ALTER TABLE `data_laporan`
  ADD CONSTRAINT `data_laporan_id_poktan_foreign` FOREIGN KEY (`id_poktan`) REFERENCES `data_akun_poktan` (`id_poktan`),
  ADD CONSTRAINT `data_laporan_id_status_laporan_foreign` FOREIGN KEY (`id_status_laporan`) REFERENCES `data_status_laporan` (`id_status_laporan`);

--
-- Constraints for table `data_pembayaran`
--
ALTER TABLE `data_pembayaran`
  ADD CONSTRAINT `data_pembayaran_id_metode_bayar_foreign` FOREIGN KEY (`id_metode_bayar`) REFERENCES `data_metode_bayar` (`id_metode_bayar`),
  ADD CONSTRAINT `data_pembayaran_id_tagihan_foreign` FOREIGN KEY (`id_tagihan`) REFERENCES `data_tagihan` (`id_tagihan`);

--
-- Constraints for table `data_pengajuan_modal`
--
ALTER TABLE `data_pengajuan_modal`
  ADD CONSTRAINT `data_pengajuan_modal_id_petani_foreign` FOREIGN KEY (`id_petani`) REFERENCES `data_akun_petani` (`id_petani`),
  ADD CONSTRAINT `data_pengajuan_modal_id_status_pengajuan_foreign` FOREIGN KEY (`id_status_pengajuan`) REFERENCES `data_status_pengajuan_modal` (`id_status_pengajuan`);

--
-- Constraints for table `data_tagihan`
--
ALTER TABLE `data_tagihan`
  ADD CONSTRAINT `data_tagihan_id_pengajuan_foreign` FOREIGN KEY (`id_pengajuan`) REFERENCES `data_pengajuan_modal` (`id_pengajuan`),
  ADD CONSTRAINT `data_tagihan_id_status_tagihan_foreign` FOREIGN KEY (`id_status_tagihan`) REFERENCES `data_status_tagihan` (`id_status_tagihan`);

--
-- Constraints for table `data_tidak_bisa_bayar`
--
ALTER TABLE `data_tidak_bisa_bayar`
  ADD CONSTRAINT `data_tidak_bisa_bayar_id_metode_bayar_foreign` FOREIGN KEY (`id_metode_bayar`) REFERENCES `data_metode_bayar` (`id_metode_bayar`),
  ADD CONSTRAINT `data_tidak_bisa_bayar_id_tagihan_foreign` FOREIGN KEY (`id_tagihan`) REFERENCES `data_tagihan` (`id_tagihan`);
--
-- Database: `aplikasi_kas`
--
CREATE DATABASE IF NOT EXISTS `aplikasi_kas` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `aplikasi_kas`;

-- --------------------------------------------------------

--
-- Table structure for table `kas`
--

CREATE TABLE `kas` (
  `id` int NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tanggal_pembayaran` date NOT NULL,
  `nominal` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kas`
--
ALTER TABLE `kas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kas`
--
ALTER TABLE `kas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- Database: `belajar_laravel_database`
--
CREATE DATABASE IF NOT EXISTS `belajar_laravel_database` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `belajar_laravel_database`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`) VALUES
('CATEGORY-0', 'Category-0', NULL, '2020-10-10 03:00:00'),
('CATEGORY-1', 'Category-1', NULL, '2020-10-10 03:00:00'),
('CATEGORY-10', 'Category-10', NULL, '2020-10-10 03:00:00'),
('CATEGORY-11', 'Category-11', NULL, '2020-10-10 03:00:00'),
('CATEGORY-12', 'Category-12', NULL, '2020-10-10 03:00:00'),
('CATEGORY-13', 'Category-13', NULL, '2020-10-10 03:00:00'),
('CATEGORY-14', 'Category-14', NULL, '2020-10-10 03:00:00'),
('CATEGORY-15', 'Category-15', NULL, '2020-10-10 03:00:00'),
('CATEGORY-16', 'Category-16', NULL, '2020-10-10 03:00:00'),
('CATEGORY-17', 'Category-17', NULL, '2020-10-10 03:00:00'),
('CATEGORY-18', 'Category-18', NULL, '2020-10-10 03:00:00'),
('CATEGORY-19', 'Category-19', NULL, '2020-10-10 03:00:00'),
('CATEGORY-2', 'Category-2', NULL, '2020-10-10 03:00:00'),
('CATEGORY-20', 'Category-20', NULL, '2020-10-10 03:00:00'),
('CATEGORY-21', 'Category-21', NULL, '2020-10-10 03:00:00'),
('CATEGORY-22', 'Category-22', NULL, '2020-10-10 03:00:00'),
('CATEGORY-23', 'Category-23', NULL, '2020-10-10 03:00:00'),
('CATEGORY-24', 'Category-24', NULL, '2020-10-10 03:00:00'),
('CATEGORY-25', 'Category-25', NULL, '2020-10-10 03:00:00'),
('CATEGORY-26', 'Category-26', NULL, '2020-10-10 03:00:00'),
('CATEGORY-27', 'Category-27', NULL, '2020-10-10 03:00:00'),
('CATEGORY-28', 'Category-28', NULL, '2020-10-10 03:00:00'),
('CATEGORY-29', 'Category-29', NULL, '2020-10-10 03:00:00'),
('CATEGORY-3', 'Category-3', NULL, '2020-10-10 03:00:00'),
('CATEGORY-30', 'Category-30', NULL, '2020-10-10 03:00:00'),
('CATEGORY-31', 'Category-31', NULL, '2020-10-10 03:00:00'),
('CATEGORY-32', 'Category-32', NULL, '2020-10-10 03:00:00'),
('CATEGORY-33', 'Category-33', NULL, '2020-10-10 03:00:00'),
('CATEGORY-34', 'Category-34', NULL, '2020-10-10 03:00:00'),
('CATEGORY-35', 'Category-35', NULL, '2020-10-10 03:00:00'),
('CATEGORY-36', 'Category-36', NULL, '2020-10-10 03:00:00'),
('CATEGORY-37', 'Category-37', NULL, '2020-10-10 03:00:00'),
('CATEGORY-38', 'Category-38', NULL, '2020-10-10 03:00:00'),
('CATEGORY-39', 'Category-39', NULL, '2020-10-10 03:00:00'),
('CATEGORY-4', 'Category-4', NULL, '2020-10-10 03:00:00'),
('CATEGORY-40', 'Category-40', NULL, '2020-10-10 03:00:00'),
('CATEGORY-41', 'Category-41', NULL, '2020-10-10 03:00:00'),
('CATEGORY-42', 'Category-42', NULL, '2020-10-10 03:00:00'),
('CATEGORY-43', 'Category-43', NULL, '2020-10-10 03:00:00'),
('CATEGORY-44', 'Category-44', NULL, '2020-10-10 03:00:00'),
('CATEGORY-45', 'Category-45', NULL, '2020-10-10 03:00:00'),
('CATEGORY-46', 'Category-46', NULL, '2020-10-10 03:00:00'),
('CATEGORY-47', 'Category-47', NULL, '2020-10-10 03:00:00'),
('CATEGORY-48', 'Category-48', NULL, '2020-10-10 03:00:00'),
('CATEGORY-49', 'Category-49', NULL, '2020-10-10 03:00:00'),
('CATEGORY-5', 'Category-5', NULL, '2020-10-10 03:00:00'),
('CATEGORY-50', 'Category-50', NULL, '2020-10-10 03:00:00'),
('CATEGORY-51', 'Category-51', NULL, '2020-10-10 03:00:00'),
('CATEGORY-52', 'Category-52', NULL, '2020-10-10 03:00:00'),
('CATEGORY-53', 'Category-53', NULL, '2020-10-10 03:00:00'),
('CATEGORY-54', 'Category-54', NULL, '2020-10-10 03:00:00'),
('CATEGORY-55', 'Category-55', NULL, '2020-10-10 03:00:00'),
('CATEGORY-56', 'Category-56', NULL, '2020-10-10 03:00:00'),
('CATEGORY-57', 'Category-57', NULL, '2020-10-10 03:00:00'),
('CATEGORY-58', 'Category-58', NULL, '2020-10-10 03:00:00'),
('CATEGORY-59', 'Category-59', NULL, '2020-10-10 03:00:00'),
('CATEGORY-6', 'Category-6', NULL, '2020-10-10 03:00:00'),
('CATEGORY-60', 'Category-60', NULL, '2020-10-10 03:00:00'),
('CATEGORY-61', 'Category-61', NULL, '2020-10-10 03:00:00'),
('CATEGORY-62', 'Category-62', NULL, '2020-10-10 03:00:00'),
('CATEGORY-63', 'Category-63', NULL, '2020-10-10 03:00:00'),
('CATEGORY-64', 'Category-64', NULL, '2020-10-10 03:00:00'),
('CATEGORY-65', 'Category-65', NULL, '2020-10-10 03:00:00'),
('CATEGORY-66', 'Category-66', NULL, '2020-10-10 03:00:00'),
('CATEGORY-67', 'Category-67', NULL, '2020-10-10 03:00:00'),
('CATEGORY-68', 'Category-68', NULL, '2020-10-10 03:00:00'),
('CATEGORY-69', 'Category-69', NULL, '2020-10-10 03:00:00'),
('CATEGORY-7', 'Category-7', NULL, '2020-10-10 03:00:00'),
('CATEGORY-70', 'Category-70', NULL, '2020-10-10 03:00:00'),
('CATEGORY-71', 'Category-71', NULL, '2020-10-10 03:00:00'),
('CATEGORY-72', 'Category-72', NULL, '2020-10-10 03:00:00'),
('CATEGORY-73', 'Category-73', NULL, '2020-10-10 03:00:00'),
('CATEGORY-74', 'Category-74', NULL, '2020-10-10 03:00:00'),
('CATEGORY-75', 'Category-75', NULL, '2020-10-10 03:00:00'),
('CATEGORY-76', 'Category-76', NULL, '2020-10-10 03:00:00'),
('CATEGORY-77', 'Category-77', NULL, '2020-10-10 03:00:00'),
('CATEGORY-78', 'Category-78', NULL, '2020-10-10 03:00:00'),
('CATEGORY-79', 'Category-79', NULL, '2020-10-10 03:00:00'),
('CATEGORY-8', 'Category-8', NULL, '2020-10-10 03:00:00'),
('CATEGORY-80', 'Category-80', NULL, '2020-10-10 03:00:00'),
('CATEGORY-81', 'Category-81', NULL, '2020-10-10 03:00:00'),
('CATEGORY-82', 'Category-82', NULL, '2020-10-10 03:00:00'),
('CATEGORY-83', 'Category-83', NULL, '2020-10-10 03:00:00'),
('CATEGORY-84', 'Category-84', NULL, '2020-10-10 03:00:00'),
('CATEGORY-85', 'Category-85', NULL, '2020-10-10 03:00:00'),
('CATEGORY-86', 'Category-86', NULL, '2020-10-10 03:00:00'),
('CATEGORY-87', 'Category-87', NULL, '2020-10-10 03:00:00'),
('CATEGORY-88', 'Category-88', NULL, '2020-10-10 03:00:00'),
('CATEGORY-89', 'Category-89', NULL, '2020-10-10 03:00:00'),
('CATEGORY-9', 'Category-9', NULL, '2020-10-10 03:00:00'),
('CATEGORY-90', 'Category-90', NULL, '2020-10-10 03:00:00'),
('CATEGORY-91', 'Category-91', NULL, '2020-10-10 03:00:00'),
('CATEGORY-92', 'Category-92', NULL, '2020-10-10 03:00:00'),
('CATEGORY-93', 'Category-93', NULL, '2020-10-10 03:00:00'),
('CATEGORY-94', 'Category-94', NULL, '2020-10-10 03:00:00'),
('CATEGORY-95', 'Category-95', NULL, '2020-10-10 03:00:00'),
('CATEGORY-96', 'Category-96', NULL, '2020-10-10 03:00:00'),
('CATEGORY-97', 'Category-97', NULL, '2020-10-10 03:00:00'),
('CATEGORY-98', 'Category-98', NULL, '2020-10-10 03:00:00'),
('CATEGORY-99', 'Category-99', NULL, '2020-10-10 03:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `counters`
--

CREATE TABLE `counters` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `counter` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `counters`
--

INSERT INTO `counters` (`id`, `counter`) VALUES
('sample', 1);

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
(9, '2014_10_12_000000_create_users_table', 1),
(10, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(11, '2019_08_19_000000_create_failed_jobs_table', 1),
(12, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(13, '2024_04_05_161144_create_counters_table', 1),
(14, '2024_04_05_161148_create_categories_table', 1),
(15, '2024_04_05_161153_create_products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `price` int NOT NULL,
  `category_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counters`
--
ALTER TABLE `counters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
--
-- Database: `belajar_laravel_eloquent`
--
CREATE DATABASE IF NOT EXISTS `belajar_laravel_eloquent` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `belajar_laravel_eloquent`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_active` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `is_active`) VALUES
('FOOD', 'Food', 'Food Category', '2024-04-09 05:20:05', 0);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint UNSIGNED NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `commentable_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `commentable_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `email`, `title`, `comment`, `created_at`, `updated_at`, `commentable_id`, `commentable_type`) VALUES
(85, 'raka@gmail.com', 'Sample Title', 'Sample Comment', '2024-04-08 22:20:05', '2024-04-08 22:20:05', 'sample', 'sample');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`) VALUES
('RAKA', 'Raka Febrian', 'raka@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `customers_likes_products`
--

CREATE TABLE `customers_likes_products` (
  `customer_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `title`, `salary`, `created_at`, `updated_at`) VALUES
('1', 'Putri', 'Programmer', 5000000, '2024-04-08 22:20:04', '2024-04-08 22:20:04'),
('2', 'Isabel', 'Senior Programmer', 10000000, '2024-04-08 22:20:04', '2024-04-08 22:20:04');

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
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imageable_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imageable_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `url`, `imageable_id`, `imageable_type`) VALUES
(81, 'https://www.rakafebriansy.com/images/1.jpg', 'RAKA', 'customer'),
(82, 'https://www.rakafebriansy.com/images/2.jpg', '1', 'product');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_04_07_121433_create_categories_table', 1),
(6, '2024_04_07_144320_create_vouchers_table', 2),
(7, '2024_04_07_150115_create_comments_table', 3),
(8, '2024_04_07_164408_add_deleted_at_column_to_vouchers_table', 4),
(12, '2024_04_07_215538_add_column_is_active_to_categories', 5),
(13, '2024_04_07_221537_create_students_table', 5),
(14, '2024_04_07_224521_add_is_active_column_to_vouchers', 6),
(15, '2024_04_08_033010_create_customers_table', 7),
(16, '2024_04_08_033015_create_wallets_table', 7),
(17, '2024_04_08_035442_create_products_table', 8),
(18, '2024_04_08_052652_create_virtual_accounts_table', 9),
(19, '2024_04_08_055944_create_reviews_table', 10),
(20, '2024_04_08_062607_create_customers_likes_products_table', 11),
(21, '2024_04_08_081517_add_created_at_in_customers_likes_products', 12),
(22, '2024_04_09_010955_create_images_table', 13),
(23, '2024_04_09_012942_add_commentable_to_comments', 14),
(24, '2024_04_09_025703_create_tags_table', 15),
(25, '2024_04_09_035221_create_people_table', 16),
(26, '2024_04_09_043853_add_column_address_to_people', 17),
(27, '2024_04_09_050115_create_employees_table', 18);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `people`
--

CREATE TABLE `people` (
  `id` bigint UNSIGNED NOT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `people`
--

INSERT INTO `people` (`id`, `first_name`, `last_name`, `created_at`, `updated_at`, `address`) VALUES
(28, 'UMMU', 'Nada', '2024-04-08 22:20:04', '2024-04-08 22:20:04', 'Jalan Belum Jadi, Jember, Indonesia, 62341');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `price` int NOT NULL DEFAULT '0',
  `stock` int NOT NULL DEFAULT '0',
  `category_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `stock`, `category_id`) VALUES
('1', 'Product 1', 'Description 1', 2000, 21, 'FOOD'),
('2', 'Product 2', 'Description 2', 9000, 2, 'FOOD'),
('3', 'Product 3', 'Description 3', 7000, 12, 'FOOD');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint UNSIGNED NOT NULL,
  `rating` int UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `product_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grade` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hobby` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `taggables`
--

CREATE TABLE `taggables` (
  `tag_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `taggable_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `taggable_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `virtual_accounts`
--

CREATE TABLE `virtual_accounts` (
  `id` int UNSIGNED NOT NULL,
  `bank` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `va_number` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wallet_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vouchers`
--

CREATE TABLE `vouchers` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `voucher_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vouchers`
--

INSERT INTO `vouchers` (`id`, `name`, `voucher_code`, `created_at`, `deleted_at`, `is_active`) VALUES
('9bc381ea-9008-42f9-9d01-3673554c3474', 'Voucher Sample', '9bc381ea-9011-4fd0-b3b4-b849b5a6c288', '2024-04-09 05:20:05', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` int UNSIGNED NOT NULL,
  `customer_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customer_email` (`email`);

--
-- Indexes for table `customers_likes_products`
--
ALTER TABLE `customers_likes_products`
  ADD PRIMARY KEY (`customer_id`,`product_id`),
  ADD KEY `customers_likes_products_product_id_foreign` (`product_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `images_imageable_id_imageable_type_unique` (`imageable_id`,`imageable_type`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_product_id_foreign` (`product_id`),
  ADD KEY `reviews_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taggables`
--
ALTER TABLE `taggables`
  ADD PRIMARY KEY (`tag_id`,`taggable_id`,`taggable_type`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `virtual_accounts`
--
ALTER TABLE `virtual_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `virtual_accounts_wallet_id_foreign` (`wallet_id`);

--
-- Indexes for table `vouchers`
--
ALTER TABLE `vouchers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wallets_customer_id_foreign` (`customer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `people`
--
ALTER TABLE `people`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `virtual_accounts`
--
ALTER TABLE `virtual_accounts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customers_likes_products`
--
ALTER TABLE `customers_likes_products`
  ADD CONSTRAINT `customers_likes_products_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `customers_likes_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `virtual_accounts`
--
ALTER TABLE `virtual_accounts`
  ADD CONSTRAINT `virtual_accounts_wallet_id_foreign` FOREIGN KEY (`wallet_id`) REFERENCES `wallets` (`id`);

--
-- Constraints for table `wallets`
--
ALTER TABLE `wallets`
  ADD CONSTRAINT `wallets_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);
--
-- Database: `belajar_laravel_eloquent_api`
--
CREATE DATABASE IF NOT EXISTS `belajar_laravel_eloquent_api` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `belajar_laravel_eloquent_api`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(89, 'Food', NULL, '2024-04-22 20:17:58', '2024-04-22 20:17:58'),
(90, 'Gadget', NULL, '2024-04-22 20:17:58', '2024-04-22 20:17:58');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_04_21_010309_create_categories_table', 1),
(6, '2024_04_21_010314_create_products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` bigint NOT NULL DEFAULT '0',
  `stock` int NOT NULL DEFAULT '0',
  `category_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `stock`, `category_id`, `created_at`, `updated_at`) VALUES
(211, 'Product 0 of Food', 591, 0, 89, '2024-04-22 20:17:58', '2024-04-22 20:17:58'),
(212, 'Product 1 of Food', 112, 0, 89, '2024-04-22 20:17:58', '2024-04-22 20:17:58'),
(213, 'Product 2 of Food', 986, 0, 89, '2024-04-22 20:17:58', '2024-04-22 20:17:58'),
(214, 'Product 3 of Food', 897, 0, 89, '2024-04-22 20:17:58', '2024-04-22 20:17:58'),
(215, 'Product 4 of Food', 461, 0, 89, '2024-04-22 20:17:58', '2024-04-22 20:17:58'),
(216, 'Product 0 of Gadget', 460, 0, 90, '2024-04-22 20:17:58', '2024-04-22 20:17:58'),
(217, 'Product 1 of Gadget', 765, 0, 90, '2024-04-22 20:17:58', '2024-04-22 20:17:58'),
(218, 'Product 2 of Gadget', 285, 0, 90, '2024-04-22 20:17:58', '2024-04-22 20:17:58'),
(219, 'Product 3 of Gadget', 628, 0, 90, '2024-04-22 20:17:58', '2024-04-22 20:17:58'),
(220, 'Product 4 of Gadget', 921, 0, 90, '2024-04-22 20:17:58', '2024-04-22 20:17:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
--
-- Database: `belajar_laravel_security`
--
CREATE DATABASE IF NOT EXISTS `belajar_laravel_security` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `belajar_laravel_security`;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_04_11_043524_add_token_to_users', 1),
(6, '2024_04_11_102101_create_contacts_table', 2),
(7, '2024_04_11_113334_create_todos_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `todos`
--

CREATE TABLE `todos` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `todos`
--

INSERT INTO `todos` (`id`, `title`, `description`, `user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(20, 'Test Todo', 'Test Todo Description', 81, NULL, '2024-04-11 06:03:39', '2024-04-11 06:03:39');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `token` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `token`) VALUES
(81, 'Raka Febrian', 'raka@gmail.com', NULL, '$2y$04$YI1vkhFRzKiF76IYvnpwS.Tp1pA1Rny5PfU9b2F1ZFpdexnE2C5bW', NULL, '2024-04-11 06:03:39', '2024-04-11 06:03:39', 'secret'),
(82, 'Tria Putri', 'tapput@gmail.com', NULL, '$2y$04$hydADPzQfCgmOIhE9/nk1.gQTby3uurlu6d0XFxiAvIAXlws9D3ay', NULL, '2024-04-11 06:03:39', '2024-04-11 06:03:39', 'cinta');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contacts_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `todos`
--
ALTER TABLE `todos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `todos_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `todos`
--
ALTER TABLE `todos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `contacts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `todos`
--
ALTER TABLE `todos`
  ADD CONSTRAINT `todos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
--
-- Database: `belajar_php_pdo`
--
CREATE DATABASE IF NOT EXISTS `belajar_php_pdo` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `belajar_php_pdo`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int NOT NULL,
  `email` varchar(100) NOT NULL,
  `comment` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `email`, `comment`) VALUES
(1, 'raka@test.com', 'Hi Bro!'),
(2, 'putri@test.com', 'Yorobun Annyong'),
(3, 'raka@test.com', 'BroBro, Wassup'),
(6, 'raka@test.com', 'Hi');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`) VALUES
('putri', 'Putri', 'putri@test.com'),
('raka', 'Raka', 'raka@test.com');

-- --------------------------------------------------------

--
-- Table structure for table `todolist`
--

CREATE TABLE `todolist` (
  `id` int NOT NULL,
  `todo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `todolist`
--

INSERT INTO `todolist` (`id`, `todo`) VALUES
(6, 'Belajar PHP MySQL'),
(7, 'Belajar PHP MySQL'),
(8, 'Belajar Ga beres');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `todolist`
--
ALTER TABLE `todolist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `todolist`
--
ALTER TABLE `todolist`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Database: `contact_app_manager`
--
CREATE DATABASE IF NOT EXISTS `contact_app_manager` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `contact_app_manager`;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int NOT NULL,
  `nomor_telepon` varchar(20) NOT NULL,
  `owner` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `nomor_telepon`, `owner`) VALUES
(13, '0813712874214hh', 'Raka febrian');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `id` int NOT NULL,
  `username` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`id`, `username`, `email`, `password`) VALUES
(1, 'retha', 'kerenr445@gmail.com', '12345'),
(2, 'rere', 'contact.rakafebrian@gmail.com', '123'),
(3, 'rimuru', 'contact.rakafebrian@gmail.com', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `manager`
--
ALTER TABLE `manager`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `examify`
--
CREATE DATABASE IF NOT EXISTS `examify` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `examify`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int NOT NULL,
  `nama_pengguna` varchar(60) NOT NULL,
  `kata_sandi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `nama_pengguna`, `kata_sandi`) VALUES
(1, 'raka', '123');

-- --------------------------------------------------------

--
-- Table structure for table `detail_soal`
--

CREATE TABLE `detail_soal` (
  `id` int NOT NULL,
  `id_ujian` int NOT NULL,
  `id_soal` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `detail_soal`
--

INSERT INTO `detail_soal` (`id`, `id_ujian`, `id_soal`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `detail_ujian`
--

CREATE TABLE `detail_ujian` (
  `id` int NOT NULL,
  `id_siswa` int NOT NULL,
  `id_ujian` int NOT NULL,
  `skor` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id` int NOT NULL,
  `nip` char(18) NOT NULL,
  `nama` varchar(60) NOT NULL,
  `kata_sandi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id`, `nip`, `nama`, `kata_sandi`) VALUES
(1, '12345678', 'kiko', '$2y$10$mzjZmSLHAROBPNE5rFdHb.4ncMwfcLu0vTjKuwvX5PpFr9uruuc/O');

-- --------------------------------------------------------

--
-- Table structure for table `jawaban`
--

CREATE TABLE `jawaban` (
  `id` int NOT NULL,
  `jawaban` text NOT NULL,
  `id_soal` int NOT NULL,
  `opsi` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `jawaban`
--

INSERT INTO `jawaban` (`id`, `jawaban`, `id_soal`, `opsi`) VALUES
(1, 'Prabowo', 1, 'a'),
(2, 'Jamal', 1, 'b'),
(3, 'Devin', 1, 'c'),
(4, 'Deren', 1, 'd'),
(5, 'Ya', 2, 'a'),
(6, 'Tidak', 2, 'b'),
(7, 'Bukan', 2, 'c'),
(8, 'Mungkin', 2, 'd'),
(9, '49', 3, 'a'),
(10, '48', 3, 'b'),
(11, '1', 3, 'c'),
(12, '1000', 3, 'd'),
(13, 'Thomas Edison', 4, 'a'),
(14, 'Alexander Graham Bell', 4, 'b'),
(15, 'Jessica Alba', 4, 'c'),
(16, 'Leonardo Dicaprio', 4, 'd');

-- --------------------------------------------------------

--
-- Table structure for table `mata_pelajaran`
--

CREATE TABLE `mata_pelajaran` (
  `id` int NOT NULL,
  `nama` varchar(60) NOT NULL,
  `id_admin` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mata_pelajaran`
--

INSERT INTO `mata_pelajaran` (`id`, `nama`, `id_admin`) VALUES
(1, 'Matematika', 1),
(2, 'Bahasa Indonesia', 1);

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` int NOT NULL,
  `nis` char(10) NOT NULL,
  `nama` varchar(60) NOT NULL,
  `jurusan` enum('mipa','ips') NOT NULL,
  `kelas` enum('1','2','3','4','5','6') NOT NULL,
  `kata_sandi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `nis`, `nama`, `jurusan`, `kelas`, `kata_sandi`) VALUES
(1, '12345678', 'raider', 'mipa', '6', '$2y$10$Fqfk/H/Zbv1Jq/yRjbjeIuAsY6ZM6P.NsA7Br52HJZd1oai0VPQ.G');

-- --------------------------------------------------------

--
-- Table structure for table `soal`
--

CREATE TABLE `soal` (
  `id` int NOT NULL,
  `pertanyaan` text NOT NULL,
  `kunci_jawaban` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `soal`
--

INSERT INTO `soal` (`id`, `pertanyaan`, `kunci_jawaban`) VALUES
(1, 'Siapakah ayahku?', 'd'),
(2, 'Apakah zoom kamu premium?', 'd'),
(3, 'Berapa jumlah kromosom Y pada bulu babi?', 'd'),
(4, 'Siapa penemu bola lampu?', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `ujian`
--

CREATE TABLE `ujian` (
  `id` int NOT NULL,
  `nama` varchar(60) NOT NULL,
  `tanggal_ujian` date NOT NULL,
  `token` varchar(255) NOT NULL,
  `id_mata_pelajaran` int NOT NULL,
  `id_guru` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ujian`
--

INSERT INTO `ujian` (`id`, `nama`, `tanggal_ujian`, `token`, `id_mata_pelajaran`, `id_guru`) VALUES
(1, 'UTS Matematika Kelas 12', '2024-06-01', '665aa6079318a', 1, 1),
(2, 'UTS Bahasa Indonesia Kelas 12', '2024-06-01', '665aa60795539', 2, 1),
(3, 'UTS Bahasa Indonesia Kelas 11', '2024-06-01', '665aa607966d5', 2, 1),
(4, 'UTS Bahasa Indonesia Kelas 10', '2024-06-01', '665aa60799de6', 2, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detail_soal`
--
ALTER TABLE `detail_soal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_soal` (`id_soal`),
  ADD KEY `id_ujian` (`id_ujian`);

--
-- Indexes for table `detail_ujian`
--
ALTER TABLE `detail_ujian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_ujian` (`id_ujian`),
  ADD KEY `id_siswa` (`id_siswa`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jawaban`
--
ALTER TABLE `jawaban`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_soal` (`id_soal`);

--
-- Indexes for table `mata_pelajaran`
--
ALTER TABLE `mata_pelajaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `soal`
--
ALTER TABLE `soal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ujian`
--
ALTER TABLE `ujian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_guru` (`id_guru`),
  ADD KEY `id_mata_pelajaran` (`id_mata_pelajaran`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `detail_soal`
--
ALTER TABLE `detail_soal`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `detail_ujian`
--
ALTER TABLE `detail_ujian`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jawaban`
--
ALTER TABLE `jawaban`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `mata_pelajaran`
--
ALTER TABLE `mata_pelajaran`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `soal`
--
ALTER TABLE `soal`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ujian`
--
ALTER TABLE `ujian`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_soal`
--
ALTER TABLE `detail_soal`
  ADD CONSTRAINT `detail_soal_ibfk_1` FOREIGN KEY (`id_soal`) REFERENCES `soal` (`id`),
  ADD CONSTRAINT `detail_soal_ibfk_2` FOREIGN KEY (`id_ujian`) REFERENCES `ujian` (`id`);

--
-- Constraints for table `detail_ujian`
--
ALTER TABLE `detail_ujian`
  ADD CONSTRAINT `detail_ujian_ibfk_1` FOREIGN KEY (`id_ujian`) REFERENCES `ujian` (`id`),
  ADD CONSTRAINT `detail_ujian_ibfk_2` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id`);

--
-- Constraints for table `jawaban`
--
ALTER TABLE `jawaban`
  ADD CONSTRAINT `jawaban_ibfk_1` FOREIGN KEY (`id_soal`) REFERENCES `soal` (`id`);

--
-- Constraints for table `mata_pelajaran`
--
ALTER TABLE `mata_pelajaran`
  ADD CONSTRAINT `mata_pelajaran_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id`);

--
-- Constraints for table `ujian`
--
ALTER TABLE `ujian`
  ADD CONSTRAINT `ujian_ibfk_1` FOREIGN KEY (`id_guru`) REFERENCES `guru` (`id`),
  ADD CONSTRAINT `ujian_ibfk_2` FOREIGN KEY (`id_mata_pelajaran`) REFERENCES `mata_pelajaran` (`id`);
--
-- Database: `gobacco`
--
CREATE DATABASE IF NOT EXISTS `gobacco` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `gobacco`;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id_admin` bigint UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_kecamatan` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id_admin`, `username`, `password`, `id_kecamatan`) VALUES
(1, 'admin@gmail.com', '99999', 1);

-- --------------------------------------------------------

--
-- Table structure for table `jenis_kelamins`
--

CREATE TABLE `jenis_kelamins` (
  `id_jenis_kelamin` bigint UNSIGNED NOT NULL,
  `jenis_kelamin` enum('laki-laki','perempuan') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jenis_kelamins`
--

INSERT INTO `jenis_kelamins` (`id_jenis_kelamin`, `jenis_kelamin`) VALUES
(1, 'laki-laki'),
(2, 'perempuan');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_pengujians`
--

CREATE TABLE `jenis_pengujians` (
  `id_pengujian` bigint UNSIGNED NOT NULL,
  `jenis_pengujian` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga_uji` int NOT NULL,
  `id_pemerintah` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jenis_pengujians`
--

INSERT INTO `jenis_pengujians` (`id_pengujian`, `jenis_pengujian`, `harga_uji`, `id_pemerintah`) VALUES
(1, 'Nikotin Metode AA3', 400000, 1),
(2, 'Air Metode Oven', 150000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jenis_tembakaus`
--

CREATE TABLE `jenis_tembakaus` (
  `id_jenis_tembakau` bigint UNSIGNED NOT NULL,
  `jenis_tembakau` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jenis_tembakaus`
--

INSERT INTO `jenis_tembakaus` (`id_jenis_tembakau`, `jenis_tembakau`) VALUES
(1, 'Voor Oogst (VO)'),
(2, 'No Oogst (NO)'),
(3, 'Virginia');

-- --------------------------------------------------------

--
-- Table structure for table `kecamatans`
--

CREATE TABLE `kecamatans` (
  `id_kecamatan` bigint UNSIGNED NOT NULL,
  `kecamatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kecamatans`
--

INSERT INTO `kecamatans` (`id_kecamatan`, `kecamatan`) VALUES
(1, 'Patrang'),
(2, 'Kaliwates'),
(3, 'Arjasa'),
(4, 'Sumbersari');

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
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2024_04_09_151938_create_kecamatans_table', 1),
(3, '2024_04_09_152054_create_admins_table', 1),
(4, '2024_04_09_152605_create_pemerintahs_table', 1),
(5, '2024_04_09_152921_create_jenis_kelamins_table', 1),
(6, '2024_04_09_153226_create_jenis_tembakaus_table', 1),
(7, '2024_04_09_153317_create_status_ujis_table', 1),
(8, '2024_04_09_153431_create_jenis_pengujians_table', 1),
(9, '2024_04_09_153649_create_petani_tembakaus_table', 1),
(10, '2024_04_10_064604_create_sertifikasi_produks_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pemerintahs`
--

CREATE TABLE `pemerintahs` (
  `id_pemerintah` bigint UNSIGNED NOT NULL,
  `username_pemerintah` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pw_pemerintah` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_pemerintah` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telp_pemerintah` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_kecamatan` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pemerintahs`
--

INSERT INTO `pemerintahs` (`id_pemerintah`, `username_pemerintah`, `pw_pemerintah`, `email_pemerintah`, `telp_pemerintah`, `id_kecamatan`) VALUES
(1, 'dinas_pertanian_001', 'dinas123', 'dinas001@gmail.com', '+1-667-989-7308', 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `petani_tembakaus`
--

CREATE TABLE `petani_tembakaus` (
  `id_petani` bigint UNSIGNED NOT NULL,
  `nama_petani` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username_petani` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pw_petani` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_petani` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_jenis_kelamin` bigint UNSIGNED NOT NULL,
  `alamat_petani` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_kecamatan` bigint UNSIGNED NOT NULL,
  `telp_petani` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `noktp_petani` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `petani_tembakaus`
--

INSERT INTO `petani_tembakaus` (`id_petani`, `nama_petani`, `username_petani`, `pw_petani`, `email_petani`, `id_jenis_kelamin`, `alamat_petani`, `id_kecamatan`, `telp_petani`, `noktp_petani`) VALUES
(1, 'Maretha Nur Azizah', 'retha', '12345', 'retha@gmail.com', 2, 'Jl. Manggis', 1, '081284393921', '7731873237197');

-- --------------------------------------------------------

--
-- Table structure for table `sertifikasi_produks`
--

CREATE TABLE `sertifikasi_produks` (
  `id_sertifikasi` bigint UNSIGNED NOT NULL,
  `id_kecamatan` bigint UNSIGNED DEFAULT NULL,
  `id_petani` bigint UNSIGNED NOT NULL,
  `id_pengujian` bigint UNSIGNED NOT NULL,
  `id_jenis_tembakau` bigint UNSIGNED NOT NULL,
  `id_status` bigint UNSIGNED NOT NULL,
  `surat_izin_usaha` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_serahsampel` date NOT NULL,
  `berkas_lain` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gmb_tembakau` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bukti_tf` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `produk_tembakau` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hasil_pengujian` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sertifikasi_produks`
--

INSERT INTO `sertifikasi_produks` (`id_sertifikasi`, `id_kecamatan`, `id_petani`, `id_pengujian`, `id_jenis_tembakau`, `id_status`, `surat_izin_usaha`, `tgl_serahsampel`, `berkas_lain`, `gmb_tembakau`, `bukti_tf`, `produk_tembakau`, `hasil_pengujian`) VALUES
(1, 1, 1, 2, 1, 3, 'surat001.jpg', '1998-12-01', 'ea.jpg', 'Versicolor.png', 'fugiat.jpg', 'quia.jpg', 'animi.jpg'),
(2, 1, 1, 2, 2, 2, 'surat002.jpg', '1990-09-23', 'saepe.jpg', 'Virginica.png', 'autem.jpg', 'vero.jpg', 'necessitatibus.jpg'),
(3, 1, 1, 1, 2, 2, 'surat003.jpg', '1996-06-28', 'pariatur.jpg', 'Setosa.png', 'eveniet.jpg', 'aut.jpg', 'ERD.jpg'),
(5, 1, 1, 2, 3, 3, '21161562044_Salma Salsabila Dwinta_Laporan Modul 8 (1).pdf', '2024-04-18', 'Raka Febrian Syahputra_1050_B_Tugas Pertemuan 7.pdf', 'Rectangle 26 (1).png', 'farmer-holds-rice-hand 2.png', 'Yenefer', NULL),
(6, 1, 1, 2, 3, 3, 'Langkah non Tunai.png', '2024-05-16', 'Langkah non Tunai.png', 'Langkah non Tunai.png', 'Langkah non Tunai.png', 'Yenefer', NULL),
(7, 1, 1, 1, 1, 3, 'Frame 4.png', '2024-05-18', 'Frame 5.png', 'Frame 3.png', 'Frame 5.png', 'Yenefer', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `status_ujis`
--

CREATE TABLE `status_ujis` (
  `id_status` bigint UNSIGNED NOT NULL,
  `status_uji` enum('Konfirmasi','Tolak','Proses') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `status_ujis`
--

INSERT INTO `status_ujis` (`id_status`, `status_uji`) VALUES
(1, 'Konfirmasi'),
(2, 'Tolak'),
(3, 'Proses');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id_admin`),
  ADD KEY `admins_id_kecamatan_foreign` (`id_kecamatan`);

--
-- Indexes for table `jenis_kelamins`
--
ALTER TABLE `jenis_kelamins`
  ADD PRIMARY KEY (`id_jenis_kelamin`);

--
-- Indexes for table `jenis_pengujians`
--
ALTER TABLE `jenis_pengujians`
  ADD PRIMARY KEY (`id_pengujian`);

--
-- Indexes for table `jenis_tembakaus`
--
ALTER TABLE `jenis_tembakaus`
  ADD PRIMARY KEY (`id_jenis_tembakau`);

--
-- Indexes for table `kecamatans`
--
ALTER TABLE `kecamatans`
  ADD PRIMARY KEY (`id_kecamatan`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pemerintahs`
--
ALTER TABLE `pemerintahs`
  ADD PRIMARY KEY (`id_pemerintah`),
  ADD KEY `pemerintahs_id_kecamatan_foreign` (`id_kecamatan`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `petani_tembakaus`
--
ALTER TABLE `petani_tembakaus`
  ADD PRIMARY KEY (`id_petani`),
  ADD UNIQUE KEY `petani_tembakaus_username_petani_unique` (`username_petani`),
  ADD UNIQUE KEY `petani_tembakaus_noktp_petani_unique` (`noktp_petani`),
  ADD KEY `petani_tembakaus_id_jenis_kelamin_foreign` (`id_jenis_kelamin`),
  ADD KEY `petani_tembakaus_id_kecamatan_foreign` (`id_kecamatan`);

--
-- Indexes for table `sertifikasi_produks`
--
ALTER TABLE `sertifikasi_produks`
  ADD PRIMARY KEY (`id_sertifikasi`),
  ADD KEY `sertifikasi_produks_id_kecamatan_foreign` (`id_kecamatan`),
  ADD KEY `sertifikasi_produks_id_petani_foreign` (`id_petani`),
  ADD KEY `sertifikasi_produks_id_pengujian_foreign` (`id_pengujian`),
  ADD KEY `sertifikasi_produks_id_jenis_tembakau_foreign` (`id_jenis_tembakau`),
  ADD KEY `sertifikasi_produks_id_status_foreign` (`id_status`);

--
-- Indexes for table `status_ujis`
--
ALTER TABLE `status_ujis`
  ADD PRIMARY KEY (`id_status`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id_admin` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jenis_kelamins`
--
ALTER TABLE `jenis_kelamins`
  MODIFY `id_jenis_kelamin` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jenis_pengujians`
--
ALTER TABLE `jenis_pengujians`
  MODIFY `id_pengujian` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jenis_tembakaus`
--
ALTER TABLE `jenis_tembakaus`
  MODIFY `id_jenis_tembakau` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kecamatans`
--
ALTER TABLE `kecamatans`
  MODIFY `id_kecamatan` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pemerintahs`
--
ALTER TABLE `pemerintahs`
  MODIFY `id_pemerintah` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `petani_tembakaus`
--
ALTER TABLE `petani_tembakaus`
  MODIFY `id_petani` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sertifikasi_produks`
--
ALTER TABLE `sertifikasi_produks`
  MODIFY `id_sertifikasi` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `status_ujis`
--
ALTER TABLE `status_ujis`
  MODIFY `id_status` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admins`
--
ALTER TABLE `admins`
  ADD CONSTRAINT `admins_id_kecamatan_foreign` FOREIGN KEY (`id_kecamatan`) REFERENCES `kecamatans` (`id_kecamatan`);

--
-- Constraints for table `pemerintahs`
--
ALTER TABLE `pemerintahs`
  ADD CONSTRAINT `pemerintahs_id_kecamatan_foreign` FOREIGN KEY (`id_kecamatan`) REFERENCES `kecamatans` (`id_kecamatan`);

--
-- Constraints for table `petani_tembakaus`
--
ALTER TABLE `petani_tembakaus`
  ADD CONSTRAINT `petani_tembakaus_id_jenis_kelamin_foreign` FOREIGN KEY (`id_jenis_kelamin`) REFERENCES `jenis_kelamins` (`id_jenis_kelamin`),
  ADD CONSTRAINT `petani_tembakaus_id_kecamatan_foreign` FOREIGN KEY (`id_kecamatan`) REFERENCES `kecamatans` (`id_kecamatan`);

--
-- Constraints for table `sertifikasi_produks`
--
ALTER TABLE `sertifikasi_produks`
  ADD CONSTRAINT `sertifikasi_produks_id_jenis_tembakau_foreign` FOREIGN KEY (`id_jenis_tembakau`) REFERENCES `jenis_tembakaus` (`id_jenis_tembakau`),
  ADD CONSTRAINT `sertifikasi_produks_id_kecamatan_foreign` FOREIGN KEY (`id_kecamatan`) REFERENCES `kecamatans` (`id_kecamatan`),
  ADD CONSTRAINT `sertifikasi_produks_id_pengujian_foreign` FOREIGN KEY (`id_pengujian`) REFERENCES `jenis_pengujians` (`id_pengujian`),
  ADD CONSTRAINT `sertifikasi_produks_id_petani_foreign` FOREIGN KEY (`id_petani`) REFERENCES `petani_tembakaus` (`id_petani`),
  ADD CONSTRAINT `sertifikasi_produks_id_status_foreign` FOREIGN KEY (`id_status`) REFERENCES `status_ujis` (`id_status`);
--
-- Database: `laravel`
--
CREATE DATABASE IF NOT EXISTS `laravel` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `laravel`;

-- --------------------------------------------------------

--
-- Table structure for table `credentials`
--

CREATE TABLE `credentials` (
  `id` bigint UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','mitra','dealer','dinas') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `credentials`
--

INSERT INTO `credentials` (`id`, `username`, `email`, `password`, `role`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', 'admin', 'admin', '2024-04-18 19:31:41', '2024-04-18 19:31:41');

-- --------------------------------------------------------

--
-- Table structure for table `dealers`
--

CREATE TABLE `dealers` (
  `id` bigint UNSIGNED NOT NULL,
  `credential_id` bigint UNSIGNED NOT NULL,
  `nama_dealer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telepon_dealer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_dealer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat_dealer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surat_izin_distribusi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_ktp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `riwayat_kerjasama` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pas_foto_dealer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `informasi_dealer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dinas`
--

CREATE TABLE `dinas` (
  `id` bigint UNSIGNED NOT NULL,
  `credential_id` bigint UNSIGNED NOT NULL,
  `foto_dinas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_dinas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat_dinas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_dinas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telepon_dinas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `informasi_dinas` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(1, '2019_08_19_000000_create_failed_jobs_table', 1),
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2024_04_11_023838_create_credentials_table', 1),
(4, '2024_04_11_024257_create_dealers_table', 1),
(5, '2024_04_11_024520_create_dinas_table', 1),
(6, '2024_04_11_024520_create_mitras_table', 1),
(7, '2024_04_11_024521_create_password_reset_tokens_table', 1),
(8, '2024_04_13_183524_create_wilayahs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mitras`
--

CREATE TABLE `mitras` (
  `id` bigint UNSIGNED NOT NULL,
  `credential_id` bigint UNSIGNED NOT NULL,
  `nama_pimpinan_perusahaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_perusahaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telepon_perusahaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_perusahaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat_perusahaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_induk_berusaha` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `akta_perusahaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `npwp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surat_pernyataan_usaha_perseorangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surat_izin_usaha_produksi_benih` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `informasi_perusahaan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wilayahs`
--

CREATE TABLE `wilayahs` (
  `id` bigint UNSIGNED NOT NULL,
  `wilayah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_wilayah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `luas_lahan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `topografi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipe_tanah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kondisi_iklim` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kesuburan_tanah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `drainase` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rekomendasi_tanaman` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `credentials`
--
ALTER TABLE `credentials`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `credentials_username_unique` (`username`);

--
-- Indexes for table `dealers`
--
ALTER TABLE `dealers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dealers_credential_id_foreign` (`credential_id`);

--
-- Indexes for table `dinas`
--
ALTER TABLE `dinas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dinas_credential_id_foreign` (`credential_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mitras`
--
ALTER TABLE `mitras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mitras_credential_id_foreign` (`credential_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `wilayahs`
--
ALTER TABLE `wilayahs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wilayahs_wilayah_unique` (`wilayah`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `credentials`
--
ALTER TABLE `credentials`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dealers`
--
ALTER TABLE `dealers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dinas`
--
ALTER TABLE `dinas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `mitras`
--
ALTER TABLE `mitras`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wilayahs`
--
ALTER TABLE `wilayahs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dealers`
--
ALTER TABLE `dealers`
  ADD CONSTRAINT `dealers_credential_id_foreign` FOREIGN KEY (`credential_id`) REFERENCES `credentials` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `dinas`
--
ALTER TABLE `dinas`
  ADD CONSTRAINT `dinas_credential_id_foreign` FOREIGN KEY (`credential_id`) REFERENCES `credentials` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mitras`
--
ALTER TABLE `mitras`
  ADD CONSTRAINT `mitras_credential_id_foreign` FOREIGN KEY (`credential_id`) REFERENCES `credentials` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `laravel-contact-api`
--
CREATE DATABASE IF NOT EXISTS `laravel-contact-api` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `laravel-contact-api`;

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint UNSIGNED NOT NULL,
  `street` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `street`, `city`, `province`, `country`, `postal_code`, `contact_id`, `created_at`, `updated_at`) VALUES
(178, 'test', 'test', 'test', 'test', '123123', 2565, '2024-05-10 21:17:21', '2024-05-10 21:17:21');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint UNSIGNED NOT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `first_name`, `last_name`, `email`, `phone`, `user_id`, `created_at`, `updated_at`) VALUES
(2565, 'test', 'test', 'test@example.com', '111111', 1388, '2024-05-10 21:17:21', '2024-05-10 21:17:21');

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
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2024_05_08_012736_create_users_table', 1),
(3, '2024_05_08_013134_create_contacts_table', 2),
(4, '2024_05_08_064001_create_addresses_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `name`, `token`, `created_at`, `updated_at`) VALUES
(1388, 'test', '$2y$04$5GCspy600tYa1xL63fVVB.m4cj1sexjt9zUX6ZrsfzFxVmYOuRhV.', 'test', 'test', '2024-05-10 21:17:21', '2024-05-10 21:17:21'),
(1389, 'test2', '$2y$04$fydeRYmYrS3vSBPxOW/YWuFnSnhpZSN5LT1H/TOJK14E1wSLKmOuK', 'test2', 'test2', '2024-05-10 21:17:21', '2024-05-10 21:17:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_contact_id_foreign` (`contact_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contacts_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_token_unique` (`token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2566;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1390;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_contact_id_foreign` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`id`);

--
-- Constraints for table `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `contacts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
--
-- Database: `laravel_todolist`
--
CREATE DATABASE IF NOT EXISTS `laravel_todolist` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `laravel_todolist`;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_04_10_141159_create_todos_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `todos`
--

CREATE TABLE `todos` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `todo` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `todos`
--
ALTER TABLE `todos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Database: `php_login_management`
--
CREATE DATABASE IF NOT EXISTS `php_login_management` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `php_login_management`;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD KEY `fk_sessions_users` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sessions`
--
ALTER TABLE `sessions`
  ADD CONSTRAINT `fk_sessions_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
--
-- Database: `php_login_management_test`
--
CREATE DATABASE IF NOT EXISTS `php_login_management_test` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `php_login_management_test`;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`) VALUES
('raka', 'Raka', '$2y$10$yKfQj/R1Res0wGQfxi3KUeEfOf7ZLOY4zbe9qrVbd46/4frkrUlya');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD KEY `fk_sessions_users` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sessions`
--
ALTER TABLE `sessions`
  ADD CONSTRAINT `fk_sessions_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
--
-- Database: `sipuktan`
--
CREATE DATABASE IF NOT EXISTS `sipuktan` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `sipuktan`;

-- --------------------------------------------------------

--
-- Table structure for table `alokasis`
--

CREATE TABLE `alokasis` (
  `id` bigint UNSIGNED NOT NULL,
  `jumlah_pupuk` int NOT NULL,
  `musim_tanam` enum('MT1','MT2','MT3') COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_jenis_pupuk` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Belum Tersedia','Menunggu Pembayaran','Dibayar','Tidak Diambil') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Belum Tersedia',
  `id_kios_resmi` bigint UNSIGNED NOT NULL,
  `id_petani` bigint UNSIGNED NOT NULL,
  `id_pemerintah` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `alokasis`
--

INSERT INTO `alokasis` (`id`, `jumlah_pupuk`, `musim_tanam`, `tahun`, `id_jenis_pupuk`, `status`, `id_kios_resmi`, `id_petani`, `id_pemerintah`) VALUES
(1, 1, 'MT1', '2024', 'urea', 'Belum Tersedia', 1, 1, 1),
(2, 2, 'MT1', '2024', 'sp36', 'Belum Tersedia', 1, 1, 1),
(3, 60, 'MT1', '2024', 'ponskha', 'Belum Tersedia', 1, 1, 1),
(4, 1, 'MT1', '2024', 'urea', 'Belum Tersedia', 1, 2, 1),
(5, 1, 'MT1', '2024', 'ponskha', 'Belum Tersedia', 1, 2, 1),
(6, 12, 'MT2', '2024', 'ponskha', 'Belum Tersedia', 1, 2, 1),
(7, 22, 'MT3', '2024', 'ponskha', 'Belum Tersedia', 1, 2, 1);

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
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint UNSIGNED NOT NULL,
  `pertanyaan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `jawaban` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_pengguna` enum('Petani','Kios Resmi') COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_pemerintah` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `pertanyaan`, `jawaban`, `jenis_pengguna`, `id_pemerintah`) VALUES
(1, 'Bagaimana  cara mendaftar untuk mendapatkan pupuk subsidi?', 'Silakan klik “Daftar Sekarang!” lanjut pilih masuk sebagai petani dan isi dengan data diri yang sesuai ', 'Petani', 1),
(2, 'Apa saja pupuk yang diakomodasi oleh pemerintah ?', 'Untuk tahun ini pupuk yang diakomodasi oleh pemerintah ada pupuk urea, pupuk ponskha, dan pupuk SP-36', 'Petani', 1),
(3, 'Bagaimana jika tidak bisa mengambil pupuk?', 'Pengambilan pupuk bisa diwakilkan dengan syarat membawa surat kuasa yang sudah diberi materai 10000 dan tanda tangan petani yang bersangkutan serta membawa ktp asli petani yang bersangkutan', 'Petani', 1),
(4, 'Kenapa pupuk tahun ini terus turun?', 'Pengalokasian pupuk subsidi pada tahun ini mengalami penurunan karena anggaran dari pemerintah pusat untuk pupuk subsidi dikurangi', 'Petani', 1),
(5, 'Sampai kapan masa berlaku pengambilan pupuk?', 'Sampai musim tanam atau MT alokasi berakhir yaitu selama 4 bulan sejak MT berlaku', 'Petani', 1),
(6, 'Bagaimana  cara mendaftar untuk kios resmi?', 'Silakan klik “Daftar Sekarang!” lanjut pilih masuk sebagai kios resmi dan isi dengan data diri yang sesuai', 'Kios Resmi', 1),
(7, 'Apa ada syarat tertentu untuk foto laporan?', 'Foto untuk pelaporan pembelian pupuk subsidi harus jelas dan tidak buram serta foto penerima dan foto ktp harus sesuai serta tidak lebih dari 5 mb', 'Kios Resmi', 1),
(8, 'Apa yang perlu dilakukan jika pupuk sudah datang?', 'Silakan klik tombol konfirmasi kedatangan untuk mengubah status ketersediaan pupuk di kios resmi dan petani ', 'Kios Resmi', 1),
(9, 'Bagaimana jika masa pengambilan sudah habis tetapi belum ambil?', 'Alokasi pupuk bagi petani yang tidak mengambil sampai musim tanam berakhir akan otomatis berubah status menjadi “Tidak Diambil”', 'Kios Resmi', 1),
(10, 'Bagaimana jika saya lupa sandi saaat masuk?', 'Silakan klik Lupa Sandi pada halaman masuk dan isikan username telegram dan secara otomatis sipuktan_bot akan mengirimkan pesan untuk pengisian kata sandi baru', 'Kios Resmi', 1);

-- --------------------------------------------------------

--
-- Table structure for table `jenis_pupuks`
--

CREATE TABLE `jenis_pupuks` (
  `id` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jenis_pupuks`
--

INSERT INTO `jenis_pupuks` (`id`, `jenis`, `harga`) VALUES
('ponskha', 'Ponshka', 2300),
('sp36', 'SP-36', 2400),
('urea', 'Urea', 2250);

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
-- Table structure for table `kecamatans`
--

CREATE TABLE `kecamatans` (
  `id` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kecamatans`
--

INSERT INTO `kecamatans` (`id`, `nama`) VALUES
('ajung', 'Ajung'),
('kebonsari', 'Kebonsari'),
('pakusari', 'Pakusari'),
('patrang', 'Patrang'),
('sumbersari', 'Sumbersari');

-- --------------------------------------------------------

--
-- Table structure for table `kelompok_tanis`
--

CREATE TABLE `kelompok_tanis` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_kios_resmi` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kelompok_tanis`
--

INSERT INTO `kelompok_tanis` (`id`, `nama`, `id_kios_resmi`) VALUES
(1, 'Poktan Sumbersari 1', 1),
(2, 'Poktan Kebonsari 1', 2),
(3, 'Poktan Jayabaya', 3);

-- --------------------------------------------------------

--
-- Table structure for table `keluhans`
--

CREATE TABLE `keluhans` (
  `id` bigint UNSIGNED NOT NULL,
  `subjek` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keluhan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `balasan` text COLLATE utf8mb4_unicode_ci,
  `tanggal_keluhan` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_petani` bigint UNSIGNED DEFAULT NULL,
  `id_kios_resmi` bigint UNSIGNED DEFAULT NULL,
  `id_pemerintah` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kios_resmis`
--

CREATE TABLE `kios_resmis` (
  `id` bigint UNSIGNED NOT NULL,
  `nib` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jalan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kata_sandi` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_pemilik_kios` bigint UNSIGNED NOT NULL,
  `id_kecamatan` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aktif` tinyint(1) NOT NULL DEFAULT '0',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kios_resmis`
--

INSERT INTO `kios_resmis` (`id`, `nib`, `nama`, `jalan`, `kata_sandi`, `id_pemilik_kios`, `id_kecamatan`, `aktif`, `token`) VALUES
(1, '0908897766', 'Harapan', 'Jl. Mangga', '$2y$12$MPa3lqifV5jAceCE0NSnwuqBlgQGzOkVlvFNyBU.OaIqrN2wQrElq', 1, 'sumbersari', 1, NULL),
(2, '9312737498', 'Tani Jaya', 'Jl. Manggis', '$2y$12$sTbgFaBflTO/Q/kutuvis.fl23PLMEn8bezjQ5Xejn0dN8DKdFuAa', 2, 'kebonsari', 0, NULL),
(3, '128474710', 'Makmur Jaya', 'Jl. Veteran', '$2y$12$8aWGh2/HHsBdm77/wjXvI.dukVwkbzwJA4N2M2CvH11NhE2elzlR6', 3, 'ajung', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `laporans`
--

CREATE TABLE `laporans` (
  `id` bigint UNSIGNED NOT NULL,
  `tanggal_pengambilan` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `foto_bukti_pengambilan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_ktp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_surat_kuasa` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto_tanda_tangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_verifikasi` enum('Terverifikasi','Belum Diverifikasi','Ditolak') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Belum Diverifikasi',
  `catatan` text COLLATE utf8mb4_unicode_ci,
  `telah_diedit` tinyint(1) NOT NULL DEFAULT '0',
  `tanggal_diedit` timestamp NULL DEFAULT NULL,
  `id_riwayat_transaksi` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2019_08_19_000000_create_failed_jobs_table', 1),
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2024_04_10_020633_create_musim_tanams_table', 1),
(4, '2024_04_11_005224_create_kecamatans_table', 1),
(5, '2024_04_11_005339_create_pemilik_kios_table', 1),
(6, '2024_04_11_012536_create_jenis_pupuks_table', 1),
(7, '2024_04_11_012844_create_kios_resmis_table', 1),
(8, '2024_04_11_024020_create_pemerintahs_table', 1),
(9, '2024_04_11_031809_create_kelompok_tanis_table', 1),
(10, '2024_04_11_161814_create_petanis_table', 1),
(11, '2024_04_11_162220_create_alokasis_table', 1),
(12, '2024_04_11_164117_create_riwayat_transaksis_table', 1),
(13, '2024_04_11_170017_create_laporans_table', 1),
(14, '2024_04_11_170441_create_faqs_table', 1),
(15, '2024_04_11_170640_create_keluhans_table', 1),
(16, '2024_04_11_170824_create_notifikasis_table', 1),
(17, '2024_05_07_200020_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `musim_tanams`
--

CREATE TABLE `musim_tanams` (
  `id` int NOT NULL,
  `musim_tanam` enum('MT1','MT2','MT3') COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `musim_tanams`
--

INSERT INTO `musim_tanams` (`id`, `musim_tanam`, `tahun`) VALUES
(1, 'MT1', 2024);

-- --------------------------------------------------------

--
-- Table structure for table `notifikasis`
--

CREATE TABLE `notifikasis` (
  `id` bigint UNSIGNED NOT NULL,
  `isi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_petani` bigint UNSIGNED DEFAULT NULL,
  `id_kios_resmi` bigint UNSIGNED DEFAULT NULL,
  `id_pemerintah` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pemerintahs`
--

CREATE TABLE `pemerintahs` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_pengguna` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kata_sandi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_musim_tanam` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pemerintahs`
--

INSERT INTO `pemerintahs` (`id`, `nama_pengguna`, `kata_sandi`, `id_musim_tanam`) VALUES
(1, 'admin1', '$2y$12$yzl4nW6aNDJDwK1vc7/uZONfuMb6oEzOxqk905qKG/eL02NUPblPG', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pemilik_kios`
--

CREATE TABLE `pemilik_kios` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_pemilik` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nik` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_ktp` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_telepon` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pemilik_kios`
--

INSERT INTO `pemilik_kios` (`id`, `nama_pemilik`, `nik`, `foto_ktp`, `nomor_telepon`) VALUES
(1, 'Richard Nixon', '6534112376590876', 'ktp004.jpg', '085443678965'),
(2, 'Dwight D Eisenhower', '9865112376590876', 'ktp005.jpg', '085973678965'),
(3, 'Theodore Roosevelt', '6534112376210876', 'ktp006.jpg', '085442678965');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `petanis`
--

CREATE TABLE `petanis` (
  `id` bigint UNSIGNED NOT NULL,
  `nik` char(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kata_sandi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_ktp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_telepon` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_kelompok_tani` bigint UNSIGNED NOT NULL,
  `aktif` tinyint(1) NOT NULL DEFAULT '0',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `petanis`
--

INSERT INTO `petanis` (`id`, `nik`, `nama`, `kata_sandi`, `foto_ktp`, `nomor_telepon`, `id_kelompok_tani`, `aktif`, `token`) VALUES
(1, '0025362728812549', 'Yennefer Vengenberg', '$2y$12$KgNmFCYc4700Gg1FqvNzVehV5chDvQcPZBMGm1bbwTtsW2duwnz4a', 'ktp001.jpg', '081263563732', 1, 0, NULL),
(2, '0025635728812549', 'Geralt Rivia', '$2y$12$kByM/LxXwPWGopo55i.0we5AEgBnGccaiESIIek/Uc0EAJU9hOvfm', 'ktp002.jpg', '081233405169', 1, 1, NULL),
(3, '0025362728811549', 'Radovid', '$2y$12$wMkLUjwErmSQ4s6rt0kDHumux8221UmQDE0thFYbi11LTP57SsMp2', 'ktp003.jpg', '081263563981', 2, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_transaksis`
--

CREATE TABLE `riwayat_transaksis` (
  `id` bigint UNSIGNED NOT NULL,
  `tanggal_transaksi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `metode_pembayaran` enum('Tunai','Non-Tunai') COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_alokasi` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alokasis`
--
ALTER TABLE `alokasis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alokasis_id_jenis_pupuk_foreign` (`id_jenis_pupuk`),
  ADD KEY `alokasis_id_kios_resmi_foreign` (`id_kios_resmi`),
  ADD KEY `alokasis_id_petani_foreign` (`id_petani`),
  ADD KEY `alokasis_id_pemerintah_foreign` (`id_pemerintah`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `faqs_id_pemerintah_foreign` (`id_pemerintah`);

--
-- Indexes for table `jenis_pupuks`
--
ALTER TABLE `jenis_pupuks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `kecamatans`
--
ALTER TABLE `kecamatans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelompok_tanis`
--
ALTER TABLE `kelompok_tanis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kelompok_tanis_id_kios_resmi_foreign` (`id_kios_resmi`);

--
-- Indexes for table `keluhans`
--
ALTER TABLE `keluhans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `keluhans_id_petani_foreign` (`id_petani`),
  ADD KEY `keluhans_id_kios_resmi_foreign` (`id_kios_resmi`),
  ADD KEY `keluhans_id_pemerintah_foreign` (`id_pemerintah`);

--
-- Indexes for table `kios_resmis`
--
ALTER TABLE `kios_resmis`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kios_resmis_nib_unique` (`nib`),
  ADD UNIQUE KEY `kios_resmis_token_unique` (`token`),
  ADD KEY `kios_resmis_id_pemilik_kios_foreign` (`id_pemilik_kios`),
  ADD KEY `kios_resmis_id_kecamatan_foreign` (`id_kecamatan`);

--
-- Indexes for table `laporans`
--
ALTER TABLE `laporans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `laporans_id_riwayat_transaksi_unique` (`id_riwayat_transaksi`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `musim_tanams`
--
ALTER TABLE `musim_tanams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifikasis`
--
ALTER TABLE `notifikasis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifikasis_id_petani_foreign` (`id_petani`),
  ADD KEY `notifikasis_id_kios_resmi_foreign` (`id_kios_resmi`),
  ADD KEY `notifikasis_id_pemerintah_foreign` (`id_pemerintah`);

--
-- Indexes for table `pemerintahs`
--
ALTER TABLE `pemerintahs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pemilik_kios`
--
ALTER TABLE `pemilik_kios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pemilik_kios_nik_unique` (`nik`),
  ADD UNIQUE KEY `pemilik_kios_nomor_telepon_unique` (`nomor_telepon`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `petanis`
--
ALTER TABLE `petanis`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `petanis_nik_unique` (`nik`),
  ADD UNIQUE KEY `petanis_nomor_telepon_unique` (`nomor_telepon`),
  ADD UNIQUE KEY `petanis_token_unique` (`token`),
  ADD KEY `petanis_id_kelompok_tani_foreign` (`id_kelompok_tani`);

--
-- Indexes for table `riwayat_transaksis`
--
ALTER TABLE `riwayat_transaksis`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `riwayat_transaksis_id_alokasi_unique` (`id_alokasi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alokasis`
--
ALTER TABLE `alokasis`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kelompok_tanis`
--
ALTER TABLE `kelompok_tanis`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `keluhans`
--
ALTER TABLE `keluhans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kios_resmis`
--
ALTER TABLE `kios_resmis`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `laporans`
--
ALTER TABLE `laporans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `notifikasis`
--
ALTER TABLE `notifikasis`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pemerintahs`
--
ALTER TABLE `pemerintahs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pemilik_kios`
--
ALTER TABLE `pemilik_kios`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `petanis`
--
ALTER TABLE `petanis`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `riwayat_transaksis`
--
ALTER TABLE `riwayat_transaksis`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `alokasis`
--
ALTER TABLE `alokasis`
  ADD CONSTRAINT `alokasis_id_jenis_pupuk_foreign` FOREIGN KEY (`id_jenis_pupuk`) REFERENCES `jenis_pupuks` (`id`),
  ADD CONSTRAINT `alokasis_id_kios_resmi_foreign` FOREIGN KEY (`id_kios_resmi`) REFERENCES `kios_resmis` (`id`),
  ADD CONSTRAINT `alokasis_id_pemerintah_foreign` FOREIGN KEY (`id_pemerintah`) REFERENCES `pemerintahs` (`id`),
  ADD CONSTRAINT `alokasis_id_petani_foreign` FOREIGN KEY (`id_petani`) REFERENCES `petanis` (`id`);

--
-- Constraints for table `faqs`
--
ALTER TABLE `faqs`
  ADD CONSTRAINT `faqs_id_pemerintah_foreign` FOREIGN KEY (`id_pemerintah`) REFERENCES `pemerintahs` (`id`);

--
-- Constraints for table `kelompok_tanis`
--
ALTER TABLE `kelompok_tanis`
  ADD CONSTRAINT `kelompok_tanis_id_kios_resmi_foreign` FOREIGN KEY (`id_kios_resmi`) REFERENCES `kios_resmis` (`id`);

--
-- Constraints for table `keluhans`
--
ALTER TABLE `keluhans`
  ADD CONSTRAINT `keluhans_id_kios_resmi_foreign` FOREIGN KEY (`id_kios_resmi`) REFERENCES `kios_resmis` (`id`),
  ADD CONSTRAINT `keluhans_id_pemerintah_foreign` FOREIGN KEY (`id_pemerintah`) REFERENCES `pemerintahs` (`id`),
  ADD CONSTRAINT `keluhans_id_petani_foreign` FOREIGN KEY (`id_petani`) REFERENCES `petanis` (`id`);

--
-- Constraints for table `kios_resmis`
--
ALTER TABLE `kios_resmis`
  ADD CONSTRAINT `kios_resmis_id_kecamatan_foreign` FOREIGN KEY (`id_kecamatan`) REFERENCES `kecamatans` (`id`),
  ADD CONSTRAINT `kios_resmis_id_pemilik_kios_foreign` FOREIGN KEY (`id_pemilik_kios`) REFERENCES `pemilik_kios` (`id`);

--
-- Constraints for table `laporans`
--
ALTER TABLE `laporans`
  ADD CONSTRAINT `laporans_id_riwayat_transaksi_foreign` FOREIGN KEY (`id_riwayat_transaksi`) REFERENCES `riwayat_transaksis` (`id`);

--
-- Constraints for table `notifikasis`
--
ALTER TABLE `notifikasis`
  ADD CONSTRAINT `notifikasis_id_kios_resmi_foreign` FOREIGN KEY (`id_kios_resmi`) REFERENCES `kios_resmis` (`id`),
  ADD CONSTRAINT `notifikasis_id_pemerintah_foreign` FOREIGN KEY (`id_pemerintah`) REFERENCES `pemerintahs` (`id`),
  ADD CONSTRAINT `notifikasis_id_petani_foreign` FOREIGN KEY (`id_petani`) REFERENCES `petanis` (`id`);

--
-- Constraints for table `petanis`
--
ALTER TABLE `petanis`
  ADD CONSTRAINT `petanis_id_kelompok_tani_foreign` FOREIGN KEY (`id_kelompok_tani`) REFERENCES `kelompok_tanis` (`id`);

--
-- Constraints for table `riwayat_transaksis`
--
ALTER TABLE `riwayat_transaksis`
  ADD CONSTRAINT `riwayat_transaksis_id_alokasi_foreign` FOREIGN KEY (`id_alokasi`) REFERENCES `alokasis` (`id`);
--
-- Database: `stay_ease`
--
CREATE DATABASE IF NOT EXISTS `stay_ease` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `stay_ease`;

-- --------------------------------------------------------

--
-- Table structure for table `kamar`
--

CREATE TABLE `kamar` (
  `id` int NOT NULL,
  `nomor` int NOT NULL,
  `id_tipe_kamar` int NOT NULL,
  `id_manager` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `id` int NOT NULL,
  `username` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `resepsionis`
--

CREATE TABLE `resepsionis` (
  `id` int NOT NULL,
  `username` varchar(60) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reservasi`
--

CREATE TABLE `reservasi` (
  `id` int NOT NULL,
  `tanggal_checkin` date NOT NULL,
  `tanggal_checkout` date NOT NULL,
  `id_tamu` int NOT NULL,
  `id_resepsionis` int DEFAULT NULL,
  `id_kamar` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tamu`
--

CREATE TABLE `tamu` (
  `id` int NOT NULL,
  `nama` varchar(60) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `no_telp` varchar(20) NOT NULL,
  `email` varchar(60) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tipe_kamar`
--

CREATE TABLE `tipe_kamar` (
  `id` int NOT NULL,
  `tipe` varchar(255) NOT NULL,
  `harga` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kamar`
--
ALTER TABLE `kamar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_kamar_tipe_kamar` (`id_tipe_kamar`),
  ADD KEY `fk_kamar_manager` (`id_manager`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resepsionis`
--
ALTER TABLE `resepsionis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservasi`
--
ALTER TABLE `reservasi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_reservasi_tamu` (`id_tamu`),
  ADD KEY `fk_reservasi_resepsionis` (`id_resepsionis`),
  ADD KEY `fk_reservasi_kamar` (`id_kamar`);

--
-- Indexes for table `tamu`
--
ALTER TABLE `tamu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tipe_kamar`
--
ALTER TABLE `tipe_kamar`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kamar`
--
ALTER TABLE `kamar`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `manager`
--
ALTER TABLE `manager`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `resepsionis`
--
ALTER TABLE `resepsionis`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reservasi`
--
ALTER TABLE `reservasi`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tamu`
--
ALTER TABLE `tamu`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tipe_kamar`
--
ALTER TABLE `tipe_kamar`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kamar`
--
ALTER TABLE `kamar`
  ADD CONSTRAINT `fk_kamar_manager` FOREIGN KEY (`id_manager`) REFERENCES `manager` (`id`),
  ADD CONSTRAINT `fk_kamar_tipe_kamar` FOREIGN KEY (`id_tipe_kamar`) REFERENCES `tipe_kamar` (`id`);

--
-- Constraints for table `reservasi`
--
ALTER TABLE `reservasi`
  ADD CONSTRAINT `fk_reservasi_kamar` FOREIGN KEY (`id_kamar`) REFERENCES `kamar` (`id`),
  ADD CONSTRAINT `fk_reservasi_resepsionis` FOREIGN KEY (`id_resepsionis`) REFERENCES `resepsionis` (`id`),
  ADD CONSTRAINT `fk_reservasi_tamu` FOREIGN KEY (`id_tamu`) REFERENCES `tamu` (`id`);
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `test`;

-- --------------------------------------------------------

--
-- Table structure for table `mahasis`
--

CREATE TABLE `mahasis` (
  `id` int NOT NULL,
  `nama` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `foto_ktp` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `mahasis`
--

INSERT INTO `mahasis` (`id`, `nama`, `password`, `foto_ktp`) VALUES
(1, 'evi', 'evi123', 'ktp.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
