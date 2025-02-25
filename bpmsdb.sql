-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2025 at 02:34 AM
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
-- Database: `bpmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` char(50) DEFAULT NULL,
  `UserName` char(50) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Út Khờ', 'admin', 3318476331, 'tester1@gmail.com', '3c5a269a9d5a61889dbd10acfd35fc9e', '2019-07-25 06:21:50');

-- --------------------------------------------------------

--
-- Table structure for table `tblappointment`
--

CREATE TABLE `tblappointment` (
  `ID` int(10) NOT NULL,
  `AptNumber` varchar(80) DEFAULT NULL,
  `Name` varchar(120) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `PhoneNumber` bigint(11) DEFAULT NULL,
  `AptDate` varchar(120) DEFAULT NULL,
  `AptTime` varchar(120) DEFAULT NULL,
  `Services` varchar(120) DEFAULT NULL,
  `ApplyDate` timestamp NULL DEFAULT current_timestamp(),
  `Remark` varchar(250) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `RemarkDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblappointment`
--

INSERT INTO `tblappointment` (`ID`, `AptNumber`, `Name`, `Email`, `PhoneNumber`, `AptDate`, `AptTime`, `Services`, `ApplyDate`, `Remark`, `Status`, `RemarkDate`) VALUES
(3, '160421536', 'Nguyen Thanh Duc', 'Duckcaclor395@gmail.com', 938463084, '2/19/2025', '1:30am', 'Cắt Tóc', '2025-02-18 14:48:35', 'ok', '1', '2025-02-18 14:49:13'),
(4, '285343910', 'Trung Cut', 'Duckcaclor395@gmail.com', 925665959, '2/26/2025', '2:00am', 'Cắt Tóc', '2025-02-18 14:56:11', 'oke', '1', '2025-02-18 14:56:51'),
(5, '295196669', 'Nguyen Thanh Duc', 'Duckcaclor395@gmail.com', 925665959, '2/27/2025', '12:00am', 'Massage Mặt ', '2025-02-19 01:19:06', 'aaa', '1', '2025-02-19 01:33:09'),
(6, '440145233', 'asd', 'Duckcaclor395@gmail.com', 938463084, '2/13/2025', '1:30am', 'Duỗi Thẳng', '2025-02-19 01:19:43', NULL, NULL, '2025-02-19 01:19:43'),
(7, '900735966', 'asd', 'Duckcaclor395@gmail.com', 938463084, '2/13/2025', '1:30am', 'Duỗi Thẳng', '2025-02-19 01:21:48', NULL, NULL, '2025-02-19 01:21:48'),
(8, '573313511', 'sadasd', 'Duckcaclor395@gmail.com', 925665959, '2/28/2025', '12:00am', 'Wax Vuốt Tóc', '2025-02-19 01:32:33', NULL, NULL, '2025-02-19 01:32:33'),
(9, '130188872', 'Nguyenthanhduc', 'Duckcaclor395@gmail.com', 938463084, '2/19/2025', '12:30am', 'Cắt Tóc', '2025-02-19 02:13:09', 'ok', '2', '2025-02-19 02:17:40');

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomers`
--

CREATE TABLE `tblcustomers` (
  `ID` int(10) NOT NULL,
  `Name` varchar(120) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Gender` enum('Female','Male','Transgender') DEFAULT NULL,
  `Details` longtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblcustomers`
--

INSERT INTO `tblcustomers` (`ID`, `Name`, `Email`, `MobileNumber`, `Gender`, `Details`, `CreationDate`, `UpdationDate`) VALUES
(7, 'HoaiDuy', 'trinhhoaiduy@gmail.com', 331847633, 'Female', 'Hair Cut', '2020-08-11 13:21:28', '2025-02-18 15:07:24'),
(8, 'PhamTrung', 'Trung@gmail.com', 900786901, 'Female', 'Duỗi Thẳng', '2020-08-23 08:00:57', NULL),
(9, 'Phong', 'Phong365@gmail.com', 900786901, 'Female', 'Cắt Tóc', '2020-08-23 14:26:35', NULL),
(10, 'Đức', 'Ducsusan0175@gmail.com', 331847632, 'Female', 'Nhuộm + Cắt', '2020-08-23 14:27:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblinvoice`
--

CREATE TABLE `tblinvoice` (
  `id` int(11) NOT NULL,
  `Userid` int(11) DEFAULT NULL,
  `ServiceId` int(11) DEFAULT NULL,
  `BillingId` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblinvoice`
--

INSERT INTO `tblinvoice` (`id`, `Userid`, `ServiceId`, `BillingId`, `PostingDate`) VALUES
(19, 6, 2, 295788319, '2020-08-11 13:22:24'),
(20, 6, 5, 295788319, '2020-08-11 13:22:24'),
(21, 7, 1, 180675755, '2020-08-11 13:28:06'),
(22, 7, 3, 180675755, '2020-08-11 13:28:06'),
(23, 6, 21, 711438833, '2020-08-23 14:29:12'),
(24, 6, 24, 711438833, '2020-08-23 14:29:12'),
(25, 6, 30, 711438833, '2020-08-23 14:29:12'),
(26, 7, 25, 182834981, '2020-08-23 14:30:06'),
(27, 6, 22, 335348126, '2020-08-23 14:31:50'),
(28, 6, 23, 335348126, '2020-08-23 14:31:50'),
(29, 8, 24, 731560926, '2020-08-23 14:33:39'),
(30, 9, 23, 935027578, '2020-08-23 14:35:37'),
(31, 9, 30, 935027578, '2020-08-23 14:35:37'),
(32, 10, 31, 766324935, '2020-08-23 14:36:21'),
(33, 11, 21, 102654020, '2020-08-23 14:36:44'),
(34, 11, 30, 102654020, '2020-08-23 14:36:44'),
(35, 12, 24, 583481577, '2020-08-23 14:37:02');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` varchar(255) DEFAULT NULL,
  `PageDescription` varchar(255) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL,
  `Timing` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `Timing`) VALUES
(1, 'về chúng tôi', 'Giới thiệu về chúng tôi', 'Đây là Salon Út Khờ', NULL, NULL, NULL, ''),
(2, 'contactus', 'Contact Us', '16 Trinh Dinh Thao , Tan Phu , TPHCM', 'utkhosalon@gmail.com', 84905678910, NULL, '10:30 am to 7:30 pm');

-- --------------------------------------------------------

--
-- Table structure for table `tblservices`
--

CREATE TABLE `tblservices` (
  `ID` int(10) NOT NULL,
  `ServiceName` varchar(200) DEFAULT NULL,
  `Cost` varchar(255) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tblservices`
--

INSERT INTO `tblservices` (`ID`, `ServiceName`, `Cost`, `CreationDate`) VALUES
(21, 'Cắt Tóc', '70,000 VND', '2020-08-23 13:33:55'),
(22, 'Duỗi Thẳng', '150,000 VNĐ', '2020-08-23 13:35:08'),
(23, 'Massage Mặt ', '60,000 VNĐ', '2020-08-23 13:35:18'),
(28, 'Nhuộm Tóc + Cắt', '350,000 VNĐ', '2020-08-23 13:36:54'),
(29, 'Wax Vuốt Tóc', '200,000 VNĐ', '2020-08-23 13:37:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblappointment`
--
ALTER TABLE `tblappointment`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcustomers`
--
ALTER TABLE `tblcustomers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblservices`
--
ALTER TABLE `tblservices`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblappointment`
--
ALTER TABLE `tblappointment`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblcustomers`
--
ALTER TABLE `tblcustomers`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblservices`
--
ALTER TABLE `tblservices`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
