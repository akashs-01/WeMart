-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 30, 2021 at 07:00 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `v_mart`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_emailaddress`
--

DROP TABLE IF EXISTS `account_emailaddress`;
CREATE TABLE `account_emailaddress` (
  `id` int(11) NOT NULL,
  `email` varchar(254) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `primary` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `account_emailconfirmation`
--

DROP TABLE IF EXISTS `account_emailconfirmation`;
CREATE TABLE `account_emailconfirmation` (
  `id` int(11) NOT NULL,
  `created` datetime(6) NOT NULL,
  `sent` datetime(6) DEFAULT NULL,
  `key` varchar(64) NOT NULL,
  `email_address_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
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
(25, 'Can add site', 7, 'add_site'),
(26, 'Can change site', 7, 'change_site'),
(27, 'Can delete site', 7, 'delete_site'),
(28, 'Can view site', 7, 'view_site'),
(29, 'Can add email address', 8, 'add_emailaddress'),
(30, 'Can change email address', 8, 'change_emailaddress'),
(31, 'Can delete email address', 8, 'delete_emailaddress'),
(32, 'Can view email address', 8, 'view_emailaddress'),
(33, 'Can add email confirmation', 9, 'add_emailconfirmation'),
(34, 'Can change email confirmation', 9, 'change_emailconfirmation'),
(35, 'Can delete email confirmation', 9, 'delete_emailconfirmation'),
(36, 'Can view email confirmation', 9, 'view_emailconfirmation'),
(37, 'Can add social account', 10, 'add_socialaccount'),
(38, 'Can change social account', 10, 'change_socialaccount'),
(39, 'Can delete social account', 10, 'delete_socialaccount'),
(40, 'Can view social account', 10, 'view_socialaccount'),
(41, 'Can add social application', 11, 'add_socialapp'),
(42, 'Can change social application', 11, 'change_socialapp'),
(43, 'Can delete social application', 11, 'delete_socialapp'),
(44, 'Can view social application', 11, 'view_socialapp'),
(45, 'Can add social application token', 12, 'add_socialtoken'),
(46, 'Can change social application token', 12, 'change_socialtoken'),
(47, 'Can delete social application token', 12, 'delete_socialtoken'),
(48, 'Can view social application token', 12, 'view_socialtoken'),
(49, 'Can add address', 13, 'add_address'),
(50, 'Can change address', 13, 'change_address'),
(51, 'Can delete address', 13, 'delete_address'),
(52, 'Can view address', 13, 'view_address'),
(53, 'Can add coupon', 14, 'add_coupon'),
(54, 'Can change coupon', 14, 'change_coupon'),
(55, 'Can delete coupon', 14, 'delete_coupon'),
(56, 'Can view coupon', 14, 'view_coupon'),
(57, 'Can add item', 15, 'add_item'),
(58, 'Can change item', 15, 'change_item'),
(59, 'Can delete item', 15, 'delete_item'),
(60, 'Can view item', 15, 'view_item'),
(61, 'Can add order', 16, 'add_order'),
(62, 'Can change order', 16, 'change_order'),
(63, 'Can delete order', 16, 'delete_order'),
(64, 'Can view order', 16, 'view_order'),
(65, 'Can add post', 17, 'add_post'),
(66, 'Can change post', 17, 'change_post'),
(67, 'Can delete post', 17, 'delete_post'),
(68, 'Can view post', 17, 'view_post'),
(69, 'Can add user profile', 18, 'add_userprofile'),
(70, 'Can change user profile', 18, 'change_userprofile'),
(71, 'Can delete user profile', 18, 'delete_userprofile'),
(72, 'Can view user profile', 18, 'view_userprofile'),
(73, 'Can add refund', 19, 'add_refund'),
(74, 'Can change refund', 19, 'change_refund'),
(75, 'Can delete refund', 19, 'delete_refund'),
(76, 'Can view refund', 19, 'view_refund'),
(77, 'Can add payment', 20, 'add_payment'),
(78, 'Can change payment', 20, 'change_payment'),
(79, 'Can delete payment', 20, 'delete_payment'),
(80, 'Can view payment', 20, 'view_payment'),
(81, 'Can add order item', 21, 'add_orderitem'),
(82, 'Can change order item', 21, 'change_orderitem'),
(83, 'Can delete order item', 21, 'delete_orderitem'),
(84, 'Can view order item', 21, 'view_orderitem');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
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
(1, 'pbkdf2_sha256$260000$jz3olZv9xnFPnQSxep6Ly6$ZkY6YxYu5Ux571JMRfgah9gKrDO8TLcOfE0r3pnvgaA=', '2021-10-29 19:15:22.990137', 1, 'akash', '', '', 'akashusamaleti19@gmail.com', 1, 1, '2021-10-19 12:29:38.089848'),
(2, 'pbkdf2_sha256$260000$bPmPeBYluyvQqBBAHVOhpF$OeM9lYW+vRfH5arjE5Nmm0TACNAvmYW3wko37eNQKgo=', '2021-10-30 02:43:38.577287', 0, '12akash34', '', '', '', 0, 1, '2021-10-20 09:57:43.700829');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `core_address`
--

