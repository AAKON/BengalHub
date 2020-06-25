-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2020 at 07:38 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bengalhub`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add bangladesh', 7, 'add_bangladesh'),
(26, 'Can change bangladesh', 7, 'change_bangladesh'),
(27, 'Can delete bangladesh', 7, 'delete_bangladesh'),
(28, 'Can view bangladesh', 7, 'view_bangladesh'),
(29, 'Can add bd_district', 8, 'add_bd_district'),
(30, 'Can change bd_district', 8, 'change_bd_district'),
(31, 'Can delete bd_district', 8, 'delete_bd_district'),
(32, 'Can view bd_district', 8, 'view_bd_district'),
(33, 'Can add dhaka_area', 9, 'add_dhaka_area'),
(34, 'Can change dhaka_area', 9, 'change_dhaka_area'),
(35, 'Can delete dhaka_area', 9, 'delete_dhaka_area'),
(36, 'Can view dhaka_area', 9, 'view_dhaka_area'),
(37, 'Can add bd_gender', 10, 'add_bd_gender'),
(38, 'Can change bd_gender', 10, 'change_bd_gender'),
(39, 'Can delete bd_gender', 10, 'delete_bd_gender'),
(40, 'Can view bd_gender', 10, 'view_bd_gender');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$180000$0SW97b1rFNOn$Vdcza9oP4N54trUAny5HKwNN7AvV1vr1D7KKN9KnyQ0=', '2020-06-23 20:39:22.349820', 1, 'faisal', '', '', 'faisal@gmail.com', 1, 1, '2020-06-23 20:38:34.059162');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_bangladesh`
--

