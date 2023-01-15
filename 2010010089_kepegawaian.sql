-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2023 at 04:29 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `2010010089_kepegawaian`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_golongan`
--

CREATE TABLE `tb_golongan` (
  `id_golongan` varchar(50) NOT NULL,
  `gaji_pokok` varchar(50) NOT NULL,
  `tunjangan_keluarga` varchar(50) NOT NULL,
  `tunjangan_transport` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_golongan`
--

INSERT INTO `tb_golongan` (`id_golongan`, `gaji_pokok`, `tunjangan_keluarga`, `tunjangan_transport`) VALUES
('1', '500000', '1000', '500');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pegawai`
--

CREATE TABLE `tb_pegawai` (
  `id_pegawai` varchar(50) NOT NULL,
  `nip_pegawai` varchar(50) NOT NULL,
  `nama_pegawai` varchar(50) NOT NULL,
  `golongan_pegawai` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_pegawai`
--

INSERT INTO `tb_pegawai` (`id_pegawai`, `nip_pegawai`, `nama_pegawai`, `golongan_pegawai`) VALUES
('1', '4444', 'erin', 'I'),
('93849', '999383', 'afus', 'II'),
('K01', '201239', 'gogon', 'I'),
('K02', '111', 'Imah', 'I');

-- --------------------------------------------------------

--
-- Table structure for table `tb_penggajian`
--

CREATE TABLE `tb_penggajian` (
  `id_penggajian` varchar(50) NOT NULL,
  `nama_pegawai` varchar(50) NOT NULL,
  `id_golongan` varchar(50) NOT NULL,
  `gaji_pokok` varchar(50) NOT NULL,
  `tunjangan_gaji` varchar(50) NOT NULL,
  `total_gaji` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_penggajian`
--

INSERT INTO `tb_penggajian` (`id_penggajian`, `nama_pegawai`, `id_golongan`, `gaji_pokok`, `tunjangan_gaji`, `total_gaji`) VALUES
('K02', 'Rizki', 'III', '5000000', '500000', '5500000'),
('K04', 'Sigit', 'IIII', '500', '500', '100000');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
