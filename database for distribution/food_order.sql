-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2024 at 09:04 AM
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
-- Database: `food_order`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `Id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`Id`, `full_name`, `username`, `password`) VALUES
(49, 'Administrator', 'admin', 'e3afed0047b08059d0fada10f400c1e5');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `Id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`Id`, `title`, `image_name`, `featured`, `active`) VALUES
(1, 'Japanese', 'sushi.png', 'Yes', 'Yes'),
(2, 'Filipino', 'adobo.png', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food`
--

CREATE TABLE `tbl_food` (
  `Id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_food`
--

INSERT INTO `tbl_food` (`Id`, `title`, `description`, `price`, `image_name`, `category_id`, `featured`, `active`) VALUES
(101, 'Sushi', 'Fresh, delicately crafted rolls of sushi-grade fish paired with seasoned rice and complementary ingredients.', 8.00, 'sushi.png', 1, 'Yes', 'Yes'),
(102, 'Ramen', '\r\nSteaming bowls of rich, flavorful broth filled with tender noodles, topped with meats, veggies, and a soft-boiled egg.', 10.00, 'ramen.png', 1, 'Yes', 'Yes'),
(103, 'Unagi', 'Tender, grilled eel glazed with a sweet soy-based sauce, served over rice.', 22.00, 'unagi.png', 1, 'Yes', 'Yes'),
(104, 'Soba', 'Chilled or warm buckwheat noodles, served with a dipping sauce or in a savory broth.', 47.00, 'soba.png', 1, 'Yes', 'Yes'),
(105, 'Yakitori', 'Skewers of grilled, succulent chicken or other meats, seasoned and charred to perfection.', 4.00, 'yakitori.png', 1, 'Yes', 'Yes'),
(201, 'Adobo', 'A classic Filipino dish of meat (often chicken or pork) cooked in a flavorful blend of vinegar, soy sauce, garlic, and spices.', 12.00, 'adobo.png', 2, 'Yes', 'Yes'),
(202, 'Tinola', 'A traditional Filipino soup made with chicken, ginger, green papaya or chayote, and leafy vegetables, simmered in a clear broth flavored with fish sauce or patis.', 5.00, 'tinola.png', 2, 'Yes', 'Yes'),
(203, 'Arroz Caldo', 'A Filipino rice porridge flavored with ginger, garlic, and saffron, often containing chicken and garnished with fried garlic, green onions, and a squeeze of calamansi or lemon juice.', 12.00, 'ac.png', 2, 'Yes', 'Yes'),
(204, 'Pancit Bihon', 'A Filipino noodle dish made with thin rice noodles stir-fried with vegetables, meat (typically chicken, pork, or shrimp), and seasoned with soy sauce and citrus juice.', 9.00, 'pb.png', 2, 'Yes', 'Yes'),
(205, 'Pinya Flan', 'A dessert combining the creamy richness of flan with the tropical sweetness of pineapple, creating a delightful fusion of flavors.', 2.00, 'flan.png', 2, 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `Id` int(10) UNSIGNED NOT NULL,
  `food` varchar(150) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `customer_contact` varchar(20) NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `customer_Address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`Id`, `food`, `price`, `qty`, `total`, `order_date`, `status`, `customer_name`, `customer_contact`, `customer_email`, `customer_Address`) VALUES
(2, 'Sushi', 8.00, 1, 8.00, '2024-04-16 09:01:34', 'Ordered', 'name', '12', 'ryle.p.sundiam@gmail.com', 'a');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tbl_food`
--
ALTER TABLE `tbl_food`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `Id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `Id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `tbl_food`
--
ALTER TABLE `tbl_food`
  MODIFY `Id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `Id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
