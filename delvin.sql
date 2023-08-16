-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 16, 2023 at 11:27 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `delvin`
--

-- --------------------------------------------------------

--
-- Table structure for table `delvin`
--

CREATE TABLE `delvin` (
  `sno` int(11) DEFAULT NULL,
  `GSTNO` varchar(15) DEFAULT NULL,
  `cname` varchar(30) DEFAULT NULL,
  `bill` int(11) NOT NULL,
  `taxamt` int(11) DEFAULT NULL,
  `cgst` int(11) DEFAULT NULL,
  `sgst` int(11) DEFAULT NULL,
  `Total` int(11) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `igst` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `delvin`
--

INSERT INTO `delvin` (`sno`, `GSTNO`, `cname`, `bill`, `taxamt`, `cgst`, `sgst`, `Total`, `date`, `igst`) VALUES
(NULL, '33AAFGH3456PY', 'JACOB', 101, 25000, 2250, 2250, 29500, '2023-07-11', NULL),
(NULL, '33AAFGH3456PY', 'PERIYASAMY ENTERPRISES', 102, 2000, NULL, NULL, 2360, '2023-07-28', 360),
(NULL, '33AAFGH3456HY', 'UNIVERSAL HARDWARE & TOOLS CRO', 103, 25000, 2250, 2250, 29500, '2023-08-29', NULL),
(NULL, '33AAFGH3456GY', 'SUNDARAM AND CO', 104, 25000, NULL, NULL, 29500, '2023-07-25', 4500),
(NULL, '33AAFGH3456HY', 'DELVIN DIAMOND TOOLS', 105, 12000, NULL, NULL, 14160, '2023-07-28', 2160),
(NULL, '33AAFGH3456HY', 'PALS ENTERPRISES', 106, 22000, 1980, 1980, 25960, '2023-07-16', NULL),
(NULL, '33AAFGH3456GY', 'SUNRISE', 107, 26000, NULL, NULL, 30680, '2023-07-18', 4680),
(NULL, '33AAFGH3456PY', 'DELVIN ', 108, 12000, 1080, 1080, 14160, '2023-07-26', NULL),
(NULL, '33AAFGH3456PY', 'JACOBDD', 109, 26000, NULL, NULL, 30680, '2023-07-20', 4680),
(NULL, '33AAFGH3456GY', 'NAVEEM AND MADHU', 110, 25000, 2250, 2250, 29500, '2023-07-25', NULL),
(NULL, '33AAFGH3456PY', 'RAKESH ENTERPRISES', 111, 6000, 540, 540, 7080, '2023-07-19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `sno` int(11) NOT NULL,
  `GSTNO` varchar(15) NOT NULL,
  `cname` varchar(255) NOT NULL,
  `bill` int(11) NOT NULL,
  `taxamt` int(11) NOT NULL,
  `cgst` int(11) NOT NULL,
  `sgst` int(11) NOT NULL,
  `igst` int(11) NOT NULL,
  `Total` int(11) NOT NULL,
  `date` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`sno`, `GSTNO`, `cname`, `bill`, `taxamt`, `cgst`, `sgst`, `igst`, `Total`, `date`) VALUES
(0, '33AAFGH3456PY', 'NEWTON ENTERPRISES', 101, 15000, 0, 0, 2700, 17700, '2023-07-18'),
(0, '33AAFGH3456PY', 'SUNDARAM', 102, 25000, 2250, 2250, 0, 29500, '2023-07-11'),
(0, '33AAFGH3456PY', 'SUNRISE ENTERPRISES', 103, 12000, 0, 0, 2160, 14160, '2023-07-19'),
(0, '33AAFGH3456GY', 'PALS ENTERPRISES', 104, 15000, 0, 0, 2700, 17700, '2023-07-27'),
(0, '33AAFGH3456PY', 'SUNDARAM', 105, 25000, 2250, 2250, 0, 29500, '2023-08-23'),
(0, '33AAFGH3456PY', 'HARI RAM AND CO', 106, 42000, 3780, 3780, 0, 49560, '2023-08-23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `delvin`
--
ALTER TABLE `delvin`
  ADD UNIQUE KEY `bill` (`bill`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD UNIQUE KEY `bill` (`bill`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
