-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2020 at 09:59 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(3) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'PHP'),
(2, 'Procedural PHP'),
(4, 'JAVASCRIPT');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(3) NOT NULL,
  `comment_post_id` int(3) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_email` varchar(255) NOT NULL,
  `comment_status` varchar(255) NOT NULL,
  `comment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_post_id`, `comment_author`, `comment_content`, `comment_email`, `comment_status`, `comment_date`) VALUES
(10, 30, '321312', '132123', 'asdasd@dada.com', 'approved', '2020-05-11');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(3) NOT NULL,
  `post_category_id` int(3) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_user` varchar(255) NOT NULL,
  `post_status` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_tags` varchar(255) NOT NULL,
  `post_content` text NOT NULL,
  `post_comment_count` varchar(255) NOT NULL,
  `post_views_count` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_category_id`, `post_title`, `post_author`, `post_user`, `post_status`, `post_date`, `post_image`, `post_tags`, `post_content`, `post_comment_count`, `post_views_count`) VALUES
(8, 1, 'new post', '', 'bogoeski', 'published', '2020-04-16', 'image (5).jpg', '123', '<p>dada</p>', '', '46'),
(9, 2, 'post two', '', 'jane', 'published', '2020-04-16', 'image (4).jpg', '123', '<p>12312321</p>', '', '7'),
(25, 2, 'post two', '', 'jane', 'published', '2020-05-11', 'image (4).jpg', '123', '<p>12312321</p>', '', ''),
(26, 1, 'new post', '', 'bogoeski', 'published', '2020-05-11', 'image (5).jpg', '123', '<p>dada</p>', '', ''),
(27, 1, 'new post', '', 'bogoeski', 'published', '2020-05-11', 'image (5).jpg', '123', '<p>dada</p>', '', ''),
(28, 2, 'post two', '', 'jane', 'published', '2020-05-11', 'image (4).jpg', '123', '<p>12312321</p>', '', ''),
(29, 2, 'post two', '', 'jane', 'published', '2020-05-11', 'image (4).jpg', '123', '<p>12312321</p>', '', ''),
(30, 1, 'new post', '', 'bogoeski', 'published', '2020-05-11', 'image (5).jpg', '123', '<p>dada</p>', '', '10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(3) NOT NULL,
  `username` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_firstname` varchar(255) NOT NULL,
  `user_lastname` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_image` text NOT NULL,
  `user_role` varchar(255) NOT NULL,
  `token` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `user_password`, `user_firstname`, `user_lastname`, `user_email`, `user_image`, `user_role`, `token`) VALUES
(11, 'bogoeski', '$2y$12$gg5EWPZDSYQAAF998Lymke4Ng9VuZs/jfMV/IbHr6Oizpx/DSHNCm', 'Jane', 'Bogoeski', 'bogoeski94@gmail.com', '', 'subscriber', '5f0232f9228264f27f691245f3e941d188473f3a4feaf69af084690212d71db2e4d7f8f1e985643629fe0cdc0cb57afcbed5'),
(12, 'jane', '$2y$12$yTrxuEo8.cwmSRNQxiarZOr69ouhaSv0MaFHKFe4If7t3c8SGPjzq', 'Jane', 'Jane', 'jane@jane.com', '', 'admin', 'abed31effa86fbbd7a79a37e3cbd3dd198288294cd16bd3deeb632ce1461636d82b579de436ed54a6c1f9d752a21db950f9d'),
(15, 'jane123', '$2y$12$QI8TlL27ix6ef4k.fwVVHeXD37avLKiue32zan52OVIeXVnqq7AR6', 'Jane', 'Jane', 'jane@com.com', '', 'admin', 'dee47852e0145657efa3a8f361db9a178fbed606eaf3dbbf8d03cd37288f04c5e0531993712dca23292f93b4df31bd6eabf1');

-- --------------------------------------------------------

--
-- Table structure for table `users_online`
--

CREATE TABLE `users_online` (
  `id` int(11) NOT NULL,
  `session` varchar(255) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_online`
--

INSERT INTO `users_online` (`id`, `session`, `time`) VALUES
(1, 'tlbeou6gj412a1mbbse3nfmms9', 1587072191),
(2, 'q2s66hm09v29u8331jd9ios6dd', 1587119489),
(3, 'b89hqip9390rff4ebs0hdhn9n1', 1587382911),
(4, 'gkkt85evgevmhaarf24hdtna30', 1589227936),
(5, 'sjp0q9bmnv9viebulf7v0ui62s', 1592251126);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `users_online`
--
ALTER TABLE `users_online`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users_online`
--
ALTER TABLE `users_online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
