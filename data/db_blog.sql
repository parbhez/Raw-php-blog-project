-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2018 at 09:49 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `name`) VALUES
(1, 'Java'),
(2, 'PHP'),
(3, 'HTML'),
(5, 'C#'),
(11, 'Paython'),
(12, 'Education'),
(13, 'About me'),
(14, 'General'),
(15, 'HealthCare');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`id`, `firstname`, `lastname`, `email`, `body`, `status`, `date`) VALUES
(1, 'Masud', 'Parbhez', 'masud@gmail.com', 'This is Message box.', 1, '2017-12-25 09:20:12'),
(2, 'Ahadul', 'Islam', 'pavel.affb@gmail.com', 'Different now form thity nyears ago.No longer are tastes confined to roast beef', 1, '2017-12-25 09:20:58'),
(4, 'Saiful', 'Islam', 'saiful.affb@gmail.com', 'The present age is marked not only by the importance of the family as an ecominic and welfare instution', 1, '2017-12-26 05:08:13'),
(5, 'Alim', 'Ullah', 'alim@gmail.com', '.No longer are tastes confined to roast beef mint the the present..No longer are tastes confined to roast beef mint the the present..No longer are tastes confined to roast beef mint the the present.', 1, '2017-12-26 05:14:35'),
(6, 'Riyaz', 'uddin', 'rana@gmail.com', '.No longer are tastes confined to roast beef mint the the present.No longer are tastes confined to roast beef mint the the present.No longer are tastes confined to roast beef mint the the present.No longer are tastes confined to roast beef mint the the present.', 1, '2017-12-26 05:15:05'),
(7, 'Sharmin', 'Akther', 'sharmin@gmail.com', 'eating havits are very different now form thity nyears ago.No longer are tastes confined to roaeating havits are very different now form thity nyears ago.No longer are tastes confined to roaeating havits are very different now form thity nyears ago.No longer are tastes confined to roa', 0, '2017-12-26 05:47:52'),
(8, 'Rabihya Monowera', 'Riyanna', 'Riyanna@gmail.com', 'Eating havits are very different now form thity nyears ago.No longer are tastes confined to roast beef minEating havits are very different now form thity nyears ago.No longer are tastes confined to roast beef minEating havits are very different now form thity nyears ago.No longer are tastes confined to roast beef min', 0, '2017-12-26 05:50:38'),
(9, 'Faria', 'Rahman', 'faria@gmail.com', 'Eating havits are very different now form thity nyears ago.No longer are tastes confined to roast beef minEating havits are very different now form thity nyears ago.No longer are tastes confined to roast beef minEating havits are very different now form thity nyears ago.No longer are tastes confined to roast beef min', 1, '2017-12-26 05:51:44'),
(10, 'Zakir', 'Patwary', 'zakir@gmail.com', 'Different now form thity nyears ago.No longer are tastes conDifferent now form thity nyears ago.No longer are tastes conDifferent now form thity nyears ago.No longer are tastes conDifferent now form thity nyears ago.No longer are tastes con', 1, '2018-01-11 15:47:52');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_footer`
--

CREATE TABLE `tbl_footer` (
  `id` int(11) NOT NULL,
  `copyright` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_footer`
--

INSERT INTO `tbl_footer` (`id`, `copyright`) VALUES
(1, ' Copyright Institute of Computer Science &amp; Technology');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page`
--

CREATE TABLE `tbl_page` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_page`
--

