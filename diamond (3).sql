-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2024 at 05:05 AM
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
-- Database: `diamond`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_data_diamond`
--

CREATE TABLE `t_data_diamond` (
  `id_diamond` int(11) NOT NULL,
  `jumlah_diamond` int(11) NOT NULL,
  `bonus_diamond` int(11) NOT NULL,
  `harga_diamond` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t_data_diamond`
--

INSERT INTO `t_data_diamond` (`id_diamond`, `jumlah_diamond`, `bonus_diamond`, `harga_diamond`) VALUES
(3, 20, 5, 5000),
(4, 20, 2, 25000),
(6, 30, 5, 20000),
(8, 23, 3, 4000);

-- --------------------------------------------------------

--
-- Table structure for table `t_diamond`
--

CREATE TABLE `t_diamond` (
  `id_diamonds` int(11) NOT NULL,
  `id_username` int(11) NOT NULL,
  `id_server` int(11) NOT NULL,
  `jumlah_diamond` int(11) NOT NULL,
  `bonus_diamond` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `email` varchar(25) NOT NULL,
  `metode_pembayaran` varchar(25) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t_diamond`
--

INSERT INTO `t_diamond` (`id_diamonds`, `id_username`, `id_server`, `jumlah_diamond`, `bonus_diamond`, `harga`, `email`, `metode_pembayaran`, `status`) VALUES
(25, 12121212, 1212121, 20, 2, 25000, 'irgi@gmail.com', 'Gopay', 'Transaksi Berhasil'),
(26, 0, 0, 0, 0, 0, '', '', 'Transaksi Berhasil'),
(27, 232323, 232323, 30, 5, 20000, 'revan@gmail.com', 'Dana', 'Transaksi Berhasil'),
(28, 0, 0, 0, 0, 0, '', '', 'Transaksi Berhasil'),
(29, 12121212, 1212121, 20, 2, 25000, 'irgi@gmail.com', 'Gopay', 'Transaksi Berhasil'),
(30, 12121212, 1212121, 20, 2, 25000, 'irgi@gmail.com', 'Gopay', 'Proses'),
(31, 12121212, 1212121, 20, 2, 25000, 'irgi@gmail.com', 'Gopay', 'Proses'),
(32, 12121212, 1212121, 20, 2, 25000, 'irgi@gmail.com', 'Gopay', 'Proses'),
(33, 12121212, 1212121, 20, 2, 25000, 'irgi@gmail.com', 'Gopay', 'Proses'),
(34, 12121212, 1212121, 20, 2, 25000, 'irgi@gmail.com', 'Gopay', 'Proses'),
(35, 12121212, 1212121, 20, 2, 25000, 'irgi@gmail.com', 'Gopay', 'Proses'),
(36, 12121212, 1212121, 21, 2, 25000, 'irgi@gmail.com', 'Gopay', 'Proses'),
(37, 12121212, 1212121, 21, 2, 25000, 'irgi@gmail.com', 'Gopay', 'Proses'),
(38, 12121212, 1212121, 21, 2, 25000, 'irgi@gmail.com', 'Gopay', 'Proses'),
(39, 12121212, 1212121, 20, 2, 25000, 'irgi@gmail.com', 'Gopay', 'Proses'),
(40, 676767676, 8787, 30, 5, 20000, 'guguag@gagy', 'Dana', 'Di Proses'),
(41, 12323424, 232323, 20, 2, 25000, 'irgi@gmail.com', 'Gopay', 'Transaksi Berhasil'),
(42, 565, 6565, 30, 5, 20000, 'iui@gmail.com', 'Gopay', 'Transaksi Berhasil');

-- --------------------------------------------------------

--
-- Table structure for table `t_diamond_jasa`
--

CREATE TABLE `t_diamond_jasa` (
  `Id_diamond_jasa` int(11) NOT NULL,
  `Id_username` int(11) NOT NULL,
  `Id_server` int(11) NOT NULL,
  `Jumlah_diamond` int(11) NOT NULL,
  `Bonus_diamond` int(11) NOT NULL,
  `Harga_diamond` int(11) NOT NULL,
  `Jenis_jasa` varchar(25) NOT NULL,
  `Rank` varchar(25) NOT NULL,
  `Jumlah_Bintang` int(11) NOT NULL,
  `Harga_jasa` int(11) NOT NULL,
  `Penjoki` varchar(25) NOT NULL,
  `Email` varchar(25) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Jenis_akun` varchar(25) NOT NULL,
  `Metode_pembayaran` varchar(25) NOT NULL,
  `Total_semua` int(11) NOT NULL,
  `Status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_jasa_joki`
--

CREATE TABLE `t_jasa_joki` (
  `id_jasa` int(11) NOT NULL,
  `jenis_jasa` varchar(20) NOT NULL,
  `rank` varchar(20) NOT NULL,
  `jumlah_bintang` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `penjoki` varchar(20) NOT NULL,
  `metode_pembayaran` varchar(20) NOT NULL,
  `no_whatsapp` int(11) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` int(11) NOT NULL,
  `jenis_akun` varchar(20) NOT NULL,
  `status` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t_jasa_joki`
--

INSERT INTO `t_jasa_joki` (`id_jasa`, `jenis_jasa`, `rank`, `jumlah_bintang`, `harga`, `total_harga`, `penjoki`, `metode_pembayaran`, `no_whatsapp`, `email`, `password`, `jenis_akun`, `status`) VALUES
(47, 'Jasa Per Rank', ' Legend IV - Mytic', 0, 160000, 0, 'Irgi Achmad', 'BRIMO', 121323232, 'irgi@gmail.com', 12121, 'Facebook', 'Transaksi B'),
(48, 'Jasa Per Bintang', 'Mytic Honor/Bintang ', 3, 23000, 69000, 'Irgi Achmad', 'GOPAY', 232323, 'ii@gmail.com', 1212121, 'Moonton', 'Di proses'),
(49, 'Jasa Per Rank', ' Legend IV - Mytic', 0, 160000, 0, 'Revan Yuda', 'BRIMO', 866333, 'rev@gmail.com', 111222, 'Google play', 'Di proses'),
(50, '', '', 0, 0, 0, '', '', 0, '', 0, '', 'Transaksi B'),
(51, '', '', 0, 0, 0, '', '', 0, '', 0, '', 'Di proses'),
(52, '', '', 0, 0, 0, '', '', 0, '', 0, '', 'Transaksi B'),
(53, 'Jasa Per Bintang', 'Master/Bintang ', 3, 4500, 13500, 'Irgi Achmad', 'GOPAY', 86555111, 'fffff@gnaik', 78787, 'Google play', 'Di proses'),
(54, 'Jasa Per Rank', ' Legend IV - Mytic', 0, 160000, 0, 'Irgi Achmad', 'OVO', 8, '8@3', 8989, 'Google play', 'Di proses'),
(55, 'Jasa Per Bintang', 'Mytic/Bintang ', 4, 20000, 80000, '', 'OVO', 877345552, 'revany@gmail.com', 0, 'Google play', 'Transaksi B'),
(56, 'Jasa Per Rank', ' Mytic - Grading 15', 0, 200000, 0, 'Irgi Achmad', 'DANA', 866644, 'igi@gmail.com', 5544567, 'Google play', 'Transaksi B');

-- --------------------------------------------------------

--
-- Table structure for table `t_joki`
--

CREATE TABLE `t_joki` (
  `id_joki` int(11) NOT NULL,
  `rank_bintang` varchar(20) NOT NULL,
  `harga_bintang` int(11) NOT NULL,
  `total_bintang` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `rank_mytic` varchar(20) NOT NULL,
  `harga_mytic` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t_joki`
--

INSERT INTO `t_joki` (`id_joki`, `rank_bintang`, `harga_bintang`, `total_bintang`, `total_harga`, `rank_mytic`, `harga_mytic`) VALUES
(1, 'Master/Bintang', 4500, 1, 0, 'Legend I - Mytic', 40000),
(2, 'Granmaster/Bintang', 6000, 2, 0, 'Legend II - Mytic', 80000),
(3, 'Epic/Bintang', 7000, 3, 0, 'Legend III - Mytic', 120000),
(4, 'Legend/Bintang', 8000, 4, 0, 'Legend IV - Mytic', 160000),
(5, 'Mytic/Bintang', 20000, 5, 0, 'Legend V - Mytic', 200000),
(6, 'Mytic Honor/Bintang', 23000, 0, 0, 'Mytic - Grading 15', 200000),
(7, 'mytic glory/Bintang', 28000, 0, 0, 'Mytic - Honor 25', 400000),
(8, 'Mytic Immortal/Binta', 31000, 0, 0, 'Mytic - Glory 50', 975000);

-- --------------------------------------------------------

--
-- Table structure for table `t_login`
--

CREATE TABLE `t_login` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t_login`
--

INSERT INTO `t_login` (`id`, `firstname`, `lastname`, `username`, `password`) VALUES
(1, 'diamond', 'diamond', '', 0),
(2, 'irgi', 'achmad', 'equinox', 123),
(3, 'juldol', 'kifli', 'zul', 122),
(4, 'revan', 'yuda', 'repan', 111),
(5, 'yuuta', 'yuda', 'yuuta', 321),
(6, 'kating', 'bosho', 'kating', 12345),
(7, 'irgif', 'fauzis', 'irgi111', 123123);

-- --------------------------------------------------------

--
-- Table structure for table `t_login_admin`
--

CREATE TABLE `t_login_admin` (
  `id` int(11) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t_login_admin`
--

INSERT INTO `t_login_admin` (`id`, `first_name`, `last_name`, `username`, `password`) VALUES
(1, 'irgi', 'fauzi', 'admin', 123);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_data_diamond`
--
ALTER TABLE `t_data_diamond`
  ADD PRIMARY KEY (`id_diamond`);

--
-- Indexes for table `t_diamond`
--
ALTER TABLE `t_diamond`
  ADD PRIMARY KEY (`id_diamonds`);

--
-- Indexes for table `t_diamond_jasa`
--
ALTER TABLE `t_diamond_jasa`
  ADD PRIMARY KEY (`Id_diamond_jasa`);

--
-- Indexes for table `t_jasa_joki`
--
ALTER TABLE `t_jasa_joki`
  ADD PRIMARY KEY (`id_jasa`);

--
-- Indexes for table `t_joki`
--
ALTER TABLE `t_joki`
  ADD PRIMARY KEY (`id_joki`);

--
-- Indexes for table `t_login`
--
ALTER TABLE `t_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t_login_admin`
--
ALTER TABLE `t_login_admin`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t_data_diamond`
--
ALTER TABLE `t_data_diamond`
  MODIFY `id_diamond` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `t_diamond`
--
ALTER TABLE `t_diamond`
  MODIFY `id_diamonds` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `t_diamond_jasa`
--
ALTER TABLE `t_diamond_jasa`
  MODIFY `Id_diamond_jasa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_jasa_joki`
--
ALTER TABLE `t_jasa_joki`
  MODIFY `id_jasa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `t_joki`
--
ALTER TABLE `t_joki`
  MODIFY `id_joki` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `t_login`
--
ALTER TABLE `t_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `t_login_admin`
--
ALTER TABLE `t_login_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
