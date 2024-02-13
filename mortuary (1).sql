-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2021 at 06:23 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mortuary`
--

-- --------------------------------------------------------

--
-- Table structure for table `body`
--

CREATE TABLE `body` (
  `body_id` int(11) NOT NULL,
  `body_name` varchar(45) NOT NULL,
  `body_relative_id` int(11) NOT NULL,
  `body_diener_id` int(11) NOT NULL DEFAULT 0,
  `body_fridge_id` int(11) NOT NULL,
  `body_ref` varchar(45) NOT NULL,
  `relative_relationship` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `body`
--

INSERT INTO `body` (`body_id`, `body_name`, `body_relative_id`, `body_diener_id`, `body_fridge_id`, `body_ref`, `relative_relationship`, `status`) VALUES
(20, 'Kajaaro', 673, 1675, 28, '1233redf', 'wife', 1),
(21, 'mwingi B', 673, 1675, 28, '1233redf', 'wife', 1),
(22, 'narman', 673, 1675, 29, '2345', 'brother', 1),
(23, 'simon wambui', 673, 1675, 31, 'fts', 'brother', 2);

-- --------------------------------------------------------

--
-- Table structure for table `diener`
--

CREATE TABLE `diener` (
  `diener_id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `diener_id_number` varchar(100) DEFAULT 'NOT SET',
  `diener_phone_number` varchar(200) DEFAULT 'NOT SET'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `diener`
--

INSERT INTO `diener` (`diener_id`, `login_id`, `diener_id_number`, `diener_phone_number`) VALUES
(4, 1675, 'NOT SET', 'NOT SET');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedback_id` int(11) NOT NULL,
  `feedback_relative_id` int(11) DEFAULT NULL,
  `feedback_details` varchar(300) DEFAULT 'none',
  `pathologist_feedback` varchar(400) NOT NULL DEFAULT 'none',
  `feedback_body_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedback_id`, `feedback_relative_id`, `feedback_details`, `pathologist_feedback`, `feedback_body_id`) VALUES
(10, 673, 'vghvgvgukvlvllob;n', 'he is okay to be taken out', 20),
(11, 673, 'we need the body for cremation', 'he can get out now', 22),
(12, 673, 'we want it for cremation', 'it will be available by tommorrow', 23);

-- --------------------------------------------------------

--
-- Table structure for table `fridges`
--

CREATE TABLE `fridges` (
  `fridge_id` int(11) NOT NULL,
  `fridge_code` int(11) NOT NULL,
  `fridge_desc` varchar(400) NOT NULL,
  `fridge_room_id` int(11) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'empty'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fridges`
--

INSERT INTO `fridges` (`fridge_id`, `fridge_code`, `fridge_desc`, `fridge_room_id`, `status`) VALUES
(28, 642, 'FGREE', 1236, 'full'),
(29, 0, 'clean and empty', 1237, 'full'),
(30, 56, 'almost to capacity', 1236, 'empty'),
(31, 123, 'empty', 1238, 'full');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `login_id` int(11) NOT NULL,
  `login_user_name` varchar(255) NOT NULL,
  `login_email` varchar(45) NOT NULL,
  `login_password` varchar(200) NOT NULL,
  `login_first_name` varchar(100) NOT NULL,
  `login_last_name` varchar(100) NOT NULL,
  `login_rank` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`login_id`, `login_user_name`, `login_email`, `login_password`, `login_first_name`, `login_last_name`, `login_rank`) VALUES
(1660, 'mawendo', 'john@gmail.com', '$2y$10$IJL8fradkOMa.fbOoPzmiuBv.M0mDA8Zo/RMhr7q82alqXWY.26ay', 'Simon', 'Mawendo', '1'),
(1673, 'relative', 'relative@gmail.com', '$2y$10$VE3xzraoQSAk/uw8qe3UF.e3ZPlTZoR9rmHLNtyh5yTCpkfo52QAS', 'relative', 'relative', '4'),
(1674, 'pathologist', 'pathologist@gmail.com', '$2y$10$GTHRE4tVAhQjDG54T3wU6e48Uh0mB4KbNWYlM7toRtXcNCLDvqC/C', 'Samuel', 'Karugu', '3'),
(1675, 'Diener', 'diener@gmail.com', '$2y$10$3/0N1vF6hZOeq3idybXHDO9LJSjRBdwLhRDKgsEtDDfNmrgNc8Lqi', 'Cynthia', 'Wambui', '2');

-- --------------------------------------------------------

--
-- Table structure for table `morgue_rooms`
--

