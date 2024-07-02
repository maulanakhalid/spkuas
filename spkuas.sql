-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Jul 2024 pada 14.48
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spkuas`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `alternatifs`
--

CREATE TABLE `alternatifs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `harga` int(11) NOT NULL,
  `desain` int(11) NOT NULL,
  `kualitas` int(11) NOT NULL,
  `kenyaman` int(11) NOT NULL,
  `ukuran` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `alternatifs`
--

INSERT INTO `alternatifs` (`id`, `nama`, `harga`, `desain`, `kualitas`, `kenyaman`, `ukuran`, `created_at`, `updated_at`) VALUES
(1, 'Nike', 300000, 4, 5, 4, 41, NULL, NULL),
(2, 'Adidas', 250000, 5, 4, 5, 44, NULL, NULL),
(3, 'Puma', 200000, 3, 4, 4, 42, NULL, NULL),
(4, 'Converse', 350000, 5, 3, 3, 45, NULL, NULL),
(10, 'Vans', 350000, 4, 3, 5, 43, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriterias`
--

CREATE TABLE `kriterias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode` varchar(255) NOT NULL,
  `nama_kriteria` varchar(255) NOT NULL,
  `bobot` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kriterias`
--

INSERT INTO `kriterias` (`id`, `kode`, `nama_kriteria`, `bobot`, `label`, `created_at`, `updated_at`) VALUES
(1, 'C1', 'Harga', 4, 'Cost', NULL, '2024-06-24 21:12:43'),
(2, 'C2', 'Desain', 4, 'Benefit', NULL, NULL),
(3, 'C3', 'Kualitas', 3, 'Benefit', NULL, '2024-06-17 22:40:49'),
(4, 'C4', 'Kenyamanan', 5, 'Benefit', NULL, '2024-06-17 22:40:57'),
(5, 'C5', 'Ukuran', 3, 'Benefit', NULL, '2024-06-17 22:41:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_06_06_071048_create_kriterias_table', 1),
(5, '2024_06_18_045657_create_alternatifs_table', 2);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `normalisasi`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `normalisasi` (
`id` bigint(20) unsigned
,`nilai_normalisasi` decimal(15,4)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `normalisasi_saw`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `normalisasi_saw` (
`nama` varchar(255)
,`norm_harga` decimal(14,4)
,`norm_desain` decimal(14,4)
,`norm_kualitas` decimal(14,4)
,`norm_kenyamanan` decimal(14,4)
,`norm_ukuran` decimal(14,4)
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('7wacBYyibPt9UwiLTzLVkkDEFVMBcFBf8Qw8B5Yn', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiemZneG5MdlNEQU5pY2xJa2MzZkRXTHdIVjhRYmFGUFZvVXYxSjBnSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9rcml0ZXJpYSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1719924476),
('owkeFktqqBeZ4hFk1GSQuI9egXwd2aDcI5uhbdeV', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoieWFYNHZjYlZLZ1FieHhOb3drQnVIYm92SERyMlJvdkhtWkVHN08yMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9rcml0ZXJpYSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1719721511),
('RLd75DLnh1Uri6jX0zTI8PvO0NIeUy9lYX1H7HVz', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRnl2bFpKaXpoZ0FrTTFEU0tyblJiWlZiTW45UUFkZ0o1ME9sZmg1MiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1719804789),
('UdDqjvldgKkP8Jwu4BKh3ZdvuIy0NgjAeFfg2gGU', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiOE5SbHNmOVQ2OVdFdUlJdlA3V0piRkRQaW1LNjBzdXJhSXhicU9yciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9rcml0ZXJpYSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1719709250),
('YUCmPAFze3ncAZacV9jhn76WWhis1UVVBpHgVz2L', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiRlZyWmN6elQ0TjU5YjBzQWxlVDVPZnE0VllrZnFvUDBscG1NUTNhMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9rcml0ZXJpYSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1719804834);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `sum_bobot`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `sum_bobot` (
`total_bobot` decimal(32,0)
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'maulana', 'maulanakhalid27@gmail.com', NULL, '$2y$12$iuQlvrzjAAdTdgHtZB.aquUwCO4vdqvYTFxKvtLGO3JIWiGEmYP0m', NULL, '2024-06-17 21:24:05', '2024-06-17 21:24:05');

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `vektor_s`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `vektor_s` (
`id` bigint(20) unsigned
,`nama` varchar(255)
,`score` double(20,3)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `vektor_v`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `vektor_v` (
`id` bigint(20) unsigned
,`nama` varchar(255)
,`nilai` double(20,3)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `v_hasil`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_hasil` (
`nama` varchar(255)
,`total_nilai` decimal(21,6)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `v_saw_max_min`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_saw_max_min` (
`pembagi_harga` int(11)
,`pembagi_desain` int(11)
,`pembagi_kualitas` int(11)
,`pembagi_kenyaman` int(11)
,`pembagi_ukuran` int(11)
);

-- --------------------------------------------------------

--
-- Struktur untuk view `normalisasi`
--
DROP TABLE IF EXISTS `normalisasi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `normalisasi`  AS SELECT `kriterias`.`id` AS `id`, CASE WHEN `kriterias`.`label` = 'cost' THEN -1 * (`kriterias`.`bobot` / `total`.`total_bobot`) WHEN `kriterias`.`label` = 'benefit' THEN `kriterias`.`bobot`/ `total`.`total_bobot` ELSE NULL END AS `nilai_normalisasi` FROM (`kriterias` join (select sum(`kriterias`.`bobot`) AS `total_bobot` from `kriterias`) `total`)  ;

-- --------------------------------------------------------

--
-- Struktur untuk view `normalisasi_saw`
--
DROP TABLE IF EXISTS `normalisasi_saw`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `normalisasi_saw`  AS SELECT `p`.`nama` AS `nama`, `p`.`harga`/ `v`.`pembagi_harga` AS `norm_harga`, `p`.`desain`/ `v`.`pembagi_desain` AS `norm_desain`, `p`.`kualitas`/ `v`.`pembagi_kualitas` AS `norm_kualitas`, `p`.`kenyaman`/ `v`.`pembagi_kenyaman` AS `norm_kenyamanan`, `p`.`ukuran`/ `v`.`pembagi_ukuran` AS `norm_ukuran` FROM (`alternatifs` `p` join `v_saw_max_min` `v`)  ;

-- --------------------------------------------------------

--
-- Struktur untuk view `sum_bobot`
--
DROP TABLE IF EXISTS `sum_bobot`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sum_bobot`  AS SELECT sum(`kriterias`.`bobot`) AS `total_bobot` FROM `kriterias``kriterias`  ;

-- --------------------------------------------------------

--
-- Struktur untuk view `vektor_s`
--
DROP TABLE IF EXISTS `vektor_s`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vektor_s`  AS SELECT `a`.`id` AS `id`, `a`.`nama` AS `nama`, round(exp(log(`a`.`harga`) * (select `n`.`nilai_normalisasi` from `normalisasi` `n` where `n`.`id` = 1) + log(`a`.`desain`) * (select `n`.`nilai_normalisasi` from `normalisasi` `n` where `n`.`id` = 2) + log(`a`.`kualitas`) * (select `n`.`nilai_normalisasi` from `normalisasi` `n` where `n`.`id` = 3) + log(`a`.`kenyaman`) * (select `n`.`nilai_normalisasi` from `normalisasi` `n` where `n`.`id` = 4) + log(`a`.`ukuran`) * (select `n`.`nilai_normalisasi` from `normalisasi` `n` where `n`.`id` = 5)),3) AS `score` FROM `alternatifs` AS `a``a`  ;

-- --------------------------------------------------------

--
-- Struktur untuk view `vektor_v`
--
DROP TABLE IF EXISTS `vektor_v`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vektor_v`  AS SELECT `vs`.`id` AS `id`, `vs`.`nama` AS `nama`, round(`vs`.`score` / (select sum(`vektor_s`.`score`) from `vektor_s`),3) AS `nilai` FROM `vektor_s` AS `vs``vs`  ;

-- --------------------------------------------------------

--
-- Struktur untuk view `v_hasil`
--
DROP TABLE IF EXISTS `v_hasil`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_hasil`  AS SELECT `norm`.`nama` AS `nama`, `norm`.`norm_harga`* 0.2 + `norm`.`norm_desain` * 0.3 + `norm`.`norm_kualitas` * 0.25 + `norm`.`norm_kenyamanan` * 0.15 + `norm`.`norm_ukuran` * 0.1 AS `total_nilai` FROM `normalisasi_saw` AS `norm``norm`  ;

-- --------------------------------------------------------

--
-- Struktur untuk view `v_saw_max_min`
--
DROP TABLE IF EXISTS `v_saw_max_min`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_saw_max_min`  AS SELECT (select min(`alternatifs`.`harga`) from `alternatifs`) AS `pembagi_harga`, (select max(`alternatifs`.`desain`) from `alternatifs`) AS `pembagi_desain`, (select max(`alternatifs`.`kualitas`) from `alternatifs`) AS `pembagi_kualitas`, (select max(`alternatifs`.`kenyaman`) from `alternatifs`) AS `pembagi_kenyaman`, (select max(`alternatifs`.`ukuran`) from `alternatifs`) AS `pembagi_ukuran` LIMIT 0, 11  ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `alternatifs`
--
ALTER TABLE `alternatifs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kriterias`
--
ALTER TABLE `kriterias`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `alternatifs`
--
ALTER TABLE `alternatifs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kriterias`
--
ALTER TABLE `kriterias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
