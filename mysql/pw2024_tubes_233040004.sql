-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Waktu pembuatan: 14 Bulan Mei 2024 pada 07.46
-- Versi server: 5.7.39
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pw2024_tubes_233040004`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `⁠ role ⁠`
--

CREATE TABLE `⁠ role ⁠` (
  `⁠ id_role ⁠` int(11) NOT NULL,
  `⁠ nama_role ⁠` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `⁠ user ⁠`
--

CREATE TABLE `⁠ user ⁠` (
  `⁠ id ⁠` int(11) NOT NULL,
  `⁠ gambar ⁠` varchar(255) NOT NULL,
  `⁠ username ⁠` varchar(255) NOT NULL,
  `⁠ email ⁠` varchar(255) NOT NULL,
  `⁠ password ⁠` varchar(255) NOT NULL,
  `⁠ id_role ⁠` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `⁠ role ⁠`
--
ALTER TABLE `⁠ role ⁠`
  ADD PRIMARY KEY (`⁠ id_role ⁠`);

--
-- Indeks untuk tabel `⁠ user ⁠`
--
ALTER TABLE `⁠ user ⁠`
  ADD PRIMARY KEY (`⁠ id ⁠`),
  ADD KEY `⁠ id_role ⁠` (`⁠ id_role ⁠`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `⁠ user ⁠`
--
ALTER TABLE `⁠ user ⁠`
  ADD CONSTRAINT `⁠ user ⁠_ibfk_1` FOREIGN KEY (`⁠ id_role ⁠`) REFERENCES `⁠ role ⁠` (`⁠ id_role ⁠`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