CREATE TABLE `morgue_rooms` (
  `room_id` int(11) NOT NULL,
  `room_name` varchar(45) NOT NULL,
  `room_code` varchar(45) NOT NULL,
  `room_desc` varchar(45) NOT NULL,
  `status` varchar(100) DEFAULT 'empty'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `morgue_rooms`
--

INSERT INTO `morgue_rooms` (`room_id`, `room_name`, `room_code`, `room_desc`, `status`) VALUES
(1236, 'GCD', '123', 'GCD @ GCD', 'empty'),
(1237, 'kajama', '2234', 'empty at new block', 'empty'),
(1238, 'ustadh', '345', 'empty for patients', 'empty');

-- --------------------------------------------------------

--
-- Table structure for table `pathologist`
--

CREATE TABLE `pathologist` (
  `pathologist_id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `pathologist_id_number` varchar(100) DEFAULT 'NOT SET',
  `pathologist_phone_number` varchar(100) DEFAULT 'NOT SET'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pathologist`
--

INSERT INTO `pathologist` (`pathologist_id`, `login_id`, `pathologist_id_number`, `pathologist_phone_number`) VALUES
(3, 1674, 'NOT SET', 'NOT SET');

-- --------------------------------------------------------

--
-- Table structure for table `pathologist_report`
--

CREATE TABLE `pathologist_report` (
  `pathologist_report_id` int(11) NOT NULL,
  `pathologist_report_payment_id` int(11) NOT NULL,
  `pathologist_report_body_id` int(11) NOT NULL,
  `pathologist_report_pathologist_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pathologist_report`
--

INSERT INTO `pathologist_report` (`pathologist_report_id`, `pathologist_report_payment_id`, `pathologist_report_body_id`, `pathologist_report_pathologist_id`) VALUES
(601, 98701, 2, 1456),
(602, 80056, 5, 1458),
(603, 14, 20, 10),
(604, 14, 20, 11),
(605, 14, 20, 10),
(606, 16, 22, 11),
(607, 17, 23, 12);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `payment_type` varchar(45) NOT NULL,
  `payment_date` date NOT NULL,
  `payment_relative_id` int(11) NOT NULL DEFAULT 0,
  `payment_amount` int(11) DEFAULT 6000,
  `payment_ref` varchar(45) NOT NULL,
  `payment_body_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `payment_type`, `payment_date`, `payment_relative_id`, `payment_amount`, `payment_ref`, `payment_body_id`) VALUES
(10, 'CASH', '0000-00-00', 987, 20000, 'QTP344R6', 3),
(11, 'Cash', '2021-12-20', 0, NULL, 'QTYW133131', 0),
(12, 'Cash', '2021-12-20', 673, 6000, 'QTYW133131', 18),
(13, 'Cash', '2021-12-21', 673, 6000, 'QTYW133131', 19),
(14, 'Cash', '2021-12-21', 673, 6000, 'QTYW133131', 20),
(15, 'E-Money', '2021-12-21', 673, 6000, 'QTYW133131', 21),
(16, 'E-Money', '2021-12-21', 673, 6000, 'rtse45', 22),
(17, 'E-Money', '2021-12-21', 673, 6000, 'trs 345', 23);

-- --------------------------------------------------------

--
-- Table structure for table `relative`
--

CREATE TABLE `relative` (
  `relative_id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `relative_mobile` varchar(50) NOT NULL DEFAULT 'NOT SET',
  `relative_idno` varchar(45) NOT NULL DEFAULT 'NOT SET'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `relative`
--

INSERT INTO `relative` (`relative_id`, `login_id`, `relative_mobile`, `relative_idno`) VALUES
(673, 1673, 'NOT SET', 'NOT SET');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `body`
--
ALTER TABLE `body`
  ADD PRIMARY KEY (`body_id`),
  ADD KEY `body_relative_id` (`body_relative_id`),
  ADD KEY `body_diener_id` (`body_diener_id`),
  ADD KEY `body_fridge_id` (`body_fridge_id`);

--
-- Indexes for table `diener`
--
ALTER TABLE `diener`
  ADD PRIMARY KEY (`diener_id`),
  ADD KEY `login_id` (`login_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedback_id`),
  ADD KEY `feedback_relative_id` (`feedback_relative_id`),
  ADD KEY `feedback_body_id` (`feedback_body_id`);

--
-- Indexes for table `fridges`
--
ALTER TABLE `fridges`
  ADD PRIMARY KEY (`fridge_id`),
  ADD KEY `fridge_room_id` (`fridge_room_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `morgue_rooms`
--
ALTER TABLE `morgue_rooms`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `pathologist`
--
ALTER TABLE `pathologist`
  ADD PRIMARY KEY (`pathologist_id`),
  ADD KEY `login_id` (`login_id`);

--
-- Indexes for table `pathologist_report`
--
ALTER TABLE `pathologist_report`
  ADD PRIMARY KEY (`pathologist_report_id`),
  ADD KEY `pathologist_report_payment_id` (`pathologist_report_payment_id`),
  ADD KEY `pathologist_report_body_id` (`pathologist_report_body_id`),
  ADD KEY `pathologist_report_pathologist_id` (`pathologist_report_pathologist_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `payment_relative_id` (`payment_relative_id`),
  ADD KEY `payment_body_id` (`payment_body_id`);

--
-- Indexes for table `relative`
--
ALTER TABLE `relative`
  ADD PRIMARY KEY (`relative_id`),
  ADD KEY `login_id` (`login_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `body`
--
ALTER TABLE `body`
  MODIFY `body_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `diener`
--
ALTER TABLE `diener`
  MODIFY `diener_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `fridges`
--
ALTER TABLE `fridges`
  MODIFY `fridge_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1676;

--
-- AUTO_INCREMENT for table `morgue_rooms`
--
ALTER TABLE `morgue_rooms`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1239;

--
-- AUTO_INCREMENT for table `pathologist`
--
ALTER TABLE `pathologist`
  MODIFY `pathologist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pathologist_report`
--
ALTER TABLE `pathologist_report`
  MODIFY `pathologist_report_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=608;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `relative`
--
ALTER TABLE `relative`
  MODIFY `relative_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=674;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `diener`
--
ALTER TABLE `diener`
  ADD CONSTRAINT `diener_ibfk_1` FOREIGN KEY (`login_id`) REFERENCES `login` (`login_id`) ON DELETE CASCADE;

--
-- Constraints for table `pathologist`
--
ALTER TABLE `pathologist`
  ADD CONSTRAINT `pathologist_ibfk_1` FOREIGN KEY (`login_id`) REFERENCES `login` (`login_id`) ON DELETE CASCADE;

--
-- Constraints for table `relative`
--
ALTER TABLE `relative`
  ADD CONSTRAINT `relative_ibfk_1` FOREIGN KEY (`login_id`) REFERENCES `login` (`login_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
