-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2018 at 12:01 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 5.6.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wtl`
--

-- --------------------------------------------------------

--
-- Table structure for table `curruser`
--

CREATE TABLE `curruser` (
  `u_id` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `date_time` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `curruser`
--

INSERT INTO `curruser` (`u_id`, `email`, `date_time`) VALUES
(1, 'test@gmail.com', '2018-04-04 11:45:16'),
(3, 'a@gmail.com', '2018-04-04 19:31:35');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `Name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `username`, `password`, `Name`) VALUES
(1, 'test@gmail.com', 'test123', 'test'),
(2, 'test2@gmail.com', 'test2', 'test2'),
(3, 'a@gmail.com', 'a', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `deleteduser`
--

CREATE TABLE `deleteduser` (
  `u_id` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `loginTime` varchar(30) NOT NULL,
  `logoutTime` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deleteduser`
--

INSERT INTO `deleteduser` (`u_id`, `email`, `loginTime`, `logoutTime`) VALUES
(3, 'a@gmail.com', '2018-04-03', '2018-04-04 08:09:34'),
(1, 'test@gmail.com', '2018-04-04', '2018-04-04 08:21:41'),
(1, 'test@gmail.com', '2018-04-04', '2018-04-04 08:38:20'),
(1, 'test@gmail.com', '2018-04-04 11:20:35', '2018-04-04 11:41:02'),
(3, 'a@gmail.com', '2018-04-04', '2018-04-04 18:50:31');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `u_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `total` varchar(30) NOT NULL,
  `quantity` varchar(30) NOT NULL,
  `url` varchar(1000) NOT NULL,
  `done` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`u_id`, `name`, `total`, `quantity`, `url`, `done`) VALUES
(1, 'Non Veg Supreme', '1800', '4', 'https://firebasestorage.googleapis.com/v0/b/myfirst-project-4fa08.appspot.com/o/photos/pizza/non-veg/Non-Veg_Supreme.jpg?alt=media', '1'),
(1, 'Veg Extravaganza', '399.20000000000005', '1', 'https://firebasestorage.googleapis.com/v0/b/myfirst-project-4fa08.appspot.com/o/photos/pizza/non-veg/vegextra.png?alt=media', '1'),
(1, 'Mexican Green Wave', '1796.3999999999999', '3', 'https://firebasestorage.googleapis.com/v0/b/myfirst-project-4fa08.appspot.com/o/photos/pizza/non-veg/five-peppers.png?alt=media', '1'),
(1, 'Peri-Peri Chicken', '1440', '4', 'https://firebasestorage.googleapis.com/v0/b/myfirst-project-4fa08.appspot.com/o/photos/pizza/non-veg/ChickenTikka.jpg?alt=media', '1'),
(1, 'Veg Extravaganza', '1996', '5', 'https://firebasestorage.googleapis.com/v0/b/myfirst-project-4fa08.appspot.com/o/photos/pizza/non-veg/vegextra.png?alt=media', '1'),
(1, 'Mexican Green Wave', '598.8', '1', 'https://firebasestorage.googleapis.com/v0/b/myfirst-project-4fa08.appspot.com/o/photos/pizza/non-veg/five-peppers.png?alt=media', '1'),
(1, 'Peri-Peri Chicken', '450', '1', 'https://firebasestorage.googleapis.com/v0/b/myfirst-project-4fa08.appspot.com/o/photos/pizza/non-veg/ChickenTikka.jpg?alt=media', '1'),
(1, 'Chicken Tikka', '450', '1', 'https://firebasestorage.googleapis.com/v0/b/myfirst-project-4fa08.appspot.com/o/photos/pizza/non-veg/ChickenTikka.jpg?alt=media', '1'),
(1, 'Chicken Tikka', '450', '1', 'https://firebasestorage.googleapis.com/v0/b/myfirst-project-4fa08.appspot.com/o/photos/pizza/non-veg/ChickenTikka.jpg?alt=media', '1'),
(1, 'Chicken Tikka', '450', '1', 'https://firebasestorage.googleapis.com/v0/b/myfirst-project-4fa08.appspot.com/o/photos/pizza/non-veg/ChickenTikka.jpg?alt=media', '1'),
(1, '5 Pepper', '499', '1', 'https://firebasestorage.googleapis.com/v0/b/myfirst-project-4fa08.appspot.com/o/photos/pizza/non-veg/five-peppers.png?alt=media', '1'),
(1, '5 Pepper', '499', '1', 'https://firebasestorage.googleapis.com/v0/b/myfirst-project-4fa08.appspot.com/o/photos/pizza/non-veg/five-peppers.png?alt=media', '1'),
(1, 'Peri-Peri Chicken', '3780', '7', 'https://firebasestorage.googleapis.com/v0/b/myfirst-project-4fa08.appspot.com/o/photos/pizza/non-veg/ChickenTikka.jpg?alt=media', '1'),
(1, 'Veg Extravaganza', '499', '1', 'https://firebasestorage.googleapis.com/v0/b/myfirst-project-4fa08.appspot.com/o/photos/pizza/non-veg/vegextra.png?alt=media', '1'),
(1, 'Peri-Peri Chicken', '450', '1', 'https://firebasestorage.googleapis.com/v0/b/myfirst-project-4fa08.appspot.com/o/photos/pizza/non-veg/ChickenTikka.jpg?alt=media', '1'),
(1, 'Veg Extravaganza', '499', '1', 'https://firebasestorage.googleapis.com/v0/b/myfirst-project-4fa08.appspot.com/o/photos/pizza/non-veg/vegextra.png?alt=media', '1'),
(3, 'Chicken Tikka', '450', '1', 'https://firebasestorage.googleapis.com/v0/b/myfirst-project-4fa08.appspot.com/o/photos%2Fpizza%2Fnon-veg%2FChickenTikka.jpg?alt=media&token=1300f64c-d6d0-41b7-af60-49a5ebefba68', '1'),
(3, 'Chicken Tikka', '450', '1', 'https://firebasestorage.googleapis.com/v0/b/myfirst-project-4fa08.appspot.com/o/photos%2Fpizza%2Fnon-veg%2FChickenTikka.jpg?alt=media&token=1300f64c-d6d0-41b7-af60-49a5ebefba68', '1'),
(3, 'Veg Extravaganza', '499', '1', 'https://firebasestorage.googleapis.com/v0/b/myfirst-project-4fa08.appspot.com/o/photos%2Fpizza%2Fnon-veg%2Fvegextra.png?alt=media&token=823c391e-f383-4316-a084-0e66a216a563', '1'),
(3, 'Paradise', '2994', '5', 'https://www.dominos.co.in/files/items/Peppy_Paneer.jpg', '1'),
(3, 'Mexican Green Wave', '1497', '3', 'https://firebasestorage.googleapis.com/v0/b/myfirst-project-4fa08.appspot.com/o/photos%2Fpizza%2Fnon-veg%2Ffive-peppers.png?alt=media&token=04a48653-7e8f-469e-a1e2-ca0ba3e2eee8', '1'),
(3, 'margaretta', '499', '1', 'https://firebasestorage.googleapis.com/v0/b/myfirst-project-4fa08.appspot.com/o/photos%2Fpizza%2Fveg%2F1.jpeg?alt=media&token=b839e6ce-7078-4dfe-ba41-fcf33778595e', '1'),
(3, 'Peri-Peri Chicken', '3150', '7', 'https://firebasestorage.googleapis.com/v0/b/myfirst-project-4fa08.appspot.com/o/photos%2Fpizza%2Fnon-veg%2FChickenTikka.jpg?alt=media&token=1300f64c-d6d0-41b7-af60-49a5ebefba68', '1'),
(3, 'Veg Extravaganza', '499', '1', 'https://firebasestorage.googleapis.com/v0/b/myfirst-project-4fa08.appspot.com/o/photos%2Fpizza%2Fnon-veg%2Fvegextra.png?alt=media&token=823c391e-f383-4316-a084-0e66a216a563', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `curruser`
--
ALTER TABLE `curruser`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `curruser`
--
ALTER TABLE `curruser`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
