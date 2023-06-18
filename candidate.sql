-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 18 जून, 2023 को 07:41 PM
-- Server version: 5.5.39
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `candidate`
--

-- --------------------------------------------------------

--
-- Table structure for table `addhr`
--

CREATE TABLE IF NOT EXISTS `addhr` (
`id` int(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `designation` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `addhr`
--

INSERT INTO `addhr` (`id`, `email`, `password`, `name`, `mobile`, `designation`) VALUES
(11, 'atharv@gmail.com', 'atharv', 'atharv', '9874563210', 'manager'),
(13, 'mayur@gmail.com', 'mayur', 'mayur', '9874563210', 'selles manager');

-- --------------------------------------------------------

--
-- Table structure for table `candi`
--

CREATE TABLE IF NOT EXISTS `candi` (
`cid` int(50) NOT NULL,
  `cname` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `cemail` varchar(50) NOT NULL,
  `cpass` varchar(50) NOT NULL,
  `ccity` varchar(40) NOT NULL,
  `dob` date NOT NULL,
  `jid` int(50) NOT NULL,
  `jtitle` varchar(50) NOT NULL,
  `o` int(50) NOT NULL,
  `c` int(50) NOT NULL,
  `e` int(50) NOT NULL,
  `a` int(50) NOT NULL,
  `n` int(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `candi`
--

INSERT INTO `candi` (`cid`, `cname`, `mobile`, `cemail`, `cpass`, `ccity`, `dob`, `jid`, `jtitle`, `o`, `c`, `e`, `a`, `n`) VALUES
(1, 'jayesh', '098765433', 'jay@gmail.com', 'jay', 'shirpur', '2022-08-11', 2, 'devloper', 2, 2, 2, 2, 2),
(2, 'sdfghjkl', '745841263', 'ghjkl', 'yjk', 'hjkl', '2022-08-15', 4, 'software developer', 4, 5, 5, 5, 4),
(3, 'om', '1234567', 'om@gmail.com', 'omm', 'nagpur', '2022-08-03', 2, 'devloper', 5, 5, 5, 5, 5),
(4, 'anuja', '987456210', 'anuja@gmail.com', '1234', 'chopda', '2022-08-03', 5, 'developer', 4, 4, 4, 4, 4),
(5, 'sumit', '1234567890', 'sumit@gmail.com', '1234', 'shirpur', '2022-08-24', 5, 'developer', 3, 2, 3, 3, 3),
(6, 'maggie', '08830265283', 'maggie', 'anuja', 'chopda', '2022-09-09', 5, 'developer', 3, 3, 3, 3, 3),
(7, 'retyr', '76543', 'erghj', 'jhgfdsas', 'sdfg', '2022-08-25', 5, 'developer', 3, 3, 3, 3, 3),
(8, 'lalit', '9874563210', 'lalit@gmail.com', 'lalit', 'challisgoan', '2022-09-03', 5, 'developer', 4, 3, 3, 3, 3),
(9, 'nilesh', '0987654321', 'nilesh@gmail.com', 'nilesh', 'nilesh', '2022-10-21', 5, 'developer', 3, 4, 4, 3, 3),
(10, 'dipak', '0987654321', 'dipak@gmail.com', 'dipak', 'pune', '2022-10-04', 5, 'developer', 3, 3, 3, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE IF NOT EXISTS `jobs` (
`jid` int(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `salary` int(50) NOT NULL,
  `quality` varchar(50) NOT NULL,
  `experiance` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`jid`, `title`, `description`, `salary`, `quality`, `experiance`) VALUES
(5, 'developer', 'you can joined part time or full time', 25000, 'openness', 'no experiance need'),
(6, 'marketing coordinator', 'communication skill nedded', 30000, 'Conscientiousness', '2years');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE IF NOT EXISTS `test` (
`srno` int(50) NOT NULL,
  `qtitle` varchar(100) NOT NULL,
  `quality` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`srno`, `qtitle`, `quality`) VALUES
(1, 'I have a rich vocabulary', 'O'),
(2, 'I have difficulty understanding abstract ideas.', 'O'),
(3, 'I have a vivid imagination', 'O'),
(4, 'I am not interested in abstract ideas', 'O'),
(5, 'I have excellent ideas', 'O'),
(6, 'I am the life of the party', 'C'),
(7, 'I leave my belongings around', 'C'),
(8, 'I pay attention to details\r\n', 'C'),
(9, '	I make a mess of things', 'C');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addhr`
--
ALTER TABLE `addhr`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candi`
--
ALTER TABLE `candi`
 ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
 ADD PRIMARY KEY (`jid`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
 ADD PRIMARY KEY (`srno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addhr`
--
ALTER TABLE `addhr`
MODIFY `id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `candi`
--
ALTER TABLE `candi`
MODIFY `cid` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
MODIFY `jid` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
MODIFY `srno` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
