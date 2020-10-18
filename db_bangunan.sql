-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2020 at 12:25 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_bangunan`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `kode_barang` int(11) NOT NULL,
  `id_merek` int(11) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `harga_barang` float NOT NULL,
  `jumlah_barang` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`kode_barang`, `id_merek`, `nama_barang`, `harga_barang`, `jumlah_barang`) VALUES
(2, 105, 'lampu', 25000, 15),
(4, 102, 'Lem', 5000, 25),
(5, 106, 'Cat Tembok', 75000, 110),
(7, 107, 'Lem', 7000, 10),
(8, 101, 'Cat Tembok', 75000, 250),
(9, 108, 'pasir', 150000, 250),
(10, 109, 'pasir', 150000, 150),
(12, 100, 'keramik', 2000, 12400),
(13, 110, 'keramik', 1500, 2000),
(14, 111, 'keramik', 1200, 1500),
(15, 112, 'cat tembok', 15000, 25),
(16, 113, 'cat tembok', 16500, 123);

-- --------------------------------------------------------

--
-- Table structure for table `data_login`
--

CREATE TABLE `data_login` (
  `id` int(11) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_login`
--

INSERT INTO `data_login` (`id`, `email`, `password`) VALUES
(2, 'ediirawan@gmail.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id_karyawan` int(11) NOT NULL,
  `nama_karyawan` varchar(25) NOT NULL,
  `alamat_karyawan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id_karyawan`, `nama_karyawan`, `alamat_karyawan`) VALUES
(1915051029, 'made ardi sudipta', 'tukadmungga buleleng Bali'),
(1915051066, 'made edi irawan', 'tinga tinga grokgak buleleng Bali'),
(1915051082, 'lora elfira br sembiring', 'jalan bisma gang mutiara singaraja Bali');

-- --------------------------------------------------------

--
-- Table structure for table `merek`
--

CREATE TABLE `merek` (
  `id_merek` int(11) NOT NULL,
  `Merek` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `merek`
--

INSERT INTO `merek` (`id_merek`, `Merek`) VALUES
(100, 'Roman'),
(101, 'Dulax'),
(102, 'Alteco'),
(103, 'no drop'),
(104, 'Tiga Roda'),
(105, 'Philips'),
(106, 'Nipon Paint'),
(107, 'G'),
(108, 'sungai '),
(109, 'beton'),
(110, 'KIA'),
(111, 'Mulia'),
(112, 'avitex'),
(113, 'dulux'),
(114, 'meranti'),
(115, 'jati');

-- --------------------------------------------------------

--
-- Table structure for table `pembeli`
--

CREATE TABLE `pembeli` (
  `id_pembeli` int(15) NOT NULL,
  `kode_barang` int(11) NOT NULL,
  `id_karyawan` int(11) NOT NULL,
  `no_hp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembeli`
--

INSERT INTO `pembeli` (`id_pembeli`, `kode_barang`, `id_karyawan`, `no_hp`) VALUES
(334, 2, 1915051082, 123456789),
(335, 4, 1915051082, 123456789),
(336, 5, 1915051082, 123456789),
(337, 7, 1915051066, 123456798),
(338, 8, 1915051066, 123456798),
(339, 9, 1915051082, 123456789),
(340, 10, 1915051029, 123456987),
(341, 12, 1915051082, 123456789),
(342, 13, 1915051029, 123456987),
(343, 9, 1915051082, 123456789),
(344, 16, 1915051029, 123456987),
(345, 8, 1915051082, 123456789),
(347, 16, 1915051082, 123456789),
(349, 15, 1915051082, 123456789),
(351, 4, 1915051029, 123456987),
(352, 2, 1915051082, 123456789),
(354, 16, 1915051029, 123456987);

-- --------------------------------------------------------

--
-- Table structure for table `suplier`
--

CREATE TABLE `suplier` (
  `id_suplier` int(15) NOT NULL,
  `nama_suplier` varchar(25) NOT NULL,
  `alamat_suplier` varchar(50) NOT NULL,
  `kode_barang` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `suplier`
--

INSERT INTO `suplier` (`id_suplier`, `nama_suplier`, `alamat_suplier`, `kode_barang`) VALUES
(223, 'gusti nyoman artane', 'negara Bali', 9),
(224, 'purwanto', 'tegalrejo', 12),
(225, 'made wirawan', 'gerokgak Bali', 16);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(10) UNSIGNED NOT NULL,
  `nama` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `level_user` varchar(150) NOT NULL DEFAULT 'member'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `nama`, `username`, `password`, `level_user`) VALUES
(1, 'ONPHPID', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin'),
(2, 'Regha', 'member', 'aa08769cdcb26674c6706093503ff0a3', 'member');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kode_barang`),
  ADD KEY `id_merek` (`id_merek`);

--
-- Indexes for table `data_login`
--
ALTER TABLE `data_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indexes for table `merek`
--
ALTER TABLE `merek`
  ADD PRIMARY KEY (`id_merek`);

--
-- Indexes for table `pembeli`
--
ALTER TABLE `pembeli`
  ADD PRIMARY KEY (`id_pembeli`),
  ADD KEY `pembeli_ibfk_1` (`id_karyawan`),
  ADD KEY `pembeli_ibfk_2` (`kode_barang`);

--
-- Indexes for table `suplier`
--
ALTER TABLE `suplier`
  ADD PRIMARY KEY (`id_suplier`),
  ADD KEY `kode_barang` (`kode_barang`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `kode_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1213;

--
-- AUTO_INCREMENT for table `merek`
--
ALTER TABLE `merek`
  MODIFY `id_merek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `barang_ibfk_1` FOREIGN KEY (`id_merek`) REFERENCES `merek` (`id_merek`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pembeli`
--
ALTER TABLE `pembeli`
  ADD CONSTRAINT `pembeli_ibfk_1` FOREIGN KEY (`id_karyawan`) REFERENCES `karyawan` (`id_karyawan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pembeli_ibfk_2` FOREIGN KEY (`kode_barang`) REFERENCES `barang` (`kode_barang`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `suplier`
--
ALTER TABLE `suplier`
  ADD CONSTRAINT `suplier_ibfk_1` FOREIGN KEY (`kode_barang`) REFERENCES `barang` (`kode_barang`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
