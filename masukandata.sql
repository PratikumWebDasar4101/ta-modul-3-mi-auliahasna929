-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2018 at 02:17 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `masukandata`
--

-- --------------------------------------------------------

--
-- Table structure for table `datamahasiswa`
--

CREATE TABLE `datamahasiswa` (
  `nim` int(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `Fakultas` varchar(30) NOT NULL,
  `JK` varchar(15) NOT NULL,
  `foto` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `datamahasiswa`
--

INSERT INTO `datamahasiswa` (`nim`, `nama`, `Fakultas`, `JK`, `foto`) VALUES
(70115647, 'aulia hasna', '', '', 'FOTONYA/f2.jpg'),
(45678909, 'aulia', '', '', 'FOTONYA/f1.jpg'),
(23456789, 'inayah', '', '', 'FOTONYA/f1.jpg'),
(56729, 'putri', 'FEB', 'Laki-Laki', 'FOTONYA/f2.jpg');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
