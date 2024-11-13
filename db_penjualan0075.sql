-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2024 at 08:39 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_penjualan0075`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `no` int(11) NOT NULL,
  `kode_barang` varchar(10) DEFAULT NULL,
  `nama_barang` varchar(50) DEFAULT NULL,
  `harga` decimal(10,2) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`no`, `kode_barang`, `nama_barang`, `harga`, `stok`) VALUES
(1, 'a001', 'Contoh Barang A', '15000.00', 100),
(2, 'a002', 'Contoh Barang B', '25000.00', 50),
(3, 'a003', 'Contoh Barang C', '10000.00', 200),
(4, 'a004', 'Contoh Barang D', '15000.00', 10),
(8, 'a005', 'Contoh Barang F', '20000.00', 20);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `no` int(11) NOT NULL,
  `id_pelanggan` varchar(10) DEFAULT NULL,
  `nama_pelanggan` varchar(50) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`no`, `id_pelanggan`, `nama_pelanggan`, `alamat`) VALUES
(1, 'p001', 'John Doe', 'Jl. Contoh No. 123, Jakarta'),
(2, 'p002', 'Jane Smith', 'Jl. Sample No. 456, Bandung'),
(3, 'p003', 'Ali Kurniawan', 'Jl. Test No. 789, Surabaya'),
(5, 'p004', 'Tasya Risqiana', 'Jl. RE Martadinata Batang');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `no` int(11) DEFAULT NULL,
  `id_transaksi` int(11) NOT NULL,
  `kode_barang` varchar(50) DEFAULT NULL,
  `id_pelanggan` varchar(50) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `total_harga` decimal(10,2) DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`no`, `id_transaksi`, `kode_barang`, `id_pelanggan`, `jumlah`, `total_harga`, `tanggal`) VALUES
(NULL, 1, 'a001', 'p001', 2, '30000.00', '2024-10-29 14:38:24'),
(NULL, 2, 'a002', 'p002', 1, '25000.00', '2024-10-29 14:38:24'),
(NULL, 3, 'a003', 'p003', 5, '50000.00', '2024-10-29 14:38:24'),
(NULL, 4, 'a001', 'p001', 1, '15000.00', '2024-11-13 08:10:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`no`),
  ADD UNIQUE KEY `kode_barang` (`kode_barang`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`no`),
  ADD UNIQUE KEY `id_pelanggan` (`id_pelanggan`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
