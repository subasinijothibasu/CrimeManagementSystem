-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2024 at 08:30 AM
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
-- Database: `crime_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `action_taken`
--

CREATE TABLE `action_taken` (
  `caseNumber` int(11) NOT NULL,
  `policeStation` varchar(30) NOT NULL,
  `evidence` varchar(40) NOT NULL,
  `imageUpload` blob NOT NULL,
  `videoUpload` blob NOT NULL,
  `additionalInfo` varchar(30) NOT NULL,
  `actionTaken` varchar(200) NOT NULL,
  `policeOfficerName` varchar(50) NOT NULL,
  `station` varchar(80) NOT NULL,
  `designation` varchar(40) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `action_taken`
--

INSERT INTO `action_taken` (`caseNumber`, `policeStation`, `evidence`, `imageUpload`, `videoUpload`, `additionalInfo`, `actionTaken`, `policeOfficerName`, `station`, `designation`, `status`) VALUES
(1, 'saravanampatty', 'cctv footage of nearby shop', '', '', 'Nil', 'case closed with recovery of mobile phone', '', '', '', ''),
(3, 'thudiyalur', 'audio of neighbours abusive content', '', '', 'nil', 'severe warning has been given and fined for the da', '', '', '', ''),
(1, 'saravanampatty', 'cctv footage of nearby shop', '', '', 'nil', 'recovery of mobile phone', 'subasini j', 'saravanampatty', 'inspector', 'investigating'),
(3, 'thudiyalur', 'audio of neighbours abusive content', '', '', 'nil', 'Review and warned severely and fined for damage caused on the property', 'subasini j', 'thudiyalur', 'inspector', 'closed'),
(5, 'thudiyalur', 'Footage video of theft', '', '', 'nil', 'investigating', 'sanjana', 'thudiyalur', 'inspector', 'investigating'),
(1, 'saravanampatty', 'footage', '', '', 'footage of theft of phone', 'investigating on progress', 'sanjana', 'saravanampatty', 'inspector', 'investigating'),
(3, 'saravanampatty', 'cctv footage', '', '', 'Image is also attached', 'Investigating about the complaint', 'ravi ', 'saravanampatty', 'inspector', 'investigating'),
(3, 'saravanampatty', 'cctv', '', '', 'image attached about the accus', 'investigating on the complaint', 'raja', 'saravanampatty', 'constable', 'investigating'),
(1, 'thudiyalur', 'image', '', '', 'video sourcing', 'investigating on the crime', 'krishnan', 'thudiyalur', 'constable', 'investigating'),
(5, 'rs puram', 'video of theft', '', '', 'video attached for the theft', 'accused is fined and the mobile is returned to complained person', 'krishnan', 'rs puram', 'constable', 'closed'),
(8, 'VILANKURICHI', 'cctv', '', '', 'robbery ', 'investigated', 'Muthu ', 'A11', 'Si', 'closed'),
(1, 'saravanampatty', 'cctv footade of theft', '', '', 'Additional informations are ga', 'Investigating', 'ravi', 'saravanamapatti', 'constable', 'investigating');

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `Name` varchar(50) NOT NULL,
  `Individual_code` int(5) NOT NULL,
  `Password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`Name`, `Individual_code`, `Password`) VALUES
('subasinij', 9595, 'suba'),
('Subasini J', 9595, 'suba'),
('Subasini J', 9595, 'suba'),
('sanjana DR', 9623, 'sanj'),
('Subasini J', 9595, 'suba'),
('Subasini J', 9595, 'ytrf'),
('sanjana DR', 9696, 'sanj'),
('Subasini J', 9595, 'suba'),
('admin1', 9595, 'admin@1234'),
('admin1', 9595, 'admin@1234'),
('admin1', 9595, 'admin@123'),
('admin1', 9595, 'admin@123'),
('admin1', 9595, 'admin@1234'),
('admin1', 9595, 'admin@1234'),
('admin1', 9595, 'admin@1234');

-- --------------------------------------------------------

--
-- Table structure for table `admin_signup`
--

