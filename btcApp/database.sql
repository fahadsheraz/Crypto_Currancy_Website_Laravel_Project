-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 14, 2020 at 12:34 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bitmine`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_site`
--

CREATE TABLE `about_site` (
  `id` int(1) NOT NULL,
  `about` text DEFAULT NULL,
  `terms` text DEFAULT NULL,
  `privacy_policy` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about_site`
--

INSERT INTO `about_site` (`id`, `about`, `terms`, `privacy_policy`, `created_at`, `updated_at`) VALUES
(1, '<p style=\"text-align: justify;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p style=\"text-align: justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humours.</p>', '<p style=\"text-align: justify;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p style=\"text-align: justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humours.</p>', '<p style=\"text-align: justify;\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p style=\"text-align: justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humours.</p>', '2020-02-09 08:42:14', '2020-02-09 07:42:14');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$XH3iJ2/4W6l0342WIW0hheV6N635XmpGGbOx3dofQsq0TSgNtdKYO', '', '2020-02-13 14:03:56', '2020-02-13 13:03:56');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `seen` int(2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `id` int(11) NOT NULL,
  `country` varchar(100) DEFAULT NULL,
  `currency` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `symbol` varchar(100) DEFAULT NULL,
  `rate` float DEFAULT NULL,
  `status` int(2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`id`, `country`, `currency`, `name`, `symbol`, `rate`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Albania', 'Leke', 'ALL', 'Lek', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(2, 'America', 'Dollars', 'USD', '$', 1, 1, '2020-04-23 14:05:15', '2020-04-23 13:05:15'),
(3, 'Afghanistan', 'Afghanis', 'AFN', '؋', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(4, 'Argentina', 'Pesos', 'ARS', '$', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(5, 'Aruba', 'Guilders', 'AWG', 'ƒ', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(6, 'Australia', 'Dollars', 'AUD', '$', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(7, 'Azerbaijan', 'New Manats', 'AZN', 'ман', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(8, 'Bahamas', 'Dollars', 'BSD', '$', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(9, 'Barbados', 'Dollars', 'BBD', '$', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(10, 'Belarus', 'Rubles', 'BYR', 'p.', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(11, 'Belgium', 'Euro', 'EUR', '€', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(12, 'Beliz', 'Dollars', 'BZD', 'BZ$', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(13, 'Bermuda', 'Dollars', 'BMD', '$', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(14, 'Bolivia', 'Bolivianos', 'BOB', '$b', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(15, 'Bosnia and Herzegovina', 'Convertible Marka', 'BAM', 'KM', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(16, 'Botswana', 'Pula', 'BWP', 'P', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(17, 'Bulgaria', 'Leva', 'BGN', 'лв', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(18, 'Brazil', 'Reais', 'BRL', 'R$', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(19, 'Britain (United Kingdom)', 'Pounds', 'GBP', '£', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(20, 'Brunei Darussalam', 'Dollars', 'BND', '$', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(21, 'Cambodia', 'Riels', 'KHR', '៛', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(22, 'Canada', 'Dollars', 'CAD', '$', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(23, 'Cayman Islands', 'Dollars', 'KYD', '$', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(24, 'Chile', 'Pesos', 'CLP', '$', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(25, 'China', 'Yuan Renminbi', 'CNY', '¥', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(26, 'Colombia', 'Pesos', 'COP', '$', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(27, 'Costa Rica', 'Colón', 'CRC', '₡', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(28, 'Croatia', 'Kuna', 'HRK', 'kn', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(29, 'Cuba', 'Pesos', 'CUP', '₱', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(30, 'Cyprus', 'Euro', 'EUR', '€', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(31, 'Czech Republic', 'Koruny', 'CZK', 'Kč', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(32, 'Denmark', 'Kroner', 'DKK', 'kr', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(33, 'Dominican Republic', 'Pesos', 'DOP ', 'RD$', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(34, 'East Caribbean', 'Dollars', 'XCD', '$', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(35, 'Egypt', 'Pounds', 'EGP', '£', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(36, 'El Salvador', 'Colones', 'SVC', '$', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(37, 'England (United Kingdom)', 'Pounds', 'GBP', '£', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(38, 'Euro', 'Euro', 'EUR', '€', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(39, 'Falkland Islands', 'Pounds', 'FKP', '£', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(40, 'Fiji', 'Dollars', 'FJD', '$', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(41, 'France', 'Euro', 'EUR', '€', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(42, 'Ghana', 'Cedis', 'GHC', '¢', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(43, 'Gibraltar', 'Pounds', 'GIP', '£', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(44, 'Greece', 'Euro', 'EUR', '€', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(45, 'Guatemala', 'Quetzales', 'GTQ', 'Q', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(46, 'Guernsey', 'Pounds', 'GGP', '£', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(47, 'Guyana', 'Dollars', 'GYD', '$', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(48, 'Holland (Netherlands)', 'Euro', 'EUR', '€', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(49, 'Honduras', 'Lempiras', 'HNL', 'L', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(50, 'Hong Kong', 'Dollars', 'HKD', '$', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(51, 'Hungary', 'Forint', 'HUF', 'Ft', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(52, 'Iceland', 'Kronur', 'ISK', 'kr', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(53, 'India', 'Rupees', 'INR', 'Rp', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(54, 'Indonesia', 'Rupiahs', 'IDR', 'Rp', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(55, 'Iran', 'Rials', 'IRR', '﷼', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(56, 'Ireland', 'Euro', 'EUR', '€', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(57, 'Isle of Man', 'Pounds', 'IMP', '£', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(58, 'Israel', 'New Shekels', 'ILS', '₪', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(59, 'Italy', 'Euro', 'EUR', '€', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(60, 'Jamaica', 'Dollars', 'JMD', 'J$', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(61, 'Japan', 'Yen', 'JPY', '¥', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(62, 'Jersey', 'Pounds', 'JEP', '£', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(63, 'Kazakhstan', 'Tenge', 'KZT', 'лв', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(64, 'Korea (North)', 'Won', 'KPW', '₩', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(65, 'Korea (South)', 'Won', 'KRW', '₩', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(66, 'Kyrgyzstan', 'Soms', 'KGS', 'лв', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(67, 'Laos', 'Kips', 'LAK', '₭', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(68, 'Latvia', 'Lati', 'LVL', 'Ls', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(69, 'Lebanon', 'Pounds', 'LBP', '£', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(70, 'Liberia', 'Dollars', 'LRD', '$', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(71, 'Liechtenstein', 'Switzerland Francs', 'CHF', 'CHF', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(72, 'Lithuania', 'Litai', 'LTL', 'Lt', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(73, 'Luxembourg', 'Euro', 'EUR', '€', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(74, 'Macedonia', 'Denars', 'MKD', 'ден', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(75, 'Malaysia', 'Ringgits', 'MYR', 'RM', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(76, 'Malta', 'Euro', 'EUR', '€', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(77, 'Mauritius', 'Rupees', 'MUR', '₨', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(78, 'Mexico', 'Pesos', 'MXN', '$', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(79, 'Mongolia', 'Tugriks', 'MNT', '₮', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(80, 'Mozambique', 'Meticais', 'MZN', 'MT', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(81, 'Namibia', 'Dollars', 'NAD', '$', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(82, 'Nepal', 'Rupees', 'NPR', '₨', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(83, 'Netherlands Antilles', 'Guilders', 'ANG', 'ƒ', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(84, 'Netherlands', 'Euro', 'EUR', '€', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(85, 'New Zealand', 'Dollars', 'NZD', '$', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(86, 'Nicaragua', 'Cordobas', 'NIO', 'C$', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(87, 'Nigeria', 'Nairas', 'NGN', '₦', 390, 0, '2020-04-23 14:05:15', '2020-04-23 13:05:15'),
(88, 'North Korea', 'Won', 'KPW', '₩', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(89, 'Norway', 'Krone', 'NOK', 'kr', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(90, 'Oman', 'Rials', 'OMR', '﷼', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(91, 'Pakistan', 'Rupees', 'PKR', '₨', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(92, 'Panama', 'Balboa', 'PAB', 'B/.', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(93, 'Paraguay', 'Guarani', 'PYG', 'Gs', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(94, 'Peru', 'Nuevos Soles', 'PEN', 'S/.', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(95, 'Philippines', 'Pesos', 'PHP', 'Php', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(96, 'Poland', 'Zlotych', 'PLN', 'zł', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(97, 'Qatar', 'Rials', 'QAR', '﷼', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(98, 'Romania', 'New Lei', 'RON', 'lei', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(99, 'Russia', 'Rubles', 'RUB', 'руб', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(100, 'Saint Helena', 'Pounds', 'SHP', '£', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(101, 'Saudi Arabia', 'Riyals', 'SAR', '﷼', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(102, 'Serbia', 'Dinars', 'RSD', 'Дин.', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(103, 'Seychelles', 'Rupees', 'SCR', '₨', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(104, 'Singapore', 'Dollars', 'SGD', '$', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(105, 'Slovenia', 'Euro', 'EUR', '€', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(106, 'Solomon Islands', 'Dollars', 'SBD', '$', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(107, 'Somalia', 'Shillings', 'SOS', 'S', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(108, 'South Africa', 'Rand', 'ZAR', 'R', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(109, 'South Korea', 'Won', 'KRW', '₩', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(110, 'Spain', 'Euro', 'EUR', '€', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(111, 'Sri Lanka', 'Rupees', 'LKR', '₨', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(112, 'Sweden', 'Kronor', 'SEK', 'kr', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(113, 'Switzerland', 'Francs', 'CHF', 'CHF', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(114, 'Suriname', 'Dollars', 'SRD', '$', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(115, 'Syria', 'Pounds', 'SYP', '£', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(116, 'Taiwan', 'New Dollars', 'TWD', 'NT$', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(117, 'Thailand', 'Baht', 'THB', '฿', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(118, 'Trinidad and Tobago', 'Dollars', 'TTD', 'TT$', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(119, 'Turkey', 'Lira', 'TRY', 'TL', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(120, 'Turkey', 'Liras', 'TRL', '£', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(121, 'Tuvalu', 'Dollars', 'TVD', '$', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(122, 'Ukraine', 'Hryvnia', 'UAH', '₴', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(123, 'United Kingdom', 'Pounds', 'GBP', '£', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(124, 'United States of America', 'Dollars', 'USD', '$', NULL, 0, '2020-04-23 14:02:54', '2020-04-23 13:02:54'),
(125, 'Uruguay', 'Pesos', 'UYU', '$U', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(126, 'Uzbekistan', 'Sums', 'UZS', 'лв', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(127, 'Vatican City', 'Euro', 'EUR', '€', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(128, 'Venezuela', 'Bolivares Fuertes', 'VEF', 'Bs', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(129, 'Vietnam', 'Dong', 'VND', '₫', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(130, 'Yemen', 'Rials', 'YER', '﷼', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(131, 'Zimbabwe', 'Zimbabwe Dollars', 'ZWD', 'Z$', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00'),
(132, 'India', 'Rupees', 'INR', '₹', NULL, 0, '2020-03-31 08:28:57', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `gateway_id` int(11) DEFAULT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usd` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btc_amo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btc_wallet` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trx` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secret` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `try` int(11) NOT NULL DEFAULT 0,
  `txn_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `etemplates`
--

CREATE TABLE `etemplates` (
  `id` int(10) UNSIGNED NOT NULL,
  `esender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emessage` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `smsapi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `etemplates`
--

INSERT INTO `etemplates` (`id`, `esender`, `mobile`, `emessage`, `smsapi`, `created_at`, `updated_at`) VALUES
(1, 'support@boomchart.com.ng', '+1234567890', '<p>&nbsp;</p>\r\n<div class=\"wrapper\" style=\"background-color: #f2f2f2;\">\r\n<table id=\"emb-email-header-container\" class=\"header\" style=\"border-collapse: collapse; table-layout: fixed; margin-left: auto; margin-right: auto;\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td style=\"padding: 0; width: 600px;\"><br />\r\n<div class=\"header__logo emb-logo-margin-box\" style=\"font-size: 26px; line-height: 32px; color: #c3ced9; font-family: Roboto,Tahoma,sans-serif; margin: 6px 20px 20px 20px;\"></div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<br />\r\n<table class=\"layout layout--no-gutter\" style=\"border-collapse: collapse; table-layout: fixed; margin-left: auto; margin-right: auto; overflow-wrap: break-word; word-wrap: break-word; word-break: break-word; background-color: #ffffff;\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td class=\"column\" style=\"padding: 0; text-align: left; vertical-align: top; color: #60666d; font-size: 14px; line-height: 21px; font-family: sans-serif; width: 600px;\"><br />\r\n<div style=\"margin-left: 20px; margin-right: 20px;\"><span style=\"font-size: large;\">Hi {{name}},<br /></span>\r\n<p><strong>{{message}}</strong></p>\r\n</div>\r\n<div style=\"margin-left: 20px; margin-right: 20px; margin-bottom: 24px;\"><br />\r\n<p class=\"size-14\" style=\"margin-top: 0; margin-bottom: 0; font-size: 14px; line-height: 21px;\">Thanks,<br /><strong>BOOMCHART</strong></p>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>', 'https://api.infobip.com/api/v3/sendsms/plain?user=****&password=****&sender=LetsMine&SMSText={{message}}&GSM={{number}}&type=longSMS', '2018-01-09 23:45:09', '2020-02-13 08:34:29');

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id` int(32) NOT NULL,
  `question` text NOT NULL,
  `answer` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(43, 'What is Bitclub?', '<p><a href=\"https://beta.companieshouse.gov.uk/company/12378300\" target=\"blank\">Bitclub</a> is a registered digital asset investment firm based in the UK. The platform, which includes advanced basic and technical analysis at the source of high return performance, offers high &amp; fixed interest return. Aiming for success with its international investor network, experienced team, privileged information from business and technology world; Bynamic stands out from its competitors with its proven quality and ease of use. The company, which is managed under the leadership of people who think and foresee the future, is committed to achieving high returns from well-diversified portfolios and prioritizing clients.</p>', '2020-02-18 22:40:26', '2020-02-18 21:40:26'),
(44, 'Guaranteed interest returns, but how?', '<p>Digital assets are a class of assets considered dangerous and inconvenient. Many reasons such as liquidity, money laundering accusation, uncertainty of regulation, access restriction, volatile markets, functionality inquiries reduce trust in these assets. We believe that the risk factor should be eliminated for all people who believe that finance will rise on distributed systems. That\'s why we offer high interest returns to platform investors. With careful and detailed examination of market conditions, daily trading volume, expectations; we change our portfolio distribution and adjust our investment strategy. With this active fund management, you enjoy the fixed interest rate return on the user side.</p>', '2020-02-18 22:41:05', '2020-02-18 21:41:05'),
(45, 'What are company principles?', '<p>Successful investment management companies base their business on a core investment philosophy, and Bynamic is no different. Although we offer innovative and specific strategies through digital asset funds, an overarching theme runs through the investment guidance we provide to clients&mdash; focus on those things within your control. There are basically four principles that we attach great importance to: <br /><br /><strong>1) Create clear, appropriate investment goals:</strong> An appropriate investment goal should be measureable and attainable. Success should not depend on outsize investment returns or impractical saving or spending requirements. <br /><br /><strong>2) Develop a suitable asset allocation using broadly diversified funds: </strong>A sound investment strategy starts with an asset allocation befitting the portfolio\'s objective. The allocation should be built upon reasonable expectations for risk and returns and use diversified investments to avoid exposure to unnecessary risks. <br /><br /><strong>3) Minimize cost: </strong>Markets are unpredictable. Costs are forever. The lower your costs, the greater your share of an investment\'s return. And research suggests that lower-cost investments have tended to outperform higher-cost alternatives. To hold onto even more of your return, manage for efficiency. You can\'t control the markets, but you can control the bite of costs and efficiency. <br /><br /><strong>4) Maintain perspective and long-term discipline: </strong>Investing can provoke strong emotions. In the face of market turmoil, some investors may find themselves making impulsive decisions or, conversely, becoming paralyzed, unable to implement an investment strategy or rebalance a portfolio as needed. Discipline and perspective can help them remain committed to a long-term investment program through periods of market uncertainty.</p>', '2020-02-18 22:41:41', '2020-02-18 21:41:41'),
(46, 'What are digital assets and how are they valued?', '<p>Digital assets distributed ledger based electronic means of exchanges. Transactions involving them are secured by cryptography, and they have dedicated servers for verification of transactions and the creation of extra units. The most popular of them are Bitcoin, Ethereum, Litecoin, etc. All digital assets are valued by price action, and as a result, almost total control is in the hand of the investing public.</p>', '2020-02-18 22:43:17', '2020-02-18 21:43:17'),
(50, 'How can i ask for support?', '<p>We are here to help you with any problems and questions you may encounter while using the platform and during your investment experience. You can always contact or turn the situation into an opportunity</p>', '2020-02-18 21:44:52', '2020-02-18 21:44:52');

-- --------------------------------------------------------

--
-- Table structure for table `gateways`
--

CREATE TABLE `gateways` (
  `id` int(10) UNSIGNED NOT NULL,
  `main_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gateimg` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `minamo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maxamo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fixed_charge` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percent_charge` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gateways`
--

INSERT INTO `gateways` (`id`, `main_name`, `name`, `gateimg`, `minamo`, `maxamo`, `fixed_charge`, `percent_charge`, `rate`, `val1`, `val2`, `status`, `created_at`, `updated_at`) VALUES
(101, 'PayPal', 'PayPal', 'paypal.png', '5', '1000', '0.511', '2.52', '80', 'melindadavies318@gmail.comq', '', 1, NULL, '2018-06-21 10:59:34'),
(102, 'PerfectMoney', 'Perfect Money', 'perfectmoney.png', '20', '20000', '2', '1', '80', 'U5376900', 'G079qn4Q7XATZBqyoCkBteGRg', 1, NULL, '2018-05-20 10:58:59'),
(103, 'Stripe', 'Stripe', 'stripe.png', '20', '20000', '2', '1', '80', 'sk_test_4eC39HqLyjWDarjtT1zdp7dc', 'G079qn4Q7XATZBqyoCkBteGRg', 1, NULL, '2018-05-20 10:58:59'),
(104, 'Skrill', 'Skrill', 'skrill.png', '10', '50000', '3', '3', '80', 'demoqco@sun-fish.com', 'skrill', 1, NULL, '2018-05-20 11:01:09'),
(108, 'Flutterwave', 'Flutterwave', 'flutterwave.png', '10', '50000', '3', '3', '80', 'FLWPUBK-9d9b4497a12c8226930c91c8cb23b81b-X', 'FLWSECK-9e6d77c844c0533ca612bef7539c2727-X', 1, NULL, '2018-05-20 11:01:09'),
(501, 'Blockchain.info', 'Blockchain', 'blockchain.png', '1', '20000', '1', '0.5', '80', 'a5f1cf3b6b418fc6304ff7e186041b73c19c2d3e16dedac6c1cafa64704d1e2e', 'xpub6CjfQJqY6Ctz1ccjTpVR7NAqKAKgJ5XDbpbxM2MTRUhznBXoE7Lo8NW749FNZheLfC9EcqAh2RRRtjbQ2ztxXJmiwVnQZNWJxgfeFSphpQM', 1, NULL, '2020-02-09 21:33:48'),
(505, 'CoinPayment - BTC', 'CoinPayment', 'coinpayment.png', '1', '50000', '0.51', '2.52', '80', '247f2564ab8cfc665ef40e8be997443a3c372c022f3cc7d6afe0b5d35ad2f684', '757E7Bd3837B28fe26df639fDf3A6f717934cd7CeE2Ca280C806126455bd69C1', 1, NULL, '2018-05-31 09:38:33');

-- --------------------------------------------------------

--
-- Table structure for table `logo`
--

CREATE TABLE `logo` (
  `id` int(32) NOT NULL,
  `image_link` varchar(128) NOT NULL,
  `image_link2` varchar(32) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logo`
--

INSERT INTO `logo` (`id`, `image_link`, `image_link2`, `created_at`, `updated_at`) VALUES
(1, 'images/logo_1588143489.png', 'images/favicon_1582498359.jpg', '2020-04-29 06:58:09', '2020-04-29 05:58:09');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(32) NOT NULL,
  `title` varchar(128) NOT NULL,
  `content` text NOT NULL,
  `status` int(2) NOT NULL DEFAULT 1,
  `created_at` varchar(32) NOT NULL,
  `updated_at` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `content`, `status`, `created_at`, `updated_at`) VALUES
(4, 'AML Policy', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages</p>', 1, '2019-07-31 11:43:14', '2019-11-11 01:21:30'),
(6, 'Diversity', '<header>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>&nbsp;</div>\r\n</div>\r\n<div>\r\n<div>\r\n<div>\r\n<h1>Diversity</h1>\r\n<p>Individuals. Ideas. Inspiration. Yes, we\'re open</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</header>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div data-nn-conditional=\"\">\r\n<div>\r\n<p>Diversity and inclusion matter in our business. An inclusive and diverse workforce makes us better leaders and contributes to a more innovative, dynamic and, ultimately, more successful company. And, variety helps us meet the needs of our diverse client base.</p>\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div>\r\n<div data-nn-conditional=\"\">\r\n<h2 id=\"col1textimage\">Inclusiveness</h2>\r\n<div>\r\n<p>We promote inclusion and encourage open dialogue to draw out everyone\'s opinions and perspectives. We recognize a diverse range of contributions to keep our people energetic, engaged and inspired. And we are a signatory to the UN Standards of Conduct for Business regarding tackling LGBTI discrimination around the world.</p>\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div>\r\n<div>\r\n<div data-nn-conditional=\"\">\r\n<h2 id=\"col2textimage\">Flexibility</h2>\r\n<div>\r\n<p>We offer a modern, flexible working environment. We work where and how it\'s most appropriate according to individual, role and team requirements.</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div>\r\n<div>&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 1, '2020-02-15 23:02:32', '2020-02-16 20:47:41'),
(7, 'Sponsoring', '<div class=\"pageheadline pageheadline__base\">\r\n<h2 class=\"pageheadline__title\"><span class=\"pageheadline__hl pageheadline__hl--xsmall\">The big picture</span></h2>\r\n</div>\r\n<div class=\"leadtext leadtext__base\">\r\n<div class=\"leadtext__rte\">\r\n<p>We&rsquo;re passionate about supporting the places where we live and work. Through our long-standing sponsorships of motor sports and contemporary art, we connect with communities in new and exciting ways every day. It&rsquo;s our way of understanding how the world works, one pit stop and brush stroke at a time.</p>\r\n</div>\r\n</div>', 1, '2020-02-15 23:06:08', '2020-02-15 23:06:08');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(11) NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plan`
--

CREATE TABLE `plan` (
  `id` int(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `percent` varchar(32) NOT NULL,
  `duration` varchar(128) NOT NULL,
  `period` varchar(32) NOT NULL,
  `min_deposit` varchar(128) NOT NULL,
  `amount` varchar(128) NOT NULL,
  `status` int(2) NOT NULL,
  `ref_percent` varchar(32) NOT NULL,
  `hashrate` varchar(64) NOT NULL,
  `image` varchar(32) DEFAULT NULL,
  `upgrade` varchar(32) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plan`
--

INSERT INTO `plan` (`id`, `name`, `percent`, `duration`, `period`, `min_deposit`, `amount`, `status`, `ref_percent`, `hashrate`, `image`, `upgrade`, `created_at`, `updated_at`) VALUES
(6, 'Starter pack', '2.5', '1', 'month', '0.0005', '0.001', 1, '2', '5Ph/s', 'plan_1588144283.png', '5', '2020-04-29 07:53:04', '2020-04-29 06:53:04'),
(7, 'Premium pack', '3.0', '2', 'month', '0.005', '0.01', 1, '2', '10Ph/s', 'plan_1588144404.png', '10', '2020-04-29 07:53:12', '2020-04-29 06:53:12'),
(10, 'Gold pack', '3.5', '2', 'month', '0.5', '1', 1, '10', '15Ph/s', 'plan_1588144414.png', '15', '2020-04-29 07:53:22', '2020-04-29 06:53:22');

-- --------------------------------------------------------

--
-- Table structure for table `profits`
--

CREATE TABLE `profits` (
  `id` int(32) NOT NULL,
  `user_id` int(32) NOT NULL,
  `plan_id` int(32) NOT NULL,
  `amount` float NOT NULL,
  `profit` float NOT NULL,
  `status` int(2) NOT NULL,
  `trx` varchar(16) NOT NULL,
  `end_date` varchar(32) NOT NULL,
  `date` varchar(32) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `referral`
--

CREATE TABLE `referral` (
  `id` int(32) NOT NULL,
  `user_id` int(32) NOT NULL,
  `ref_id` int(32) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ref_earning`
--

CREATE TABLE `ref_earning` (
  `id` int(32) NOT NULL,
  `user_id` int(32) NOT NULL,
  `referral` int(32) NOT NULL,
  `amount` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `reply_support`
--

CREATE TABLE `reply_support` (
  `id` int(32) NOT NULL,
  `ticket_id` int(32) NOT NULL,
  `reply` text NOT NULL,
  `status` int(2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(32) NOT NULL,
  `name` varchar(255) NOT NULL,
  `occupation` varchar(255) NOT NULL,
  `image_link` varchar(32) DEFAULT NULL,
  `review` text NOT NULL,
  `status` int(2) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `name`, `occupation`, `image_link`, `review`, `status`, `created_at`, `updated_at`) VALUES
(12, 'JacK Mill', 'Market analyst', 'update_1581806843.jpg', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 1, '2020-02-23 11:39:58', '2020-02-23 10:39:58'),
(13, 'Micheal Pete', 'Forex analyst', 'update_1581806792.jpg', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 1, '2020-02-23 11:39:38', '2020-02-23 10:39:38'),
(14, 'Big brother', 'Web developer', 'update_1581806914.jpg', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 1, '2020-02-23 11:35:00', '2020-02-23 10:35:00');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(32) NOT NULL,
  `title` text NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `details` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `icon`, `details`, `created_at`, `updated_at`) VALUES
(1, 'Industry best practices', 'certificate', 'Bitvest supports a variety of the most popular digital currencies.', '2020-02-23 23:35:46', '2020-02-23 22:35:46'),
(3, 'Secure storage', 'lock', 'We store the vast majority of the digital assets in secure offline storage.', '2020-02-23 23:36:32', '2020-02-23 22:36:32'),
(4, 'Account privacy', 'child', 'We will never share your private data without your permission', '2020-02-23 23:37:59', '2020-02-23 22:37:59');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(32) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `site_name` varchar(200) DEFAULT NULL,
  `site_desc` text DEFAULT NULL,
  `tawk_id` varchar(128) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `mobile` varchar(128) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `balance_reg` double DEFAULT NULL,
  `email_notify` int(2) DEFAULT NULL,
  `sms_notify` int(2) DEFAULT NULL,
  `kyc` int(2) DEFAULT NULL,
  `email_verification` int(2) DEFAULT NULL,
  `sms_verification` int(2) DEFAULT NULL,
  `registration` int(2) DEFAULT NULL,
  `withdraw_charge` varchar(191) DEFAULT NULL,
  `referral` int(2) NOT NULL DEFAULT 0,
  `upgrade_status` int(2) DEFAULT 0,
  `upgrade_fee` varchar(32) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `title`, `site_name`, `site_desc`, `tawk_id`, `email`, `mobile`, `address`, `balance_reg`, `email_notify`, `sms_notify`, `kyc`, `email_verification`, `sms_verification`, `registration`, `withdraw_charge`, `referral`, `upgrade_status`, `upgrade_fee`, `created_at`, `updated_at`) VALUES
(1, 'The easiest place to invest bitcoin.', 'Bitmine', 'Bitmine platform is at your service with its user-friendly features, secure infrastructure and applications that make a difference.', NULL, 'support@boomchart.com.ng', '+1234567894, +2345666666', 'Somewhere in new york london', 0.00022, 0, 0, 1, 0, 0, 1, '3', 1, 1, '0.5', '2020-04-28 21:58:57', '2020-04-28 20:58:57');

-- --------------------------------------------------------

--
-- Table structure for table `social_links`
--

CREATE TABLE `social_links` (
  `id` int(2) NOT NULL,
  `type` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `social_links`
--

INSERT INTO `social_links` (`id`, `type`, `value`, `created_at`, `updated_at`) VALUES
(1, 'facebook', 'https://facebook.com/', '2020-02-09 08:09:22', '2020-02-09 07:09:22'),
(2, 'instagram', 'https://instagram.com/', '2020-01-24 22:09:58', '0000-00-00 00:00:00'),
(3, 'twitter', 'https://twitter.com/', '2020-01-24 22:09:58', '0000-00-00 00:00:00'),
(4, 'skype', NULL, '2020-02-15 22:59:58', '2020-02-15 21:59:58'),
(5, 'pinterest', NULL, '2020-02-15 23:00:20', '2020-02-15 22:00:20'),
(7, 'linkedin', NULL, '2020-02-15 23:00:07', '2020-02-15 22:00:07'),
(8, 'youtube', NULL, '2020-02-15 22:59:48', '2020-02-15 21:59:48'),
(9, 'whatsapp', 'https://whatsapp.com/', '2020-02-09 08:09:38', '2020-02-09 07:09:38');

-- --------------------------------------------------------

--
-- Table structure for table `subscriber`
--

CREATE TABLE `subscriber` (
  `id` int(32) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `support`
--

CREATE TABLE `support` (
  `id` int(32) NOT NULL,
  `subject` text NOT NULL,
  `priority` varchar(8) NOT NULL,
  `message` text NOT NULL,
  `status` int(2) NOT NULL,
  `user_id` int(32) NOT NULL,
  `ticket_id` int(8) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE `transfers` (
  `id` int(32) NOT NULL,
  `ref_id` varchar(32) NOT NULL,
  `amount` varchar(32) NOT NULL,
  `sender_id` int(32) NOT NULL,
  `receiver_id` int(32) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `trending`
--

CREATE TABLE `trending` (
  `id` int(8) NOT NULL,
  `title` text NOT NULL,
  `details` text NOT NULL,
  `image` varchar(64) NOT NULL,
  `cat_id` int(32) NOT NULL,
  `views` int(32) NOT NULL DEFAULT 0,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trending`
--

INSERT INTO `trending` (`id`, `title`, `details`, `image`, `cat_id`, `views`, `status`, `created_at`, `updated_at`) VALUES
(9, 'Budget for Your Winter Trip to Cancun', '<p>It may be cold at home, but winter months are the peak season for Caribbean beaches, and for good reason: With beautiful scenery, tropical weather, and a dazzling array of adventure opportunities, a trip to sunny Mexico can be the perfect cure for the winter blues.</p>', 'post_1581767808.jpg', 2, 6, 1, '2020-02-23 23:23:59', '2020-02-23 22:23:59'),
(10, 'We are still choosing to help you grow your money and your confidence', '<p>We don&rsquo;t have a crystal ball, and can&rsquo;t predict when rates will change again, but we wanted to clearly communicate what&rsquo;s happening today. We believe that maintaining our high Protected Goals Account rates&mdash;and rewarding the choice to save&mdash;will help our customers continue to feel confident with their money.</p>', 'post_1581231667.jpg', 2, 2, 1, '2020-02-16 15:30:51', '2020-02-16 14:30:51'),
(11, 'Prioritize your savings goals based on what you really want.', '<p>You know you should be saving, but what should you save for first? Prioritizing your savings goals can be confusing. Here&rsquo;s how to sift through it all.</p>', 'post_1581231686.jpg', 2, 13, 1, '2020-02-23 13:36:36', '2020-02-23 12:36:36'),
(12, 'Foresight is 20/20: Bring Your Financial Future Into Focus', '<p>Forget hindsight&mdash;this decade, foresight is 20/20. It&rsquo;s a new year, and time for a new financial focus. Read on to see how Simple&rsquo;s built-in budgeting tools can help you plan a financial future so bright, you gotta wear shades.</p>', 'post_1581245829.jpg', 3, 0, 1, '2020-02-15 09:40:33', '2020-02-15 08:40:33');

-- --------------------------------------------------------

--
-- Table structure for table `trending_cat`
--

CREATE TABLE `trending_cat` (
  `id` int(8) NOT NULL,
  `categories` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trending_cat`
--

INSERT INTO `trending_cat` (`id`, `categories`, `created_at`, `updated_at`) VALUES
(2, 'Inspiration', '2020-01-24 22:13:56', '0000-00-00 00:00:00'),
(3, 'Company', '2020-01-24 22:13:56', '0000-00-00 00:00:00'),
(4, 'Engineering', '2020-01-24 22:13:56', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `ui_design`
--

CREATE TABLE `ui_design` (
  `id` int(11) NOT NULL,
  `s6_title` text DEFAULT NULL,
  `s7_title` text DEFAULT NULL,
  `s8_title` text DEFAULT NULL,
  `s8_body` text DEFAULT NULL,
  `s7_body` text DEFAULT NULL,
  `s7_image` varchar(32) DEFAULT NULL,
  `s6_body` text DEFAULT NULL,
  `s5_title` text DEFAULT NULL,
  `s5_body` text DEFAULT NULL,
  `s4_title` text DEFAULT NULL,
  `s4_body` text DEFAULT NULL,
  `s4_image` varchar(32) DEFAULT NULL,
  `s3_title` text DEFAULT NULL,
  `s3_body` text DEFAULT NULL,
  `s3_image` varchar(32) DEFAULT NULL,
  `s2_image` varchar(32) DEFAULT NULL,
  `s2_title` text DEFAULT NULL,
  `s2_body` text DEFAULT NULL,
  `s1_title` text DEFAULT NULL,
  `header_title` text DEFAULT NULL,
  `header_body` text DEFAULT NULL,
  `nav_type` int(2) NOT NULL,
  `total_assets` varchar(32) DEFAULT NULL,
  `experience` varchar(32) DEFAULT NULL,
  `traders` varchar(32) DEFAULT NULL,
  `countries` varchar(32) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `item1_title` text DEFAULT NULL,
  `item1_body` text DEFAULT NULL,
  `item2_title` text DEFAULT NULL,
  `item2_body` text DEFAULT NULL,
  `item3_title` text DEFAULT NULL,
  `item3_body` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ui_design`
--

INSERT INTO `ui_design` (`id`, `s6_title`, `s7_title`, `s8_title`, `s8_body`, `s7_body`, `s7_image`, `s6_body`, `s5_title`, `s5_body`, `s4_title`, `s4_body`, `s4_image`, `s3_title`, `s3_body`, `s3_image`, `s2_image`, `s2_title`, `s2_body`, `s1_title`, `header_title`, `header_body`, `nav_type`, `total_assets`, `experience`, `traders`, `countries`, `created_at`, `updated_at`, `item1_title`, `item1_body`, `item2_title`, `item2_body`, `item3_title`, `item3_body`) VALUES
(1, 'Focused, Active Management of  High-Growth Digital Assets.', 'What our client say about us', 'Diversify your investment porfolio', 'Bitclub is fully legit and officially registered company whose activities are regulated by the financial control authorities under the jurisdiction of the United Kingdom. Accepting our terms of coorperation, you can be absolutely sure of getting a guaranteed profit and full return on your investment.', 'Pulvinar neque laoreet suspendisse interdum consectetur libero id faucibus. Ac felis donec et odio pellentesque diam volutpat commodo. Tristique magna sit amet purus gravida quis blandit.', 'section4_1582451115.png', 'Bitclub Global Ltd is a registered investment platform providing digital asset investment management services to individuals. We provide a dynamic investment solution to clients in need of a self-operating portfolio, as well as a smart fund with flexible time and investment amount.\r\nInvestigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per laoreet sit amet cursus seacula qui mutationem consuetudium claritas est etiam processus dynamicus', 'Build your savings without even trying.', 'Turn on Round-up Rules and start saving up effortlessly. Whenever you make a purchase, Goals make it easy to save for the things you want or want to do. There’s no need for spreadsheets or extra apps to budget and track your money.', 'Make plans for what to do, not what’s due.', 'Set up your recurring expenses (think power bill, cable, internet) in our app, and we\'ll do the work of saving for them each month. When you know your bills are covered, you can focus on the fun parts of having money—like saving for a trip to Japan and buying that new bike.', 'section3_1582269122.png', 'What are your goals?', 'Whatever stage of life you’re at, we can guide you through the opportunities and challenges you face. Your investment goals may be different, but here are some examples of the sort of questions our wealth planners can help you answer.', 'section2_1582269114.png', 'section1_1582448589.png', 'Investment Made Easy & Secure.', 'Bitclub, the first and safest crypto asset investment firm, was established to provide intelligent portfolios with its expert investors, customer-priority approach, safe and high-tech investment tools. Eliminating the risk factor to earn from digital assets, the platform is created to offer exclusive interest return.\r\nInvestigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per laoreet sit amet cursus seacula qui mutationem consuetudium claritas est etiam processus dynamicus', 'Market leaders use app to reach their brand & business.', 'Largest Bitcoin mining company', 'Start bitcoin mining today', 1, '14M+', '13+', '244+', '53', '2020-02-21 07:12:02', '2020-02-23 21:27:14', 'Register', 'Only 1 minute and you\'re in. Enter the information you need to become a platform trader and start right away.', 'Invest', 'Invest and sit back. You can follow your investment status at any time and invest in limited time special offers.', 'Cashout anytime', 'Your investment is eligible to withdraw anytime after the first 24 hours.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` text NOT NULL,
  `image` varchar(32) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `name` text NOT NULL,
  `balance` varchar(64) NOT NULL,
  `profit` varchar(64) NOT NULL DEFAULT '0',
  `ref_bonus` varchar(64) NOT NULL DEFAULT '0',
  `password` varchar(100) NOT NULL,
  `phone` varchar(32) NOT NULL,
  `country` varchar(191) DEFAULT NULL,
  `status` int(2) NOT NULL DEFAULT 0,
  `ip_address` varchar(32) NOT NULL,
  `last_login` varchar(32) DEFAULT NULL,
  `kyc_link` varchar(32) DEFAULT NULL,
  `kyc_status` int(2) NOT NULL DEFAULT 0,
  `pin` varchar(32) NOT NULL DEFAULT '0000',
  `remember_token` varchar(100) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `verification_code` varchar(191) NOT NULL,
  `sms_code` varchar(191) NOT NULL,
  `phone_verify` tinyint(4) NOT NULL,
  `email_verify` tinyint(4) NOT NULL,
  `email_time` datetime NOT NULL,
  `phone_time` datetime NOT NULL,
  `upgrade` int(1) DEFAULT 0,
  `googlefa_secret` varchar(32) DEFAULT NULL,
  `fa_status` int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `w_history`
--

CREATE TABLE `w_history` (
  `id` int(32) NOT NULL,
  `user_id` int(32) NOT NULL,
  `amount` float NOT NULL,
  `status` int(2) NOT NULL,
  `details` text NOT NULL,
  `type` int(2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_site`
--
ALTER TABLE `about_site`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `etemplates`
--
ALTER TABLE `etemplates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gateways`
--
ALTER TABLE `gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `plan`
--
ALTER TABLE `plan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profits`
--
ALTER TABLE `profits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referral`
--
ALTER TABLE `referral`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ref_earning`
--
ALTER TABLE `ref_earning`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reply_support`
--
ALTER TABLE `reply_support`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_links`
--
ALTER TABLE `social_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriber`
--
ALTER TABLE `subscriber`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support`
--
ALTER TABLE `support`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trending`
--
ALTER TABLE `trending`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trending_cat`
--
ALTER TABLE `trending_cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ui_design`
--
ALTER TABLE `ui_design`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `w_history`
--
ALTER TABLE `w_history`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT for table `etemplates`
--
ALTER TABLE `etemplates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `gateways`
--
ALTER TABLE `gateways`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=513;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `plan`
--
ALTER TABLE `plan`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `profits`
--
ALTER TABLE `profits`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `referral`
--
ALTER TABLE `referral`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ref_earning`
--
ALTER TABLE `ref_earning`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reply_support`
--
ALTER TABLE `reply_support`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `social_links`
--
ALTER TABLE `social_links`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `subscriber`
--
ALTER TABLE `subscriber`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `support`
--
ALTER TABLE `support`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `trending`
--
ALTER TABLE `trending`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `trending_cat`
--
ALTER TABLE `trending_cat`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ui_design`
--
ALTER TABLE `ui_design`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `w_history`
--
ALTER TABLE `w_history`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
