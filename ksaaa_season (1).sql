CREATE database KSA_Season;
use KSA_Season;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ksa_season`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking_table`
--

CREATE TABLE `booking_table` (
  `code_User_fk` int(11) DEFAULT NULL,
  `pack_id_fk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `dammam_event`
-- (See below for the actual view)
--
CREATE TABLE `dammam_event` (
`event_name` varchar(100)
,`event_price` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `event_table`
--

CREATE TABLE `event_table` (
  `code_event` int(11) NOT NULL,
  `code_location_fk` int(11) NOT NULL,
  `event_name` varchar(100) NOT NULL,
  `Age` int(11) DEFAULT NULL CHECK (`Age` > 6),
  `event_date` date DEFAULT NULL,
  `event_time` varchar(30) DEFAULT NULL,
  `event_price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `event_table`
--

INSERT INTO `event_table` (`code_event`, `code_location_fk`, `event_name`, `Age`, `event_date`, `event_time`, `event_price`) VALUES
(201, 1, 'Music in Ancient', 10, '2022-11-24', '08:30 PM', 198),
(202, 1, 'Maraya', 10, '2022-10-15', 'TUESDAY 06:00 PM to 12:00 AM', 200),
(203, 1, 'Hegra After Dark', 10, '2022-07-11', '06:30 PM to 07:50 PM', 150),
(204, 1, 'Faia Yonan', 18, '2022-11-13', ' 08:30 PM', 300),
(205, 2, 'Riyadh Front', 18, '2022-01-10', 'Daily 08:00 AM to 01:00 AM', 0),
(206, 2, 'Winter WinderLand', 10, '2022-11-07', 'Daily 04:00 PM to 02:00 AM', 200),
(207, 2, 'Wall Clombing', 15, '2022-02-18', '10:00 AM to 5:00 PM', 198),
(208, 2, 'The Music Mansion', 18, '2022-02-09', '11:00 PM to 01:00 AM', 60),
(209, 3, 'LOOPAGOON Water Park', 8, '2022-11-10', ' 2PM to 9PM', 240),
(210, 3, 'Escape the Room', 15, '2022-10-02', ' 2PM to 12AM', 180),
(211, 3, 'Scitech', 8, '2022-04-02', ' 10PM to 11PM', 70),
(212, 3, 'UnknownRoom‬', 8, '2022-07-05', ' 12PM to 12AM', 180),
(213, 4, 'takiat bahr', 10, '2022-04-10', ' 4:00PM to 7:00PM', 15),
(214, 4, 'GAMMA', 15, '2022-04-12', ' 8:00 PM', 10),
(215, 4, 'Saudi Coffee Festival', 10, '2022-04-20', ' 4:00PM to 10:00PM', 0),
(216, 4, 'Elite Art Gallery', 7, '2022-02-10', ' 2:00 PM', 10),
(217, 5, 'Hijrah Exhibit ', 7, '2022-11-09', ' 8:00 PM', 30),
(218, 5, 'CAMP wakufa ', 10, '2022-12-10', ' 2:00 PM', 150),
(219, 5, 'Arabic Calligraphy and Typographic in Art and Design', 15, '2022-10-02', ' 2:00 PM', 1800),
(220, 5, 'Maze Challenge', 10, '2022-12-10', ' 3:00 PM', 190),
(221, 6, 'Crises ', 10, '2022-01-19', ' 08:00 PM', 350),
(222, 6, 'Safari Trip', 10, '2022-02-03', ' 08:00 PM', 265),
(223, 6, 'Jengal Land', 10, '2022-03-09', ' 08:00 PM', 198),
(224, 6, 'Sali Island Park', 10, '2022-02-14', ' 08:00 PM', 198);

-- --------------------------------------------------------

--
-- Table structure for table `item_table`
--

CREATE TABLE `item_table` (
  `id` int(11) NOT NULL,
  `item_type` varchar(50) DEFAULT NULL,
  `item_details` varchar(50) DEFAULT NULL,
  `price` double NOT NULL,
  `Ticket_id_fk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `item_table`
--

INSERT INTO `item_table` (`id`, `item_type`, `item_details`, `price`, `Ticket_id_fk`) VALUES
(1, 'event', 'Music in Ancient', 198, 7),
(2, 'package', 'Singles(Habitas Alula)', 6899, 8),
(3, 'package', 'Singles(Habitas Alula)', 6899, 9),
(4, 'event', 'Music in Ancient', 198, 10),
(5, 'package', 'Singles(Habitas Alula)', 6899, 10);

-- --------------------------------------------------------

--
-- Table structure for table `location_table`
--

CREATE TABLE `location_table` (
  `code_location` int(11) NOT NULL,
  `city` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `location_table`
--

INSERT INTO `location_table` (`code_location`, `city`) VALUES
(1, 'OLA'),
(2, 'Riyadh'),
(3, 'Khobar'),
(4, 'Dammam'),
(5, 'Dhahran'),
(6, 'Jeddah');

-- --------------------------------------------------------

--
-- Table structure for table `package_table`
--

CREATE TABLE `package_table` (
  `pack_id` int(11) NOT NULL,
  `location` int(11) DEFAULT NULL,
  `pack_name` varchar(10) DEFAULT NULL,
  `details` varchar(100) DEFAULT NULL,
  `hotel` varchar(100) DEFAULT NULL,
  `price` int(11) DEFAULT NULL
) ;

--
-- Dumping data for table `package_table`
--

INSERT INTO `package_table` (`pack_id`, `location`, `pack_name`, `details`, `hotel`, `price`) VALUES
(1001, 1, 'Singles', 'for singles only', 'Habitas Alula', 6899),
(1002, 1, 'Family', 'for family only', 'Habitas Alula', 3000),
(1003, 1, 'Twins', 'for only', 'Ashar Tentted Resort', 4255),
(1006, 2, 'Twins', 'for singles only', 'Valley Resort', 4430),
(1007, 3, 'Singles', 'for family only', 'Signature Hotel', 5900),
(1008, 3, 'Family', 'for only', 'Kempinski Alothman Hotel', 3600),
(1009, 3, 'Twins', 'for singles only', 'Voco Hotel', 4800),
(1010, 4, 'Singles', 'for singles only', 'Naviti Warwick', 2800),
(1011, 4, 'Family', 'for family only', 'Sheraton', 3300),
(1012, 4, 'Twins', 'for singles only', 'Braira', 4100),
(1013, 5, 'Singles', 'for family only', 'Holiday Inn & Suites', 4200),
(1014, 5, 'Family', 'for only', 'Radisson Blu', 5500),
(1015, 5, 'Twins', 'for singles only', 'BEATA GARDEN', 4800),
(1016, 6, 'Singles', 'for family only', 'Movenpick Hotel', 3000),
(1017, 6, 'Family', 'for only', 'Rits Carlton Hotel', 7500),
(1018, 6, 'Twins', 'for singles only', 'Narcissus Alhamra Hotel', 3700);

-- --------------------------------------------------------

--
-- Table structure for table `phone_num_user`
--

CREATE TABLE `phone_num_user` (
  `CODE_USER` int(11) NOT NULL,
  `FirstPhone` int(10) NOT NULL,
  `SecondPhone` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `phone_num_user`
--

INSERT INTO `phone_num_user` (`CODE_USER`, `FirstPhone`, `SecondPhone`) VALUES
(15, 500223921, 553789900),
(17, 500378882, NULL),
(16, 505003002, 503990100),
(19, 505567776, 559003302),
(20, 505788942, NULL),
(10, 505800233, NULL),
(8, 505988233, 554322789),
(18, 508830003, 522000300),
(5, 530922441, 537093325),
(2, 533267453, 555784326),
(6, 533882999, NULL),
(11, 533920033, NULL),
(1, 550097122, 539820730),
(12, 551889200, 553326009),
(13, 553427777, 555678000),
(3, 555431325, 539992002),
(9, 555889902, 566664267),
(7, 557532224, NULL),
(14, 559283333, NULL),
(4, 589669666, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tickets_table`
--

CREATE TABLE `tickets_table` (
  `Ticket_id` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tickets_table`
--

INSERT INTO `tickets_table` (`Ticket_id`, `username`) VALUES
(1, 'lama'),
(2, 'JOK1234'),
(3, 'JOK1234'),
(4, 'JOK1234'),
(5, 'JOK1234'),
(6, 'JOK1234'),
(7, 'JOK1234'),
(8, 'JOK1234'),
(9, 'JOK1234'),
(10, 'JOK1234');

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE `user_table` (
  `code_user` int(11) NOT NULL,
  `username` varchar(10) NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `FName` varchar(15) NOT NULL,
  `LName` varchar(15) NOT NULL,
  `password_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`code_user`, `username`, `email`, `FName`, `LName`, `password_user`) VALUES
(1, 'JOK1234', 'areej.hejji@gmail.com', 'Areej', 'Hejji', 5637),
(2, 'Ala959', ' lama.sami@gmail.com', 'Lama', 'Sami', 5748),
(3, 'Mar58', 'Maria2@gmail.com', 'Maria', 'Mohammed', 6758),
(4, 'Al44', 'Alia88@gmail.com', 'Alia', 'Mohammed', 770),
(5, 'Sh88', 'Shatha8@gmail.com', 'Shatha', 'Ibrahim', 5467),
(6, 'Dl65', 'Dalia3@gmail.com', 'Dalia', 'Maher', 9873),
(7, 'LM22', 'Lamia66@gmail.com', 'Lamia', 'Ahmed', 8834),
(8, 'Vc22', 'Aram2@gmail.com', 'Aram', 'Saud', 1189),
(9, 'Sh50', 'shahad12@gmail.com', 'Shahad', 'Fahad', 4472),
(10, 'OPL23', 'olla33@gmail.com', 'Olla', 'Ahmed', 1992),
(11, 'DOW43', 'Diamah22@gmail.com', 'Diamah', 'Mazen', 2233),
(12, 'KR34', 'Khaled8@gmail.com', 'Khaled', 'Majed', 4453),
(13, 'NSO3', 'Nasser4@gmail.com', 'Nasser', 'Sultan', 2099),
(14, 'S38', 'Sara54@gmail.com', 'Sara', 'Fahad', 3778),
(15, 'WKP2', 'Waad11@gmail.com', 'Waad', 'Majed', 3342),
(16, 'WK33', 'Wassan90@gmail.com', 'Wassan', 'Sultan', 2234),
(17, 'FM33', 'Ftoon56@gmail.com', 'Ftoon', 'Mohammed', 2215),
(18, 'KK32', 'Kamal45@gmail.com', 'Kamal', 'Ibrahim', 2009),
(19, 'BQ24', 'Badriah7@gmail.com', 'Badriah', 'Sami', 3004),
(20, 'NSA98', 'Nermeen2@gmail.com', 'Nermeen', 'Nasser', 1998),
(21, 'lama', 'Lma@gmail.com', 'Lama', 'Sami', 1234);

-- --------------------------------------------------------

--
-- Structure for view `dammam_event`
--
DROP TABLE IF EXISTS `dammam_event`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `dammam_event`  AS SELECT `event_table`.`event_name` AS `event_name`, `event_table`.`event_price` AS `event_price` FROM `event_table` WHERE `event_table`.`code_location_fk` = 44  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking_table`
--
ALTER TABLE `booking_table`
  ADD KEY `code_User_fk` (`code_User_fk`),
  ADD KEY `pack_id_fk` (`pack_id_fk`);

--
-- Indexes for table `event_table`
--
ALTER TABLE `event_table`
  ADD PRIMARY KEY (`code_event`),
  ADD KEY `code_location_fk` (`code_location_fk`);

--
-- Indexes for table `item_table`
--
ALTER TABLE `item_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Ticket_id_fk` (`Ticket_id_fk`);

--
-- Indexes for table `location_table`
--
ALTER TABLE `location_table`
  ADD PRIMARY KEY (`code_location`);

--
-- Indexes for table `package_table`
--
ALTER TABLE `package_table`
  ADD PRIMARY KEY (`pack_id`),
  ADD KEY `location` (`location`);

--
-- Indexes for table `phone_num_user`
--
ALTER TABLE `phone_num_user`
  ADD PRIMARY KEY (`FirstPhone`),
  ADD KEY `CODE_USER` (`CODE_USER`);

--
-- Indexes for table `tickets_table`
--
ALTER TABLE `tickets_table`
  ADD PRIMARY KEY (`Ticket_id`);

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`code_user`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `item_table`
--
ALTER TABLE `item_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tickets_table`
--
ALTER TABLE `tickets_table`
  MODIFY `Ticket_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking_table`
--
ALTER TABLE `booking_table`
  ADD CONSTRAINT `booking_table_ibfk_1` FOREIGN KEY (`code_User_fk`) REFERENCES `user_table` (`code_user`),
  ADD CONSTRAINT `booking_table_ibfk_2` FOREIGN KEY (`pack_id_fk`) REFERENCES `package_table` (`pack_id`);

--
-- Constraints for table `event_table`
--
ALTER TABLE `event_table`
  ADD CONSTRAINT `event_table_ibfk_1` FOREIGN KEY (`code_location_fk`) REFERENCES `location_table` (`code_location`);

--
-- Constraints for table `item_table`
--
ALTER TABLE `item_table`
  ADD CONSTRAINT `item_table_ibfk_1` FOREIGN KEY (`Ticket_id_fk`) REFERENCES `tickets_table` (`Ticket_id`);

--
-- Constraints for table `package_table`
--
ALTER TABLE `package_table`
  ADD CONSTRAINT `package_table_ibfk_1` FOREIGN KEY (`location`) REFERENCES `location_table` (`code_location`);

--
-- Constraints for table `phone_num_user`
--
ALTER TABLE `phone_num_user`
  ADD CONSTRAINT `phone_num_user_ibfk_1` FOREIGN KEY (`CODE_USER`) REFERENCES `user_table` (`code_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;