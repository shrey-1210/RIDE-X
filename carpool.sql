-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2021 at 07:12 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carpool`
--

-- --------------------------------------------------------

--
-- Table structure for table `city_name`
--

CREATE TABLE `city_name` (
  `city` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `city_name`
--

INSERT INTO `city_name` (`city`) VALUES
('Amritsar'),
('Bombay'),
('Delhi'),
('Goa'),
('Gwalior'),
('Kanpur'),
('Meerut'),
('Noida'),
('Raipur'),
('Surat');

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE `email` (
  `id` int(6) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `sender` varchar(200) NOT NULL,
  `Message` varchar(10000) NOT NULL,
  `subject` varchar(500) DEFAULT 'No subject'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `email`
--

INSERT INTO `email` (`id`, `Name`, `sender`, `Message`, `subject`) VALUES
(10000, 'kemk', 'djnjn@mkm.vkmjkmn', 'fnejnjn', ''),
(10001, 'rachit agrawal', 'rachitagrawal545422@gmail.com', 'Helo', 'Just checking'),
(10002, 'hi', 'hi@gmail.com', 'hi', 'No subject'),
(10003, 'bv', 'bhbhb@cfcfc.njnjn', 'vfxdfv', 'No subject');

-- --------------------------------------------------------

--
-- Table structure for table `rides`
--

CREATE TABLE `rides` (
  `ride_id` int(10) NOT NULL,
  `ride_vehichle` int(10) NOT NULL,
  `source` varchar(200) NOT NULL,
  `destination` varchar(200) NOT NULL,
  `payment` int(7) NOT NULL,
  `distance` int(5) NOT NULL,
  `total_seats` int(2) NOT NULL,
  `available_seats` int(2) NOT NULL,
  `Status` int(1) NOT NULL,
  `date` date NOT NULL,
  `book_status` int(2) NOT NULL DEFAULT 0,
  `time` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rides`
--

INSERT INTO `rides` (`ride_id`, `ride_vehichle`, `source`, `destination`, `payment`, `distance`, `total_seats`, `available_seats`, `Status`, `date`, `book_status`, `time`) VALUES
(10011, 10009, 'Amritsar', 'Bombay', 20, 500, 1, 2, 3, '2021-11-18', 1, NULL),
(10017, 10013, 'Amritsar', 'Kanpur', 20, 500, 3, 2, 1, '2021-11-11', 1, '13:30'),
(10018, 10014, 'Amritsar', 'Bombay', 20, 500, 3, 2, 1, '2021-11-04', 1, '13:30'),
(10020, 10011, 'Delhi', 'Kanpur', 20, 500, 3, 2, 1, '2021-11-12', 1, '13:30'),
(10021, 10011, 'Gwalior', 'Bombay', 20, 500, 3, 2, 1, '2021-11-05', 1, '13:30'),
(10025, 10011, 'Bombay', 'Goa', 20, 500, 3, 2, 2, '2021-11-12', 1, '13:30'),
(10026, 10015, 'Bombay', 'Delhi', 20, 500, 2, 2, 1, '2021-11-25', 0, '13:30');

-- --------------------------------------------------------

--
-- Table structure for table `takes`
--

CREATE TABLE `takes` (
  `takes_id` int(10) NOT NULL,
  `creater_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `ride_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `takes`
--

INSERT INTO `takes` (`takes_id`, `creater_id`, `user_id`, `ride_id`) VALUES
(10013, 10010, 10001, 10011),
(10019, 10014, 10001, 10017),
(10020, 10016, 10017, 10018),
(10022, 10001, 10015, 10020),
(10023, 10001, 10019, 10021),
(10027, 10001, 10001, 10025),
(10028, 10019, 10000, 10026);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `pool_id` int(10) NOT NULL,
  `uname` varchar(200) DEFAULT NULL,
  `fname` varchar(200) DEFAULT NULL,
  `lname` varchar(200) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `mail` varchar(200) NOT NULL,
  `referalcode` varchar(200) NOT NULL,
  `gender` int(1) DEFAULT NULL,
  `age` int(10) DEFAULT NULL,
  `profession` varchar(200) DEFAULT NULL,
  `org_name` varchar(200) DEFAULT NULL,
  `aadhar_no` varchar(16) DEFAULT NULL,
  `pancard_no` varchar(20) DEFAULT NULL,
  `password` varchar(300) NOT NULL,
  `photo` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`pool_id`, `uname`, `fname`, `lname`, `phone`, `mail`, `referalcode`, `gender`, `age`, `profession`, `org_name`, `aadhar_no`, `pancard_no`, `password`, `photo`) VALUES
