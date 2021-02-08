-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 03, 2017 at 11:50 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `socialmedia`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE IF NOT EXISTS `activities` (
  `activity_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `activity_post` text NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`activity_id`, `user_id`, `activity_post`, `created`) VALUES
(1, 1, '	<a href=''#''><div class=''media''><img src=''profile/img_avatar_male.png'' width=''30px'' class=''media-object''><div class=''media-body''><span class=''media-heading''>Lucky Molefe</span><span> checked in - at <span class="animated jello fa fa-map-marker text-info"></span>&nbspMac Donald''s, Rustenburg </span></div></div></a>', '2017-08-31 15:06:58'),
(2, 2, '	<a href=''#''><div class=''media''><img src=''profile/img_avatar_female.png'' width=''30px'' class=''media-object''><div class=''media-body''><span class=''media-heading''>Letlhogonolo Molefe</span><span> checked in - at <span class="animated jello fa fa-map-marker text-info"></span>&nbspPWC Sunning hill, Sandton, Johannesburg </span></div></div></a>', '2017-08-31 15:43:44');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE IF NOT EXISTS `images` (
  `pic_id` int(11) NOT NULL,
  `email` varchar(55) NOT NULL,
  `urlpath` varchar(255) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`pic_id`, `email`, `urlpath`, `created`) VALUES
(1, 'luckmolf@company.com', 'backgrounds/img17.jpg', '2017-08-27 22:34:49'),
(2, 'tlhogimolefe@company.com', 'backgrounds/background.jpg', '2017-08-30 16:27:43');

-- --------------------------------------------------------

--
-- Table structure for table `inbox`
--

CREATE TABLE IF NOT EXISTS `inbox` (
  `message_id` int(11) NOT NULL,
  `recipient_email` varchar(55) NOT NULL,
  `sender_email` varchar(55) NOT NULL,
  `names` varchar(55) NOT NULL,
  `message` text NOT NULL,
  `message_status` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inbox`
--

INSERT INTO `inbox` (`message_id`, `recipient_email`, `sender_email`, `names`, `message`, `message_status`, `created`) VALUES
(1, 'tlhogimolefe@company.com', 'luckmolf@company.com', 'Lucky Molefe', 'Hello world', 2, '2017-09-01 02:20:26'),
(2, 'tlhogimolefe@company.com', 'luckmolf@company.com', 'Lucky Molefe', 'Pentest inbox message security vulrenability.', 1, '2017-09-02 15:36:49'),
(3, 'tlhogimolefe@company.com', 'luckmolf@company.com', 'Lucky Molefe', 'Testing message response', 0, '2017-09-02 15:41:48'),
(4, 'tlhogimolefe@company.com', 'luckmolf@company.com', 'Lucky Molefe', 'testing part two. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 1, '2017-09-02 15:43:42'),
(5, 'tlhogimolefe@company.com', 'luckmolf@company.com', 'Lucky Molefe', 'Testing part 3 - flood messaging spamming inbox', 0, '2017-09-02 15:45:13'),
(6, 'luckmolf@company.com', 'tlhogimolefe@company.com', 'Letlhogonolo Molefe', 'Hello there Lucky', 2, '2017-09-02 23:55:17');

-- --------------------------------------------------------

--
-- Table structure for table `invitations`
--

CREATE TABLE IF NOT EXISTS `invitations` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `invitation_status` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE IF NOT EXISTS `notifications` (
  `user_id` int(11) NOT NULL,
  `user_email` varchar(55) NOT NULL,
  `notify_status` tinyint(1) NOT NULL DEFAULT '0',
  `notify_message` varchar(255) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `places`
--

CREATE TABLE IF NOT EXISTS `places` (
  `event_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `location` varchar(255) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `places`
--

INSERT INTO `places` (`event_id`, `user_id`, `location`, `created`) VALUES
(1, 1, 'Mac Donald''s, Rustenburg', '2017-08-31 15:06:58'),
(2, 2, 'PWC Sunning hill, Sandton, Johannesburg', '2017-08-31 15:43:44');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(55) NOT NULL,
  `lastname` varchar(55) NOT NULL,
  `email` varchar(60) NOT NULL,
  `password` varchar(55) NOT NULL,
  `imageUrl` varchar(255) NOT NULL,
  `status` smallint(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `imageUrl`, `status`, `created`) VALUES
(1, 'Lucky', 'Molefe', 'luckmolf@company.com', '771669382ce0300b963293ddabd9aef9e8e36c6b', 'profile/img_avatar_male.png', 0, '2017-08-27 22:34:49'),
(2, 'Letlhogonolo', 'Molefe', 'tlhogimolefe@company.com', '1155e12a7c737a18e7013bc70190564a174a37e4', 'profile/img_avatar_female.png', 0, '2017-08-28 22:19:18');

-- --------------------------------------------------------

--
-- Table structure for table `wallposts`
--

CREATE TABLE IF NOT EXISTS `wallposts` (
  `post_id` int(11) NOT NULL,
  `email` varchar(55) NOT NULL,
  `post_content` text,
  `image_url` varchar(255) DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wallposts`
--

INSERT INTO `wallposts` (`post_id`, `email`, `post_content`, `image_url`, `created`) VALUES
(1, 'luckmolf@company.com', 'Let''s Breik some dance!!', 'wallposts/52d1b7816f39a.jpg', '2017-08-26 20:14:56'),
(2, 'tlhogimolefe@company.com', 'Supercool dance', 'wallposts/breik3.jpg', '2017-08-28 18:00:45'),
(2, 'tlhogimolefe@company.com', 'Doll dance', 'wallposts/model-dancer-girl-wallpapers.jpg', '2017-08-29 22:43:52'),
(1, 'luckmolf@company.com', 'Hello world <img src="emoticons/13_y.png" width="50px" />', NULL, '2017-08-31 14:55:58'),
(1, 'luckmolf@company.com', '	<h4 class=''post-title''><span class="fa fa-map-marker"></span> Lucky Molefe check-ins:</h4>\r\n	<a href=''#''>\r\n		<div class=''checkin-update''>checked in - at <span class="fa fa-map-marker"></span>&nbsp;Mac Donald''s, Rustenburg <br>\r\n		<!-- DIV to link the location google Maps -->\r\n		<div class="wow fadeInUp" data-wow-delay="0.9s" style="text-decoration:none; overflow:hidden; height:250px; width:100%; max-width:100%;">\r\n      <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3596.013586101375!2d27.240197650366373!3d-25.670844348655134!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x1ebe0960f590b40f%3A0x66c861135890f663!2s57+Boom+St%2C+Rustenburg%2C+2999!5e0!3m2!1sen!2sza!4v1494858295098" style="height:100%;width:100%; border:0;" frameborder="0" allowfullscreen></iframe> <!-- width="300" height="300" -->\r\n    	</div>\r\n    	<br>Google Map <span class="fa fa-street-view"></span> View\r\n    	</div>\r\n    </a>', NULL, '2017-08-31 15:06:58'),
(2, 'tlhogimolefe@company.com', '	<h4 class=''post-title''><span class="fa fa-map-marker"></span> Letlhogonolo Molefe check-ins:</h4>\r\n	<a href=''#''>\r\n		<div >checked in - at <span class="fa fa-map-marker"></span>&nbsp;PWC Sunning hill, Sandton, Johannesburg <br>\r\n		<!-- DIV to link the location google Maps -->\r\n		<div class="wow fadeInUp" data-wow-delay="0.9s" style="text-decoration:none; overflow:hidden; height:250px; width:100%; max-width:100%;">\r\n      <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3596.013586101375!2d27.240197650366373!3d-25.670844348655134!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x1ebe0960f590b40f%3A0x66c861135890f663!2s57+Boom+St%2C+Rustenburg%2C+2999!5e0!3m2!1sen!2sza!4v1494858295098" style="height:100%;width:100%; border:0;" frameborder="0" allowfullscreen></iframe> <!-- width="300" height="300" -->\r\n    	</div>\r\n    	<br>Google Map <span class="fa fa-street-view"></span> View\r\n    	</div>\r\n    </a>', NULL, '2017-08-31 15:43:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`activity_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD UNIQUE KEY `UNIQUE` (`created`);

--
-- Indexes for table `inbox`
--
ALTER TABLE `inbox`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `invitations`
--
ALTER TABLE `invitations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD UNIQUE KEY `created` (`created`);

--
-- Indexes for table `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallposts`
--
ALTER TABLE `wallposts`
  ADD UNIQUE KEY `created` (`created`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `activity_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `inbox`
--
ALTER TABLE `inbox`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `invitations`
--
ALTER TABLE `invitations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `places`
--
ALTER TABLE `places`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
