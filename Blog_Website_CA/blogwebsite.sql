-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2017 at 09:06 PM
-- Server version: 5.5.39
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `blogwebsite`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE IF NOT EXISTS `blog` (
`blogID` int(11) NOT NULL,
  `imagePath` varchar(255) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `tags` varchar(100) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `memID` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`blogID`, `imagePath`, `title`, `description`, `tags`, `create_time`, `memID`) VALUES
(1, '../DBimages/Blackrock-sunrise1.jpg', 'Black Rock Sun Rise', 'I took this photo in a Black Rock in Co. Louth. I have a passion for photogrephy and everything about it. My favourite type off photographs are one&#39;s that you catch earlier then the average person. I especially love the picture because I feel it is extremely nice with the statue.', 'Sunset, Statue, Blackrock', '2017-04-27 14:20:55', 1),
(2, '../DBimages/dkit.jpg', 'DKIT', 'Dkit is a large college in Dundalk it has roughly 5000 students and it is a great college for meeting new people in. I took this picture a few weeks back while out for a walk with my dog.', 'Dkit, College, Photography', '2017-04-27 22:44:37', 3);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
`commentID` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `blogID` int(11) NOT NULL,
  `memID` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`commentID`, `comment`, `createTime`, `blogID`, `memID`) VALUES
(1, 'I really like this image hopefully I wil be able to visit this place sometime', '2017-04-27 14:26:45', 1, 2),
(2, 'What kind off camera do you use?', '2017-04-27 22:40:28', 1, 3),
(3, 'I really like thisimage of Dkit', '2017-04-28 13:48:35', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
`contactID` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE IF NOT EXISTS `members` (
`memID` int(11) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `dob` date NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `imagePath` varchar(255) NOT NULL,
  `admin` tinyint(1) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`memID`, `fname`, `lname`, `dob`, `email`, `username`, `password`, `imagePath`, `admin`) VALUES
(1, 'Sean', 'Brennan', '2017-01-01', 'sean1927@live.ie', 's', 'c4ca4238a0b923820dcc509a6f75849b', '../DBimages/passenger.jpg', 0),
(2, 'Ciaran', 'Maher', '2017-01-01', 'ciaran@live.ie', 'c', 'c4ca4238a0b923820dcc509a6f75849b', '../DBimages/Train.png', 0),
(3, 'Ciaran', 'Brennan', '2017-01-01', 'ciaran1927@live.ie', 'cb', 'c4ca4238a0b923820dcc509a6f75849b', '../DBimages/download.jpg', 0),
(4, 'Gytis', 'peader', '2017-01-01', 'G@live.ie', 'G', 'c4ca4238a0b923820dcc509a6f75849b', '../DBimages/Ford.jpg', 0),
(5, 'Jacinta', 'Brennan', '2017-01-01', 'jacinta12@live.ie', 'Jacinta', 'c4ca4238a0b923820dcc509a6f75849b', '../DBimages/track.jpg', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
 ADD PRIMARY KEY (`blogID`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
 ADD PRIMARY KEY (`commentID`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
 ADD PRIMARY KEY (`contactID`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
 ADD PRIMARY KEY (`memID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
MODIFY `blogID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
MODIFY `commentID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
MODIFY `contactID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
MODIFY `memID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
