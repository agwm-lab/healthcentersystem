-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 12, 2025 at 12:19 PM
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
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`, `updationDate`) VALUES
('admin', 'Test@12345', '28-12-2016 11:42:05 AM');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `doctorSpecialization` varchar(255) DEFAULT NULL,
  `doctorId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `consultancyFees` int(11) DEFAULT NULL,
  `appointmentDate` varchar(255) DEFAULT NULL,
  `appointmentTime` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `userStatus` int(11) DEFAULT NULL,
  `doctorStatus` int(11) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
(9, 'General Physician', 12, 8, 1000, '2025-08-21', '1:45 PM', '2025-08-21 04:03:04', 1, 0, '2025-08-21 04:27:01'),
(10, 'General Physician', 12, 8, 0, '2025-08-21', '10:30 AM', '2025-08-21 04:30:10', 0, 1, '2025-08-21 04:30:21');

-- --------------------------------------------------------

--
-- Table structure for table `audit_log`
--

CREATE TABLE `audit_log` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `target_type` varchar(100) DEFAULT NULL,
  `target_id` int(11) DEFAULT NULL,
  `timestamp` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `audit_log`
--

INSERT INTO `audit_log` (`id`, `user_id`, `action`, `target_type`, `target_id`, `timestamp`) VALUES
(1, 12, 'Soft Delete', 'Patient', 288, '2025-08-20 07:40:37'),
(2, 12, 'Soft Delete', 'Patient', 289, '2025-08-20 07:43:14'),
(3, 12, 'Soft Delete', 'Patient', 290, '2025-08-20 07:46:11');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `doctorName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `docFees` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `docEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(12, 'General Physician', 'Juan Severo', 'Paoay', '1000', 0, 'Juan@miguel', '4eceb99a868f4d4b7742a5d1e081b070', '2025-08-17 15:33:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(33, 12, 'Juan@miguel', 0x3a3a3100000000000000000000000000, '2025-08-17 15:33:49', '17-08-2025 09:05:03 PM', 1),
(34, 12, 'Juan@miguel', 0x3a3a3100000000000000000000000000, '2025-08-17 15:40:37', '17-08-2025 09:27:53 PM', 1),
(35, 12, 'Juan@miguel', 0x3a3a3100000000000000000000000000, '2025-08-18 11:14:06', NULL, 1),
(36, 12, 'Juan@miguel', 0x3a3a3100000000000000000000000000, '2025-08-18 11:50:27', '18-08-2025 05:21:14 PM', 1),
(37, 12, 'Juan@miguel', 0x3a3a3100000000000000000000000000, '2025-08-18 11:51:23', '18-08-2025 05:31:46 PM', 1),
(38, 12, 'Juan@miguel', 0x3a3a3100000000000000000000000000, '2025-08-18 14:43:22', NULL, 1),
(39, 12, 'Juan@miguel', 0x3a3a3100000000000000000000000000, '2025-08-20 12:49:12', NULL, 1),
(40, 12, 'Juan@miguel', 0x3a3a3100000000000000000000000000, '2025-08-20 12:51:30', '20-08-2025 07:19:43 PM', 1),
(41, 12, 'Juan@miguel', 0x3a3a3100000000000000000000000000, '2025-08-20 13:49:50', NULL, 1),
(42, NULL, 'admin', 0x3a3a3100000000000000000000000000, '2025-08-20 16:58:16', NULL, 0),
(43, 12, 'Juan@miguel', 0x3a3a3100000000000000000000000000, '2025-08-20 16:58:20', '20-08-2025 10:28:54 PM', 1),
(44, 12, 'Juan@miguel', 0x3a3a3100000000000000000000000000, '2025-08-20 17:17:30', '20-08-2025 10:47:55 PM', 1),
(45, 12, 'Juan@miguel', 0x3a3a3100000000000000000000000000, '2025-08-20 17:19:09', '20-08-2025 10:57:40 PM', 1),
(46, 12, 'Juan@miguel', 0x3a3a3100000000000000000000000000, '2025-08-20 17:34:02', '20-08-2025 11:06:13 PM', 1),
(47, 12, 'Juan@miguel', 0x3a3a3100000000000000000000000000, '2025-08-20 17:49:31', '20-08-2025 11:19:40 PM', 1),
(48, 12, 'Juan@miguel', 0x3a3a3100000000000000000000000000, '2025-08-20 17:49:50', '20-08-2025 11:19:53 PM', 1),
(49, 12, 'Juan@miguel', 0x3a3a3100000000000000000000000000, '2025-08-20 17:50:00', '20-08-2025 11:27:25 PM', 1),
(50, 12, 'Juan@miguel', 0x3132372e302e302e3100000000000000, '2025-08-20 18:09:48', '20-08-2025 11:41:20 PM', 1),
(51, 12, 'Juan@miguel', 0x3a3a3100000000000000000000000000, '2025-08-20 18:25:05', '20-08-2025 11:55:09 PM', 1),
(52, 12, 'Juan@miguel', 0x3a3a3100000000000000000000000000, '2025-08-20 18:27:31', '20-08-2025 11:57:58 PM', 1),
(53, 12, 'Juan@miguel', 0x3a3a3100000000000000000000000000, '2025-08-20 18:37:17', '21-08-2025 12:24:51 AM', 1),
(54, 12, 'Juan@miguel', 0x3a3a3100000000000000000000000000, '2025-08-20 18:55:00', '21-08-2025 12:25:07 AM', 1),
(55, 12, 'Juan@miguel', 0x3a3a3100000000000000000000000000, '2025-08-20 19:03:04', '21-08-2025 01:04:48 AM', 1),
(56, 12, 'Juan@miguel', 0x3a3a3100000000000000000000000000, '2025-08-21 04:04:07', '21-08-2025 09:39:31 AM', 1),
(57, 12, 'Juan@miguel', 0x3a3a3100000000000000000000000000, '2025-08-21 04:12:49', '21-08-2025 09:57:11 AM', 1),
(58, 12, 'Juan@miguel', 0x3a3a3100000000000000000000000000, '2025-08-21 04:30:40', '21-08-2025 10:02:48 AM', 1),
(59, 12, 'Juan@miguel', 0x3a3a3100000000000000000000000000, '2025-08-21 10:01:18', '21-08-2025 03:39:19 PM', 1),
(60, 12, 'Juan@miguel', 0x3a3a3100000000000000000000000000, '2025-08-21 10:31:01', '21-08-2025 04:01:43 PM', 1),
(61, 12, 'Juan@miguel', 0x3a3a3100000000000000000000000000, '2025-08-21 11:47:13', '21-08-2025 05:19:57 PM', 1),
(62, 12, 'Juan@miguel', 0x3a3a3100000000000000000000000000, '2025-08-21 11:52:38', '21-08-2025 05:22:55 PM', 1),
(63, 12, 'Juan@miguel', 0x3a3a3100000000000000000000000000, '2025-08-21 11:58:50', NULL, 1),
(64, 12, 'Juan@miguel', 0x3a3a3100000000000000000000000000, '2025-08-23 04:45:46', NULL, 1),
(65, 12, 'Juan@miguel', 0x3a3a3100000000000000000000000000, '2025-08-23 07:19:58', '23-08-2025 01:33:39 PM', 1),
(66, 12, 'Juan@miguel', 0x3a3a3100000000000000000000000000, '2025-08-23 08:03:47', NULL, 1),
(67, 12, 'Juan@miguel', 0x3a3a3100000000000000000000000000, '2025-08-23 08:05:11', NULL, 1),
(68, 12, 'Juan@miguel', 0x3a3a3100000000000000000000000000, '2025-08-23 08:09:18', '23-08-2025 05:41:21 PM', 1),
(69, 12, 'Juan@miguel', 0x3a3a3100000000000000000000000000, '2025-08-23 18:23:06', NULL, 1),
(70, 12, 'Juan@miguel', 0x3a3a3100000000000000000000000000, '2025-08-23 19:12:46', NULL, 1),
(71, 12, 'Juan@miguel', 0x3a3a3100000000000000000000000000, '2025-08-24 09:29:28', NULL, 1),
(72, NULL, 'admin', 0x3a3a3100000000000000000000000000, '2025-08-24 12:11:55', NULL, 0),
(73, 12, 'Juan@miguel', 0x3a3a3100000000000000000000000000, '2025-08-24 12:12:00', NULL, 1),
(74, 12, 'Juan@miguel', 0x3a3a3100000000000000000000000000, '2025-08-24 14:19:01', NULL, 1),
(75, 12, 'Juan@miguel', 0x3a3a3100000000000000000000000000, '2025-08-24 16:01:23', NULL, 1),
(76, 12, 'Juan@miguel', 0x3a3a3100000000000000000000000000, '2025-08-25 17:31:35', NULL, 1),
(77, 12, 'Juan@miguel', 0x3a3a3100000000000000000000000000, '2025-08-29 11:57:32', '29-08-2025 06:56:48 PM', 1),
(78, 12, 'Juan@miguel', 0x3a3a3100000000000000000000000000, '2025-08-29 13:27:00', NULL, 1),
(79, 12, 'Juan@miguel', 0x3a3a3100000000000000000000000000, '2025-09-03 12:30:02', '03-09-2025 10:39:30 PM', 1),
(80, 12, 'Juan@miguel', 0x3a3a3100000000000000000000000000, '2025-09-03 17:44:15', NULL, 1),
(81, NULL, 'admin', 0x3a3a3100000000000000000000000000, '2025-09-08 15:03:29', NULL, 0),
(82, 12, 'Juan@miguel', 0x3132372e302e302e3100000000000000, '2025-09-09 16:22:04', NULL, 1),
(83, 12, 'Juan@miguel', 0x3a3a3100000000000000000000000000, '2025-09-12 06:56:04', '12-09-2025 01:04:42 PM', 1),
(84, 12, 'Juan@miguel', 0x3a3a3100000000000000000000000000, '2025-09-12 07:46:35', '12-09-2025 01:26:33 PM', 1),
(85, 12, 'Juan@miguel', 0x3a3a3100000000000000000000000000, '2025-09-12 08:07:34', '12-09-2025 01:39:03 PM', 1),
(86, 12, 'Juan@miguel', 0x3a3a3100000000000000000000000000, '2025-09-12 08:43:55', '12-09-2025 02:23:17 PM', 1),
(87, 12, 'Juan@miguel', 0x3a3a3100000000000000000000000000, '2025-09-12 08:54:31', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(1, 'Gynecologist/Obstetrician', '2016-12-28 06:37:25', '0000-00-00 00:00:00'),
(2, 'General Physician', '2016-12-28 06:38:12', '0000-00-00 00:00:00'),
(3, 'Dermatologist', '2016-12-28 06:38:48', '0000-00-00 00:00:00'),
(4, 'Homeopath', '2016-12-28 06:39:26', '0000-00-00 00:00:00'),
(5, 'Ayurveda', '2016-12-28 06:39:51', '0000-00-00 00:00:00'),
(6, 'Dentist', '2016-12-28 06:40:08', '0000-00-00 00:00:00'),
(7, 'Ear-Nose-Throat (Ent) Specialist', '2016-12-28 06:41:18', '0000-00-00 00:00:00'),
(9, 'Demo test', '2016-12-28 07:37:39', '0000-00-00 00:00:00'),
(10, 'Bones Specialist demo', '2017-01-07 08:07:53', '0000-00-00 00:00:00'),
(12, 'Dermatologist', '2019-11-10 18:36:36', '2019-11-10 18:36:50'),
(13, 'Physician', '2020-07-05 01:59:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactus`
--

CREATE TABLE `tblcontactus` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(12) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `LastupdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `IsRead` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblimmunization`
--

CREATE TABLE `tblimmunization` (
  `ID` int(11) NOT NULL,
  `PatientID` int(11) DEFAULT NULL,
  `VaccineName` varchar(100) DEFAULT NULL,
  `DoseNumber` int(11) DEFAULT NULL,
  `VaccinationDate` date DEFAULT NULL,
  `Remarks` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbllaboratory_results`
--

CREATE TABLE `tbllaboratory_results` (
  `ID` int(11) NOT NULL,
  `PatientID` int(11) NOT NULL,
  `TestName` varchar(255) NOT NULL,
  `Date` date NOT NULL,
  `Result` text NOT NULL,
  `Remarks` text DEFAULT NULL,
  `FilePath` varchar(255) DEFAULT NULL,
  `CreatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbllaboratory_results`
--

INSERT INTO `tbllaboratory_results` (`ID`, `PatientID`, `TestName`, `Date`, `Result`, `Remarks`, `FilePath`, `CreatedAt`) VALUES
(1, 434099, 'blood Test', '2025-09-04', 'normal', 'normal', 'uploads/labresults/LR_434099_250912_001.pdf', '2025-09-12 09:09:07');

-- --------------------------------------------------------

--
-- Table structure for table `tblmedicalhistory`
--

CREATE TABLE `tblmedicalhistory` (
  `ID` int(10) NOT NULL,
  `PatientID` int(10) DEFAULT NULL,
  `BloodPressure` varchar(200) DEFAULT NULL,
  `BloodSugar` varchar(200) NOT NULL,
  `Weight` varchar(100) DEFAULT NULL,
  `Temperature` varchar(200) DEFAULT NULL,
  `MedicalPres` mediumtext DEFAULT NULL,
  `Diagnosis` varchar(255) DEFAULT NULL,
  `MedicalFile` varchar(255) DEFAULT NULL,
  `Remarks` varchar(255) DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblmedicine_distribution`
--

CREATE TABLE `tblmedicine_distribution` (
  `id` int(11) NOT NULL,
  `medicine_id` int(11) DEFAULT NULL,
  `medicine_name` varchar(255) DEFAULT NULL,
  `quantity_removed` int(11) DEFAULT NULL,
  `distributed_to` varchar(255) DEFAULT NULL,
  `date_distributed` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblmedicine_distribution`
--

INSERT INTO `tblmedicine_distribution` (`id`, `medicine_id`, `medicine_name`, `quantity_removed`, `distributed_to`, `date_distributed`) VALUES
(1, 3, 'Loratadine', 10, 'Patient Jhon Smith', '2025-08-21 00:00:00'),
(2, 3, 'Loratadine', 10, 'Patient Jhon Smith', '2025-08-21 00:00:00'),
(3, 3, 'Loratadine', 10, 'Patient Jhon Smith', '2025-08-21 00:00:00'),
(4, 3, 'Loratadine', 10, 'Patient Jhon Smith', '2025-08-21 00:00:00'),
(5, 3, 'Loratadine', 10, 'Patient Jhon Smith', '2025-08-21 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblmedicine_inventory`
--

CREATE TABLE `tblmedicine_inventory` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `expiry_date` date NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblmedicine_inventory`
--

INSERT INTO `tblmedicine_inventory` (`id`, `name`, `quantity`, `expiry_date`, `description`, `created_at`) VALUES
(3, 'Loratadine', 50, '2026-08-20', '', '2025-08-21 06:47:09');

-- --------------------------------------------------------

--
-- Table structure for table `tblmedicine_logs`
--

CREATE TABLE `tblmedicine_logs` (
  `id` int(11) NOT NULL,
  `medicine_id` int(11) NOT NULL,
  `action` enum('Added','Removed') NOT NULL,
  `quantity` int(11) NOT NULL,
  `remarks` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblpatient`
--

CREATE TABLE `tblpatient` (
  `ID` int(6) NOT NULL,
  `Docid` int(10) DEFAULT NULL,
  `PatientName` varchar(200) DEFAULT NULL,
  `PhilHealthNumber` varchar(12) DEFAULT NULL,
  `BirthDate` date DEFAULT NULL,
  `BirthPlace` varchar(255) DEFAULT NULL,
  `PatientContno` bigint(10) DEFAULT NULL,
  `PatientEmail` varchar(200) DEFAULT NULL,
  `PatientGender` varchar(50) DEFAULT NULL,
  `PatientAdd` mediumtext DEFAULT NULL,
  `OtherAddress` varchar(100) DEFAULT NULL,
  `PatientAge` int(11) DEFAULT NULL,
  `Category` varchar(50) DEFAULT NULL,
  `SubCategory` varchar(50) DEFAULT NULL,
  `PatientMedhis` mediumtext DEFAULT NULL,
  `CreationDate` datetime DEFAULT current_timestamp(),
  `UpdationDate` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Barangay` varchar(100) DEFAULT NULL,
  `FamilyNumber` varchar(50) DEFAULT NULL,
  `HealthCenter` varchar(100) DEFAULT 'RHU Paoay',
  `BirthHeight` varchar(20) DEFAULT NULL,
  `BirthWeight` varchar(20) DEFAULT NULL,
  `MotherName` varchar(100) DEFAULT NULL,
  `FatherName` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpatient`
--

INSERT INTO `tblpatient` (`ID`, `Docid`, `PatientName`, `PhilHealthNumber`, `BirthDate`, `BirthPlace`, `PatientContno`, `PatientEmail`, `PatientGender`, `PatientAdd`, `OtherAddress`, `PatientAge`, `Category`, `SubCategory`, `PatientMedhis`, `CreationDate`, `UpdationDate`, `Barangay`, `FamilyNumber`, `HealthCenter`, `BirthHeight`, `BirthWeight`, `MotherName`, `FatherName`) VALUES
(434099, 12, 'John Doe', '212506351984', '2025-09-01', 'Batac City', 9171234567, 'john@user.com', 'male', '04 Laoa', '', 0, 'Pedia', 'Indigent', 'Allergic to Seafood', '2025-09-09 10:28:05', '2025-09-09 10:28:05', NULL, NULL, 'RHU Paoay', '50', NULL, 'Jho Doe', 'Les Doe'),
(515221, 12, 'Maria Santos', '212506356789', '1985-02-15', 'Manila, Philippines', 9171234567, 'maria.santos@example.com', 'Female', '0', 'Currimao', 40, 'Regular Patient', 'None', 'Asthma diagnosed at age 7', '2025-08-24 03:56:41', '2025-08-24 03:58:29', NULL, NULL, 'RHU Paoay', '50', '3.6', 'Teresa Santos', 'Juan Santos'),
(714658, 12, 'Anna Cruz', '555666777888', '2000-06-21', 'Batac City', 9199988877, 'anna.cruz@example.com', 'Female', '32 Sungadan', '', 25, 'Regular Patient', 'Indigent', 'Allergic to penicillin', '2025-08-24 04:02:24', '2025-08-24 04:39:41', NULL, NULL, 'RHU Paoay', '25.1', '2', 'Melinda Cruz', 'Robert Cruz');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(30, 8, 'jhon@user.com', 0x3a3a3100000000000000000000000000, '2025-08-21 04:02:28', '21-08-2025 09:33:30 AM', 1),
(31, 8, 'jhon@user.com', 0x3a3a3100000000000000000000000000, '2025-08-21 04:27:23', '21-08-2025 10:00:31 AM', 1),
(32, 8, 'jhon@user.com', 0x3a3a3100000000000000000000000000, '2025-08-21 04:32:56', '21-08-2025 10:06:32 AM', 1),
(33, NULL, 'jhon@user.com', 0x3a3a3100000000000000000000000000, '2025-08-21 07:17:27', NULL, 0),
(34, NULL, 'jhon@user.com', 0x3a3a3100000000000000000000000000, '2025-08-21 07:17:33', NULL, 0),
(35, 9, 'michael@example.com', 0x3a3a3100000000000000000000000000, '2025-08-21 07:22:37', '21-08-2025 12:53:02 PM', 1),
(36, NULL, 'jhon@user.com', 0x3a3a3100000000000000000000000000, '2025-08-21 10:30:29', NULL, 0),
(37, 9, 'michael@example.com', 0x3a3a3100000000000000000000000000, '2025-08-21 10:30:34', '21-08-2025 04:00:53 PM', 1),
(38, 9, 'michael@example.com', 0x3a3a3100000000000000000000000000, '2025-08-21 11:53:15', '21-08-2025 05:28:06 PM', 1),
(39, 9, 'michael@example.com', 0x3a3a3100000000000000000000000000, '2025-08-21 11:58:14', '21-08-2025 05:28:42 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(9, 'Michael Brown', '123 Sheriff', 'Odaundo', 'male', 'michael@example.com', '11c71a4c89b82aa180d6440d8bb4c01d', '2025-08-21 07:22:23', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audit_log`
--
ALTER TABLE `audit_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblimmunization`
--
ALTER TABLE `tblimmunization`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PatientID` (`PatientID`);

--
-- Indexes for table `tbllaboratory_results`
--
ALTER TABLE `tbllaboratory_results`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `idx_patient` (`PatientID`);

--
-- Indexes for table `tblmedicine_distribution`
--
ALTER TABLE `tblmedicine_distribution`
  ADD PRIMARY KEY (`id`),
  ADD KEY `medicine_id` (`medicine_id`);

--
-- Indexes for table `tblmedicine_inventory`
--
ALTER TABLE `tblmedicine_inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmedicine_logs`
--
ALTER TABLE `tblmedicine_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `medicine_id` (`medicine_id`);

--
-- Indexes for table `tblpatient`
--
ALTER TABLE `tblpatient`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `audit_log`
--
ALTER TABLE `audit_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblimmunization`
--
ALTER TABLE `tblimmunization`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbllaboratory_results`
--
ALTER TABLE `tbllaboratory_results`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblmedicine_distribution`
--
ALTER TABLE `tblmedicine_distribution`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblmedicine_inventory`
--
ALTER TABLE `tblmedicine_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblmedicine_logs`
--
ALTER TABLE `tblmedicine_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblimmunization`
--
ALTER TABLE `tblimmunization`
  ADD CONSTRAINT `tblimmunization_ibfk_1` FOREIGN KEY (`PatientID`) REFERENCES `tblpatient` (`ID`);

--
-- Constraints for table `tbllaboratory_results`
--
ALTER TABLE `tbllaboratory_results`
  ADD CONSTRAINT `fk_lab_patient` FOREIGN KEY (`PatientID`) REFERENCES `tblpatient` (`ID`) ON DELETE CASCADE;

--
-- Constraints for table `tblmedicine_distribution`
--
ALTER TABLE `tblmedicine_distribution`
  ADD CONSTRAINT `tblmedicine_distribution_ibfk_1` FOREIGN KEY (`medicine_id`) REFERENCES `tblmedicine_inventory` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tblmedicine_logs`
--
ALTER TABLE `tblmedicine_logs`
  ADD CONSTRAINT `tblmedicine_logs_ibfk_1` FOREIGN KEY (`medicine_id`) REFERENCES `tblmedicine_inventory` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