CREATE TABLE `dashboard_bangladesh` (
  `id` int(11) NOT NULL,
  `date` varchar(20) NOT NULL,
  `day` int(11) NOT NULL,
  `case` bigint(20) NOT NULL,
  `test_case` bigint(20) NOT NULL,
  `death` bigint(20) NOT NULL,
  `recovered` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dashboard_bangladesh`
--

INSERT INTO `dashboard_bangladesh` (`id`, `date`, `day`, `case`, `test_case`, `death`, `recovered`) VALUES
(1, '3/8/2020', 1, 3, 9, 0, 0),
(2, '3/9/2020', 2, 0, 7, 0, 0),
(3, '3/10/2020', 3, 0, 10, 0, 0),
(4, '3/11/2020', 4, 0, 10, 0, 2),
(5, '3/12/2020', 5, 0, 16, 0, 0),
(6, '3/13/2020', 6, 0, 24, 0, 0),
(7, '3/14/2020', 7, 0, 24, 0, 0),
(8, '3/15/2020', 8, 2, 30, 0, 0),
(9, '3/16/2020', 9, 3, 27, 0, 0),
(10, '3/17/2020', 10, 2, 49, 0, 1),
(11, '3/18/2020', 11, 4, 49, 1, 0),
(12, '3/19/2020', 12, 3, 46, 0, 0),
(13, '3/20/2020', 13, 3, 36, 0, 0),
(14, '3/21/2020', 14, 4, 36, 1, 0),
(15, '3/22/2020', 15, 3, 65, 0, 0),
(16, '3/23/2020', 16, 6, 56, 1, 2),
(17, '3/24/2020', 17, 6, 92, 1, 0),
(18, '3/25/2020', 18, 0, 82, 1, 2),
(19, '3/26/2020', 19, 5, 126, 0, 4),
(20, '3/27/2020', 20, 4, 106, 0, 0),
(21, '3/28/2020', 21, 0, 42, 0, 4),
(22, '3/29/2020', 22, 0, 109, 0, 0),
(23, '3/30/2020', 23, 1, 153, 0, 4),
(24, '3/31/2020', 24, 2, 140, 0, 6),
(25, '4/1/2020', 25, 3, 157, 1, 0),
(26, '4/2/2020', 26, 2, 141, 0, 0),
(27, '4/3/2020', 27, 5, 513, 0, 1),
(28, '4/4/2020', 28, 9, 434, 2, 4),
(29, '4/5/2020', 29, 18, 367, 1, 0),
(30, '4/6/2020', 30, 35, 468, 3, 3),
(31, '4/7/2020', 31, 41, 792, 5, 0),
(32, '4/8/2020', 32, 54, 981, 3, 0),
(33, '4/9/2020', 33, 112, 1097, 1, 0),
(34, '4/10/2020', 34, 94, 1184, 6, 0),
(35, '4/11/2020', 35, 58, 954, 3, 3),
(36, '4/12/2020', 36, 139, 1340, 4, 3),
(37, '4/13/2020', 37, 182, 1570, 5, 3),
(38, '4/14/2020', 38, 209, 1905, 7, 0),
(39, '4/15/2020', 39, 268, 1740, 4, 7),
(40, '4/16/2020', 40, 292, 2019, 10, 0),
(41, '4/17/2020', 41, 266, 2190, 15, 9),
(42, '4/18/2020', 42, 306, 2114, 9, 8),
(43, '4/19/2020', 43, 312, 2634, 7, 9),
(44, '4/20/2020', 44, 492, 2779, 10, 10),
(45, '4/21/2020', 45, 434, 2974, 9, 2),
(46, '4/22/2020', 46, 390, 3096, 10, 5),
(47, '4/23/2020', 47, 414, 3416, 7, 16),
(48, '4/24/2020', 48, 503, 3686, 4, 4),
(49, '4/25/2020', 49, 309, 3337, 9, 0),
(50, '4/26/2020', 50, 418, 3476, 5, 9),
(51, '4/27/2020', 51, 497, 3812, 7, 9),
(52, '4/28/2020', 52, 549, 4332, 3, 8),
(53, '4/29/2020', 53, 641, 4968, 8, 11),
(54, '4/30/2020', 54, 564, 4965, 5, 10),
(55, '5/1/2020', 55, 571, 5573, 2, 14),
(56, '5/2/2020', 56, 552, 5827, 5, 3),
(57, '5/3/2020', 57, 665, 5368, 2, 886),
(58, '5/4/2020', 58, 688, 6207, 5, 146),
(59, '5/5/2020', 59, 786, 5711, 1, 194),
(60, '5/6/2020', 60, 790, 6241, 3, 0),
(61, '5/7/2020', 61, 706, 5867, 13, 507),
(62, '5/8/2020', 62, 709, 5941, 7, 191),
(63, '5/9/2020', 63, 636, 5465, 8, 313),
(64, '5/10/2020', 64, 887, 5738, 14, 236),
(65, '5/11/2020', 65, 1034, 7208, 11, 252),
(66, '5/12/2020', 66, 969, 6773, 11, 245),
(67, '5/13/2020', 67, 1162, 7900, 19, 214),
(68, '5/14/2020', 68, 1041, 7392, 14, 0),
(69, '5/15/2020', 69, 1202, 8582, 15, 279),
(70, '5/16/2020', 70, 930, 6782, 16, 235),
(71, '5/17/2020', 71, 1273, 8114, 14, 256),
(72, '5/18/2020', 72, 1602, 9788, 21, 212),
(73, '5/19/2020', 73, 1251, 8449, 21, 408),
(74, '5/20/2020', 74, 1617, 10207, 16, 0),
(75, '5/21/2020', 75, 1773, 10262, 22, 395),
(76, '5/22/2020', 76, 1694, 9727, 24, 588),
(77, '5/23/2020', 77, 1873, 10834, 20, 296),
(78, '5/24/2020', 78, 1532, 8908, 28, 415),
(79, '5/25/2020', 79, 1975, 9451, 21, 433),
(80, '5/26/2020', 80, 1166, 5407, 21, 245),
(81, '5/27/2020', 81, 1541, 8015, 22, 346),
(82, '5/28/2020', 82, 2029, 9310, 15, 500),
(83, '5/29/2020', 83, 2523, 11301, 23, 590),
(84, '5/30/2020', 84, 1764, 9987, 28, 360),
(85, '5/31/2020', 85, 2545, 11876, 40, 406),
(86, '6/1/2020', 86, 2381, 11439, 22, 816),
(87, '6/2/2020', 87, 2911, 12704, 37, 523),
(88, '6/3/2020', 88, 2695, 12510, 37, 470),
(89, '6/4/2020', 89, 2423, 12694, 35, 571),
(90, '6/5/2020', 90, 2828, 14088, 30, 643),
(91, '6/6/2020', 91, 2635, 12486, 35, 521),
(92, '6/7/2020', 92, 2743, 13136, 42, 578),
(93, '6/8/2020', 93, 2735, 12944, 42, 657),
(94, '6/9/2020', 94, 3171, 14664, 45, 777),
(95, '6/10/2020', 95, 3190, 15965, 37, 563),
(96, '6/11/2020', 96, 3187, 15772, 37, 848),
(97, '6/12/2020', 97, 3471, 15990, 46, 502),
(98, '6/13/2020', 98, 2856, 16638, 44, 579),
(99, '6/14/2020', 99, 3141, 14505, 32, 903),
(100, '6/15/2020', 100, 3099, 15038, 38, 15296),
(101, '6/16/2020', 101, 3862, 17214, 53, 2237),
(102, '6/17/2020', 102, 4008, 17527, 43, 1925),
(103, '6/18/2020', 103, 3803, 16259, 38, 1975),
(104, '6/19/2020', 104, 3243, 15045, 45, 2781),
(105, '6/20/2020', 105, 3240, 14031, 37, 1048),
(106, '6/21/2020', 106, 3531, 15585, 39, 1084),
(107, '6/22/2020', 107, 3480, 15555, 38, 1678),
(108, '6/23/2020', 108, 3412, 16292, 43, 1545);

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_bd_district`
--

CREATE TABLE `dashboard_bd_district` (
  `id` int(11) NOT NULL,
  `district` varchar(30) NOT NULL,
  `case` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dashboard_bd_district`
--

INSERT INTO `dashboard_bd_district` (`id`, `district`, `case`) VALUES
(1, 'Cumilla', 2471),
(2, 'Brahamanbaria', 533),
(3, 'Narsingdi', 1240),
(4, 'Maulvibazar', 265),
(5, 'Habiganj', 276),
(6, 'Kishoreganj', 1083),
(7, 'Sylhet', 1814),
(8, 'Sunamganj', 788),
(9, 'Rangamati', 116),
(10, 'Bandarban', 111),
(11, 'Chattogram', 5585),
(12, 'Cox\'s Bazar', 1688),
(13, 'Noakhali', 1707),
(14, 'Lakshmipur', 595),
(15, 'Feni', 645),
(16, 'Khagrachhari', 94),
(17, 'Manikganj', 472),
(18, 'Gazipur', 2511),
(19, 'Tangail', 379),
(20, 'Jamalpur', 440),
(21, 'Sherpur', 211),
(22, 'Kurigram', 120),
(23, 'Netrakona', 366),
(24, 'Mymensingh', 1315),
(25, 'Narail', 73),
(26, 'Madaripur', 608),
(27, 'Chandpur', 564),
(28, 'Faridpur', 1241),
(29, 'Shariatpur', 378),
(30, 'Munshiganj', 1776),
(31, 'Narayanganj', 4700),
(32, 'Dhaka', 27267),
(33, 'Jhalokati', 125),
(34, 'Bhola', 188),
(35, 'Pirojpur', 131),
(36, 'Bagerhat', 102),
(37, 'Patuakhali', 204),
(38, 'Barguna', 162),
(39, 'Barisal', 1129),
(40, 'Gopalganj', 483),
(41, 'Joypurhat', 253),
(42, 'Dinajpur', 507),
(43, 'Gaibandha', 211),
(44, 'Rangpur', 783),
(45, 'Thakurgaon', 180),
(46, 'Nilphamari', 298),
(47, 'Panchagarh', 126),
(48, 'Lalmonirhat', 76),
(49, 'Kushtia', 307),
(50, 'Pabna', 270),
(51, 'Sirajganj', 261),
(52, 'Natore', 135),
(53, 'Rajshahi', 237),
(54, 'Chapainawabganj', 86),
(55, 'Naogaon', 239),
(56, 'Bogura', 2085),
(57, 'Jessore', 314),
(58, 'Satkhira', 100),
(59, 'Khulna', 800),
(60, 'Jhenaidah', 123),
(61, 'Chuadanga', 169),
(62, 'Magura', 64),
(63, 'Rajbari', 221),
(64, 'Meherpur', 40);

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_bd_gender`
--

CREATE TABLE `dashboard_bd_gender` (
  `id` int(11) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `case` int(11) NOT NULL,
  `death` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dashboard_bd_gender`
--

INSERT INTO `dashboard_bd_gender` (`id`, `gender`, `case`, `death`) VALUES
(1, 'male', 71, 77),
(2, 'female', 29, 23);

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_dhaka_area`
--

CREATE TABLE `dashboard_dhaka_area` (
  `id` int(11) NOT NULL,
  `area` varchar(30) NOT NULL,
  `case` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dashboard_dhaka_area`
--

INSERT INTO `dashboard_dhaka_area` (`id`, `area`, `case`) VALUES
(1, 'Mirpur', 1171),
(2, 'Uttara', 676),
(3, 'Mohammadpur', 592),
(4, 'Mohakhali', 522),
(5, 'Mugda', 501),
(6, 'Jatrabari', 484),
(7, 'Dhanmondi', 469),
(8, 'Mogbazar', 333),
(9, 'Tejgaon', 315),
(10, 'Kakrail', 304),
(11, 'Rampura', 296),
(12, 'Khilgaon', 293),
(13, 'Lalbagh', 270),
(14, 'Badda', 264),
(15, 'Gulshan', 238),
(16, 'Rajarbagh', 230),
(17, 'Malibagh', 208),
(18, 'Basabo', 186),
(19, 'Gendaria', 173),
(20, 'Babu Bazar', 162),
(21, 'Wari', 154),
(22, 'Agargaon', 140),
(23, 'Bangshal', 137),
(24, 'Shaymoli', 135),
(25, 'Bashundhora', 129),
(26, 'Shahbag', 129),
(27, 'Demra', 118),
(28, 'Azimpur', 116),
(29, 'Adabor', 115),
(30, 'Hazaribagh', 115),
(31, 'Banani', 113),
(32, 'Banasree', 111),
(33, 'Ramna', 105),
(34, 'Shantinagar', 105),
(35, 'Paltan', 99),
(36, 'Kalabagan', 97),
(37, 'Mirpur-1', 96),
(38, 'Kallyanpur', 93),
(39, 'Sher-E-Bangla Nagar', 93),
(40, 'Chawk Bazar', 91),
(41, 'Eskaton', 89),
(42, 'Green Road', 89),
(43, 'Mirpur-12', 87),
(44, 'Lalmatia', 84),
(45, 'Jurain', 75),
(46, 'Farmgate', 74),
(47, 'Kafrul', 68),
(48, 'Kamrangir Char', 65),
(49, 'Maniknagar', 64),
(50, 'Sutrapur', 64),
(51, 'Baridhara', 63),
(52, 'Segunbagicha', 63),
(53, 'Nayabazar', 61),
(54, 'Swamibagh', 61),
(55, 'Shah Jahanpur', 60),
(56, 'Cantonment', 60),
(57, 'Manda', 60),
(58, 'Mitford', 59),
(59, 'Mirpur-11', 59),
(60, 'Motijheel', 57),
(61, 'Elephant Road', 56),
(62, 'Bhatara', 54),
(63, 'Kathalbagan', 53),
(64, 'Jigatala', 53),
(65, 'Nakhalpara', 53),
(66, 'Mirpur-14', 53),
(67, 'Hatirpool', 52),
(68, 'Kamalapur', 50),
(69, 'Chankharpool', 50),
(70, 'Narinda', 47),
(71, 'Sonir akhra', 46),
(72, 'Sabujbagh', 45),
(73, 'Tikatuli', 44),
(74, 'Kadamtali', 43),
(75, 'Gopibag', 43),
(76, 'Shantibagh', 43),
(77, 'Mirpur-2', 42),
(78, 'Khilkhet', 41),
(79, 'Kotwali', 40),
(80, 'Goran', 40),
(81, 'Pallabi', 40),
(82, 'Panthapath', 40),
(83, 'Siddheshwari', 39),
(84, 'Rayerbazar', 36),
(85, 'Shakharibazar', 36),
(86, 'Poribagh', 34),
(87, 'Mirpur-10', 34),
(88, 'Baily Road', 33),
(89, 'Raja Bazar', 33),
(90, 'Kawran Bazar', 32),
(91, 'Dania', 31),
(92, 'Laxmibazar', 31),
(93, 'Abdullahpur', 30),
(94, 'Rayerbagh', 30),
(95, 'Shewrapara', 30),
(96, 'Dakshinkhan', 29),
(97, 'Ashulia', 27),
(98, 'Purana Paltan', 27),
(99, 'Niketon', 26),
(100, 'Matuail', 24),
(101, 'Shyampur', 23),
(102, 'Golapbagh', 23),
(103, 'Paikpara', 22),
(104, 'Kazi para', 21),
(105, 'Tolarbag', 21),
(106, 'Dhalpur', 21),
(107, 'Fulbaria', 21),
(108, 'Sayedabad', 21),
(109, 'Mirpur-6', 20),
(110, 'Banglamotor', 19),
(111, 'Mirpur-13', 19),
(112, 'Tati Bazar', 18),
(113, 'Aftabnagar', 18),
(114, 'New market', 18),
(115, 'Taltola', 17),
(116, 'Kuril', 16),
(117, 'Shekher Tek', 16),
(118, 'Ibrahimpur', 15),
(119, 'Islampur', 15),
(120, 'Dholaipar', 15),
(121, 'Pirerbagh', 15),
(122, 'Madartek', 15),
(123, 'Arambagh', 14),
(124, 'Ahmedabag', 14),
(125, 'Postogola', 14),
(126, 'Gausia', 13),
(127, 'Gulistan', 13),
(128, 'Nandi Para', 13),
(129, 'Nikunja', 12),
(130, 'Fakirapool', 12),
(131, 'Airport', 11),
(132, 'Rupnagar', 11),
(133, 'Islambagh', 11),
(134, 'Kochukhet', 11),
(135, 'Neemtoli', 11),
(136, 'Meradia', 11),
(137, 'Shahid Nagar', 10),
(138, 'Nazirabazar', 10),
(139, 'Monipur', 10),
(140, 'Hatir jhil', 10),
(141, 'Armanitola', 9),
(142, 'Sadarghat', 9),
(143, 'Konapara', 8),
(144, 'Mir hajirbagh', 8),
(145, 'Kutubkhali', 8),
(146, 'Gabtoli', 8),
(147, 'Tejkunipara', 8),
(148, 'Nawabpur', 8),
(149, 'Faridabagh', 8),
(150, 'Vasantek', 8),
(151, 'Mohonpur', 8),
(152, 'Rosulpur', 8),
(153, 'Bangla bazar', 7),
(154, 'Shahjadpur', 7),
(155, 'Tezturi Bazar', 7),
(156, 'Bosila', 7),
(157, 'Hajipara', 7),
(158, 'Ashkona', 6),
(159, 'Indira Road', 6),
(160, 'Turag', 6),
(161, 'Nilkhet', 6),
(162, 'Malitola', 6),
(163, 'Mirpur 7', 6),
(164, 'Central Road', 6),
(165, 'Lalkuthi', 5),
(166, 'English Road', 5),
(167, 'Gonoktuli', 5),
(168, 'Bokshi Bazar', 5),
(169, 'Matikata', 5),
(170, 'Mintu Road', 5),
(171, 'Sipahibag', 5),
(172, 'Mouchak', 4),
(173, 'Siddik Bazar', 4),
(174, 'Ahmed Nagar', 4),
(175, 'kajla', 4),
(176, 'Tallabagh', 4),
(177, 'Begunbari', 4),
(178, 'Rasulbagh', 4),
(179, 'Dayaganj', 3),
(180, 'Senpara', 3),
(181, 'Dholaikhal', 3),
(182, 'Merul', 3),
(183, 'Sankar', 3),
(184, 'Showari Ghat', 3),
(185, 'Foridabad', 2),
(186, 'Nayapaltan', 2),
(187, 'Aminbazar', 2),
(188, 'Asad Gate', 2),
(189, 'Gulbag', 2),
(190, 'Jailgate', 2),
(191, 'Forashganj', 2),
(192, 'Baganbari', 2),
(193, 'Badam Toli', 2),
(194, 'Bijoynagar', 2),
(195, 'Begum Bazar', 2),
(196, 'Shah Ali Bagh', 2),
(197, 'Sukrabad', 1),
(198, 'Urdu Road', 1),
(199, 'Koratitola', 1),
(200, 'Koltabazar', 1),
(201, 'Kosaituli', 1),
(202, 'Gudaraghat', 1),
(203, 'Golartek', 1),
(204, 'Dhakkeshori', 1),
(205, 'Banianagar', 1),
(206, 'Buet Area', 1),
(207, 'Beribadh', 1),
(208, 'Manikdi', 1),
(209, 'Science Lab', 1),
(210, 'Hatkhula', 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL
) ;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-06-23 20:45:00.746720', '4', 'dsjdshdsh', 1, '[{\"added\": {}}]', 7, 1),
(2, '2020-06-25 11:43:12.378255', '1', 'male', 1, '[{\"added\": {}}]', 10, 1),
(3, '2020-06-25 11:43:32.420051', '2', 'female', 1, '[{\"added\": {}}]', 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'dashboard', 'bangladesh'),
(8, 'dashboard', 'bd_district'),
(10, 'dashboard', 'bd_gender'),
(9, 'dashboard', 'dhaka_area'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-06-23 20:07:23.700423'),
(2, 'auth', '0001_initial', '2020-06-23 20:07:26.131883'),
(3, 'admin', '0001_initial', '2020-06-23 20:07:38.488091'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-06-23 20:07:39.974366'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-06-23 20:07:40.007929'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-06-23 20:07:42.779082'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-06-23 20:07:43.445816'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-06-23 20:07:43.523909'),
(9, 'auth', '0004_alter_user_username_opts', '2020-06-23 20:07:43.602021'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-06-23 20:07:45.040705'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-06-23 20:07:45.056757'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-06-23 20:07:45.103188'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-06-23 20:07:45.415618'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-06-23 20:07:45.572261'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-06-23 20:07:45.666770'),
(16, 'auth', '0011_update_proxy_permissions', '2020-06-23 20:07:45.713838'),
(17, 'sessions', '0001_initial', '2020-06-23 20:07:45.886057'),
(18, 'dashboard', '0001_initial', '2020-06-23 20:32:55.793104'),
(19, 'dashboard', '0002_bd_district', '2020-06-24 15:48:09.483745'),
(20, 'dashboard', '0003_dhaka_area', '2020-06-24 18:51:50.922017'),
(21, 'dashboard', '0004_bd_gender', '2020-06-25 11:40:22.274985');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('mlmw07o1e2qa55zd9h4dvxmmn971hqnb', 'MzlmNzhlNGI0MWI3NTUzNzJhYjdkYjI4MTE5ZGI1NDQzZWMwODZlMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlYjhjYmUyNjU4MzJjMzU3NDM5YzcwN2RhMTIyM2I2ODc0YWJhZWM5In0=', '2020-07-07 20:39:22.383730');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `dashboard_bangladesh`
--
ALTER TABLE `dashboard_bangladesh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_bd_district`
--
ALTER TABLE `dashboard_bd_district`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_bd_gender`
--
ALTER TABLE `dashboard_bd_gender`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_dhaka_area`
--
ALTER TABLE `dashboard_dhaka_area`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_bangladesh`
--
ALTER TABLE `dashboard_bangladesh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `dashboard_bd_district`
--
ALTER TABLE `dashboard_bd_district`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `dashboard_bd_gender`
--
ALTER TABLE `dashboard_bd_gender`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dashboard_dhaka_area`
--
ALTER TABLE `dashboard_dhaka_area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