INSERT INTO `tbl_page` (`id`, `name`, `body`) VALUES
(6, '     About us', '<p>Hello , I am Masud Parbhez from Bangladesh.Wellcome to our Blog ....</p>\r\n<p>&nbsp;</p>\r\n<p>British eating havits are very different now form thity nyears ago.No longer are tastes confined to roast beef mint the the present age is marked not only by the importance of the family as an ecominic and welfare instutions but also by its increasing importance as an arrgement for socilising children and for the phychology support of adults there has been awide disntergation of large kin groups and an intensification of relationships within the nuclear family Moreever the world is seeing an increasing association of women with earning and out of home activities. In the pre industrial feaudal society both husbands and wives worked in the fields outside the home However in the industrial period women were segregated from out of home productive work the earth become the place for them so cooking cleaning washing giving birth and all other activities became .their responsibility.In the post war period women started joining the workforce contributing to family income and thus started excrising an infulance on family afaairs previously authority in the family rested on the husbands who was the decision marker in all maters .but women with their economic power started influenching.</p>\r\n<p>British eating havits are very different now form thity nyears ago.No longer are tastes confined to roast beef mint the the present age is marked not only by the importance of the family as an ecominic and welfare instutions but also by its increasing importance as an arrgement for socilising children and for the phychology support of adults there has been awide disntergation of large kin groups and an intensification of relationships within the nuclear family Moreever the world is seeing an increasing association of women with earning and out of home activities. In the pre industrial feaudal society both husbands and wives worked in the fields outside the home However in the industrial period women were segregated from out of home productive work the earth become the place for them so cooking cleaning washing giving birth and all other activities became .their responsibility.In the post war period women started joining the workforce contributing to family income and thus started excrising an infulance on family afaairs previously authority in the family rested on the husbands who was the decision marker in all maters .but women with their economic power started influenching.</p>'),
(7, 'Privacy policy', 'British eating havits are very different now form thity nyears ago.No longer are tastes confined to roast beef mint the the present age is marked not only by the importance of the family as an ecominic and welfare instutions but also by its increasing importance as an arrgement for socilising children and for the phychology support of adults there has been awide disntergation of large kin groups and an intensification of relationships within the nuclear family Moreever the world is seeing an increasing association of women with earning and out of home activities. In the pre industrial feaudal society both husbands and wives worked in the fields outside the home However in the industrial period women were segregated from out of home productive work the earth become the place for them so cooking cleaning washing giving birth and all other activities became .their responsibility.In the post war period women started joining the workforce contributing to family income and thus started excrising an infulance on family afaairs previously authority in the family rested on the husbands who was the decision marker in all maters .but women with their economic power started influenching.'),
(8, 'Admin', 'British eating havits are very different now form thity nyears ago.No longer are tastes confined to roast beef mint the the present age is marked not only by the importance of the family as an ecominic and welfare instutions but also by its increasing importance as an arrgement for socilising children and for the phychology support of adults there has been awide disntergation of large kin groups and an intensification of relationships within the nuclear family Moreever the world is seeing an increasing association of women with earning and out of home activities. In the pre industrial feaudal society both husbands and wives worked in the fields outside the home However in the industrial period women were segregated from out of home productive work the earth become the place for them so cooking cleaning washing giving birth and all other activities became .their responsibility.In the post war period women started joining the workforce contributing to family income and thus started excrising an infulance on family afaairs previously authority in the family rested on the husbands who was the decision marker in all maters .but women with their economic power started influenching.'),
(9, 'Cricket', '<p><span>&nbsp;Children and for the phychology support of adults there has been awide disntergation of large kin groups and an intensification of relationships within the nuclear family Moreever the world is seeing an increasing association of women with earning and out of home activities. In the pre industrial feaudal society both husbands and wives worked in the fields outside the home However in the industrial period women were segregated from out of home productive work the earth become the place for them so cooking cleaning washing giving birth and all other activities became.</span></p>\r\n<p><span><span>&nbsp;children and for the phychology support of adults there has been awide disntergation of large kin groups and an intensification of relationships within the nuclear family Moreever the world is seeing an increasing association of women with earning and out of home activities. In the pre industrial feaudal society both husbands and wives worked in the fields outside the home However in the industrial period women were segregated from out of home productive work the earth become the place for them so cooking cleaning washing giving birth and all other activities became.</span></span></p>'),
(13, 'ABC', ' home However in the industrial period women were segregated from out of home productive work the earth become the place for them so cooking cleaning washing giving birth and all other activities became .their responsibility.In the post war period women started joining the .\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n home However in the industrial period women were segregated from out of home productive work the earth become the place for them so cooking cleaning washing giving birth and all other activities became .their responsibility.In the post war period women started joining the ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `id` int(11) NOT NULL,
  `cat` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `description` text NOT NULL,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`id`, `cat`, `title`, `body`, `image`, `author`, `tags`, `date`, `description`, `userid`) VALUES
