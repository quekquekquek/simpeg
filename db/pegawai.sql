-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2019 at 02:18 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_pegawai`
--

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE IF NOT EXISTS `pegawai` (
  `nip` varchar(10) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `tmpt_lahir` varchar(200) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `tgl_masuk` date NOT NULL,
  `id_bag` varchar(4) NOT NULL,
  `id_jab` varchar(4) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`nip`, `nama`, `tmpt_lahir`, `tgl_lahir`, `jenis_kelamin`, `alamat`, `tgl_masuk`, `id_bag`, `id_jab`, `foto`) VALUES
('1234', 'Iwan Priyono,Dr,Spog', 'Palembang', '1987-03-04', 'P', 'Jl. Plaju', '2009-01-16', 'B001', 'J002', '3787531.jpg'),
('001', 'Suparmin,Dr,Spog', '', '0000-00-00', '', '', '0000-00-00', 'B001', 'J002', ''),
('002', 'siska', '', '0000-00-00', 'P', '', '0000-00-00', '', 'J003', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`nip`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
