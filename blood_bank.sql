-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2018 at 02:32 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blood_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `blood_contact`
--

CREATE TABLE `blood_contact` (
  `blood_contact_id` int(100) NOT NULL,
  `contact_fk` int(100) DEFAULT NULL,
  `blood_fk` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `blood_donor_group`
--

CREATE TABLE `blood_donor_group` (
  `blood_donor_group_id` int(100) NOT NULL,
  `donor_fk` int(100) DEFAULT NULL,
  `blood_fk` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `blood_group`
--

CREATE TABLE `blood_group` (
  `blood_id` int(100) NOT NULL,
  `blood_group` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blood_group`
--

INSERT INTO `blood_group` (`blood_id`, `blood_group`) VALUES
(3, 'sd'),
(5, 'D#');

-- --------------------------------------------------------

--
-- Table structure for table `blood_request_group`
--

CREATE TABLE `blood_request_group` (
  `blood_request_group_id` int(100) NOT NULL,
  `requester_fk` int(100) DEFAULT NULL,
  `blood_fk` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int(100) NOT NULL,
  `city_code` varchar(100) DEFAULT NULL,
  `city_name` varchar(100) DEFAULT NULL,
  `description` varchar(120) DEFAULT NULL,
  `donor_fk` int(100) DEFAULT NULL,
  `requester_fk` int(100) DEFAULT NULL,
  `state_fk` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `city_code`, `city_name`, `description`, `donor_fk`, `requester_fk`, `state_fk`) VALUES
(3, '234', 'Semarang', 'Thiahriya town shop', NULL, NULL, 36),
(5, '345', 'Solo', '', NULL, NULL, 36),
(6, '789', 'Yogyakarta', '', NULL, NULL, 38);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `message` varchar(200) DEFAULT NULL,
  `member_fk` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `donor`
--

CREATE TABLE `donor` (
  `donor_id` int(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `father_name` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `body_weight` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `blood_group` varchar(40) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `pincode` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `username_fk` varchar(100) NOT NULL,
  `status` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donor`
--

INSERT INTO `donor` (`donor_id`, `name`, `father_name`, `gender`, `dob`, `body_weight`, `email`, `blood_group`, `state`, `city`, `address`, `pincode`, `phone`, `image`, `username_fk`, `status`) VALUES
(21, 'Adela Murti', 'Bukhari', 'Female', '07/12/1999', '57', 'a@hh.com', 'A', 'Jawa Tengah', 'Semarang', '50141', '08999181233', 'Jalan Pusponjolo Dalam IX No 17 Rt 02 Rw 02  Kelurahan Bojongsalaman Kecamatan Semarang Barat', 'upload/erigo-flannel-brunela-unisex-white-black-1517166239-65254948-f98662db0666b228ced89c295a7a2fb9-zoom_850x850_1531382412.jpg', 'Adelamurti', 1),
(25, 'Erdina', 'Wahyu', 'female', '07/20/1998', '60', 'erd@gmail.com', 'AB', 'Jawa Tengah', 'Semarang', '50141', '8999181233', 'Jalan Pusponjolo Dalam IX No 17 Rt 02 Rw 02  Kelurahan Bojongsalaman Kecamatan Semarang Barat', 'upload/fresco-iron-man-3-disegni-da-colorare-fotografia-fancy-iron-man-3-disegni-da-colorare-ispirazione_1531417607.jpg', 'Adelamurti', 1),
(26, 'Kepong', 'PONG', 'male', '07/18/1999', '90', 'po@gmail.com', 'B', 'Jawa Tengah', 'Semarang', '50021', '089', 'jalan kenangan', 'upload/Black-wallpapers-9_1531457050.jpg', 'Adelamurti', 1);

-- --------------------------------------------------------

--
-- Table structure for table `email_subs`
--

CREATE TABLE `email_subs` (
  `subscribe_id` int(100) NOT NULL,
  `email` varchar(160) DEFAULT NULL,
  `member_fk` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `member_id` int(100) NOT NULL,
  `name` varchar(190) DEFAULT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` int(20) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `usertype` varchar(100) DEFAULT NULL,
  `profile` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`member_id`, `name`, `username`, `password`, `email`, `phone`, `address`, `usertype`, `profile`) VALUES
(1, 'admin', 'super admin', 'admin', NULL, NULL, NULL, 'admin', 'upload/3_1521639658.jpg'),
(15, 'Adela Murti', 'Adelamurti', '123', '123', NULL, NULL, 'user', NULL),
(16, 'user', 'user', 'user123', 'user123', NULL, NULL, 'user', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `requester`
--

CREATE TABLE `requester` (
  `requester_id` int(100) NOT NULL,
  `patient_name` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `blood_group` varchar(100) DEFAULT NULL,
  `unit_blood` varchar(100) DEFAULT NULL,
  `hospital_name` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `contact_person` varchar(120) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `contact_no` varchar(200) DEFAULT NULL,
  `reason` varchar(200) DEFAULT NULL,
  `member_fk` varchar(100) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `requester`
--

INSERT INTO `requester` (`requester_id`, `patient_name`, `gender`, `blood_group`, `unit_blood`, `hospital_name`, `date`, `contact_person`, `address`, `email`, `contact_no`, `reason`, `member_fk`, `image`) VALUES
(9, 'Adela Murti', 'female', 'O', '1', 'Siaga Medika', '0000-00-00', '08999', 'Jalan Pusponjolo Dalam IX No 17 Rt 02 Rw 02  Kelurahan Bojongsalaman Kecamatan Semarang Barat', 'king@gmail.com', '081', 'NEED', 'Adelamurti', 'upload/erigo-flannel-brunela-unisex-white-black-1517166239-65254948-f98662db0666b228ced89c295a7a2fb9-zoom_850x850_1531383994.jpg'),
(10, 'Syiffa', 'female', 'A', '1', 'Bunda Permata', '0000-00-00', '08999', 'Jalan Bima', 'kong@gmail.com', '081', 'Need', 'Adelamurti', 'upload/jok_1531417251.jpg'),
(12, 'Rajiv', 'male', 'B', '2', 'Kariadi', '0000-00-00', '0858', 'Jalan Srikandi', 'rajiv@gmail.com', '0858', 'Need Blood', 'Adelamurti', 'upload/jok_1531787381.jpg'),
(13, 'Adrian', 'male', 'AB', '3', 'Permata Asih', '0000-00-00', '08132', 'Jalan Mugas', 'adrian@gmail.com', '08132', 'Need', 'Adelamurti', 'upload/product_list_89_0_1531787482.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `state_id` int(100) NOT NULL,
  `state_code` varchar(100) DEFAULT NULL,
  `state_name` varchar(100) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`state_id`, `state_code`, `state_name`, `description`) VALUES
(36, '567', 'Jawa Tengah', 'New data been added'),
(38, '123', 'Yogyakarta', 'Yogyakarta');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blood_contact`
--
ALTER TABLE `blood_contact`
  ADD PRIMARY KEY (`blood_contact_id`),
  ADD KEY `contact_fk` (`contact_fk`),
  ADD KEY `blood_fk` (`blood_fk`);

--
-- Indexes for table `blood_donor_group`
--
ALTER TABLE `blood_donor_group`
  ADD PRIMARY KEY (`blood_donor_group_id`),
  ADD KEY `donor_fk` (`donor_fk`),
  ADD KEY `blood_fk` (`blood_fk`);

--
-- Indexes for table `blood_group`
--
ALTER TABLE `blood_group`
  ADD PRIMARY KEY (`blood_id`);

--
-- Indexes for table `blood_request_group`
--
ALTER TABLE `blood_request_group`
  ADD PRIMARY KEY (`blood_request_group_id`),
  ADD KEY `requester_fk` (`requester_fk`),
  ADD KEY `blood_fk` (`blood_fk`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`),
  ADD KEY `donor_fk` (`donor_fk`),
  ADD KEY `requester_fk` (`requester_fk`),
  ADD KEY `state_fk` (`state_fk`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`),
  ADD KEY `member_fk` (`member_fk`);

--
-- Indexes for table `donor`
--
ALTER TABLE `donor`
  ADD PRIMARY KEY (`donor_id`,`username_fk`),
  ADD KEY `member` (`username_fk`);

--
-- Indexes for table `email_subs`
--
ALTER TABLE `email_subs`
  ADD PRIMARY KEY (`subscribe_id`),
  ADD KEY `member_fk` (`member_fk`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`member_id`,`username`);

--
-- Indexes for table `requester`
--
ALTER TABLE `requester`
  ADD PRIMARY KEY (`requester_id`),
  ADD KEY `member_fk` (`member_fk`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`state_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blood_contact`
--
ALTER TABLE `blood_contact`
  MODIFY `blood_contact_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blood_donor_group`
--
ALTER TABLE `blood_donor_group`
  MODIFY `blood_donor_group_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blood_group`
--
ALTER TABLE `blood_group`
  MODIFY `blood_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `blood_request_group`
--
ALTER TABLE `blood_request_group`
  MODIFY `blood_request_group_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donor`
--
ALTER TABLE `donor`
  MODIFY `donor_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `email_subs`
--
ALTER TABLE `email_subs`
  MODIFY `subscribe_id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `member_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `requester`
--
ALTER TABLE `requester`
  MODIFY `requester_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `state_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blood_contact`
--
ALTER TABLE `blood_contact`
  ADD CONSTRAINT `blood_contact_ibfk_1` FOREIGN KEY (`contact_fk`) REFERENCES `contact` (`contact_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `blood_contact_ibfk_2` FOREIGN KEY (`blood_fk`) REFERENCES `blood_group` (`blood_id`) ON UPDATE CASCADE;

--
-- Constraints for table `blood_donor_group`
--
ALTER TABLE `blood_donor_group`
  ADD CONSTRAINT `blood_donor_group_ibfk_1` FOREIGN KEY (`donor_fk`) REFERENCES `donor` (`donor_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `blood_donor_group_ibfk_2` FOREIGN KEY (`blood_fk`) REFERENCES `blood_group` (`blood_id`) ON UPDATE CASCADE;

--
-- Constraints for table `blood_request_group`
--
ALTER TABLE `blood_request_group`
  ADD CONSTRAINT `blood_request_group_ibfk_1` FOREIGN KEY (`requester_fk`) REFERENCES `requester` (`requester_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `blood_request_group_ibfk_2` FOREIGN KEY (`blood_fk`) REFERENCES `blood_group` (`blood_id`) ON UPDATE CASCADE;

--
-- Constraints for table `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `city_ibfk_1` FOREIGN KEY (`donor_fk`) REFERENCES `donor` (`donor_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `city_ibfk_2` FOREIGN KEY (`requester_fk`) REFERENCES `requester` (`requester_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `city_ibfk_3` FOREIGN KEY (`state_fk`) REFERENCES `state` (`state_id`) ON UPDATE CASCADE;

--
-- Constraints for table `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `contact_ibfk_1` FOREIGN KEY (`member_fk`) REFERENCES `member` (`member_id`) ON UPDATE CASCADE;

--
-- Constraints for table `email_subs`
--
ALTER TABLE `email_subs`
  ADD CONSTRAINT `email_subs_ibfk_1` FOREIGN KEY (`member_fk`) REFERENCES `member` (`member_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