(9, 1, 'Java Post will be go here...', '<p>&nbsp;Different now form thity nyears ago.No longer are tastes confined to roast beef mint the the present age is marked not only by the importance of the family as an ecominic and welfare instutions but also by its increasing importance as an arrgement for socilising children and for the phychology support of adults there has been awide disntergation of</p>\r\n<p>&nbsp;</p>\r\n<p>large kin groups and an intensification of relationships within the nuclear family Moreever the world is seeing an increasing association of women with earning and out of home activities. In the pre industrial feaudal society both husbands and wives worked in the fields outside the home However in the industrial period women were segregated from out of home productive work the earth become the</p>\r\n<p>&nbsp;</p>\r\n<p>place for them so cooking cleaning washing giving birth and all other activities became .their responsibility.In the post war period women started joining the workforce contributing to family income and thus started excrising an infulance on family afaairs previously authority in the family rested on the husbands who was the decision marker in all maters .but women with their economic power started influenching.&nbsp;&nbsp;</p>\r\n<p>British eating havits are very different now form thity nyears ago.No longer are tastes confined to roast beef mint the the present age is marked not only by the importance of the family as an ecominic and welfare instutions but also by its increasing importance as an arrgement for socilising children and for the phychology support of adults there has been awide disntergation of large kin groups and an intensification of relationships within the nuclear family Moreever the world is seeing an increasing association of women with earning and out of home</p>\r\n<p>&nbsp;</p>\r\n<p>activities. In the pre industrial feaudal society both husbands and wives worked in the fields outside the home However in the industrial period women were segregated from out of home productive work the earth become the place for them so cooking cleaning washing giving birth and all other activities became .their responsibility.In the post war period women started joining the workforce contributing to family income and thus started excrising an infulance on family afaairs previously authority in the family rested on the husbands who was the decision marker in all maters .but women with their economic power started influenching.&nbsp;&nbsp;</p>', 'upload/8cd93bec6e.png', 'Parbhez', 'Java,Java coding', '2017-12-02 07:29:29', 'You can only write a java post.', 0),
(11, 3, ' HTML Post will be go here...', '<p>&nbsp;The present age is marked not only by the importance of the family as an ecominic and welfare instutions but also by its increasing importance as an arrgement for socilising children and for the phychology support of adults there has been awide disntergation of large kin groups and an intensification of relationships within the nuclear family Moreever the world is seeing an increasing association of women with earning and out of home activities. In the pre industrial feaudal society both husbands and wives worked in the fields outside the home However in the industrial period women were segregated from out of home productive work the earth become the place for them so cooking cleaning washing giving birth and all other activities became .their responsibility.In the post war period women started joining the workforce contributing to family income and thus started excrising an infulance on family afaairs previously authority in the family rested on the husbands who was the decision marker in all maters .but women with their economic power started influenching.&nbsp;&nbsp;</p>\r\n<p>British eating havits are very different now form thity nyears ago.No longer are tastes confined to roast beef mint the the present age is marked not only by the importance of the family as an ecominic and welfare instutions but also by its increasing importance as an arrgement for socilising children and for the phychology support of adults there has been awide disntergation of large kin groups and an intensification of relationships within the nuclear family Moreever the world is seeing an increasing association of women with earning and out of home activities. In the pre industrial feaudal society both husbands and wives worked in the fields outside the home However in the industrial period women were segregated from out of home productive work the earth become the place for them so cooking cleaning washing giving birth and all other activities became .their responsibility.In the post war period women started joining the workforce contributing to family income and thus started excrising an infulance on family afaairs previously authority in the family rested on the husbands who was the decision marker in all maters .but women with their economic power started influenching.&nbsp;&nbsp;</p>', 'upload/e80ef9c243.png', 'Admin', 'HTML', '2017-12-02 07:38:14', 'You can only write a HTML post.', 0),
(12, 4, 'CSS Post will be go here...', '<p>&nbsp;Eating havits are very different now form thity nyears ago.No longer are tastes confined to roast beef mint the the present age is marked not only by the importance of the family as an ecominic and welfare instutions but also by its increasing importance as an arrgement for socilising children and for the phychology support of adults there has been awide disntergation of large kin groups and an intensification of relationships within the nuclear family Moreever the world is seeing an increasing association of women with earning and out of home activities. In the pre industrial feaudal society both husbands and wives worked in the fields outside the home However in the industrial period women were segregated from out of home productive work the earth become the place for them so cooking cleaning washing giving birth and all other activities became .their responsibility.In the post war period women started joining the workforce contributing to family income and thus started excrising an infulance on family afaairs previously authority in the family rested on the husbands who was the decision marker in all maters .but women with their economic power started influenching.&nbsp;&nbsp;</p>\r\n<p>British eating havits are very different now form thity nyears ago.No longer are tastes confined to roast beef mint the the present age is marked not only by the importance of the family as an ecominic and welfare instutions but also by its increasing importance as an arrgement for socilising children and for the phychology support of adults there has been awide disntergation of large kin groups and an intensification of relationships within the nuclear family Moreever the world is seeing an increasing association of women with earning and out of home activities. In the pre industrial feaudal society both husbands and wives worked in the fields outside the home However in the industrial period women were segregated from out of home productive work the earth become the place for them so cooking cleaning washing giving birth and all other activities became .their responsibility.In the post war period women started joining the workforce contributing to family income and thus started excrising an infulance on family afaairs previously authority in the family rested on the husbands who was the decision marker in all maters .but women with their economic power started influenching.&nbsp;&nbsp;</p>', 'upload/734f40a2ee.jpg', 'Pavel', 'CSS', '2017-12-02 07:39:17', 'You can only write a CSS post.', 0),
(13, 5, 'C#  post will be go here', '<p>&nbsp;Are very different now form thity nyears ago.No longer are tastes confined to roast beef mint the the present age is marked not only by the importance of the family as an ecominic and welfare instutions but also by its increasing importance as an arrgement for socilising children and for the phychology support of adults there has been awide disntergation of large kin groups and an intensification of relationships within</p>\r\n<p>&nbsp;</p>\r\n<p>the nuclear family Moreever the world is seeing an increasing association of women with earning and out of home activities. In the pre industrial feaudal society both husbands and wives worked in the fields outside the home However in the industrial period women were segregated from out of home productive work the earth become the place for them so cooking cleaning washing giving birth and all other</p>\r\n<p>&nbsp;</p>\r\n<p>activities became .their responsibility.In the post war period women started joining the workforce contributing to family income and thus started excrising an infulance on family afaairs previously authority in the family rested on the husbands who was the decision marker in all maters .but women with their economic power started influenching.&nbsp;&nbsp;</p>\r\n<p>British eating havits are very different now form thity nyears ago.No longer are tastes confined to roast beef mint the the present age is marked not only by the importance of the family as an ecominic and welfare instutions but also by its increasing importance as an arrgement for socilising children and for the phychology support of adults there has been awide disntergation of large kin groups and an intensification of relationships within the nuclear family Moreever the world is seeing an increasing association of women with earning and out of home</p>\r\n<p>&nbsp;</p>\r\n<p>activities. In the pre industrial feaudal society both husbands and wives worked in the fields outside the home However in the industrial period women were segregated from out of home productive work the earth become the place for them so cooking cleaning washing giving birth and all other activities became .their responsibility.In the post war period women started joining the workforce contributing to family income and thus started excrising an infulance on family afaairs previously authority in the family rested on the husbands who was the decision marker in all maters .but women with their economic power started influenching.&nbsp;&nbsp;</p>', 'upload/808979b5cb.png', 'Shohag', 'C#', '2017-12-02 10:50:00', 'You can only write a C# post.', 0),
(14, 2, 'PHP Post will be go here....', '<p>British eating havits are very different now form thity nyears ago.No longer are tastes confined to roast beef mint the the present age is marked not only by the importance of the family as an ecominic and welfare instutions but also by its increasing importance as an arrgement for socilising children and for the phychology support of adults there has been awide disntergation of large</p>\r\n<p>&nbsp;</p>\r\n<p>kin groups and an intensification of relationships within the nuclear family Moreever the world is seeing an increasing association of women with earning and out of home activities. In the pre industrial feaudal society both husbands and wives worked in the fields outside the home However in the industrial period women were segregated from out of home productive work the earth become the place for them so cooking cleaning washing giving birth and all other activities became .</p>\r\n<p>&nbsp;</p>\r\n<p>their responsibility.In the post war period women started joining the workforce contributing to family income and thus started excrising an infulance on family afaairs previously authority in the family rested on the husbands who was the decision marker in all maters .but women with their economic power started influenching.&nbsp;&nbsp;</p>\r\n<p>British eating havits are very different now form thity nyears ago.No longer are tastes confined to roast beef mint the the present age is marked not only by the importance of the family as an ecominic and welfare instutions but also by its increasing importance as an arrgement for socilising children and for the phychology support of adults there has been awide disntergation of large kin groups and an intensification of relationships within the nuclear family Moreever the world is seeing an increasing association of women with earning and out of home activities. In the pre industrial feaudal society both husbands</p>\r\n<p>&nbsp;</p>\r\n<p>and wives worked in the fields outside the home However in the industrial period women were segregated from out of home productive work the earth become the place for them so cooking cleaning washing giving birth and all other activities became .their responsibility.In the post war period women started joining the workforce contributing to family income and thus started excrising an infulance on family afaairs previously authority in the family rested on the husbands who was the decision marker in all maters .but women with their economic power started influenching.&nbsp;&nbsp;</p>', 'upload/d7038df87e.jpg', 'Parbhez', 'PHP, Php Coding', '2017-12-02 10:56:03', 'You can only write a PHP post.', 2),
(15, 11, 'Paython Post will be go here....', '<p>No longer are tastes confined to roast beef mint the the present age is marked not only by the importance of the family as an ecominic and welfare instutions but also by its increasing importance as an arrgement for socilising children and for the phychology support of adults there has been awide disntergation of large kin groups and an intensification of relationships within the nuclear family Moreever the world is seeing an increasing association of women with earning and out of home activities.</p>\r\n<p>&nbsp;</p>\r\n<p>No longer are tastes confined to roast beef mint the the present age is marked not only by the importance of the family as an ecominic and welfare instutions but also by its increasing importance as an arrgement for socilising children and for the phychology support of adults there has been awide disntergation of large kin groups and an intensification of relationships within the nuclear family Moreever the world is seeing an increasing association of women with earning and out of home activities.</p>\r\n<p>&nbsp;</p>\r\n<p>No longer are tastes confined to roast beef mint the the present age is marked not only by the importance of the family as an ecominic and welfare instutions but also by its increasing importance as an arrgement for socilising children and for the phychology support of adults there has been awide disntergation of large kin groups and an intensification of relationships within the nuclear family Moreever the world is seeing an increasing association of women with earning and out of home activities.</p>', 'upload/7f3334622c.jpg', 'Faisal', 'Paython, paython coding', '2017-12-03 04:08:47', 'You can only write a paython post.', 2),
(20, 13, 'About me', '<p><strong>à¦®à¦¾à¦‡ à¦¨à§‡à¦‡à¦® à¦‡à¦œ à¦®à¦¾à¦¸à§à¦¦ à¦ªà¦¾à¦°à¦¬à§‡à¦œà¥¤ à¦†à¦‡ à¦°à¦¿à¦¡ à¦‡à¦¨ Instiute Of Computer Science &amp; Technology. à¦†à¦‡ à¦à¦® à¦¸à¦¿à¦®à§à¦ªà¦² à¦¬à§Ÿà¥¤</strong></p>\r\n<p>Only by the importance of the family as an ecominic and welfare instutions but also by its increasing importance as an arrgement for socilising children and for the phychology support of adults there has been awide disntergation of large kin groups and an intensification of relationships within the nuclear family Moreever the world is seeing an increasing association of women with earning and out of home activities. In the pre</p>\r\n<p>&nbsp;</p>\r\n<p>industrial feaudal society both husbands and wives worked in the fields outside the home However in the industrial period women were segregated from out of home productive work the earth become the place for them so cooking cleaning washing giving birth and all other activities became .Only by the importance of the family as an ecominic and welfare instutions but also by its increasing importance as an</p>\r\n<p>&nbsp;</p>\r\n<p>arrgement for socilising children and for the phychology support of adults there has been awide disntergation of large kin groups and an intensification of relationships within the nuclear family Moreever the world is seeing an increasing association of women with earning and out of home activities. In the pre industrial feaudal society both husbands and wives worked in the fields outside the home However in the industrial period women were segregated from out of home productive work the earth become the place for them so cooking cleaning washing giving birth and all other activities became .</p>\r\n<p>&nbsp;</p>\r\n<p><strong>à¦†à¦° à¦•à¦¿à¦›à§ à¦¬à¦²à¦¾à¦° à¦¨à¦¾à¦‡à¥¤ à¦…à¦¨à§‡à¦• à¦¬à¦²à¦›à¦¿à¥¤</strong></p>', 'upload/bf923f5817.jpg', 'Parbhez', 'About me', '2017-12-03 13:10:38', 'You can only write a about yourself post.', 0),
(21, 15, 'About healthcare', '<p><span>The world is seeing an increasing association of women with earning and out of home activities. In the pre industrial feaudal society both husbands and wives worked in the fields outside the home However in the industrial period women were segregated from out of home productive work the earth become the place for them so cooking cleaning washing giving birth and all other activities became .their responsibility.In the post war period women started joining the workforce contributing to family income and thus started excrising an infulance on family afaairs previously authority in the family rested on the husbands who was the decision marker in all maters.</span></p>\r\n<p><span>The world is seeing an increasing association of women with earning and out of home activities. In the pre industrial feaudal society both husbands and wives worked in the fields outside the home However in the industrial period women were segregated from out of home productive work the earth become the place for them so cooking cleaning washing giving birth and all other activities became .their responsibility.In the post war period women started joining the workforce contributing to family income and thus started excrising an infulance on family afaairs previously authority in the family rested on the husbands who was the decision marker in all maters</span></p>\r\n<p><span>The world is seeing an increasing association of women with earning and out of home activities. In the pre industrial feaudal society both husbands and wives worked in the fields outside the home However in the industrial period women were segregated from out of home productive work the earth become the place for them so cooking cleaning washing giving birth and all other activities became .their responsibility.In the post war period women started joining the workforce contributing to family income and thus started excrising an infulance on family afaairs previously authority in the family rested on the husbands who was the decision marker in all maters</span></p>\r\n<p><span>The world is seeing an increasing association of women with earning and out of home activities. In the pre industrial feaudal society both husbands and wives worked in the fields outside the home However in the industrial period women were segregated from out of home productive work the earth become the place for them so cooking cleaning washing giving birth and all other activities became .their responsibility.In the post war period women started joining the workforce contributing to family income and thus started excrising an infulance on family afaairs previously authority in the family rested on the husbands who was the decision marker in all maters</span></p>', 'upload/8d67b2f88b.jpg', 'Tusi', 'healthcare', '2017-12-05 04:37:19', 'You can only write a HealthCare post.', 0),
(22, 14, 'About My First Blog', '<p><span>family as an ecominic and welfare instutions but also by its increasing importance as an arrgement for socilising children and for the phychology support of adults there has been awide disntergation of large kin&nbsp;</span><span>family as an ecominic and welfare instutions but also by its increasing importance as an arrgement for socilising children and for the phychology support of adults there has been awide disntergation of large kin&nbsp;</span></p>\r\n<p>&nbsp;</p>\r\n<p><span>family as an ecominic and welfare instutions but also by its increasing importance as an arrgement for socilising children and for the phychology support of adults there has been awide disntergation of large kin&nbsp;</span><span>family as an ecominic and welfare instutions but also by its increasing importance as an arrgement for socilising children and for the phychology support of adults there has been awide disntergation of large kin&nbsp;</span></p>\r\n<p>&nbsp;</p>\r\n<p><span>family as an ecominic and welfare instutions but also by its increasing importance as an arrgement for socilising children and for the phychology support of adults there has been awide disntergation of large kin&nbsp;</span><span>family as an ecominic and welfare instutions but also by its increasing importance as an arrgement for socilising children and for the phychology support of adults there has been awide disntergation of large kin</span></p>', 'upload/148d4cf9bf.jpg', 'editor', 'Cricket play', '2018-01-13 13:57:43', 'You can only write a Cricket post.', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social`
--

CREATE TABLE `tbl_social` (
  `id` int(11) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `linkedin` varchar(255) NOT NULL,
  `googleplus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_social`
--

INSERT INTO `tbl_social` (`id`, `facebook`, `twitter`, `linkedin`, `googleplus`) VALUES
(1, 'http://www.facebook.com/masud.ptr', 'http://www.twitter.com/masud.tw', 'http://www.linkedin.com/masud.ln', 'http://www.googleplus.com/masud.gp');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_theme`
--

CREATE TABLE `tbl_theme` (
  `id` int(11) NOT NULL,
  `theme` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_theme`
--

INSERT INTO `tbl_theme` (`id`, `theme`) VALUES
(1, 'green');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `name`, `username`, `password`, `email`, `details`, `role`) VALUES
(2, '', 'author', '81dc9bdb52d04dc20036dbd8313ed055', '', '', 1),
(3, '', 'editor', '81dc9bdb52d04dc20036dbd8313ed055', '', '', 2),
(5, 'Masud Parbhez', 'admin', '81dc9bdb52d04dc20036dbd8313ed055', 'masud.affb@gmail.com', '<p>Hey i am masud Parbhez</p>', 0),
(7, '', 'New user', 'ad8127d3ab9389e4444fc0a748a3ced5', 'new@gmail.com', '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `title_slogan`
--

CREATE TABLE `title_slogan` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slogan` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `title_slogan`
--

INSERT INTO `title_slogan` (`id`, `title`, `slogan`, `logo`) VALUES
(1, 'ICST Feni', 'ICST Hospital mode,Feni', 'upload/Logo.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_footer`
--
ALTER TABLE `tbl_footer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_page`
--
ALTER TABLE `tbl_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_social`
--
ALTER TABLE `tbl_social`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_theme`
--
ALTER TABLE `tbl_theme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `title_slogan`
--
ALTER TABLE `title_slogan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tbl_footer`
--
ALTER TABLE `tbl_footer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_page`
--
ALTER TABLE `tbl_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `tbl_social`
--
ALTER TABLE `tbl_social`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_theme`
--
ALTER TABLE `tbl_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `title_slogan`
--
ALTER TABLE `title_slogan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
