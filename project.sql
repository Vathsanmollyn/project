-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2022 at 08:45 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`) VALUES
(1, 'Bm.Shadman Sakib', 'sad@2600'),
(18, 'shanu Akter', 'shanu456'),
(20, 'sadman', 'sad@2600e');

-- --------------------------------------------------------

--
-- Table structure for table `ajaira`
--

CREATE TABLE `ajaira` (
  `ID` int(11) NOT NULL,
  `cat` varchar(40) NOT NULL,
  `name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ajaira`
--

INSERT INTO `ajaira` (`ID`, `cat`, `name`) VALUES
(1, 'bird', 'pigeon'),
(2, 'bird', 'ostrich'),
(3, 'bird', 'pigeon'),
(4, 'bird', 'ostrich'),
(5, 'dog', 'persian'),
(6, 'cat', 'persian cat'),
(7, 'cat', 'deshi cat');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `ID` int(11) NOT NULL,
  `empname` text NOT NULL,
  `custname` text NOT NULL,
  `name` text NOT NULL,
  `category` text NOT NULL,
  `total` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`ID`, `empname`, `custname`, `name`, `category`, `total`) VALUES
(1, 'mehedi', 'saddu bhai', 'pigeonyy', 'bird', 400000),
(2, 'mehedi', 'sijana', 'gold fish', 'fish', 100);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `ID` int(11) NOT NULL,
  `name` text NOT NULL,
  `address` text NOT NULL,
  `phone` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`ID`, `name`, `address`, `phone`) VALUES
(3, 'saddu bhai', 'mirpur 10 block c dhaka 1216', '01764186880'),
(4, 'sijana', 'mirpur 13', '020023939'),
(6, ' bayezid', ' jessore', ' 93483989');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `name`, `password`, `phone`, `address`) VALUES
(1, 'rakib', '097', '01734083645', 'Bubt road 7'),
(4, 'mehedi', 'mehedi123', '01929383', 'mirpur 10');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `ID` int(11) NOT NULL,
  `proname` varchar(40) NOT NULL,
  `procat` varchar(40) NOT NULL,
  `proqty` int(11) NOT NULL,
  `proprice` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ID`, `proname`, `procat`, `proqty`, `proprice`) VALUES
(1, 'persian cat', 'cat', 40, 30000),
(2, 'pigeonyy', 'bird', 0, 20000),
(3, 'hamster', 'hamster', 1, 20000),
(4, 'deshi cat', 'cat', 52, 555555),
(5, 'Racer pigeon', 'pigeon', 1, 2000),
(6, 'koel', 'bird', 2, 2),
(10, 'bird toy', 'toy', 5, 200),
(11, 'gold fish', 'fish', 2, 20);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `ID` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `employee` text NOT NULL,
  `customer` text NOT NULL,
  `product` text NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`ID`, `date`, `employee`, `customer`, `product`, `total`) VALUES
(1, '2022-03-03 21:24:48', 'rakib', 'saddu bhai', 'persian cat', 90000),
(2, '2022-03-03 21:29:16', 'rakib', 'sijana', 'Racer pigeon', 2000),
(3, '2022-03-03 21:30:10', 'mehedi', 'sijana', 'deshi cat', 1666665),
(4, '2022-03-03 21:42:15', 'rakib', 'saddu bhai', 'persian cat', 1500000),
(5, '2022-03-03 22:19:16', 'rakib', 'sijana', 'bird toy', 400),
(6, '2022-03-03 22:22:28', 'mehedi', 'toma', 'koel', 2),
(7, '2022-03-03 22:24:17', 'rakib', 'saddu bhai', 'Racer pigeon', 2000),
(8, '2022-03-03 22:30:43', 'rakib', 'saddu bhai', 'Racer pigeon', 4000),
(9, '2022-03-03 22:32:20', 'mehedi', 'toma', 'Racer pigeon', 4000),
(10, '2022-03-03 22:44:19', 'rakib', 'toma', 'Racer pigeon', 4000),
(11, '2022-03-03 22:44:59', 'rakib', 'saddu bhai', 'Racer pigeon', 4000),
(12, '2022-03-03 22:45:28', 'rakib', 'saddu bhai', 'persian cat', 1500000),
(13, '2022-03-03 22:46:19', 'mehedi', 'sijana', 'Racer pigeon', 4000),
(14, '2022-03-04 00:07:03', 'rakib', 'saddu bhai', 'pigeonyy', 200000),
(15, '2022-03-04 00:41:43', 'rakib', 'saddu bhai', 'Racer pigeon', 4000),
(16, '2022-03-04 01:02:43', 'rakib', 'saddu bhai', 'Racer pigeon', 2000),
(17, '2022-03-04 01:03:41', 'rakib', 'saddu bhai', 'gold fish', 60),
(18, '2022-03-04 01:06:44', 'rakib', 'saddu bhai', 'hamster', 20000),
(19, '2022-03-04 01:07:27', 'mehedi', 'sijana', 'bird toy', 2000),
(20, '2022-03-04 16:32:40', 'mehedi', ' bayezid', 'bird toy', 600),
(21, '2022-03-04 16:37:08', 'rakib', 'saddu bhai', 'pigeonyy', 400000),
(22, '2022-03-14 03:48:50', 'rakib', ' bayezid', 'persian cat', 300000),
(23, '2022-03-18 07:22:09', 'rakib', 'sijana', 'deshi cat', 2777775),
(24, '2022-03-18 07:25:05', 'rakib', 'saddu bhai', 'bird toy', 400);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ajaira`
--
ALTER TABLE `ajaira`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `ajaira`
--
ALTER TABLE `ajaira`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
