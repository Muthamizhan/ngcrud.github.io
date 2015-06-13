-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2015 at 12:17 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ngcrud`
--

-- --------------------------------------------------------

--
-- Table structure for table `mytable`
--

CREATE TABLE IF NOT EXISTS `mytable` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `Phone` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=101 ;

--
-- Dumping data for table `mytable`
--

INSERT INTO `mytable` (`id`, `name`, `Phone`) VALUES
(1, 'Keaton', '795-693-7619'),
(2, 'Shelby', '862-760-6159'),
(3, 'Ronan', '447-620-3223'),
(4, 'Flavia', '964-951-5183'),
(5, 'Avye', '247-401-4375'),
(6, 'Lana', '782-751-8966'),
(7, 'Kamal', '506-202-2653'),
(8, 'Elvis', '135-619-4978'),
(9, 'Hamish', '321-116-3659'),
(10, 'Anastasia', '747-750-8913'),
(11, 'Sydnee', '474-518-4693'),
(12, 'Madeson', '229-886-6333'),
(13, 'Quail', '396-824-5665'),
(14, 'May', '856-516-4557'),
(15, 'Claudia', '912-119-9271'),
(16, 'Jaime', '200-306-3033'),
(17, 'Desiree', '377-755-9566'),
(18, 'Lewis', '757-690-0533'),
(19, 'Ramona', '426-823-2869'),
(20, 'Sonia', '406-605-1860'),
(21, 'Lewis', '634-296-9565'),
(22, 'Elvis', '504-705-2044'),
(23, 'Felicia', '294-291-9038'),
(24, 'Maggie', '931-401-2870'),
(25, 'Nero', '426-700-4409'),
(26, 'Louis', '652-175-3835'),
(27, 'Lael', '619-219-4496'),
(28, 'Nerea', '367-495-8798'),
(29, 'Freya', '882-127-7207'),
(30, 'Lydia', '425-204-6863'),
(31, 'Channing', '467-766-7157'),
(32, 'Latifah', '323-266-2575'),
(33, 'Rinah', '452-842-6688'),
(34, 'Christen', '774-582-2211'),
(35, 'Brynn', '953-811-1772'),
(36, 'Herrod', '987-315-4256'),
(37, 'Rowan', '196-741-4762'),
(38, 'Nyssa', '327-652-9847'),
(39, 'Chaney', '832-839-9271'),
(40, 'Francis', '998-365-5567'),
(41, 'Jakeem', '452-700-7298'),
(42, 'Charles', '637-963-9379'),
(43, 'Rebekah', '702-111-8897'),
(44, 'Uma', '593-551-7622'),
(45, 'Althea', '996-716-0206'),
(46, 'Marshall', '162-542-7341'),
(47, 'Bree', '832-720-2823'),
(48, 'Thaddeus', '184-267-8365'),
(49, 'Cally', '355-701-6067'),
(50, 'Ivy', '735-518-1108'),
(51, 'Preston', '129-269-5688'),
(52, 'Nevada', '626-113-6585'),
(53, 'Shelly', '368-451-7238'),
(54, 'Julian', '911-915-8946'),
(55, 'Sydnee', '265-700-0589'),
(56, 'Kiara', '980-238-5277'),
(57, 'Lamar', '265-361-1626'),
(58, 'Gretchen', '422-111-2398'),
(59, 'Rowan', '548-384-1043'),
(60, 'Shay', '681-685-1507'),
(61, 'Timothy', '692-692-1387'),
(62, 'Jasper', '736-876-6740'),
(63, 'Trevor', '991-572-7588'),
(64, 'Quincy', '406-984-1100'),
(65, 'Gwendolyn', '128-329-8472'),
(66, 'Kendall', '251-615-3889'),
(67, 'Keegan', '185-645-9061'),
(68, 'Arden', '144-758-9276'),
(69, 'Hilel', '132-795-9030'),
(70, 'Garrison', '614-558-8958'),
(71, 'Nash', '400-751-5174'),
(72, 'Edward', '324-978-8522'),
(73, 'Vivian', '833-144-0707'),
(74, 'Uriel', '160-655-6887'),
(75, 'Clio', '380-417-2852'),
(76, 'Kitra', '750-156-7856'),
(77, 'Megan', '414-867-4512'),
(78, 'Hiram', '411-503-3441'),
(79, 'Dexter', '389-850-9076'),
(80, 'Alec', '503-770-9240'),
(81, 'Kylee', '951-731-9344'),
(82, 'Aristotle', '712-174-7619'),
(83, 'Hop', '366-347-1107'),
(84, 'Francis', '417-699-6508'),
(85, 'Cade', '349-956-7232'),
(86, 'Philip', '225-199-4071'),
(87, 'Jeanette', '783-213-4005'),
(88, 'Alexa', '627-333-3136'),
(89, 'Gillian', '867-272-1196'),
(90, 'Halee', '654-529-3778'),
(91, 'Calvin', '487-802-4891'),
(92, 'Gavin', '587-110-7697'),
(93, 'Sawyer', '701-699-9342'),
(94, 'Xavier', '366-905-9409'),
(95, 'Seth', '693-135-8255'),
(96, 'Wesley', '499-464-4493'),
(97, 'Hasad', '308-256-2506'),
(98, 'Irene', '748-668-9514'),
(99, 'Quyn', '182-777-2258'),
(100, 'John', '201-107-5314');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
