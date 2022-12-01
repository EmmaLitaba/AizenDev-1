-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 27, 2022 at 02:00 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tholebank`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `AccountNo` varchar(12) NOT NULL,
  `Balance` varchar(100) NOT NULL,
  `SavingBalance` varchar(100) NOT NULL,
  `SavingTarget` varchar(100) NOT NULL,
  `AccountType` text NOT NULL,
  `State` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `AccountNo`, `Balance`, `SavingBalance`, `SavingTarget`, `AccountType`, `State`) VALUES
(1, '917222137360', '800', '110', '500', 'Saving', 0),
(2, '919221215460', '110', '0.0', '', 'Saving', 0),
(3, '919222229030', '0.0', '0.0', '', 'Saving', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cards`
--

CREATE TABLE `cards` (
  `srNo` int(11) NOT NULL,
  `AccountNo` varchar(12) NOT NULL,
  `Name` varchar(80) NOT NULL,
  `CardNo` varchar(16) NOT NULL,
  `cvv` int(3) NOT NULL,
  `IssuedDate` varchar(20) NOT NULL,
  `ExpiryDate` varchar(20) NOT NULL,
  `Status` varchar(12) NOT NULL,
  `Verified` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cards`
--

INSERT INTO `cards` (`srNo`, `AccountNo`, `Name`, `CardNo`, `cvv`, `IssuedDate`, `ExpiryDate`, `Status`, `Verified`) VALUES
(1, '917222137360', 'TAFARA MAPURISA', '7292622120031091', 408, '', '', 'Inactive', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `customer_detail`
--

CREATE TABLE `customer_detail` (
  `C_No` int(11) NOT NULL,
  `Account_No` varchar(12) NOT NULL,
  `C_First_Name` text NOT NULL,
  `C_Last_Name` text NOT NULL,
  `Gender` text NOT NULL,
  `C_Father_Name` text NOT NULL,
  `C_Mother_Name` text NOT NULL,
  `C_Birth_Date` date NOT NULL,
  `C_Mobile_No` varchar(10) NOT NULL,
  `C_Email` varchar(200) NOT NULL,
  `Create_Date` date NOT NULL DEFAULT current_timestamp(),
  `ProfileColor` varchar(100) NOT NULL,
  `ProfileImage` varchar(400) NOT NULL,
  `Bio` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_detail`
--

INSERT INTO `customer_detail` (`C_No`, `Account_No`, `C_First_Name`, `C_Last_Name`, `Gender`, `C_Father_Name`, `C_Mother_Name`, `C_Birth_Date`, `C_Mobile_No`, `C_Email`, `Create_Date`, `ProfileColor`, `ProfileImage`, `Bio`) VALUES
(1, '917222137360', 'Tafara', 'MAPURISA', 'Male', 'dfghjk', 'asdfghjk', '2000-10-10', '0763585606', 'tafaramapurisa31@gmail.com', '2022-09-17', '#06da6a', '', 'I am a boy who stays in harare'),
(2, '919221215460', 'Nis', 'Namb', 'male', 'thgsgs', 'mother', '2000-02-29', '0793333333', 'nis.namb@cs.unza.zm', '2022-09-19', '#41c5fa', '', ''),
(3, '919222229030', 'Tafara', 'Mapurisa', 'male', 'asdf', 'asdf', '1999-12-10', '0790000000', 'tafa@gmail.com', '2022-09-19', '#6bb4ab', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `ID` int(11) NOT NULL,
  `AccountNo` varchar(12) NOT NULL,
  `Username` varchar(30) NOT NULL,
  `Password` varchar(40) NOT NULL,
  `Status` varchar(20) NOT NULL,
  `State` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`ID`, `AccountNo`, `Username`, `Password`, `Status`, `State`) VALUES
(1, '917222137360', 'Radical', 'f00a6b373c8577a43ba68148232fa1f8', 'Active', 0),
(2, '919221215460', 'Nishard', 'cbc1e97b8439b772c0ccc62c7ee6303c', 'Active', 0),
(3, '919222229030', 'Tafara', '44ffe44097bbce02fbaa42734e92ae04', 'Super', 1);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `AccountNo` varchar(12) NOT NULL,
  `FAccountNo` varchar(12) NOT NULL,
  `Name` text NOT NULL,
  `Amount` varchar(100) NOT NULL,
  `Debit` varchar(100) NOT NULL,
  `Credit` varchar(100) NOT NULL,
  `Date` date NOT NULL DEFAULT current_timestamp(),
  `Status` text NOT NULL,
  `ProfileColor` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `AccountNo`, `FAccountNo`, `Name`, `Amount`, `Debit`, `Credit`, `Date`, `Status`, `ProfileColor`) VALUES
(1, '917222137360', 'NA', 'OneThole Bank', '100', '0.0', '100', '2022-09-22', 'Credited', 'blue'),
(2, '917222137360', 'NA', 'OneThole Bank', '100', '0.0', '100', '2022-09-22', 'Credited', 'blue'),
(3, '917222137360', 'NA', 'OneThole Bank', '100', '0.0', '100', '2022-09-22', 'Credited', 'blue'),
(4, '919221215460', 'NA', 'OneThole Bank', '100', '100', '0.0', '2022-09-23', 'Debited', 'blue'),
(5, '919221215460', 'NA', 'OneThole Bank', '100', '100', '0.0', '2022-09-23', 'Debited', 'blue'),
(6, '919221215460', 'NA', 'OneThole Bank', '110', '110', '0.0', '2022-09-23', 'Credited', 'blue'),
(9, '919221215460', '917222137360', 'Tafara MAPURISA', '10', '0.0', '10', '2022-09-24', 'Credited', '#06da6a'),
(10, '917222137360', '919221215460', 'Nis Namb', '-10', '10', '0.0', '2022-09-24', 'Debited', '#41c5fa'),
(11, '919221215460', '917222137360', 'Tafara MAPURISA', '100', '0.0', '100', '2022-09-26', 'Credited', '#06da6a'),
(12, '917222137360', '919221215460', 'Nis Namb', '-100', '100', '0.0', '2022-09-26', 'Debited', '#41c5fa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `AccountNo` (`AccountNo`);

--
-- Indexes for table `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`srNo`),
  ADD UNIQUE KEY `AccountNo` (`AccountNo`),
  ADD UNIQUE KEY `CardNo` (`CardNo`);

--
-- Indexes for table `customer_detail`
--
ALTER TABLE `customer_detail`
  ADD PRIMARY KEY (`C_No`),
  ADD UNIQUE KEY `Account_No` (`Account_No`),
  ADD UNIQUE KEY `C_Email` (`C_Email`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`AccountNo`),
  ADD UNIQUE KEY `Unique` (`ID`),
  ADD UNIQUE KEY `AccountNo` (`AccountNo`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cards`
--
ALTER TABLE `cards`
  MODIFY `srNo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer_detail`
--
ALTER TABLE `customer_detail`
  MODIFY `C_No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
