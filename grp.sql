-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2023 at 03:03 PM
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
-- Database: `grp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `fullname` varchar(259) DEFAULT NULL,
  `mobilenumber` bigint(11) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `fullname`, `mobilenumber`, `email`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'Soumyajit Dey Sarkar', 7980032335, 'soumyajitdeysarkar@gmail.com', 'soumyajit', '21232f297a57a5a743894a0e4a801fc3', '2023-11-03 05:16:16', '04-11-2023 04:18:16'),
(2, 'Poulami Dutta', 8970378332, 'poulami.dutta@gmail.com', 'poulamimaam', '21232f297a57a5a743894a0e4a801fc3', '2023-11-05 10:26:25', '');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(9, 'Public Services', '', '2023-11-03 13:48:29', NULL),
(10, 'Infrastructure', '', '2023-11-03 13:48:38', NULL),
(11, 'Government Schemes', '', '2023-11-03 13:48:45', NULL),
(12, 'Civic Issues', '', '2023-11-03 13:48:50', NULL),
(13, 'Land and Property', '', '2023-11-03 13:48:56', NULL),
(14, 'Environment', '', '2023-11-03 13:49:02', NULL),
(15, 'Public Safety and Law Enforcement', '', '2023-11-03 13:49:10', NULL),
(16, 'Consumer Rights', '', '2023-11-03 13:49:16', NULL),
(17, 'Others', '', '2023-11-03 13:49:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `complaintremark`
--

CREATE TABLE `complaintremark` (
  `id` int(11) NOT NULL,
  `complaintNumber` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `remarkDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `complaintremark`
--

INSERT INTO `complaintremark` (`id`, `complaintNumber`, `status`, `remark`, `remarkDate`) VALUES
(1, 1, 'closed', 'Very Soon !', '2023-11-05 12:23:12'),
(2, 2, 'in process', 'Need time to say the exact date .', '2023-11-05 12:25:08');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `stateName` varchar(255) DEFAULT NULL,
  `stateDescription` tinytext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `stateName`, `stateDescription`, `postingDate`, `updationDate`) VALUES
