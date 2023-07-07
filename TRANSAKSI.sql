-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Jul 2023 pada 04.34
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `transaction`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `datadummy`
--

CREATE TABLE `datadummy` (
  `id_dummy` int(50) NOT NULL,
  `MONTH` varchar(2) DEFAULT NULL,
  `STORECODE` varchar(2) DEFAULT NULL,
  `QTY` int(11) DEFAULT NULL,
  `VALUE` int(11) DEFAULT NULL,
  `GRP` varchar(255) DEFAULT NULL,
  `SGRP` varchar(255) DEFAULT NULL,
  `SSGRP` varchar(255) DEFAULT NULL,
  `CMP` varchar(255) DEFAULT NULL,
  `MBRD` varchar(255) DEFAULT NULL,
  `BRD` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `datadummy`
--

INSERT INTO `datadummy` (`id_dummy`, `MONTH`, `STORECODE`, `QTY`, `VALUE`, `GRP`, `SGRP`, `SSGRP`, `CMP`, `MBRD`, `BRD`) VALUES
(1, 'M1', 'P1', 25, 83, 'HAIR CONDITIONERS', 'HAIR CONDITIONERS', 'HAIR CONDITIONERS', 'HINDUSTAN UNILEVER LIMITED', 'DOVE', 'DOVE HAIR FALL RESCUE'),
(2, 'M1', 'P1', 6, 22, 'HAIR CONDITIONERS', 'HAIR CONDITIONERS', 'HAIR CONDITIONERS', 'HINDUSTAN UNILEVER LIMITED', 'DOVE', 'DOVE INTENSE REPAIR'),
(3, 'M1', 'P1', 4, 15, 'HAIR CONDITIONERS', 'HAIR CONDITIONERS', 'HAIR CONDITIONERS', 'HINDUSTAN UNILEVER LIMITED', 'DOVE', 'DOVE OXYGEN MOISTURE'),
(4, 'M1', 'P1', 15, 60, 'HAIR CONDITIONERS', 'HAIR CONDITIONERS', 'HAIR CONDITIONERS', 'L\'OREAL INDIA', 'GARNIER', 'FRUCTIS'),
(5, 'M1', 'P2', 0, 0, 'HAIR CONDITIONERS', 'HAIR CONDITIONERS', 'HAIR CONDITIONERS', 'HINDUSTAN UNILEVER LIMITED', 'CLINIC PLUS', 'CLINIC PLUS'),
(6, 'M1', 'P2', 1, 90, 'HAIR CONDITIONERS', 'HAIR CONDITIONERS', 'HAIR CONDITIONERS', 'HINDUSTAN UNILEVER LIMITED', 'DOVE', 'DOVE DAILY SHINE'),
(7, 'M1', 'P2', 0, 0, 'HAIR CONDITIONERS', 'HAIR CONDITIONERS', 'HAIR CONDITIONERS', 'HINDUSTAN UNILEVER LIMITED', 'DOVE', 'DOVE ENVIRONMENTAL DEFENCE'),
(8, 'M1', 'P2', 10, 34, 'HAIR CONDITIONERS', 'HAIR CONDITIONERS', 'HAIR CONDITIONERS', 'HINDUSTAN UNILEVER LIMITED', 'DOVE', 'DOVE HAIR FALL RESCUE'),
(9, 'M1', 'P2', 11, 37, 'HAIR CONDITIONERS', 'HAIR CONDITIONERS', 'HAIR CONDITIONERS', 'HINDUSTAN UNILEVER LIMITED', 'DOVE', 'DOVE INTENSE REPAIR');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dimensiproduk`
--

CREATE TABLE `dimensiproduk` (
  `produk_id` int(11) NOT NULL,
  `nama_produk` varchar(255) DEFAULT NULL,
  `grup_produk` varchar(255) DEFAULT NULL,
  `subgrup_produk` varchar(255) DEFAULT NULL,
  `subsubgrup_produk` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `dimensiproduk`
--

INSERT INTO `dimensiproduk` (`produk_id`, `nama_produk`, `grup_produk`, `subgrup_produk`, `subsubgrup_produk`) VALUES
(1, 'DOVE HAIR FALL RESCUE', 'HAIR CONDITIONERS', 'HAIR CONDITIONER', 'HAIR CONDITIONERS'),
(2, 'DOVE INTENSE REPAIR', 'HAIR CONDITIONERS', 'HAIR CONDITIONERS', 'HAIR CONDITIONERS'),
(3, 'DOVE OXYGEN MOISTURE', 'HAIR CONDITIONERS', 'HAIR CONDITIONERS', 'HAIR CONDITIONERS'),
(4, 'GARNIER', 'HAIR CONDITIONERS', 'HAIR CONDITIONERS', 'HAIR CONDITIONERS'),
(5, 'CLINIC PLUS', 'HAIR CONDITIONERS', 'HAIR CONDITIONERS', 'HAIR CONDITIONERS');

-- --------------------------------------------------------

--
-- Struktur dari tabel `faktatransaksi`
--

CREATE TABLE `faktatransaksi` (
  `transaksi_id` int(11) NOT NULL,
  `toko_id` int(11) DEFAULT NULL,
  `produk_id` int(11) DEFAULT NULL,
  `waktu_id` int(11) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `faktatransaksi`
--

INSERT INTO `faktatransaksi` (`transaksi_id`, `toko_id`, `produk_id`, `waktu_id`, `jumlah`) VALUES
(1, 1, 1, 1, 25),
(2, 1, 2, 1, 6),
(3, 1, 3, 1, 4),
(4, 1, 4, 1, 15),
(5, 2, 5, 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `datadummy`
--
ALTER TABLE `datadummy`
  ADD PRIMARY KEY (`id_dummy`);

--
-- Indeks untuk tabel `dimensiproduk`
--
ALTER TABLE `dimensiproduk`
  ADD PRIMARY KEY (`produk_id`);

--
-- Indeks untuk tabel `faktatransaksi`
--
ALTER TABLE `faktatransaksi`
  ADD PRIMARY KEY (`transaksi_id`),
  ADD KEY `toko_id` (`toko_id`),
  ADD KEY `produk_id` (`produk_id`),
  ADD KEY `waktu_id` (`waktu_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `datadummy`
--
ALTER TABLE `datadummy`
  MODIFY `id_dummy` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `faktatransaksi`
--
ALTER TABLE `faktatransaksi`
  ADD CONSTRAINT `faktatransaksi_ibfk_1` FOREIGN KEY (`toko_id`) REFERENCES `dimensitoko` (`toko_id`),
  ADD CONSTRAINT `faktatransaksi_ibfk_2` FOREIGN KEY (`produk_id`) REFERENCES `dimensiproduk` (`produk_id`),
  ADD CONSTRAINT `faktatransaksi_ibfk_3` FOREIGN KEY (`waktu_id`) REFERENCES `dimensiwaktu` (`waktu_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
