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
-- Table structure for table `pelatihan`
--

CREATE TABLE IF NOT EXISTS `pelatihan` (
  `id_pelatihan` int(4) NOT NULL,
  `nip` varchar(10) NOT NULL,
  `tgl_pelatihan` date NOT NULL,
  `topik_pelatihan` varchar(100) NOT NULL,
  `penyelenggara` text NOT NULL,
  `hasil_pelatihan` int(10) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelatihan`
--

INSERT INTO `pelatihan` (`id_pelatihan`, `nip`, `tgl_pelatihan`, `topik_pelatihan`, `penyelenggara`, `hasil_pelatihan`) VALUES
(4, '3517201407', '2018-01-01', 'Mobile Apps', 'Kemenpanrb', 0),
(5, '1234', '2018-01-01', 'Mobile Apps', 'Kominfo', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pelatihan`
--
ALTER TABLE `pelatihan`
  ADD PRIMARY KEY (`id_pelatihan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pelatihan`
--
ALTER TABLE `pelatihan`
  MODIFY `id_pelatihan` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