(10000, 'not', 'not', 'not', '1', '', '', 1, 1, '', '', '', '', '', NULL),
(10001, 'voltsy', 'Vishal', 'Singh', '6394842628', 'rachitagrawal545422@gmail.com', 'Rachabc', 1, 18, 'student', 'Microsoft', '1234567890123456', 'DJSPA23311', '827ccb0eea8a706c4c34a16891f84e7b', 'user-img/1638164517-PicsArt_08-20-11.01.19.jpg'),
(10002, 'rachi', 'rachit', 'agrawal', '23', 'sbhb@hbhbd.cnj', 'rachiabc', 0, 0, '', '', '', '', '202cb962ac59075b964b07152d234b70', NULL),
(10003, 'v', 'v', 'v', '387837', 'db@bd.cj', 'vabc', 0, 0, '', '', '', '', 'c4ca4238a0b923820dcc509a6f75849b', NULL),
(10004, 'j', 'g', 'h', 'h', 'l', 'jabc', 0, 0, '', '', '', '', 'c4ca4238a0b923820dcc509a6f75849b', NULL),
(10005, 'd', 'd', 'd', '2', 'a@ds.cc', 'dabc', 0, 0, '', 'dfvds', '2133', 'de3d', 'c4ca4238a0b923820dcc509a6f75849b', NULL),
(10006, 'k', 'k', 'k', '1234567890', 'db@bd.cj', 'kabc', 0, 0, '', 'dasds', '', 'feadxss', 'c4ca4238a0b923820dcc509a6f75849b', NULL),
(10007, 'e', 'e', 'e', '3', 'a@ds.cc', 'eabc', 0, 0, '', 'cdnjnjn', '323', 'dmkm', 'c4ca4238a0b923820dcc509a6f75849b', NULL),
(10008, 'r', 'r', 'r', '384', 'h@hh.b', 'rabc', 0, 0, '', 'vnjenjn', '1234567890123456', 'abcs3ab5jg', 'c4ca4238a0b923820dcc509a6f75849b', NULL),
(10009, 't', 't', 't', '24', 'misu@hf.com', 'tabc', 0, 0, '', '', '', '', 'c4ca4238a0b923820dcc509a6f75849b', NULL),
(10010, '1', 'f', 'f', '1234567890', 'db@bd.cj', '1abc', 0, 0, '', 'mkjnjnjn', '1234567890123456', 'jhgfr45tfg', 'c4ca4238a0b923820dcc509a6f75849b', NULL),
(10011, '2', 'tt', 'tt', '1234567890', 'a@ds.cc', '2abc', 0, 0, '', 'zdmkmkmk', '1234567890123456', 'gfxdxcfvhb', 'c4ca4238a0b923820dcc509a6f75849b', NULL),
(10012, '3', '2', '2', '1234567890', 'misu@hf.com', '3abc', 0, 0, '', 'zdmkmkmk', '1234567890123456', 'gfxdxcfvhb', 'c4ca4238a0b923820dcc509a6f75849b', NULL),
(10013, 'rac', 'rachit', 'agrawal', '6394842628', 'rachitagrawal545422@gmail.com', 'racabc', NULL, NULL, NULL, NULL, NULL, NULL, 'c4ca4238a0b923820dcc509a6f75849b', NULL),
(10014, 'Rach', 'rachit', 'agrawal', '6394842628', '201210035@nitdelhi.ac.in', 'Rachabc', NULL, NULL, NULL, 'Microsoft', '1234567890123456', 'DJSPA23311', 'c4ca4238a0b923820dcc509a6f75849b', NULL),
(10015, 'shrey', 'shrey', 'Prajapati', '6394842628', 'rachitagrawal1177@gmail.com', 'shreyabc', NULL, NULL, NULL, NULL, NULL, NULL, 'c4ca4238a0b923820dcc509a6f75849b', NULL),
(10016, 'vs', 'Vishal', 'Singh', '6394842628', 'rachitagrawal545422@gmail.com', 'vsabc', NULL, NULL, NULL, 'Microsoft', '1234567890123456', 'DJSPA23311', 'c4ca4238a0b923820dcc509a6f75849b', NULL),
(10017, 'agr__rachit', 'Rachit', 'Prajapati', '6394842628', 'rachitagrawal545422@gmail.com', 'agr__rachitabc', NULL, NULL, NULL, NULL, NULL, NULL, '9968517315dbc300811251247fdcbd38', NULL),
(10018, 'RachitAgrawal', 'Rachit', 'agrawal', '6394842628', 'rachitagrawal545422@gmail.com', 'RachitAgrawalabc', NULL, NULL, NULL, NULL, NULL, NULL, 'c4ca4238a0b923820dcc509a6f75849b', NULL),
(10019, '4', 'vishu', 'hishu', '1234567890', 'db@bd.cj', '4abc', 1, 19, 'student', 'mkjnjnjn', '1234567890123456', 'aaaaaaaaaa', 'a87ff679a2f3e71d9181a67b7542122c', 'user-img/1637638426-i1.png'),
(10020, 'rachit', 'rachit', 'Agrawal', '1234567890', 'rachit@gmail.com', 'rachitabc', NULL, NULL, NULL, 'abc', '1234567890123456', 'ahsbgt52gd', '827ccb0eea8a706c4c34a16891f84e7b', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehichle`
--

CREATE TABLE `vehichle` (
  `vehichle_id` int(10) NOT NULL,
  `vehichle_no` varchar(100) NOT NULL,
  `type` varchar(6) NOT NULL,
  `color` varchar(30) NOT NULL,
  `seats` int(2) NOT NULL,
  `user_id` int(10) NOT NULL,
  `model` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehichle`
--

INSERT INTO `vehichle` (`vehichle_id`, `vehichle_no`, `type`, `color`, `seats`, `user_id`, `model`) VALUES
(10004, '378', 'car', 'blue', 4, 10008, 'maruti 800'),
(10009, '167367', 'bike', 'blue', 2, 10010, 'maruti 800'),
(10010, '167367', 'car', 'blue', 4, 10012, 'maruti 800'),
(10011, '200000', 'bike', 'Black', 2, 10001, 'Bike'),
(10012, '200000', 'bus', 'Black', 3, 10001, 'Bus'),
(10013, '200000', 'bus', 'Black', 3, 10014, 'Maruti'),
(10014, '200000', 'bus', 'Black', 3, 10016, 'Bus'),
(10015, '167367', 'car', 'white', 4, 10019, 'maruti 800'),
(10016, '167367', 'car', 'white', 4, 10020, 'maruti 800');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rides`
--
ALTER TABLE `rides`
  ADD PRIMARY KEY (`ride_id`),
  ADD KEY `ride_vehichle` (`ride_vehichle`);

--
-- Indexes for table `takes`
--
ALTER TABLE `takes`
  ADD PRIMARY KEY (`takes_id`),
  ADD KEY `ride_id` (`ride_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `creater_id` (`creater_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`pool_id`);

--
-- Indexes for table `vehichle`
--
ALTER TABLE `vehichle`
  ADD PRIMARY KEY (`vehichle_id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `email`
--
ALTER TABLE `email`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10004;

--
-- AUTO_INCREMENT for table `rides`
--
ALTER TABLE `rides`
  MODIFY `ride_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10029;

--
-- AUTO_INCREMENT for table `takes`
--
ALTER TABLE `takes`
  MODIFY `takes_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10031;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `pool_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10021;

--
-- AUTO_INCREMENT for table `vehichle`
--
ALTER TABLE `vehichle`
  MODIFY `vehichle_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10017;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `rides`
--
ALTER TABLE `rides`
  ADD CONSTRAINT `rides_ibfk_1` FOREIGN KEY (`ride_vehichle`) REFERENCES `vehichle` (`vehichle_id`);

--
-- Constraints for table `takes`
--
ALTER TABLE `takes`
  ADD CONSTRAINT `takes_ibfk_1` FOREIGN KEY (`ride_id`) REFERENCES `rides` (`ride_id`),
  ADD CONSTRAINT `takes_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`pool_id`),
  ADD CONSTRAINT `takes_ibfk_3` FOREIGN KEY (`creater_id`) REFERENCES `user` (`pool_id`);

--
-- Constraints for table `vehichle`
--
ALTER TABLE `vehichle`
  ADD CONSTRAINT `vehichle_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`pool_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