CREATE TABLE `admin_signup` (
  `name` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(10) NOT NULL,
  `confirm_password` varchar(10) NOT NULL,
  `individual_code` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_signup`
--

INSERT INTO `admin_signup` (`name`, `email`, `password`, `confirm_password`, `individual_code`) VALUES
('Subasini Jothibasu', 'subasinijothibasu091002@gmail.', 'suba', 'suba', 9595),
('Subasini J', 'subasinijothibasu091002@gmail.', 'suba', 'suba', 9595);

-- --------------------------------------------------------

--
-- Table structure for table `log_complaint`
--

CREATE TABLE `log_complaint` (
  `name` varchar(50) NOT NULL,
  `aadhar` int(15) NOT NULL,
  `location` varchar(30) NOT NULL,
  `crime_type` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `description` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `log_complaint`
--

INSERT INTO `log_complaint` (`name`, `aadhar`, `location`, `crime_type`, `date`, `description`) VALUES
('Sahana ', 2147483647, 'Mettupalayam', 'Theft', '2024-04-09', 'Theft of two wheeler.Vehicle :Pink vespa,No:TN 28 CN 0987'),
('Sahana ', 2147483647, 'Coimbatore', 'Fraud', '2024-05-08', 'Fraudulent of money'),
('Sahana ', 2147483647, 'Mettupalayam', 'Theft', '2024-05-03', 'theft of mobile phone'),
('sundar', 2147483647, 'RS puram', 'Theft', '2024-05-05', 'Theft of file with all the identity proofs'),
('sundar', 2147483647, 'RS puram', 'Theft', '2024-05-05', 'theft of files'),
('sakshi', 2147483647, 'sai baba colony', 'Fraud', '2024-05-06', 'Fraudulent of passport verification'),
('', 0, '', '', '0000-00-00', ''),
('', 0, '', '', '0000-00-00', ''),
('sajshi', 2147483647, 'NGGO colony', 'Theft', '2024-05-06', 'Theft of two wheeler'),
('sajshi', 2147483647, 'NGGO colony', 'Theft', '2024-05-06', 'Theft of two wheeler'),
('karthick', 2147483647, 'NGGO colony', 'Theft', '2024-05-06', 'theft of mobile phone'),
('Renjith', 234509807, 'Gandhipuram', 'Fraud', '2024-05-04', 'Phone theft by manhandling'),
('sandeep', 2147483647, 'thudiyalur', 'Assault', '2024-05-22', 'aaaaaaa aaaaaaaaaaaa aaaaaaaaaaa');

-- --------------------------------------------------------

--
-- Table structure for table `police_login`
--

CREATE TABLE `police_login` (
  `Name` varchar(50) NOT NULL,
  `Password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `police_login`
--

INSERT INTO `police_login` (`Name`, `Password`) VALUES
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', '');

-- --------------------------------------------------------

--
-- Table structure for table `police_signup`
--

CREATE TABLE `police_signup` (
  `name` varchar(50) NOT NULL,
  `contact` int(10) NOT NULL,
  `designation` varchar(15) NOT NULL,
  `branch` varchar(30) NOT NULL,
  `location` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL,
  `confirm_password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `police_signup`
--

INSERT INTO `police_signup` (`name`, `contact`, `designation`, `branch`, `location`, `city`, `state`, `password`, `confirm_password`) VALUES
('Subasini J', 2147483647, 'Inspector', 'Traffic', 'thudiyalur', 'Delhi', 'Maharashtra', 'suba', 'suba');

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `Name` varchar(50) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`Name`, `Password`) VALUES
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', ''),
('', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_signup`
--

CREATE TABLE `user_signup` (
  `name` varchar(50) NOT NULL,
  `aadhar` int(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` int(10) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(10) NOT NULL,
  `confirm_password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_signup`
--

INSERT INTO `user_signup` (`name`, `aadhar`, `email`, `contact`, `address`, `password`, `confirm_password`) VALUES
('sandeep', 2147483647, 'sandeeprrk27@gmail.com', 2147483647, 'nggo colomy', 'aaaa1111', 'aaaa1111');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