DROP TABLE IF EXISTS `core_address`;
CREATE TABLE `core_address` (
  `id` int(11) NOT NULL,
  `street_address` varchar(100) NOT NULL,
  `apartment_address` varchar(100) NOT NULL,
  `country` varchar(2) NOT NULL,
  `zip` varchar(100) NOT NULL,
  `address_type` varchar(1) NOT NULL,
  `default` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_address`
--

INSERT INTO `core_address` (`id`, `street_address`, `apartment_address`, `country`, `zip`, `address_type`, `default`, `user_id`) VALUES
(1, '483, padmanagar', 'evergreen apartment', 'IN', '421305', 'S', 1, 1),
(2, '483, padmanagar', 'evergreen apartment', 'IN', '421305', 'B', 1, 1),
(3, '483', 'padmanagar', 'IN', '421305', 'S', 0, 2),
(4, '483', 'padmanagar', 'IN', '421305', 'B', 0, 2),
(5, '483', 'padmanagar', 'IN', '421305', 'S', 1, 2),
(6, '483', 'padmanagar', 'IN', '421305', 'B', 1, 2),
(7, '483', 'padmanagar', 'IN', '421305', 'S', 0, 2),
(8, '403', 'padmanagar', 'IN', '421305', 'B', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `core_coupon`
--

DROP TABLE IF EXISTS `core_coupon`;
CREATE TABLE `core_coupon` (
  `id` int(11) NOT NULL,
  `code` varchar(15) NOT NULL,
  `amount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_coupon`
--

INSERT INTO `core_coupon` (`id`, `code`, `amount`) VALUES
(1, 'django100', 100),
(2, 'DIWALI2000', 2000);

-- --------------------------------------------------------

--
-- Table structure for table `core_item`
--

DROP TABLE IF EXISTS `core_item`;
CREATE TABLE `core_item` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `price` double NOT NULL,
  `discount_price` double DEFAULT NULL,
  `category` varchar(2) NOT NULL,
  `label` varchar(1) NOT NULL,
  `availabily` varchar(1) DEFAULT NULL,
  `slug` varchar(50) DEFAULT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_item`
--

INSERT INTO `core_item` (`id`, `title`, `price`, `discount_price`, `category`, `label`, `availabily`, `slug`, `description`, `image`) VALUES
(1, 'One Plus 9R', 39999, NULL, 'M', 'S', 'S', 'one-plus-9r', 'latest', 'One_Plus_9R39999.jpg'),
(2, 'Samsung Galaxy a20s', 13999, NULL, 'M', 'S', 'S', 'samsung-galaxy-a20s', 'awesome', 'samsung_galaxy_a20s13999.jpg'),
(3, 'Acer Aspire 3', 28578, NULL, 'L', 'P', 'S', 'acer-aspire-3', 'fast charge', 'Acer_Aspire_328578.jpg'),
(4, 'Asus Vivobook 15', 39999, NULL, 'L', 'D', '0', 'asus-vivobook-15', 'backlit keyboard', 'Asus_Vivobook_1539999.jpg'),
(5, 'Dell 14', 52290, NULL, 'L', 'P', '0', 'dell-14', 'slim', 'Dell_1452290.jpg'),
(6, 'Redmi Note 10 Pro', 17999, 17499, 'M', 'S', 'S', 'redmi-note-10-pro', '5.5 inch', 'Redmi_Note_10_Pro17999.jpg'),
(7, 'Realme xt', 14999, 12999, 'M', 'D', '0', 'realme-xt', '40mp camera', 'realme_xt14999.jpg'),
(8, 'HP Chromebook', 30999, 29000, 'L', 'P', 'S', 'hp-chromebook', '360 rotate', 'HP_Chromebook_30999.jpg'),
(9, 'Acer Predator', 116999, 109999, 'L', 'P', 'S', 'acer-predator', 'nitro speed', 'Acer_Predator_Helios_116999.jpg'),
(10, 'Dell Inspiron', 58000, 56000, 'L', 'P', 'S', 'dell-inspiron', 'lightweight', 'Dell_Inspiron_350159290.jpg'),
(11, 'Samsung galaxy Z', 64999, 60999, 'M', 'P', 'S', 'samsung-galaxy-z', 'flip bend', 'samsung_galaxy_z_flip_64999.jpg'),
(12, 'HP Pavillion', 50999, 49999, 'L', 'S', 'S', 'hp-pavillion', 'flip', 'HP_Pavilion_x_360_50999.jpg'),
(13, 'Mi Notebook', 56999, 54999, 'L', 'P', 'S', 'mi-notebook', 'slim', 'Mi_notebook_Pro_56999.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `core_order`
--

DROP TABLE IF EXISTS `core_order`;
CREATE TABLE `core_order` (
  `id` int(11) NOT NULL,
  `ref_code` varchar(20) DEFAULT NULL,
  `ordered` tinyint(1) NOT NULL,
  `start_date` datetime(6) NOT NULL,
  `ordered_date` datetime(6) NOT NULL,
  `being_received` tinyint(1) NOT NULL,
  `received` tinyint(1) NOT NULL,
  `refund_requested` tinyint(1) NOT NULL,
  `refund_granted` tinyint(1) NOT NULL,
  `billing_address_id` int(11) DEFAULT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `shipping_address_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_order`
--

INSERT INTO `core_order` (`id`, `ref_code`, `ordered`, `start_date`, `ordered_date`, `being_received`, `received`, `refund_requested`, `refund_granted`, `billing_address_id`, `coupon_id`, `payment_id`, `shipping_address_id`, `user_id`) VALUES
(1, 'e87e1srx7lilk48aru4g', 1, '2021-10-19 14:16:55.199314', '2021-10-19 14:16:55.199314', 0, 0, 0, 0, 2, NULL, 1, 1, 1),
(2, 'c3bt4z9gm2raydldi4y1', 1, '2021-10-19 19:04:24.184764', '2021-10-19 19:04:24.184764', 0, 0, 0, 0, 2, NULL, 2, 1, 1),
(3, 'ykwlchxzktz3wwc4iulk', 1, '2021-10-20 07:05:26.423692', '2021-10-20 07:05:26.423692', 0, 0, 0, 0, 2, NULL, 3, 1, 1),
(4, 'u55jg2t5htigwsrg422u', 1, '2021-10-20 07:08:05.794396', '2021-10-20 07:08:05.786391', 0, 0, 0, 0, 2, NULL, 4, 1, 1),
(5, 'dd14lx409juegiyhbkua', 1, '2021-10-20 07:12:57.612315', '2021-10-20 07:12:57.604297', 0, 0, 0, 0, 2, NULL, 5, 1, 1),
(6, 'wztka8h6w730xkgltuju', 1, '2021-10-20 07:14:02.641889', '2021-10-20 07:14:02.641889', 0, 0, 0, 0, 2, NULL, 6, 1, 1),
(7, 'wwpvh51xu51u0qzixbl2', 1, '2021-10-20 07:31:53.271461', '2021-10-20 07:31:53.271461', 0, 0, 0, 0, 2, NULL, 7, 1, 1),
(8, 'tx6q2gr7zlmeotqo53s9', 1, '2021-10-20 07:39:14.320468', '2021-10-20 07:39:14.320468', 0, 0, 0, 0, 2, NULL, 8, 1, 1),
(9, 'eqf4cw2etcc7lmbjvsgo', 1, '2021-10-20 08:01:31.872549', '2021-10-20 08:01:31.871547', 0, 0, 0, 0, 2, NULL, 9, 1, 1),
(10, 'u5qi13tea9dnvune1mgg', 1, '2021-10-20 08:12:56.916404', '2021-10-20 08:12:56.916404', 0, 0, 0, 0, 2, NULL, 10, 1, 1),
(11, 'efl2kw741nxdxxy623lf', 1, '2021-10-20 08:14:35.148275', '2021-10-20 08:14:35.147274', 0, 0, 0, 0, 2, NULL, 11, 1, 1),
(12, 'fs9wqqy2hhsgonx246e5', 1, '2021-10-20 08:16:42.448102', '2021-10-20 08:16:42.448102', 0, 0, 0, 0, 2, 1, 12, 1, 1),
(13, 'p1oqnt54xtyy9ydj37d7', 1, '2021-10-20 08:22:16.783784', '2021-10-20 08:22:16.782782', 0, 0, 0, 0, 2, 1, 14, 1, 1),
(14, 'bk2kbar04qzefruddh9e', 1, '2021-10-20 09:58:05.320358', '2021-10-20 09:58:05.312349', 0, 0, 1, 0, 4, NULL, 13, 3, 2),
(15, 'iazf1d5wzktb8v2my6bp', 1, '2021-10-20 10:58:57.698251', '2021-10-20 10:58:57.698251', 0, 0, 0, 0, 6, 1, 15, 5, 2),
(16, 'fd2ihgb55imq3unfvgyk', 1, '2021-10-29 15:49:43.289413', '2021-10-29 15:49:43.289413', 0, 0, 0, 0, 6, 2, 16, 5, 2),
(17, NULL, 0, '2021-10-29 17:37:52.084986', '2021-10-29 17:37:52.084986', 0, 0, 0, 0, NULL, NULL, NULL, NULL, 1),
(18, 'fxmdacq553wtulz7ewtv', 1, '2021-10-30 02:44:30.764887', '2021-10-30 02:44:30.764887', 0, 0, 0, 0, 8, 2, 17, 7, 2);

-- --------------------------------------------------------

--
-- Table structure for table `core_orderitem`
--

DROP TABLE IF EXISTS `core_orderitem`;
CREATE TABLE `core_orderitem` (
  `id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `ordered` tinyint(1) NOT NULL,
  `item_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_orderitem`
--

INSERT INTO `core_orderitem` (`id`, `quantity`, `ordered`, `item_id`, `user_id`) VALUES
(1, 2, 1, 1, 1),
(2, 1, 1, 3, 1),
(3, 1, 1, 2, 1),
(4, 1, 1, 3, 1),
(5, 1, 1, 2, 1),
(6, 3, 1, 3, 1),
(7, 1, 1, 2, 1),
(8, 1, 1, 3, 1),
(9, 1, 1, 3, 1),
(10, 2, 1, 3, 1),
(11, 2, 1, 3, 1),
(12, 2, 1, 1, 1),
(13, 2, 1, 2, 1),
(14, 3, 1, 2, 1),
(15, 3, 1, 3, 1),
(16, 1, 1, 3, 2),
(17, 1, 1, 1, 2),
(18, 2, 1, 3, 2),
(19, 3, 1, 1, 2),
(20, 2, 1, 10, 2),
(21, 2, 0, 1, 1),
(22, 2, 1, 3, 2),
(23, 1, 1, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `core_order_items`
--

DROP TABLE IF EXISTS `core_order_items`;
CREATE TABLE `core_order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `orderitem_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_order_items`
--

INSERT INTO `core_order_items` (`id`, `order_id`, `orderitem_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 3),
(4, 2, 4),
(5, 3, 5),
(6, 4, 6),
(7, 5, 7),
(8, 6, 8),
(9, 7, 9),
(10, 8, 10),
(11, 9, 11),
(12, 10, 12),
(13, 11, 13),
(14, 12, 14),
(15, 13, 15),
(16, 14, 16),
(17, 14, 17),
(18, 15, 18),
(19, 16, 19),
(20, 16, 20),
(21, 17, 21),
(22, 18, 22),
(23, 18, 23);

-- --------------------------------------------------------

--
-- Table structure for table `core_payment`
--

DROP TABLE IF EXISTS `core_payment`;
CREATE TABLE `core_payment` (
  `id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_payment`
--

INSERT INTO `core_payment` (`id`, `amount`, `timestamp`, `user_id`) VALUES
(1, 108576, '2021-10-19 15:59:11.724817', 1),
(2, 42577, '2021-10-20 06:51:01.703417', 1),
(3, 13999, '2021-10-20 07:05:48.781255', 1),
(4, 85734, '2021-10-20 07:08:46.737589', 1),
(5, 13999, '2021-10-20 07:13:27.599221', 1),
(6, 28578, '2021-10-20 07:14:26.660184', 1),
(7, 28578, '2021-10-20 07:32:11.418545', 1),
(8, 57156, '2021-10-20 07:39:31.936866', 1),
(9, 57156, '2021-10-20 08:02:15.610928', 1),
(10, 79998, '2021-10-20 08:13:09.692712', 1),
(11, 27998, '2021-10-20 08:14:48.942849', 1),
(12, 41897, '2021-10-20 08:17:18.231122', 1),
(13, 68577, '2021-10-20 09:59:02.848226', 2),
(14, 85634, '2021-10-20 10:58:06.274808', 1),
(15, 57056, '2021-10-20 11:00:27.612421', 2),
(16, 229997, '2021-10-29 16:13:18.287730', 2),
(17, 95155, '2021-10-30 02:46:10.916484', 2);

-- --------------------------------------------------------

--
-- Table structure for table `core_post`
--

DROP TABLE IF EXISTS `core_post`;
CREATE TABLE `core_post` (
  `id` int(11) NOT NULL,
  `title1` varchar(120) NOT NULL,
  `title2` varchar(100) DEFAULT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_post`
--

INSERT INTO `core_post` (`id`, `title1`, `title2`, `description`, `image`) VALUES
(1, 'SHOP ONLINE', 'Free Delivery', 'Get products delivered at your doorsteps', 'banner_01.png'),
(2, 'ELECTRONICS', 'Latest products', 'All latest mobiles and laptops with awesome features are available. All latest mobiles and laptops with awesome features are available', 'banner_03_SEtVbnQ.PNG');

-- --------------------------------------------------------

--
-- Table structure for table `core_refund`
--

DROP TABLE IF EXISTS `core_refund`;
CREATE TABLE `core_refund` (
  `id` int(11) NOT NULL,
  `reason` longtext NOT NULL,
  `accepted` tinyint(1) NOT NULL,
  `email` varchar(254) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `core_userprofile`
--

DROP TABLE IF EXISTS `core_userprofile`;
CREATE TABLE `core_userprofile` (
  `id` int(11) NOT NULL,
  `customer_id` varchar(50) DEFAULT NULL,
  `one_click_purchasing` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-10-19 14:02:40.276918', '1', 'One Plus 9R', 1, '[{\"added\": {}}]', 15, 1),
(2, '2021-10-19 14:05:05.128072', '2', 'Samsung Galaxy a20s', 1, '[{\"added\": {}}]', 15, 1),
(3, '2021-10-19 14:06:37.113352', '3', 'Acer Aspire 3', 1, '[{\"added\": {}}]', 15, 1),
(4, '2021-10-19 14:07:45.519792', '4', 'Asus Vivobook 15', 1, '[{\"added\": {}}]', 15, 1),
(5, '2021-10-19 14:09:47.215481', '1', 'One Plus 9R', 2, '[{\"changed\": {\"fields\": [\"Label\"]}}]', 15, 1),
(6, '2021-10-19 14:11:54.731315', '5', 'Dell 14', 1, '[{\"added\": {}}]', 15, 1),
(7, '2021-10-19 18:39:43.845107', '1', 'SHOP ONLINE', 1, '[{\"added\": {}}]', 17, 1),
(8, '2021-10-19 18:51:12.887117', '2', 'ELECTRONICS', 1, '[{\"added\": {}}]', 17, 1),
(9, '2021-10-19 19:00:33.575965', '2', 'ELECTRONICS', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 17, 1),
(10, '2021-10-20 08:16:28.976507', '1', 'django100', 1, '[{\"added\": {}}]', 14, 1),
(11, '2021-10-20 10:13:35.865540', '6', 'Redmi Note 10 Pro', 1, '[{\"added\": {}}]', 15, 1),
(12, '2021-10-20 10:14:24.208966', '7', 'Realme xt', 1, '[{\"added\": {}}]', 15, 1),
(13, '2021-10-20 10:14:42.375426', '4', 'Asus Vivobook 15', 2, '[{\"changed\": {\"fields\": [\"Availabily\"]}}]', 15, 1),
(14, '2021-10-20 10:18:31.095334', '8', 'HP Chromebook', 1, '[{\"added\": {}}]', 15, 1),
(15, '2021-10-20 10:19:28.234977', '9', 'Acer Predator', 1, '[{\"added\": {}}]', 15, 1),
(16, '2021-10-20 10:26:06.157031', '10', 'Dell Inspiron', 1, '[{\"added\": {}}]', 15, 1),
(17, '2021-10-20 10:27:10.471145', '11', 'Samsung galaxy Z', 1, '[{\"added\": {}}]', 15, 1),
(18, '2021-10-20 10:31:43.733291', '12', 'HP Pavillion', 1, '[{\"added\": {}}]', 15, 1),
(19, '2021-10-20 10:33:01.370650', '13', 'Mi Notebook', 1, '[{\"added\": {}}]', 15, 1),
(20, '2021-10-20 11:01:51.803439', '2', 'ELECTRONICS', 2, '[{\"changed\": {\"fields\": [\"Title2\", \"Description\"]}}]', 17, 1),
(21, '2021-10-29 15:56:07.891898', '10', 'Dell Inspiron', 2, '[{\"changed\": {\"fields\": [\"Discount price\"]}}]', 15, 1),
(22, '2021-10-29 16:01:32.382291', '11', 'Samsung galaxy Z', 2, '[{\"changed\": {\"fields\": [\"Discount price\"]}}]', 15, 1),
(23, '2021-10-29 16:01:51.140012', '12', 'HP Pavillion', 2, '[{\"changed\": {\"fields\": [\"Discount price\"]}}]', 15, 1),
(24, '2021-10-29 16:02:21.972226', '9', 'Acer Predator', 2, '[{\"changed\": {\"fields\": [\"Discount price\"]}}]', 15, 1),
(25, '2021-10-29 16:02:36.653038', '13', 'Mi Notebook', 2, '[{\"changed\": {\"fields\": [\"Discount price\"]}}]', 15, 1),
(26, '2021-10-29 16:03:01.407566', '6', 'Redmi Note 10 Pro', 2, '[{\"changed\": {\"fields\": [\"Discount price\"]}}]', 15, 1),
(27, '2021-10-29 16:03:19.566319', '7', 'Realme xt', 2, '[{\"changed\": {\"fields\": [\"Discount price\"]}}]', 15, 1),
(28, '2021-10-29 16:03:36.847200', '8', 'HP Chromebook', 2, '[{\"changed\": {\"fields\": [\"Discount price\"]}}]', 15, 1),
(29, '2021-10-29 16:09:52.976607', '2', 'DIWALI2000', 1, '[{\"added\": {}}]', 14, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(8, 'account', 'emailaddress'),
(9, 'account', 'emailconfirmation'),
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(13, 'core', 'address'),
(14, 'core', 'coupon'),
(15, 'core', 'item'),
(16, 'core', 'order'),
(21, 'core', 'orderitem'),
(20, 'core', 'payment'),
(17, 'core', 'post'),
(19, 'core', 'refund'),
(18, 'core', 'userprofile'),
(6, 'sessions', 'session'),
(7, 'sites', 'site'),
(10, 'socialaccount', 'socialaccount'),
(11, 'socialaccount', 'socialapp'),
(12, 'socialaccount', 'socialtoken');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
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
(1, 'contenttypes', '0001_initial', '2021-10-19 12:20:18.639914'),
(2, 'auth', '0001_initial', '2021-10-19 12:20:19.615164'),
(3, 'account', '0001_initial', '2021-10-19 12:20:19.903135'),
(4, 'account', '0002_email_max_length', '2021-10-19 12:20:19.935138'),
(5, 'admin', '0001_initial', '2021-10-19 12:20:20.127170'),
(6, 'admin', '0002_logentry_remove_auto_add', '2021-10-19 12:20:20.143160'),
(7, 'admin', '0003_logentry_add_action_flag_choices', '2021-10-19 12:20:20.151180'),
(8, 'contenttypes', '0002_remove_content_type_name', '2021-10-19 12:20:20.271174'),
(9, 'auth', '0002_alter_permission_name_max_length', '2021-10-19 12:20:20.367185'),
(10, 'auth', '0003_alter_user_email_max_length', '2021-10-19 12:20:20.399188'),
(11, 'auth', '0004_alter_user_username_opts', '2021-10-19 12:20:20.415196'),
(12, 'auth', '0005_alter_user_last_login_null', '2021-10-19 12:20:20.495197'),
(13, 'auth', '0006_require_contenttypes_0002', '2021-10-19 12:20:20.503201'),
(14, 'auth', '0007_alter_validators_add_error_messages', '2021-10-19 12:20:20.519201'),
(15, 'auth', '0008_alter_user_username_max_length', '2021-10-19 12:20:20.543205'),
(16, 'auth', '0009_alter_user_last_name_max_length', '2021-10-19 12:20:20.575207'),
(17, 'auth', '0010_alter_group_name_max_length', '2021-10-19 12:20:20.607210'),
(18, 'auth', '0011_update_proxy_permissions', '2021-10-19 12:20:20.623218'),
(19, 'auth', '0012_alter_user_first_name_max_length', '2021-10-19 12:20:20.648887'),
(20, 'core', '0001_initial', '2021-10-19 12:20:22.320504'),
(21, 'sessions', '0001_initial', '2021-10-19 12:20:22.376511'),
(22, 'sites', '0001_initial', '2021-10-19 12:20:22.425474'),
(23, 'sites', '0002_alter_domain_unique', '2021-10-19 12:20:22.458198'),
(24, 'socialaccount', '0001_initial', '2021-10-19 12:20:23.162627'),
(25, 'socialaccount', '0002_token_max_lengths', '2021-10-19 12:20:23.250626'),
(26, 'socialaccount', '0003_extra_data_default_dict', '2021-10-19 12:20:23.274651');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_site`
--

INSERT INTO `django_site` (`id`, `domain`, `name`) VALUES
(1, 'example.com', 'example.com');

-- --------------------------------------------------------

--
-- Table structure for table `socialaccount_socialaccount`
--

DROP TABLE IF EXISTS `socialaccount_socialaccount`;
CREATE TABLE `socialaccount_socialaccount` (
  `id` int(11) NOT NULL,
  `provider` varchar(30) NOT NULL,
  `uid` varchar(191) NOT NULL,
  `last_login` datetime(6) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `extra_data` longtext NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `socialaccount_socialapp`
--

DROP TABLE IF EXISTS `socialaccount_socialapp`;
CREATE TABLE `socialaccount_socialapp` (
  `id` int(11) NOT NULL,
  `provider` varchar(30) NOT NULL,
  `name` varchar(40) NOT NULL,
  `client_id` varchar(191) NOT NULL,
  `secret` varchar(191) NOT NULL,
  `key` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `socialaccount_socialapp_sites`
--

DROP TABLE IF EXISTS `socialaccount_socialapp_sites`;
CREATE TABLE `socialaccount_socialapp_sites` (
  `id` int(11) NOT NULL,
  `socialapp_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `socialaccount_socialtoken`
--

DROP TABLE IF EXISTS `socialaccount_socialtoken`;
CREATE TABLE `socialaccount_socialtoken` (
  `id` int(11) NOT NULL,
  `token` longtext NOT NULL,
  `token_secret` longtext NOT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `account_id` int(11) NOT NULL,
  `app_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `account_emailaddress_user_id_2c513194_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`),
  ADD KEY `account_emailconfirm_email_address_id_5b7f8c58_fk_account_e` (`email_address_id`);

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
-- Indexes for table `core_address`
--
ALTER TABLE `core_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_address_user_id_7681a39c_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `core_coupon`
--
ALTER TABLE `core_coupon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_item`
--
ALTER TABLE `core_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_item_slug_07f502d0` (`slug`);

--
-- Indexes for table `core_order`
--
ALTER TABLE `core_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_order_payment_id_e5a26a3c_fk_core_payment_id` (`payment_id`),
  ADD KEY `core_order_shipping_address_id_8c054f15_fk_core_address_id` (`shipping_address_id`),
  ADD KEY `core_order_user_id_b03bbffd_fk_auth_user_id` (`user_id`),
  ADD KEY `core_order_billing_address_id_b33cde99_fk_core_address_id` (`billing_address_id`),
  ADD KEY `core_order_coupon_id_bade53ba_fk_core_coupon_id` (`coupon_id`);

--
-- Indexes for table `core_orderitem`
--
ALTER TABLE `core_orderitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_orderitem_item_id_3b7d0c2e_fk_core_item_id` (`item_id`),
  ADD KEY `core_orderitem_user_id_323fe695_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `core_order_items`
--
ALTER TABLE `core_order_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `core_order_items_order_id_orderitem_id_f9cea05f_uniq` (`order_id`,`orderitem_id`),
  ADD KEY `core_order_items_orderitem_id_e44f86b6_fk_core_orderitem_id` (`orderitem_id`);

--
-- Indexes for table `core_payment`
--
ALTER TABLE `core_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_payment_user_id_274e164a_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `core_post`
--
ALTER TABLE `core_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_refund`
--
ALTER TABLE `core_refund`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_refund_order_id_7fe621fa_fk_core_order_id` (`order_id`);

--
-- Indexes for table `core_userprofile`
--
ALTER TABLE `core_userprofile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

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
-- Indexes for table `django_site`
--
ALTER TABLE `django_site`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_site_domain_a2e37b91_uniq` (`domain`);

--
-- Indexes for table `socialaccount_socialaccount`
--
ALTER TABLE `socialaccount_socialaccount`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `socialaccount_socialaccount_provider_uid_fc810c6e_uniq` (`provider`,`uid`),
  ADD KEY `socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `socialaccount_socialapp`
--
ALTER TABLE `socialaccount_socialapp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socialaccount_socialapp_sites`
--
ALTER TABLE `socialaccount_socialapp_sites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `socialaccount_socialapp_sites_socialapp_id_site_id_71a9a768_uniq` (`socialapp_id`,`site_id`),
  ADD KEY `socialaccount_socialapp_sites_site_id_2579dee5_fk_django_site_id` (`site_id`);

--
-- Indexes for table `socialaccount_socialtoken`
--
ALTER TABLE `socialaccount_socialtoken`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq` (`app_id`,`account_id`),
  ADD KEY `socialaccount_social_account_id_951f210e_fk_socialacc` (`account_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
-- AUTO_INCREMENT for table `core_address`
--
ALTER TABLE `core_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `core_coupon`
--
ALTER TABLE `core_coupon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `core_item`
--
ALTER TABLE `core_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `core_order`
--
ALTER TABLE `core_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `core_orderitem`
--
ALTER TABLE `core_orderitem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `core_order_items`
--
ALTER TABLE `core_order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `core_payment`
--
ALTER TABLE `core_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `core_post`
--
ALTER TABLE `core_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `core_refund`
--
ALTER TABLE `core_refund`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `core_userprofile`
--
ALTER TABLE `core_userprofile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `django_site`
--
ALTER TABLE `django_site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `socialaccount_socialaccount`
--
ALTER TABLE `socialaccount_socialaccount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `socialaccount_socialapp`
--
ALTER TABLE `socialaccount_socialapp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `socialaccount_socialapp_sites`
--
ALTER TABLE `socialaccount_socialapp_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `socialaccount_socialtoken`
--
ALTER TABLE `socialaccount_socialtoken`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account_emailaddress`
--
ALTER TABLE `account_emailaddress`
  ADD CONSTRAINT `account_emailaddress_user_id_2c513194_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `account_emailconfirmation`
--
ALTER TABLE `account_emailconfirmation`
  ADD CONSTRAINT `account_emailconfirm_email_address_id_5b7f8c58_fk_account_e` FOREIGN KEY (`email_address_id`) REFERENCES `account_emailaddress` (`id`);

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

--
-- Constraints for table `core_address`
--
ALTER TABLE `core_address`
  ADD CONSTRAINT `core_address_user_id_7681a39c_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `core_order`
--
ALTER TABLE `core_order`
  ADD CONSTRAINT `core_order_billing_address_id_b33cde99_fk_core_address_id` FOREIGN KEY (`billing_address_id`) REFERENCES `core_address` (`id`),
  ADD CONSTRAINT `core_order_coupon_id_bade53ba_fk_core_coupon_id` FOREIGN KEY (`coupon_id`) REFERENCES `core_coupon` (`id`),
  ADD CONSTRAINT `core_order_payment_id_e5a26a3c_fk_core_payment_id` FOREIGN KEY (`payment_id`) REFERENCES `core_payment` (`id`),
  ADD CONSTRAINT `core_order_shipping_address_id_8c054f15_fk_core_address_id` FOREIGN KEY (`shipping_address_id`) REFERENCES `core_address` (`id`),
  ADD CONSTRAINT `core_order_user_id_b03bbffd_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `core_orderitem`
--
ALTER TABLE `core_orderitem`
  ADD CONSTRAINT `core_orderitem_item_id_3b7d0c2e_fk_core_item_id` FOREIGN KEY (`item_id`) REFERENCES `core_item` (`id`),
  ADD CONSTRAINT `core_orderitem_user_id_323fe695_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `core_order_items`
--
ALTER TABLE `core_order_items`
  ADD CONSTRAINT `core_order_items_order_id_c5dde6c1_fk_core_order_id` FOREIGN KEY (`order_id`) REFERENCES `core_order` (`id`),
  ADD CONSTRAINT `core_order_items_orderitem_id_e44f86b6_fk_core_orderitem_id` FOREIGN KEY (`orderitem_id`) REFERENCES `core_orderitem` (`id`);

--
-- Constraints for table `core_payment`
--
ALTER TABLE `core_payment`
  ADD CONSTRAINT `core_payment_user_id_274e164a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `core_refund`
--
ALTER TABLE `core_refund`
  ADD CONSTRAINT `core_refund_order_id_7fe621fa_fk_core_order_id` FOREIGN KEY (`order_id`) REFERENCES `core_order` (`id`);

--
-- Constraints for table `core_userprofile`
--
ALTER TABLE `core_userprofile`
  ADD CONSTRAINT `core_userprofile_user_id_5141ad90_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `socialaccount_socialaccount`
--
ALTER TABLE `socialaccount_socialaccount`
  ADD CONSTRAINT `socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `socialaccount_socialapp_sites`
--
ALTER TABLE `socialaccount_socialapp_sites`
  ADD CONSTRAINT `socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc` FOREIGN KEY (`socialapp_id`) REFERENCES `socialaccount_socialapp` (`id`),
  ADD CONSTRAINT `socialaccount_socialapp_sites_site_id_2579dee5_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`);

--
-- Constraints for table `socialaccount_socialtoken`
--
ALTER TABLE `socialaccount_socialtoken`
  ADD CONSTRAINT `socialaccount_social_account_id_951f210e_fk_socialacc` FOREIGN KEY (`account_id`) REFERENCES `socialaccount_socialaccount` (`id`),
  ADD CONSTRAINT `socialaccount_social_app_id_636a42d7_fk_socialacc` FOREIGN KEY (`app_id`) REFERENCES `socialaccount_socialapp` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
