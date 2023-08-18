-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 02, 2022 at 08:05 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clinic_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `Sr_No` int(11) NOT NULL,
  `Appt_ID` int(11) DEFAULT NULL,
  `PatientName` varchar(50) DEFAULT NULL,
  `Appt_Session` varchar(100) DEFAULT NULL,
  `Appt_Date` date DEFAULT NULL,
  `Appt_OPD` varchar(100) DEFAULT NULL,
  `Message` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`Sr_No`, `Appt_ID`, `PatientName`, `Appt_Session`, `Appt_Date`, `Appt_OPD`, `Message`) VALUES
(1, 701, 'Puja Mehta', 'Afternoon', '2021-09-27', 'Orthopedic', 'Suffered from backache'),
(3, 703, 'Shivani Gupta', 'Afternoon', '2021-09-10', 'Orthopedic', 'Suffered from bone pain');

-- --------------------------------------------------------

--
-- Table structure for table `bill_details`
--

CREATE TABLE `bill_details` (
  `Bill_No` int(11) NOT NULL,
  `Bill_Date` date DEFAULT NULL,
  `Bill_Type` varchar(50) DEFAULT NULL,
  `OPD_Type` varchar(50) DEFAULT NULL,
  `OPD_NO` int(50) DEFAULT NULL,
  `Patient_Name` varchar(50) DEFAULT NULL,
  `PRegNo` int(50) DEFAULT NULL,
  `Services` varchar(100) DEFAULT NULL,
  `Service_Amount` double DEFAULT NULL,
  `Quantity` int(50) DEFAULT NULL,
  `DisType` varchar(20) DEFAULT NULL,
  `Discount` double DEFAULT NULL,
  `Total_Amount` double DEFAULT NULL,
  `PayMode` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill_details`
--

INSERT INTO `bill_details` (`Bill_No`, `Bill_Date`, `Bill_Type`, `OPD_Type`, `OPD_NO`, `Patient_Name`, `PRegNo`, `Services`, `Service_Amount`, `Quantity`, `DisType`, `Discount`, `Total_Amount`, `PayMode`) VALUES
(1, '2021-09-25', 'OPD', 'Orthopedic', 50, 'Vikas Sharma', 1, 'X-rays', 1500, 2, 'Cost', 10, 1490, 'Online Transfer'),
(2, '2021-09-29', 'OPD', 'Orthopedic', 1, 'Puja Mehta', 2, 'Arthrogram', 1700, 2, '%(per)', 10, 1530, 'UPI');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `Sr_No` int(11) NOT NULL,
  `Register_No` int(11) DEFAULT NULL,
  `Patient_Name` varchar(50) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Patient_age` int(10) DEFAULT NULL,
  `Gender` varchar(20) DEFAULT NULL,
  `Mobile` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`Sr_No`, `Register_No`, `Patient_Name`, `DOB`, `Patient_age`, `Gender`, `Mobile`, `Email`, `Address`) VALUES
(2, 2, 'Puja Mehta', '2009-01-19', 18, 'Female', '8695785325', 'pujamehta19@gmail.com', 'Naredra Nagar Kolhapur '),
(3, 3, 'Shivani Gupta', '2004-06-04', 19, 'Female', '96857456', 'shivanigupta@gmail.com', 'Kalyni hagar Sangola');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `Sr_No` int(11) NOT NULL,
  `Service_ID` int(11) DEFAULT NULL,
  `Service_Name` varchar(50) DEFAULT NULL,
  `Price` int(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`Sr_No`, `Service_ID`, `Service_Name`, `Price`) VALUES
(1, 201, 'Counseling', 500),
(2, 202, 'X-rays', 750),
(3, 203, 'Arthrogram', 850),
(4, 204, 'Cancer Screening', 830);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`Sr_No`),
  ADD UNIQUE KEY `Appt_ID` (`Appt_ID`);

--
-- Indexes for table `bill_details`
--
ALTER TABLE `bill_details`
  ADD PRIMARY KEY (`Bill_No`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`Sr_No`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`Sr_No`),
  ADD UNIQUE KEY `Service_ID` (`Service_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `Sr_No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bill_details`
--
ALTER TABLE `bill_details`
  MODIFY `Bill_No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `Sr_No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `Sr_No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
