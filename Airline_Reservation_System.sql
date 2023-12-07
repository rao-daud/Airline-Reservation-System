-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 07, 2023 at 03:31 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Airline Reservation System`
--

-- --------------------------------------------------------

--
-- Table structure for table `airline`
--

CREATE TABLE `airline` (
  `airline_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `airline`
--

INSERT INTO `airline` (`airline_name`) VALUES
('China Eastern'),
('Emirates'),
('Qatar Airways');

-- --------------------------------------------------------

--
-- Table structure for table `airline_staff`
--

CREATE TABLE `airline_staff` (
  `email` varchar(250) NOT NULL,
  `password` varchar(20) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `date_of_birth` date NOT NULL,
  `airline_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `airline_staff`
--

INSERT INTO `airline_staff` (`email`, `password`, `first_name`, `last_name`, `date_of_birth`, `airline_name`) VALUES
('DaBaby@souljaboy.com', 'dababyone', 'Rao Daud', 'Rao Doubt', '2003-12-28', 'Qatar Airways'),
('henry@staff.com', 'henry1', 'Henry', 'Zhang', '2001-11-02', 'China Eastern'),
('jeff@Qatar.com', 'jeffchillikethat1', 'Jeff', 'Qasemi', '2002-02-13', 'Qatar Airways'),
('joaco_alc', 'joacchillikethat1', 'Joaco', 'Alco', '1997-01-25', 'Qatar Airways'),
('osc_chang', 'oscchillikethat1', 'Oscar', 'Chang', '1999-04-19', 'Emirates'),
('pabloulloa', 'alejandroulloa', 'Pablo', 'Ulloa', '2002-11-24', 'China Eastern'),
('sean_rocks', 'seanchillikethat1', 'Sean', 'Rock', '1994-02-16', 'China Eastern');

-- --------------------------------------------------------

--
-- Table structure for table `airplane`
--

CREATE TABLE `airplane` (
  `id` varchar(20) NOT NULL,
  `airline_name` varchar(20) NOT NULL,
  `seats` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `airplane`
--

INSERT INTO `airplane` (`id`, `airline_name`, `seats`) VALUES
('CE310', 'China Eastern', 10),
('CE312', 'China Eastern', 10),
('EK305', 'Emirates', 10),
('EK306', 'Emirates', 10),
('Q280', 'Qatar Airways', 10),
('Q290', 'Qatar Airways', 10),
('Q300', 'Qatar Airways', 10),
('Q459', 'Qatar Airways', 10);

-- --------------------------------------------------------

--
-- Table structure for table `airport`
--

CREATE TABLE `airport` (
  `airport_name` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `airport`
--

INSERT INTO `airport` (`airport_name`, `city`) VALUES
('DOH', 'Doha'),
('JFK', 'New York'),
('LAX', 'Los Angeles'),
('LHR', 'London'),
('PVG', 'Shanghai'),
('SIA', 'Singapore City');

-- --------------------------------------------------------

--
-- Table structure for table `booking_agent`
--

CREATE TABLE `booking_agent` (
  `email` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `booking_agent_id` int(11) DEFAULT NULL,
  `airline_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_agent`
--

INSERT INTO `booking_agent` (`email`, `password`, `booking_agent_id`, `airline_name`) VALUES
('gabriel@Qatar.com', 'ronaldo1', 3, 'Qatar Airways'),
('j.garc@emirates.com', 'wtfisgaby', 2, 'Emirates'),
('r.mich@ceastern.com', 'rileychillikethat1', 1, 'China Eastern'),
('SouljaBoy', 'cardib', 4, 'Qatar Airways');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `email` varchar(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `building_number` char(5) NOT NULL,
  `street` char(5) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `passport_number` varchar(20) NOT NULL,
  `passport_expiration` date NOT NULL,
  `passport_country` varchar(20) NOT NULL,
  `date_of_birth` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`email`, `name`, `password`, `building_number`, `street`, `city`, `state`, `phone_number`, `passport_number`, `passport_expiration`, `passport_country`, `date_of_birth`) VALUES
('chiller@gmail.com', 'Victor Qiu', 'hardchiller1', '4', '4', 'New York', 'New York', '917352884', 'LW2398335', '2027-02-03', 'Spain', '2003-12-25'),
('jack.web@gmail.com', 'Jack Web', 'jackchillikethat1', '12', 'E43rd', 'New York', 'New York', '917342673', '221342765', '0000-00-00', 'USA', '0000-00-00'),
('mac.staples@gmail.co', 'Mac Staples', 'macchillikethat1', '2', '22', 'Pudong', 'Shanghai', '18696534206', 'LW3124081', '0000-00-00', 'Pakistan', '0000-00-00'),
('mateo@gmail.com', 'Mateo Rengi', 'thebeatles', '3', '9', 'Pudong', 'Shanghai', '18696534111', '1393124081', '2025-10-01', 'Columbia', '2002-12-27'),
('rao@gmail.com', 'Rao Daud', 'raodaud1', '4', '1', 'Pudong', 'Shanghai', '18601628206', 'LW4137972', '2026-05-17', 'Pakistan', '2002-12-19'),
('zsniazz@gmail.com', 'Zain', 'p5reser/vatives', '1', '5', 'New York', 'New York', '6468087337', 'p13878433', '2031-03-11', 'United States', '2002-07-25');

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `flight_num` varchar(20) NOT NULL,
  `airline_name` varchar(20) NOT NULL,
  `airplane_id` varchar(20) NOT NULL,
  `arrival_airport` varchar(20) NOT NULL,
  `departure_airport` varchar(20) NOT NULL,
  `dep_time` datetime NOT NULL,
  `arr_time` datetime NOT NULL,
  `price` int(11) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`flight_num`, `airline_name`, `airplane_id`, `arrival_airport`, `departure_airport`, `dep_time`, `arr_time`, `price`, `status`) VALUES
('CE674', 'China eastern', 'CE310', 'JFK', 'PVG', '2023-10-08 09:15:00', '2023-10-09 07:20:00', 1400, 'in-progress'),
('CE98', 'China eastern', 'CE310', 'PVG', 'JFK', '2023-10-11 11:00:00', '2023-10-12 08:50:00', 1600, 'delayed'),
('EK100', 'Emirates', 'EK305', 'DOH', 'LHR', '2023-12-31 01:34:43', '2024-01-01 17:39:11', 1500, 'Upcoming'),
('EK77', 'Emirates', 'EK305', 'JFK', 'PVG', '2023-11-12 14:20:00', '2023-11-13 04:10:00', 1550, 'Upcoming'),
('EK97', 'Emirates', 'EK305', 'LHR', 'JFK', '2023-12-23 16:25:00', '2023-12-24 16:25:05', 700, 'Upcoming'),
('Q101', 'Qatar Airways', 'Q280', 'PVG', 'JFK', '2024-01-01 10:00:00', '2024-01-02 20:30:00', 1700, 'Upcoming'),
('Q102', 'Qatar Airways', 'Q280', 'DOH', 'JFK', '2023-12-03 23:50:51', '2023-12-05 23:50:54', 2000, 'Delayed'),
('Q111', 'Qatar Airways', 'Q280', 'LHR', 'DOH', '2023-12-07 16:16:55', '2023-12-08 16:17:02', 1000, 'Upcoming'),
('Q122', 'Qatar Airways', 'Q300', 'LHR', 'DOH', '2023-12-10 14:41:44', '2023-12-12 14:41:52', 800, 'Upcoming'),
('Q180', 'Qatar Airways', 'Q459', 'SIA', 'LAX', '2023-12-16 16:50:41', '2023-12-17 16:50:47', 2400, 'Upcoming'),
('Q83', 'Qatar Airways', 'Q290', 'DOH', 'PVG', '2023-12-20 10:05:00', '2023-12-21 20:30:00', 2000, 'Upcoming');

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE `permission` (
  `staff_username` varchar(20) NOT NULL,
  `permission` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `permission`
--

INSERT INTO `permission` (`staff_username`, `permission`) VALUES
('joaco_alc', 'Admin'),
('osc_chang', 'Operator');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `ticket_id` varchar(20) NOT NULL,
  `airline_name` varchar(20) NOT NULL,
  `airplane_id` varchar(20) NOT NULL,
  `flight_num` varchar(20) NOT NULL,
  `agent_email` varchar(20) DEFAULT NULL,
  `customer_email` varchar(50) DEFAULT NULL,
  `purchase_date` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`ticket_id`, `airline_name`, `airplane_id`, `flight_num`, `agent_email`, `customer_email`, `purchase_date`) VALUES
('1', 'China Eastern', 'CE310', 'CE98', 'r.mich@ceastern.com', 'jack.web@gmail.com', '2023-12-02'),
('10', 'Qatar Airways', 'Q459', 'Q180', NULL, 'mateo@gmail.com', '2023-12-04'),
('11', 'Qatar Airways', 'Q459', 'Q180', 'gabriel@Qatar.com', 'zsniazz@gmail.com', '2023-12-05'),
('12', 'Qatar Airways', 'Q300', 'Q122', 'gabriel@Qatar.com', 'rao@gmail.com', '2023-12-06'),
('13', 'Qatar Airways', 'Q280', 'Q111', 'gabriel@Qatar.com', 'rao@gmail.com', '2023-12-06'),
('2', 'Qatar Airways', 'Q280', 'Q101', NULL, 'mateo@gmail.com', '2023-12-02'),
('3', 'Emirates', 'EK305', 'EK77', NULL, 'mac.staples@gmail.co', '2023-12-02'),
('4', 'Emirates', 'EK305', 'EK77', NULL, 'mateo@gmail.com', '2023-12-02'),
('5', 'Qatar Airways', 'Q290', 'Q83', 'gabriel@Qatar.com', 'jack.web@gmail.com', '2023-12-03'),
('6', 'Qatar Airways', 'Q280', 'Q101', 'gabriel@Qatar.com', 'chiller@gmail.com', '2023-12-03'),
('7', 'Emirates', 'EK305', 'EK100', NULL, 'rao@gmail.com', '2023-12-04'),
('8', 'Qatar Airways', 'Q280', 'Q101', NULL, 'rao@gmail.com', '2023-12-04'),
('9', 'Emirates', 'EK305', 'EK100', NULL, 'mateo@gmail.com', '2023-12-04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airline`
--
ALTER TABLE `airline`
  ADD PRIMARY KEY (`airline_name`);

--
-- Indexes for table `airline_staff`
--
ALTER TABLE `airline_staff`
  ADD PRIMARY KEY (`email`),
  ADD KEY `airline_name` (`airline_name`);

--
-- Indexes for table `airplane`
--
ALTER TABLE `airplane`
  ADD PRIMARY KEY (`id`,`airline_name`),
  ADD KEY `airline_name` (`airline_name`);

--
-- Indexes for table `airport`
--
ALTER TABLE `airport`
  ADD PRIMARY KEY (`airport_name`);

--
-- Indexes for table `booking_agent`
--
ALTER TABLE `booking_agent`
  ADD PRIMARY KEY (`email`),
  ADD KEY `airline_name` (`airline_name`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`flight_num`,`airline_name`,`airplane_id`),
  ADD KEY `airline_name` (`airline_name`),
  ADD KEY `airplane_id` (`airplane_id`),
  ADD KEY `arrival_airport` (`arrival_airport`),
  ADD KEY `departure_airport` (`departure_airport`);

--
-- Indexes for table `permission`
--
ALTER TABLE `permission`
  ADD PRIMARY KEY (`staff_username`,`permission`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`ticket_id`),
  ADD KEY `flight_num` (`flight_num`,`airline_name`,`airplane_id`),
  ADD KEY `agent_email` (`agent_email`),
  ADD KEY `customer_email` (`customer_email`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `airline_staff`
--
ALTER TABLE `airline_staff`
  ADD CONSTRAINT `airline_staff_ibfk_1` FOREIGN KEY (`airline_name`) REFERENCES `airline` (`airline_name`);

--
-- Constraints for table `airplane`
--
ALTER TABLE `airplane`
  ADD CONSTRAINT `airplane_ibfk_1` FOREIGN KEY (`airline_name`) REFERENCES `airline` (`airline_name`);

--
-- Constraints for table `booking_agent`
--
ALTER TABLE `booking_agent`
  ADD CONSTRAINT `booking_agent_ibfk_1` FOREIGN KEY (`airline_name`) REFERENCES `airline` (`airline_name`);

--
-- Constraints for table `flight`
--
ALTER TABLE `flight`
  ADD CONSTRAINT `flight_ibfk_1` FOREIGN KEY (`airline_name`) REFERENCES `airline` (`airline_name`),
  ADD CONSTRAINT `flight_ibfk_2` FOREIGN KEY (`airplane_id`) REFERENCES `airplane` (`id`),
  ADD CONSTRAINT `flight_ibfk_3` FOREIGN KEY (`arrival_airport`) REFERENCES `airport` (`airport_name`),
  ADD CONSTRAINT `flight_ibfk_4` FOREIGN KEY (`departure_airport`) REFERENCES `airport` (`airport_name`);

--
-- Constraints for table `permission`
--
ALTER TABLE `permission`
  ADD CONSTRAINT `permission_ibfk_1` FOREIGN KEY (`staff_username`) REFERENCES `airline_staff` (`email`);

--
-- Constraints for table `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`flight_num`,`airline_name`,`airplane_id`) REFERENCES `flight` (`flight_num`, `airline_name`, `airplane_id`),
  ADD CONSTRAINT `ticket_ibfk_2` FOREIGN KEY (`agent_email`) REFERENCES `booking_agent` (`email`),
  ADD CONSTRAINT `ticket_ibfk_3` FOREIGN KEY (`customer_email`) REFERENCES `customer` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
