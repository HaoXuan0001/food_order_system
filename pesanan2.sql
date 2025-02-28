-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2025 at 04:17 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pesanan2`
--

-- --------------------------------------------------------

--
-- Table structure for table `belian`
--

CREATE TABLE `belian` (
  `idBelian` int(11) NOT NULL,
  `kuantiti` int(11) DEFAULT NULL,
  `idProduk` int(11) DEFAULT NULL,
  `bil` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `belian`
--

INSERT INTO `belian` (`idBelian`, `kuantiti`, `idProduk`, `bil`) VALUES
(2, 1, 1, 6),
(3, 1, 2, 6),
(4, 1, 1, 22),
(5, 2, 1, 23),
(6, 1, 1, 24),
(7, 1, 1, 25),
(8, 1, 1, 26),
(10, 69420, 1, 28),
(11, 1, 1, 29);

-- --------------------------------------------------------

--
-- Table structure for table `meja`
--

CREATE TABLE `meja` (
  `noMeja` varchar(10) NOT NULL,
  `info` varchar(20) DEFAULT NULL,
  `tersedia` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `meja`
--

INSERT INTO `meja` (`noMeja`, `info`, `tersedia`) VALUES
('1', 'test meja', 'N'),
('2', 'test meja', 'N'),
('3', 'test3', 'Y'),
('4', 'test 4', 'Y'),
('TA', '111', 'N'),
('﻿D01', 'Meja 1', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `nomHp` varchar(11) NOT NULL,
  `password` varchar(4) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `aras` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`nomHp`, `password`, `nama`, `aras`) VALUES
('0169070820', '0169', 'Hao', 'PENGGUNA'),
('0169070821', '0169', 'Hao', 'PENGGUNA'),
('0169070822', '0169', 'Hao', 'PENGGUNA'),
('0169070828', '0169', 'Hao', 'PENGGUNA'),
('8888888888', '8888', 'ADMIN', 'ADMIN');

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `bil` int(11) NOT NULL,
  `tarikh` datetime DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `nomHp` varchar(11) DEFAULT NULL,
  `noMeja` varchar(10) DEFAULT NULL,
  `cara` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`bil`, `tarikh`, `status`, `nomHp`, `noMeja`, `cara`) VALUES
(6, '2024-11-14 15:49:27', 'BAYAR', '0169070820', '2', 'DINE IN'),
(22, '2024-11-14 17:13:13', 'DIPROSES', '0169070821', 'TA', 'TAKE-AWAY'),
(23, '2024-11-14 17:13:58', 'SIAP', '0169070822', 'TA', 'TAKE-AWAY'),
(24, '2024-11-14 17:16:52', 'DIPROSES', '0169070820', 'TA', 'TAKE-AWAY'),
(25, '2024-11-14 17:26:04', 'BAYAR', '0169070820', '3', 'DINE IN'),
(26, '2024-12-01 21:02:31', 'SIAP', '0169070820', '1', 'DINE IN'),
(28, '2024-12-02 08:02:18', 'DIPROSES', '0169070820', 'TA', 'TAKE-AWAY'),
(29, '2025-02-27 23:14:06', 'PENDING', '0169070820', '2', 'DINE IN');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `idProduk` int(11) NOT NULL,
  `namaProduk` varchar(255) DEFAULT NULL,
  `detail` text DEFAULT NULL,
  `harga` decimal(10,2) DEFAULT NULL,
  `gambar` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`idProduk`, `namaProduk`, `detail`, `harga`, `gambar`) VALUES
(1, 'Nasi Lemak', 'TEST PRODUK 1', 9.99, 'nasilemak.jpg'),
(2, 'MILO AIS', 'TEST PRODUK 2', 2.50, '32.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `belian`
--
ALTER TABLE `belian`
  ADD PRIMARY KEY (`idBelian`),
  ADD KEY `idProduk` (`idProduk`),
  ADD KEY `bil` (`bil`);

--
-- Indexes for table `meja`
--
ALTER TABLE `meja`
  ADD PRIMARY KEY (`noMeja`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`nomHp`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`bil`),
  ADD KEY `nomHp` (`nomHp`),
  ADD KEY `noMeja` (`noMeja`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`idProduk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `belian`
--
ALTER TABLE `belian`
  MODIFY `idBelian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `bil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `idProduk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `belian`
--
ALTER TABLE `belian`
  ADD CONSTRAINT `belian_ibfk_1` FOREIGN KEY (`idProduk`) REFERENCES `produk` (`idProduk`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `belian_ibfk_2` FOREIGN KEY (`bil`) REFERENCES `pesanan` (`bil`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD CONSTRAINT `pesanan_ibfk_1` FOREIGN KEY (`nomHp`) REFERENCES `pelanggan` (`nomHp`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pesanan_ibfk_2` FOREIGN KEY (`noMeja`) REFERENCES `meja` (`noMeja`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