(3, 'Uttar Pradesh', 'Uttar Pradesh', '2023-09-28 16:56:56', '2023-11-03 13:42:15'),
(4, 'Punjab', 'Punjab', '2023-09-28 16:56:56', '2023-11-03 13:42:27'),
(5, 'Haryana', 'Haryana', '2023-09-28 16:56:56', '2023-11-03 13:42:33'),
(6, 'Delhi', 'Delhi', '2023-09-28 16:56:56', '2023-11-03 13:42:41'),
(10, 'Andhra Pradesh', 'Andhra Pradesh', '2023-11-03 13:43:33', NULL),
(11, 'Arunachal Pradesh', 'Arunachal Pradesh', '2023-11-03 13:43:42', NULL),
(12, 'Assam', 'Assam', '2023-11-03 13:43:47', NULL),
(13, 'Bihar', 'Bihar', '2023-11-03 13:43:53', NULL),
(14, 'Chhattisgarh', 'Chhattisgarh', '2023-11-03 13:43:58', NULL),
(15, 'Goa', 'Goa', '2023-11-03 13:44:03', NULL),
(16, 'Gujarat', 'Gujarat', '2023-11-03 13:44:07', NULL),
(17, 'Himachal Pradesh', 'Himachal Pradesh', '2023-11-03 13:44:12', NULL),
(18, 'Jharkhand', 'Jharkhand', '2023-11-03 13:44:17', NULL),
(19, 'Karnataka', 'Karnataka', '2023-11-03 13:44:22', NULL),
(20, 'Kerala', 'Kerala', '2023-11-03 13:44:26', NULL),
(21, 'Madhya Pradesh', 'Madhya Pradesh', '2023-11-03 13:44:31', NULL),
(22, 'Maharashtra', 'Maharashtra', '2023-11-03 13:44:35', NULL),
(23, 'Manipur', 'Manipur', '2023-11-03 13:44:39', NULL),
(24, 'Meghalaya', 'Meghalaya', '2023-11-03 13:44:43', NULL),
(25, 'Mizoram', 'Mizoram', '2023-11-03 13:44:47', NULL),
(26, 'Nagaland', 'Nagaland', '2023-11-03 13:44:51', NULL),
(27, 'Odisha', 'Odisha', '2023-11-03 13:44:58', NULL),
(28, 'Rajasthan', 'Rajasthan', '2023-11-03 13:45:06', NULL),
(29, 'Sikkim', 'Sikkim', '2023-11-03 13:45:11', NULL),
(30, 'Tamil Nadu', 'Tamil Nadu', '2023-11-03 13:45:15', NULL),
(31, 'Telangana', 'Telangana', '2023-11-03 13:45:21', NULL),
(32, 'Tripura', 'Tripura', '2023-11-03 13:45:25', NULL),
(33, 'Uttarakhand', 'Uttarakhand', '2023-11-03 13:45:30', NULL),
(34, 'West Bengal', 'West Bengal', '2023-11-03 13:45:34', NULL),
(35, 'Andaman and Nicobar Islands', 'Andaman and Nicobar Islands', '2023-11-03 13:46:06', NULL),
(36, 'Chandigarh', 'Chandigarh', '2023-11-03 13:46:11', NULL),
(37, 'Dadra and Nagar Haveli and Daman and Diu', 'Dadra and Nagar Haveli and Daman and Diu', '2023-11-03 13:46:19', NULL),
(38, 'Lakshadweep', 'Lakshadweep', '2023-11-03 13:46:24', NULL),
(39, 'Ladakh', 'Ladakh', '2023-11-03 13:46:28', NULL),
(40, 'Puducherry', 'Puducherry', '2023-11-03 13:46:34', NULL),
(41, 'Jammu and Kashmir', 'Jammu and Kashmir', '2023-11-03 13:46:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(8, 9, 'Healthcare services', '2023-11-03 13:49:34', NULL),
(9, 9, 'Education services', '2023-11-03 13:49:42', NULL),
(10, 9, 'Public transportation', '2023-11-03 13:49:48', NULL),
(11, 9, 'Police and law enforcement', '2023-11-03 13:49:52', NULL),
(12, 10, 'Roads and bridges', '2023-11-03 13:50:15', NULL),
(13, 10, 'Water supply and sanitation', '2023-11-03 13:50:21', NULL),
(14, 10, 'Electricity supply', '2023-11-03 13:50:31', NULL),
(15, 10, 'Public amenities (parks, community centers)', '2023-11-03 13:50:38', NULL),
(16, 11, 'Social welfare schemes', '2023-11-03 13:50:46', NULL),
(17, 11, 'Employment schemes', '2023-11-03 13:50:52', NULL),
(18, 11, 'Subsidies and grants', '2023-11-03 13:50:58', NULL),
(19, 11, 'Pension schemes', '2023-11-03 13:51:02', NULL),
(20, 12, 'Garbage disposal', '2023-11-03 13:52:09', NULL),
(21, 12, 'Drainage and sewage problems', '2023-11-03 13:52:15', NULL),
(22, 12, 'Street lighting', '2023-11-03 13:52:23', NULL),
(23, 12, 'Encroachments and illegal constructions', '2023-11-03 13:52:28', NULL),
(24, 13, 'Land disputes', '2023-11-03 13:59:10', NULL),
(25, 13, 'Property tax issues', '2023-11-03 13:59:16', NULL),
(26, 13, 'Land acquisition problems', '2023-11-03 13:59:22', NULL),
(27, 13, 'Encroachment on public land', '2023-11-03 13:59:28', NULL),
(28, 14, 'Pollution control', '2023-11-03 13:59:34', NULL),
(29, 14, 'Deforestation', '2023-11-03 13:59:40', NULL),
(30, 14, 'Wildlife conservation', '2023-11-03 13:59:46', NULL),
(31, 14, 'Environmental hazards', '2023-11-03 13:59:51', NULL),
(32, 15, 'Crime reporting', '2023-11-03 13:59:58', NULL),
(33, 15, 'Police misconduct', '2023-11-03 14:00:04', NULL),
(34, 15, 'Traffic violations', '2023-11-03 14:00:10', NULL),
(35, 15, 'Cybercrime complaints', '2023-11-03 14:00:16', NULL),
(36, 16, 'Defective products/services', '2023-11-03 14:00:22', NULL),
(37, 16, 'Price manipulation', '2023-11-03 14:00:27', NULL),
(38, 16, 'Fraudulent practices', '2023-11-03 14:00:32', NULL),
(39, 16, 'Unfair trade practices', '2023-11-03 14:00:37', NULL),
(40, 17, 'Miscellaneous issues not covered in specific categories', '2023-11-03 14:00:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcomplaints`
--

CREATE TABLE `tblcomplaints` (
  `complaintNumber` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `complaintType` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `noc` varchar(255) DEFAULT NULL,
  `complaintDetails` mediumtext DEFAULT NULL,
  `complaintFile` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `status` varchar(50) DEFAULT NULL,
  `lastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcomplaints`
--

INSERT INTO `tblcomplaints` (`complaintNumber`, `userId`, `category`, `subcategory`, `complaintType`, `state`, `noc`, `complaintDetails`, `complaintFile`, `regDate`, `status`, `lastUpdationDate`) VALUES
(1, 2, 9, 'Public transportation', 'General Query', 'West Bengal', 'Question', 'When will metro services from Sealdah to Howrah start?', 'df4e5b559cb1d566c7fbc391bc408999.png', '2023-11-05 12:16:52', 'closed', '2023-11-05 12:23:12'),
(2, 2, 9, 'Public transportation', 'General Query', 'West Bengal', 'Question', 'When will Newtown Metro start?', '680082cf0e14253b4b039b74e4b59b97.png', '2023-11-05 12:18:08', 'in process', '2023-11-05 12:25:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `contactNo` bigint(11) DEFAULT NULL,
  `address` tinytext DEFAULT NULL,
  `State` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `pincode` int(6) DEFAULT NULL,
  `userImage` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `userEmail`, `password`, `contactNo`, `address`, `State`, `country`, `pincode`, `userImage`, `regDate`, `updationDate`, `status`) VALUES
(2, 'Soumyajit Dey Sarkar', 'soumyajitdeysarkar@gmail.com', 'ee11cbb19052e40b07aac0ca060c23ee', 7980032335, '19 Ghatak Road, Kanchrapara.', 'West Bengal', 'India', 743145, NULL, '2023-11-05 10:37:27', NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaintremark`
--
ALTER TABLE `complaintremark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomplaints`
--
ALTER TABLE `tblcomplaints`
  ADD PRIMARY KEY (`complaintNumber`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `complaintremark`
--
ALTER TABLE `complaintremark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tblcomplaints`
--
ALTER TABLE `tblcomplaints`
  MODIFY `complaintNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
