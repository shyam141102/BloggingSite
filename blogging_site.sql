-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 06, 2023 at 04:32 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blogging_site`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `ad_name` varchar(40) NOT NULL,
  `ad_id` int(4) NOT NULL,
  `ad_mail` text NOT NULL,
  PRIMARY KEY (`ad_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ad_name`, `ad_id`, `ad_mail`) VALUES
('Prathamkchy', 4900, 'pratham.kchy@gmail.com'),
('ArjunRaju', 1600, 'arjunraju@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

DROP TABLE IF EXISTS `content`;
CREATE TABLE IF NOT EXISTS `content` (
  `postid` int(11) NOT NULL AUTO_INCREMENT,
  `Heading` varchar(30) NOT NULL,
  `content` text,
  `date` date NOT NULL,
  `image` varchar(40) NOT NULL,
  `category` varchar(40) NOT NULL,
  PRIMARY KEY (`postid`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`postid`, `Heading`, `content`, `date`, `image`, `category`) VALUES
(1, 'Blog 1', 'The BSE SENSEX is a free-float market-weighted stock market index of 30 well-established and financially sound companies listed on the Bombay Stock ExchangeThe BSE SENSEX is a free-float market-weighted stock market index of 30 well-established and financially sound companies listed on the Bombay Stock ExchangeThe BSE SENSEX is a free-float market-weighted stock market index of 30 well-established and financially sound companies listed on the Bombay Stock ExchangeThe BSE SENSEX is a free-float market-weighted stock market index of 30 well-established and financially sound companies listed on the Bombay Stock ExchangeThe BSE SENSEX is a free-float market-weighted stock market index of 30 well-established and financially sound companies listed on the Bombay Stock Exchange', '2022-07-19', '', 'fashion'),
(2, 'blog 2', 'The BSE SENSEX is a free-float market-weighted stock market index of 30 well-established and financially sound companies listed on the Bombay Stock ExchangeThe BSE SENSEX is a free-float market-weighted stock market index of 30 well-established and financially sound companies listed on the Bombay Stock ExchangeThe BSE SENSEX is a free-float market-weighted stock market index of 30 well-established and financially sound companies listed on the Bombay Stock ExchangeThe BSE SENSEX is a free-float market-weighted stock market index of 30 well-established and financially sound companies listed on the Bombay Stock ExchangeThe BSE SENSEX is a free-float market-weighted stock market index of 30 well-established and financially sound companies listed on the Bombay Stock ExchangeThe BSE SENSEX is a ', '2022-07-19', 'uploads/62d67c2d008bb1.93428603.png', 'news'),
(3, 'Blog 3', 'srand(5);srand(5);srand(5);srand(5);srand(5);srand(5);srand(5);srand(5);srand(5);srand(5);srand(5);srand(5);srand(5);srand(5);srand(5);srand(5);srand(5);srand(5);srand(5);srand(5);srand(5);srand(5);srand(5);srand(5);srand(5);srand(5);srand(5);srand(5);srand(5);srand(5);srand(5);srand(5);srand(5);srand(5);srand(5);srand(5);srand(5);srand(5);srand(5);srand(5);srand(5);srand(5);srand(5);srand(5);srand(5);srand(5);srand(5);srand(5);srand(5);srand(5);srand(5);srand(5);srand(5);srand(5);srand(5);srand(5);srand(5);srand(5);srand(5);srand(5);srand(5);', '2022-07-26', '', 'fashion'),
(4, 'blog 4', 'To insert a new record into students table, we will not specify the value of Student_ID as it will be added automatically and the first record will have key as 1 and key for every subsequent record will increase by 1.To insert a new record into students table, we will not specify the value of Student_ID as it will be added automatically and the first record will have key as 1 and key for every subsequent record will increase by 1.To insert a new record into students table, we will not specify the value of Student_ID as it will be added automatically and the first record will have key as 1 and key for every subsequent record will increase by 1.To insert a new record into students table, we will not specify the value of Student_ID as it will be added automatically and the first record will h', '2022-07-19', 'uploads/62d67ec5bda708.60007603.png', 'history'),
(5, 'blog 5', 'To insert a new record into students table, we will not specify the value of Student_ID as it will be added automatically and the first record will have key as 1 and key for every subsequent record will increase by 1.To insert a new record into students table, we will not specify the value of Student_ID as it will be added automatically and the first record will have key as 1 and key for every subsequent record will increase by 1.To insert a new record into students table, we will not specify the value of Student_ID as it will be added automatically and the first record will have key as 1 and key for every subsequent record will increase by 1.To insert a new record into students table, we will not specify the value of Student_ID as it will be added automatically and the first record will h', '2022-07-19', 'uploads/62d68428aa0ba2.74619175.png', 'technology'),
(6, 'Blog 6', 'Forrest Griffin is an American retired mixed martial artist and former UFC Light Heavyweight Champion. He was inducted into the UFC Hall of Fame in 2013 and currently serves as the Vice President of Athlete Development at the UFC Performance Institute.Forrest Griffin is an American retired mixed martial artist and former UFC Light Heavyweight Champion. He was inducted into the UFC Hall of Fame in 2013 and currently serves as the Vice President of Athlete Development at the UFC Performance Institute.Forrest Griffin is an American retired mixed martial artist and former UFC Light Heavyweight Champion. He was inducted into the UFC Hall of Fame in 2013 and currently serves as the Vice President of Athlete Development at the UFC Performance Institute.Forrest Griffin is an American retired mixed', '2022-07-19', 'uploads/62d6995f5587a9.78412629.png', 'history'),
(7, 'Blog 7', 'Forrest Griffin is an American retired mixed martial artist and former UFC Light Heavyweight Champion. He was inducted into the UFC Hall of Fame in 2013 and currently serves as the Vice President of Athlete Development at the UFC Performance Institute.Forrest Griffin is an American retired mixed martial artist and former UFC Light Heavyweight Champion. He was inducted into the UFC Hall of Fame in 2013 and currently serves as the Vice President of Athlete Development at the UFC Performance Institute.Forrest Griffin is an American retired mixed martial artist and former UFC Light Heavyweight Champion. He was inducted into the UFC Hall of Fame in 2013 and currently serves as the Vice President of Athlete Development at the UFC Performance Institute.Forrest Griffin is an American retired mixed', '2022-07-19', 'uploads/62d699ae0ed0e4.37668852.png', 'technology'),
(8, 'blog 8', 'Forrest Griffin is an American retired mixed martial artist and former UFC Light Heavyweight Champion. He was inducted into the UFC Hall of Fame in 2013 and currently serves as the Vice President of Athlete Development at the UFC Performance Institute.Forrest Griffin is an American retired mixed martial artist and former UFC Light Heavyweight Champion. He was inducted into the UFC Hall of Fame in 2013 and currently serves as the Vice President of Athlete Development at the UFC Performance Institute.Forrest Griffin is an American retired mixed martial artist and former UFC Light Heavyweight Champion. He was inducted into the UFC Hall of Fame in 2013 and currently serves as the Vice President of Athlete Development at the UFC Performance Institute.Forrest Griffin is an American retired mixed', '2022-07-19', 'uploads/62d6a0fa2920c3.39461620.png', 'technology'),
(9, 'blog 10', 'Luke Skyler Rockhold is an American professional mixed martial artist. Rockhold is currently signed to the Ultimate Fighting Championship, where he competes in the Light Heavyweight division. Rockhold formerly competed at Middleweight and is a former UFC Middleweight Champion.Luke Skyler Rockhold is an American professional mixed martial artist. Rockhold is currently signed to the Ultimate Fighting Championship, where he competes in the Light Heavyweight division. Rockhold formerly competed at Middleweight and is a former UFC Middleweight Champion.Luke Skyler Rockhold is an American professional mixed martial artist. Rockhold is currently signed to the Ultimate Fighting Championship, where he competes in the Light Heavyweight division. Rockhold formerly competed at Middleweight and is a fo', '2022-07-19', 'uploads/62d6ba56bb2d89.75659632.png', 'fashion'),
(11, 'First Blog', 'Forrest Griffin is an American retired mixed martial artist and former UFC Light Heavyweight Champion. He was inducted into the UFC Hall of Fame in 2013 and currently serves as the Vice President of Athlete Development at the UFC Performance Institute.Forrest Griffin is an American retired mixed martial artist and former UFC Light Heavyweight Champion. He was inducted into the UFC Hall of Fame in 2013 and currently serves as the Vice President of Athlete Development at the UFC Performance Institute.Forrest Griffin is an American retired mixed martial artist and former UFC Light Heavyweight Champion. He was inducted into the UFC Hall of Fame in 2013 and currently serves as the Vice President of Athlete Development at the UFC Performance Institute.Forrest Griffin is an American retired mixed', '2022-07-19', 'uploads/62d6c6b9002fe8.26685819.png', 'history'),
(12, 'blog 12', 'Forrest Griffin is an American retired mixed martial artist and former UFC Light Heavyweight Champion. He was inducted into the UFC Hall of Fame in 2013 and currently serves as the Vice President of Athlete Development at the UFC Performance Institute.Forrest Griffin is an American retired mixed martial artist and former UFC Light Heavyweight Champion. He was inducted into the UFC Hall of Fame in 2013 and currently serves as the Vice President of Athlete Development at the UFC Performance Institute.Forrest Griffin is an American retired mixed martial artist and former UFC Light Heavyweight Champion. He was inducted into the UFC Hall of Fame in 2013 and currently serves as the Vice President of Athlete Development at the UFC Performance Institute.Forrest Griffin is an American retired mixed', '2022-07-19', 'uploads/62d6c7f0a906c0.45222551.png', 'technology'),
(13, 'heading', 'Forrest Griffin is an American retired mixed martial artist and former UFC Light Heavyweight Champion. He was inducted into the UFC Hall of Fame in 2013 and currently serves as the Vice President of Athlete Development at the UFC Performance Institute.Forrest Griffin is an American retired mixed martial artist and former UFC Light Heavyweight Champion. He was inducted into the UFC Hall of Fame in 2013 and currently serves as the Vice President of Athlete Development at the UFC Performance Institute.Forrest Griffin is an American retired mixed martial artist and former UFC Light Heavyweight Champion. He was inducted into the UFC Hall of Fame in 2013 and currently serves as the Vice President of Athlete Development at the UFC Performance Institute.Forrest Griffin is an American retired mixed', '2022-07-19', 'uploads/62d6d0f6492c48.82905052.png', 'technology'),
(14, 'blog 13', 'Forrest Griffin is an American retired mixed martial artist and former UFC Light Heavyweight Champion. He was inducted into the UFC Hall of Fame in 2013 and currently serves as the Vice President of Athlete Development at the UFC Performance Institute.Forrest Griffin is an American retired mixed martial artist and former UFC Light Heavyweight Champion. He was inducted into the UFC Hall of Fame in 2013 and currently serves as the Vice President of Athlete Development at the UFC Performance Institute.Forrest Griffin is an American retired mixed martial artist and former UFC Light Heavyweight Champion. He was inducted into the UFC Hall of Fame in 2013 and currently serves as the Vice President of Athlete Development at the UFC Performance Institute.Forrest Griffin is an American retired mixed', '2022-07-19', 'uploads/62d6d15e163e89.60070642.png', 'history'),
(15, 'second blog', 'Forrest Griffin is an American retired mixed martial artist and former UFC Light Heavyweight Champion. He was inducted into the UFC Hall of Fame in 2013 and currently serves as the Vice President of Athlete Development at the UFC Performance Institute.Forrest Griffin is an American retired mixed martial artist and former UFC Light Heavyweight Champion. He was inducted into the UFC Hall of Fame in 2013 and currently serves as the Vice President of Athlete Development at the UFC Performance Institute.Forrest Griffin is an American retired mixed martial artist and former UFC Light Heavyweight Champion. He was inducted into the UFC Hall of Fame in 2013 and currently serves as the Vice President of Athlete Development at the UFC Performance Institute.Forrest Griffin is an American retired mixed', '2022-07-19', 'uploads/62d6d1fda37752.32135601.png', 'news'),
(16, 'blog 14', 'Forrest Griffin is an American retired mixed martial artist and former UFC Light Heavyweight Champion. He was inducted into the UFC Hall of Fame in 2013 and currently serves as the Vice President of Athlete Development at the UFC Performance Institute.Forrest Griffin is an American retired mixed martial artist and former UFC Light Heavyweight Champion. He was inducted into the UFC Hall of Fame in 2013 and currently serves as the Vice President of Athlete Development at the UFC Performance Institute.Forrest Griffin is an American retired mixed martial artist and former UFC Light Heavyweight Champion. He was inducted into the UFC Hall of Fame in 2013 and currently serves as the Vice President of Athlete Development at the UFC Performance Institute.Forrest Griffin is an American retired mixed', '2022-07-19', 'uploads/62d6d29c2da062.01790045.png', 'history'),
(17, 'BLog 15', 'Forrest Griffin is an American retired mixed martial artist and former UFC Light Heavyweight Champion. He was inducted into the UFC Hall of Fame in 2013 and currently serves as the Vice President of Athlete Development at the UFC Performance Institute.Forrest Griffin is an American retired mixed martial artist and former UFC Light Heavyweight Champion. He was inducted into the UFC Hall of Fame in 2013 and currently serves as the Vice President of Athlete Development at the UFC Performance Institute.Forrest Griffin is an American retired mixed martial artist and former UFC Light Heavyweight Champion. He was inducted into the UFC Hall of Fame in 2013 and currently serves as the Vice President of Athlete Development at the UFC Performance Institute.Forrest Griffin is an American retired mixed', '2022-07-19', 'uploads/62d6d3bc3b06a2.78825928.png', 'news'),
(25, 'fhstydyj', 'qwertyuioppkhgfd nitin yadav', '2022-11-28', 'uploads/63847013f15887.43868829.png', 'news');

-- --------------------------------------------------------

--
-- Table structure for table `content_creator`
--

DROP TABLE IF EXISTS `content_creator`;
CREATE TABLE IF NOT EXISTS `content_creator` (
  `cc_id` int(20) NOT NULL,
  `cc_name` varchar(40) NOT NULL,
  `cc_email_id` text NOT NULL,
  `id_password` varchar(12) NOT NULL,
  `user_id` int(4) NOT NULL,
  PRIMARY KEY (`cc_id`),
  UNIQUE KEY `id_password` (`id_password`),
  UNIQUE KEY `cc_name` (`cc_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content_creator`
--

INSERT INTO `content_creator` (`cc_id`, `cc_name`, `cc_email_id`, `id_password`, `user_id`) VALUES
(41251075, 'pratham', 'pratham@gmail.com', '1234', 4125),
(64095749, 'arjun', 'arjun@gmail.com', '12345', 6409);

-- --------------------------------------------------------

--
-- Table structure for table `content_viewer`
--

DROP TABLE IF EXISTS `content_viewer`;
CREATE TABLE IF NOT EXISTS `content_viewer` (
  `cc_id` int(15) NOT NULL,
  `cv_name` varchar(40) NOT NULL,
  `locality` text NOT NULL,
  `cv_emal_id` text NOT NULL,
  PRIMARY KEY (`cc_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content_viewer`
--

INSERT INTO `content_viewer` (`cc_id`, `cv_name`, `locality`, `cv_emal_id`) VALUES
(2186, 'ayush', 'patna,bihar', 'ayush@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `userid` int(15) NOT NULL,
  `user_name` varchar(25) NOT NULL,
  `user_mail` text NOT NULL,
  `contact` bigint(10) DEFAULT NULL,
  `Adrdess` varchar(40) NOT NULL,
  `user_password` varchar(12) NOT NULL,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `user_name` (`user_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `user_name`, `user_mail`, `contact`, `Adrdess`, `user_password`) VALUES
(6932, 'Ganesh sir', 'ganesh@gmail.com', 2345678912, 'pune,maharashtra', '1234'),
(2640, 'pratham', 'pratham@gmail.com', 7499263509, 'Pune', '1234');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
