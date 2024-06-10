-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Waktu pembuatan: 10 Jun 2024 pada 12.24
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
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE `tb_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `admin_telp` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `admin_name`, `username`, `password`, `admin_telp`, `admin_email`, `admin_address`) VALUES
(1, 'Asepsflm', 'admin', '21232f297a57a5a743894a0e4a801fc3', '082119885594', 'asaepul867@gmail.com', 'Bandung');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_category`
--

CREATE TABLE `tb_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tb_category`
--

INSERT INTO `tb_category` (`category_id`, `category_name`) VALUES
(8, 'Motor Matic'),
(9, 'Car'),
(13, 'Motor Sport');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_product`
--

CREATE TABLE `tb_product` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_description` text NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_status` tinyint(1) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tb_product`
--

INSERT INTO `tb_product` (`product_id`, `category_id`, `product_name`, `product_price`, `product_description`, `product_image`, `product_status`, `date_created`) VALUES
(6, 8, 'Beat', 18430000, 'Tipe Mesin	4 – Langkah, SOHC, eSP\r\nDiameter x Langkah	47.0 x 63.1 mm\r\nVolume Langkah	109,5cc\r\nPerbandingan Kompresi	10,0 : 1\r\nDaya Maksimum	6.6 kW (9.0 PS) / 7.500 rpm\r\nTorsi Maksimum	9.2 N.m (0.94 kgf.m) / 6000 rpm\r\nKopling	Otomatis, Sentrifugal, Tipe Kering\r\nStarter	Elektrik dan Kick Starter (Tipe CBS),\r\nElektrik (Tipe Deluxe & Deluxe Smart Key)\r\nBusi	NGK MR9C-9N\r\nSistem Bahan Bakar	Injeksi (PGM-FI)\r\nTransmisi	Otomatis, V-Matic\r\nSistem Pengapian	Full Transisterized', 'produk1717411563.png', 1, '2024-06-03 10:46:03'),
(7, 8, 'Beat Street', 19300000, 'Tipe Mesin	4 Langkah, SOHC, eSP\r\nDiameter x Langkah	47,0 x 63,1 mm\r\nVolume Langkah	109,5cc\r\nPerbandingan Kompresi	10,0 : 1\r\nDaya Maksimum	6.6 kW (9.0 PS) / 7.500 rpm\r\nTorsi Maksimum	9.2 N.m (0.94 kgf.m) / 6000 rpm\r\nKopling	Otomatis, Sentrifugal, Tipe Kering\r\nStarter	Elektrik\r\nBusi	NGK MR9C-9N\r\nSistem Bahan Bakar	Injeksi (PGM-FI)\r\nTransmisi	Otomatis, V-Matic\r\nSistem Pengapian	Full Transisterized', 'produk1717411621.png', 1, '2024-06-03 10:47:01'),
(8, 8, 'Scoopy', 22425000, 'Tipe Mesin	4 - Langkah, SOHC dengan Pendingin Udara, eSP\r\nSistem Suplai Bahan Bakar	PGM-FI (Programmed Fuel Injection)\r\nDiameter X Langkah	47 x 63,1 mm\r\nTipe Tranmisi	Otomatis, V-Matic\r\nRasio Kompresi	10 : 1\r\nDaya Maksimum	6,6 kW (9 PS) / 7.500 rpm\r\nTorsi Maksimum	9,3 Nm (0,95 kgf.m) / 5.500 rpm\r\nTipe Starter	Elektrik & kick Starter / Elektrik (Tipe Smart Key)\r\nTipe Kopling	Otomatis, Sentrifugal, Tipe Kering\r\n', 'produk1717414101.png', 1, '2024-06-03 11:28:21'),
(9, 8, 'ADV 160', 33300000, '<p>Tipe Mesin 4-Langkah, 4-Valve, eSP+ Tipe Pendingin Pendingin Cairan Sistem Suplai Bahan Bakar PGM-FI (Programmed Fuel Injection) Volume Langkah 156,9 cc Diameter X Langkah 60 x 55,5 mm Perbandingan Kompresi 12:1 Daya Maksimum 11,8 kW (16 PS) / 8.500 rpm Torsi Maksimum 14,7 Nm (1,5 kgf.m) / 6.500 rpm Tipe Transmisi Otomatis, V-Matic Tipe Starter Elektrik Tipe Kopling Otomatis, Sentrifugal, Tipe Kering Kapasitas Minyak Pelumas 0,8 liter (Penggantian Periodik)</p>\r\n', 'produk1717414180.png', 1, '2024-06-03 11:29:40'),
(10, 8, 'Vario 125', 23110000, 'Tipe Mesin	4-Langkah, SOHC, eSP, Pendinginan Cairan\r\nSistem Suplai Bahan Bakar	PGM-FI (Programmed Fuel Injection)\r\nVolume Langkah	124,8 cc\r\nDiameter X Langkah	52,4 x 57,9 mm\r\nPerbandingan Kompresi	11,0 : 1\r\nTipe Tranmisi	Otomatis , V - Matic\r\nDaya Maksimum	8,2 kW (11,1 PS) / 8.500 rpm\r\nTorsi Maksimum	10,8 Nm (1,1 kgf.m) / 5.000 rpm\r\nTipe Starter	Elektrik\r\nTipe Kopling	Automatic Sentrifugal, Tipe Kering\r\nTipe Minyak Pelumas	0,8 liter (Penggantian Periodik)', 'produk1717414261.png', 1, '2024-06-03 11:31:01'),
(11, 8, 'Stylo 160', 27745000, 'Tipe Mesin	4 Langkah, 4 Katup, eSP+\r\nVolume Langkah	156,9 cc\r\nSistem Pendingin	Pendingin Cairan\r\nSistem Supply Bahan Bakar	PGM-FI (Programmed Fuel Injection)\r\nDiameter x Langkah	60 x 55,5 mm\r\nRasio Kompresi	12:1\r\nDaya Maksimum	11,3 kW (15,4 PS) / 8,500 rpm\r\nTorsi Maksimum	13,8 Nm (1,5 kgf.m) / 7000 rpm\r\nTransmisi	Otomatis, V-Matic\r\nSistem Starter	Elektrik\r\nSistem Transmisi	Otomatis, Sentrifugal, Tipe Kering\r\nTipe Minyak Pelumas	Basah\r\nKapasitas Oli	0,8 liter (Penggantian Periodik)', 'produk1717414330.png', 1, '2024-06-03 11:32:10'),
(12, 8, 'Forza', 90151000, '-', 'produk1717414489.png', 1, '2024-06-03 11:34:49'),
(13, 8, 'Vario 160', 27252000, '-', 'produk1717414554.png', 1, '2024-06-03 11:35:54'),
(14, 13, 'CB150 Verza', 21660000, '-', 'produk1717414733.png', 1, '2024-06-03 11:38:53'),
(15, 13, 'Sonic 150R', 25540000, '-', 'produk1717414770.png', 1, '2024-06-03 11:39:30'),
(16, 13, 'CBR150R Streetfire', 31280000, '-', 'produk1717414865.png', 1, '2024-06-03 11:41:05'),
(17, 13, 'CB150X', 34520000, '-', 'produk1717414913.png', 1, '2024-06-03 11:41:53'),
(18, 13, 'ST125 Dax', 82480000, '-', 'produk1717415176.png', 1, '2024-06-03 11:46:16'),
(19, 13, 'Monkey', 83435000, '-', 'produk1717415211.png', 1, '2024-06-03 11:46:51'),
(20, 13, 'CBR250RR', 64335000, '-', 'produk1717415278.png', 1, '2024-06-03 11:47:58'),
(21, 13, 'CBR150R', 38070000, '-', 'produk1717415319.png', 1, '2024-06-03 11:48:39'),
(22, 13, 'CRF250 Rally', 93345000, '-', 'produk1717415367.png', 1, '2024-06-03 11:49:27'),
(23, 13, 'CRF250L', 79925000, '-', 'produk1717415404.png', 1, '2024-06-03 11:50:04'),
(24, 13, 'CRF150L', 36705000, '-', 'produk1717415439.png', 1, '2024-06-03 11:50:39'),
(25, 9, 'Honda City Hatchback RS', 352500000, '-', 'produk1718020090.png', 1, '2024-06-10 11:48:10'),
(26, 9, 'Honda HRV', 383900000, '-', 'produk1718020132.png', 1, '2024-06-10 11:48:52'),
(27, 9, 'Honda Civic RS', 616800000, '-', 'produk1718020209.png', 1, '2024-06-10 11:50:09'),
(28, 9, 'Honda Civic Type R', 1427500000, '-', 'produk1718020247.png', 1, '2024-06-10 11:50:47'),
(29, 9, 'Honda Mobilio', 239600000, '-', 'produk1718020280.png', 1, '2024-06-10 11:51:20');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indeks untuk tabel `tb_category`
--
ALTER TABLE `tb_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indeks untuk tabel `tb_product`
--
ALTER TABLE `tb_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_category`
--
ALTER TABLE `tb_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `tb_product`
--
ALTER TABLE `tb_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
