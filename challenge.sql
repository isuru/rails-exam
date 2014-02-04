-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 04, 2014 at 04:16 PM
-- Server version: 5.5.34
-- PHP Version: 5.3.10-1ubuntu3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `challenge`
--
CREATE DATABASE `challenge` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `challenge`;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `firstname`, `lastname`, `created_at`, `updated_at`) VALUES
(1, 'Jony', 'Flow', '2014-02-04 06:13:10', '2014-02-04 06:13:10'),
(2, 'Raj', 'Jamnis', '2014-02-04 06:13:26', '2014-02-04 06:13:26'),
(3, 'Andrew', 'Chung', '2014-02-04 06:13:45', '2014-02-04 06:13:45'),
(4, 'Mike', 'Smith', '2014-02-04 06:14:00', '2014-02-04 06:14:00');

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20140204061020'),
('20140204061031');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE IF NOT EXISTS `transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` date DEFAULT NULL,
  `paid` tinyint(1) DEFAULT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `refunded` tinyint(1) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `created`, `paid`, `amount`, `currency`, `refunded`, `customer_id`, `created_at`, `updated_at`) VALUES
(1, '2014-02-04', 1, 1100, 'USD', 0, 1, '2014-02-04 06:19:18', '2014-02-04 06:19:18'),
(2, '2014-01-03', 1, 500, 'USD', 0, 1, '2014-02-04 06:19:47', '2014-02-04 06:19:47'),
(3, '2013-03-04', 1, 200, 'USD', 0, 1, '2014-02-04 06:20:51', '2014-02-04 07:31:05'),
(4, '2011-04-04', 1, 600, 'USD', 0, 1, '2014-02-04 06:21:45', '2014-02-04 07:32:33'),
(5, '2010-02-04', 1, 520, 'USD', 0, 1, '2014-02-04 06:22:32', '2014-02-04 07:32:41'),
(6, '2014-01-04', 1, 1002, 'USD', 0, 2, '2014-02-04 06:22:59', '2014-02-04 07:32:20'),
(7, '2013-02-03', 1, 400, 'USD', 0, 2, '2014-02-04 06:23:24', '2014-02-04 07:31:47'),
(8, '2012-02-04', 1, 200, 'USD', 0, 2, '2014-02-04 07:33:30', '2014-02-04 07:33:30'),
(9, '2010-04-04', 1, 120, 'USD', 0, 3, '2014-02-04 07:34:01', '2014-02-04 07:34:01'),
(10, '2011-06-14', 1, 540, 'USD', 0, 4, '2014-02-04 07:34:29', '2014-02-04 07:34:29'),
(11, '2009-02-04', 0, 540, 'USD', 0, 3, '2014-02-04 07:35:54', '2014-02-04 07:35:54'),
(12, '2010-02-04', 0, 560, 'USD', 0, 3, '2014-02-04 07:36:20', '2014-02-04 07:36:20'),
(13, '2012-08-04', 0, 546, 'USD', 0, 3, '2014-02-04 07:36:38', '2014-02-04 07:36:38'),
(14, '2011-11-04', 0, 657, 'USD', 0, 4, '2014-02-04 07:37:12', '2014-02-04 07:37:12'),
(15, '2009-06-04', 0, 564, 'USD', 0, 4, '2014-02-04 07:37:36', '2014-02-04 07:37:36'),
(16, '2010-07-04', 1, 454, 'USD', 1, 1, '2014-02-04 07:38:15', '2014-02-04 07:38:15'),
(17, '2010-01-04', 1, 788, 'USD', 1, 1, '2014-02-04 07:38:32', '2014-02-04 07:38:32'),
(18, '2010-04-05', 1, 768, 'USD', 1, 1, '2014-02-04 07:38:54', '2014-02-04 07:38:54'),
(19, '2010-07-04', 1, 656, 'USD', 1, 2, '2014-02-04 07:39:23', '2014-02-04 07:39:23'),
(20, '2010-08-04', 1, 567, 'USD', 1, 2, '2014-02-04 07:39:39', '2014-02-04 07:39:39');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
