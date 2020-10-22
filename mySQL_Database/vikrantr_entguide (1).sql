-- phpMyAdmin SQL Dump
-- version 4.7.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 21, 2020 at 03:34 PM
-- Server version: 5.5.65-MariaDB
-- PHP Version: 7.2.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vikrantr_entguide`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(3) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'All'),
(48, 'Music'),
(52, '3D Art'),
(56, 'Coding'),
(57, 'Design '),
(58, 'Assignments');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(3) NOT NULL,
  `comment_post_id` int(3) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `comment_email` varchar(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_status` varchar(255) NOT NULL,
  `comment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_post_id`, `comment_author`, `comment_email`, `comment_content`, `comment_status`, `comment_date`) VALUES
(34, 159, 'Vikrant', 'xyz@gmail.com', 'hey im interested in this course', 'Approved', '2020-08-30'),
(35, 200, 'Sanket', 'snktredekar@gmail.com', 'Check', 'Approved', '2020-09-08'),
(36, 150, 'Martin', '', 'My girlfriend is gonna love this! Thank you so much!!', 'unapproved', '2020-09-17');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(255) NOT NULL,
  `strFirstName` varchar(255) NOT NULL,
  `strLastName` varchar(255) NOT NULL,
  `strEmail` varchar(255) NOT NULL,
  `nPhone` int(255) NOT NULL,
  `strMessage` varchar(255) NOT NULL,
  `utcDatems` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `strFirstName`, `strLastName`, `strEmail`, `nPhone`, `strMessage`, `utcDatems`) VALUES
(10, 'John', 'Adam', 'john@gmail.com', 999999991, 'Hello I need help', 1555137443),
(14, 'Vikrant', 'Rajan', 'vikrantrajan93@gmail.com', 462362721, 'HEY THIS IS WORKING RIGHT NOW', 1560232413),
(17, 'Allison', 'Jolly', 'ally@jolly.com', 998447182, 'Hey I am really interested in working with entguide! Please call me asap', 1560237646);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(3) NOT NULL,
  `post_category_id` int(3) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_content` text NOT NULL,
  `post_tags` varchar(255) NOT NULL,
  `post_comment_count` int(255) NOT NULL,
  `post_status` varchar(255) NOT NULL DEFAULT 'draft',
  `post_views_count` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_category_id`, `post_title`, `post_author`, `post_date`, `post_image`, `post_content`, `post_tags`, `post_comment_count`, `post_status`, `post_views_count`) VALUES
(150, 56, 'Web Development', 'Sanket', '2021-04-15', '1_Tgn8ZHDoG_ySzUp5ZPxa2w-1000x500.jpeg', '../posts/1222_Web Development.txt', 'html, css, web, development, workshops', 2, 'Published', 117),
(159, 56, 'Machine Learning & A.I.', 'Vikrant', '2021-01-05', 'Machine Learning.jpg', '../posts/1234_Machine Learning & A.I.txt', 'music, production, workshop, workshops, ', 4, 'Published', 92),
(162, 57, 'Graphic Design Specialization', 'Vikrant', '2021-11-20', 'design.jpg', '../posts/1235_Graphic Design Specialization.txt', 'design, workshop, photoshop, illustrator', 2, 'Published', 89),
(163, 52, 'Unity Certified 3D Artist Specialization', 'Vikrant', '2021-01-29', 'unity.jpg', '../posts/1236_Unity Certified 3D Artist Specialization.txt', '3d, workshop', 2, 'Published', 61),
(164, 56, 'Block Chain', 'Vikrant', '2021-01-08', 'blockchain-technology-1-1000x500.jpeg', '../posts/1237_Block Chain.txt', 'workshop', 0, 'Published', 34),
(200, 48, 'Music Production Specialization', 'Vikrant', '2021-05-15', 'music-painting-6.jpg', '../posts/1238_Music Production Specialization.txt', 'music, production, workshop, workshops, ', 1, 'Published', 29);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(3) NOT NULL,
  `username` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_firstname` varchar(255) DEFAULT NULL,
  `user_lastname` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_image` text,
  `user_role` varchar(255) NOT NULL,
  `randSalt` varchar(255) NOT NULL DEFAULT '$2y$10$iusesomecrazystrings22'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `user_password`, `user_firstname`, `user_lastname`, `user_email`, `user_image`, `user_role`, `randSalt`) VALUES
(26, 'Vikrant', '$2y$10$iusesomecrazystrings2ui1qr860E30b0c9ijNqwCSwHnHdgz.1K', 'Vikrant', 'Rajan', 'vikrantrajan93@gmail.com', '', 'Admin', '$2y$10$iusesomecrazystrings22'),
(43, 'kouis_ou@thecdm.ca', '$2y$10$iusesomecrazystrings2umI7b8CEW460glw6FT4ESHH/IlvC.HWm', 'Kouis ', 'Ou', 'kouis_ou@thecdm.ca', '', 'Admin', '$2y$10$iusesomecrazystrings22'),
(44, 'allyson_zhong@thecdm.ca', '$2y$10$iusesomecrazystrings2umI7b8CEW460glw6FT4ESHH/IlvC.HWm', 'Allyson', 'Zhong', 'allyson_zhong@thecdm.ca', '', 'Admin', '$2y$10$iusesomecrazystrings22'),
(45, 'valentina_forte@thecdm.ca', '$2y$10$iusesomecrazystrings2ui1qr860E30b0c9ijNqwCSwHnHdgz.1K', 'Valentina', 'Forte', 'valentina_forte@thecdm.ca', '', 'Admin', '$2y$10$iusesomecrazystrings22'),
(46, 'julia_read@thecdm.ca', '$2y$10$iusesomecrazystrings2umI7b8CEW460glw6FT4ESHH/IlvC.HWm', 'Julia', 'Reed', 'julia_read@thecdm.ca', '', 'Admin', '$2y$10$iusesomecrazystrings22'),
(47, 'jaclynn_wong@thecdm.ca', '$2y$10$iusesomecrazystrings2umI7b8CEW460glw6FT4ESHH/IlvC.HWm', 'Jaclynn', 'Wong', 'jaclynn_wong@thecdm.ca', '', 'Admin', '$2y$10$iusesomecrazystrings22'),
(48, 'meg', '$2y$10$iusesomecrazystrings2uKX87QtMcE8cuQ4YYZMOiQaQToofVP1K', 'Meg', 'Dimma', 'meg_dimma@thecdm.ca', '', 'Admin', '$2y$10$iusesomecrazystrings22'),
(49, 'Parastou', '$2y$10$iusesomecrazystrings2uUoi7veg82jKBlzkke8qIn1AOtjGLE0K', NULL, NULL, 'heidari_191@yahoo.com', NULL, 'Admin', '$2y$10$iusesomecrazystrings22'),
(50, 'Courtney Clarkson', '$2y$10$iusesomecrazystrings2uRIqgQbYjdoBOLvk6ZmrsmACRWR1MxZO', NULL, NULL, 'Courtney_clarkson@thecdm.ca', NULL, 'Admin', '$2y$10$iusesomecrazystrings22'),
(51, 'kyle', '$2y$10$iusesomecrazystrings2urYbJHo8FzDgTDZgTr0A07BvMUbGBq6W', 'Kyle', 'Liu', 'kyle.qi.liu@gmail.com', '', 'Admin', '$2y$10$iusesomecrazystrings22'),
(52, 'Yuan', '$2y$10$iusesomecrazystrings2uR2OCbxOPGFJe8Df3.JTJ/bH/t7Mk5DC', 'yuan', 'Zhang', 'Yuan-Zhang@thecdm.ca', '', 'Admin', '$2y$10$iusesomecrazystrings22'),
(53, 'santiago', '$2y$10$iusesomecrazystrings2umI7b8CEW460glw6FT4ESHH/IlvC.HWm', 'Santiago', 'Sotomayor', 'Santiago_Sotomayor@thecdm.ca', '', 'Admin', '$2y$10$iusesomecrazystrings22'),
(54, 'jjw', '$2y$10$iusesomecrazystrings2uFf7Hpss2Kecw8ri6G1AXxlT7/UfN6ZS', NULL, NULL, 'jaclynn_wong@thecdm.ca', NULL, 'Admin', '$2y$10$iusesomecrazystrings22'),
(55, 'Celina', '$2y$10$iusesomecrazystrings2ujHNK6m7YZuMnNriBRbiEknDsEywzVVm', NULL, NULL, 'celinachuchu@hotmail.com', NULL, 'Admin', '$2y$10$iusesomecrazystrings22'),
(56, 'LamKwan', '$2y$10$iusesomecrazystrings2uv/iLyUhjDG0uF7f4pvMfCfY8lRALhay', 'Lam', 'Kwan', 'Lam_Kwan@thecdm.ca', '', 'Admin', '$2y$10$iusesomecrazystrings22'),
(57, 'Sumaer', '$2y$10$iusesomecrazystrings2uKX7dXv59OWRGfkCeSh7zGq/XJjD/i46', NULL, NULL, 'sumaer_hussain@thecdm.ca', NULL, 'Admin', '$2y$10$iusesomecrazystrings22'),
(58, 'Farbod', '$2y$10$iusesomecrazystrings2uGtDpLi/sz8giU0Qqyz0jXbOCxzug3S6', NULL, NULL, 'farbod_tabaei@thecdm.ca', NULL, 'Admin', '$2y$10$iusesomecrazystrings22'),
(60, 'Ali Shafiei', '$2y$10$iusesomecrazystrings2ur6nj.D8DC3mirp3W7h1NPF6FmX3StMW', NULL, NULL, 'ali_shafiei@thecdm.ca', NULL, 'Admin', '$2y$10$iusesomecrazystrings22'),
(61, 'jaclynn.wong', '$2y$10$iusesomecrazystrings2uFf7Hpss2Kecw8ri6G1AXxlT7/UfN6ZS', NULL, NULL, 'jaclynn_wong@thecdm.ca', NULL, 'Admin', '$2y$10$iusesomecrazystrings22'),
(62, 'jaclynn', '$2y$10$iusesomecrazystrings2ui1qr860E30b0c9ijNqwCSwHnHdgz.1K', 'Jaclynn', 'Wong', 'jaclynn_wong@thecdm.ca', '', 'Admin', '$2y$10$iusesomecrazystrings22'),
(64, 'sanket', '$2y$10$iusesomecrazystrings2ui1qr860E30b0c9ijNqwCSwHnHdgz.1K', 'Sanket', 'Redekar', 'snktredekar@gmail.com', '', 'Subscriber', '$2y$10$iusesomecrazystrings22'),
(65, 'dan', '$2y$10$iusesomecrazystrings2ui1qr860E30b0c9ijNqwCSwHnHdgz.1K', 'Dan', 'Brooks', 'dan@gmail.com', '', 'Subscriber', '$2y$10$iusesomecrazystrings22'),
(66, 'pedro', '$2y$10$iusesomecrazystrings2ui1qr860E30b0c9ijNqwCSwHnHdgz.1K', 'Pedro', 'Cardial', 'pedro@gmail.com', '', 'Admin', '$2y$10$iusesomecrazystrings22');

-- --------------------------------------------------------

--
-- Table structure for table `users_online`
--

CREATE TABLE `users_online` (
  `id` int(11) NOT NULL,
  `session` varchar(255) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_online`
--

INSERT INTO `users_online` (`id`, `session`, `time`) VALUES
(66, '1torkjggqcv71jrmc8hbj6hklh', 1559866959),
(67, 'hoq4ggmjmrofa2ho4aknkr4sg5', 1559868305),
(68, 'kbk9e1m6q1ronloa1jvopn5oi3', 1560200271),
(69, '20be87f41c397bf3b6152a4ced77cbdd', 1559949924),
(70, '01d4ae8d9181aaa299d6a82255f0ac8f', 1560109078),
(71, 'vh6jukr1li9hi8jl4rj3g8k5o3', 1560200215),
(72, 'dm5ppq5bp458jj1eggh1h85hgg', 1560237889),
(73, '2908df97674d2fba6dcd11c52f18957b', 1560832024),
(74, '1b37815208fe0b02345b427c85338f30', 1564095149),
(75, '95455751dc6cc5823b2dc5c2168ab38d', 1560816561),
(76, '72f48fbe997fd74ce0e556d4b4d44a92', 1560842974),
(77, 'e56e717cada0da03b4092223b86c2210', 1560938219),
(78, 'aca4160134d1a13ab6922520bca0219f', 1560840817),
(79, '33dc29f01daf9fa12848b8f87bc7488f', 1560840819),
(80, 'b0335051f7f05a09db38085a69dfd602', 1560840821),
(81, '15d3cf6b683e975dbca2e367303abe98', 1560840824),
(82, '9dd5d3d376361759b6b2073c0bebf77d', 1560840831),
(83, '7634406827597a5a15a138dd8c65d444', 1560840835),
(84, 'ecd411d73eacf791ec0b65306748b3f0', 1560840840),
(85, '3710d87b0160e35d647d421630ce034c', 1560841452),
(86, '640fa8fc36a67a25ec67ec950cfff88b', 1560935032),
(87, '7e646517041b94eee52bd4e3ed30efea', 1560939957),
(88, '0c1c6b696f0f1b763a682ff6d04bc455', 1560938110),
(89, 'a1392eeaf3fdb0e7502919e470ad0d54', 1560938116),
(90, 'f9df0e0de6e19fa05b13371b3dacca32', 1560938116),
(91, 'bf88a3907943f76f463f87552319fc44', 1560938518),
(92, '379bc67d438f8eccae352bbb7ab0d6c7', 1562318282),
(93, '35a584313ef281ca3e99e9942a3da5c7', 1562317571),
(94, '68ace4e17790beee70e50188d2888e81', 1562318740),
(95, 'e9efc0d8044043e2ea6a1dfa48f11c81', 1562351019),
(96, 'd89e33416cbb036f01abd3906c850ba2', 1570693847),
(97, 'c03a2029d4e2502ecc421e6be8f6ad1b', 1564513975),
(98, '7592963d018a7f36eef7d4d3d65b291b', 1565635552),
(99, '1c0982de53351eb5ebcc250127888a28', 1570675074),
(100, 'a17405b4c996bfc60852a4257dd243ea', 1569266167),
(101, '9cb7a9e3671bc0ab38a631958a11f5f5', 1570133759),
(102, 'te8ff572tejf6695349mhmliqk', 1570692835),
(103, '64ba06d803513c301159f5c11a1e2bd6', 1570695001),
(104, '1dfa1e11e00e4aefe3ca48c1806c8b22', 1570727043),
(105, 'ff81373c25a6c5d4baacb78e0ba720ce', 1570727186),
(106, '7f0df60092ea518e717cfefb32cb6eb0', 1570728251),
(107, 'e54283fa01168712465c6ac653861a0f', 1571354885),
(108, '23ab95ac1781e7b017f0ca199cc712bb', 1571805406),
(109, '6e796a411111e6c3290b1740334bf540', 1570820573),
(110, 'b625cd27e6687f0e563407d6951c304e', 1570824694),
(111, '4dcc0a22ff324b6fef1902b21f5f021a', 1570824464),
(112, 'b66516bdec75a498831bdcf226ec4698', 1570911462),
(113, '792f4c1485d2c5ef23bb186e514c57c1', 1571355303),
(114, 'pset9d8i4jhu8g1rlt5scr1mid', 1571807374),
(115, 'lkf1hnlnktj0ilahdf4g8l0nfq', 1571857921),
(116, '2g5cd74tin46fqfgdftbnkuege', 1571895466),
(117, 'b43b9780c8605975748082d4f972a5e5', 1571896464),
(118, 'u0n74e5ccvv594njlft258mmb6', 1571898836),
(119, 'a10bb4cfbf6537d62f09ee3f833999f7', 1571899593),
(120, '55cf6bf45b7a9cfb4bd32c96b98da4fd', 1571948143),
(121, '2gt62ii1q6ucbje5cphmqogkui', 1572417775),
(122, '3b28aa979ff48af0f854f74b2db96ae5', 1572421740),
(123, '716bb557ebdcdbfdf30d6ac74285b27f', 1572624411),
(124, '97sr0q4msc6q91ut2vciqofklf', 1572648816),
(125, '763cb50dd4bfd51abd968d46e66440fd', 1572734107),
(126, 'rh1vui280kfoopbdrv1mp1lijb', 1572736007),
(127, 'kthamikucee3e3dlho1tpelrfj', 1572739046),
(128, '3ukdfrs9p9oenj1rb14dn3pjnb', 1572742554),
(129, 'nsqj9oqcc5qu9qb2kq3cbblu68', 1572744263),
(130, 'e3d4a98bbfe7ee22ac63ef3e8fe5c940', 1572801681),
(131, '129a65de04a1b1a0fb1a0b16c040cb8d', 1572804018),
(132, '5501cd0h5f8ro4t936bgrjrdrq', 1572804687),
(133, 'a3f6af63b672249d269eaf88a248da1d', 1572817585),
(134, 'vl1a6h5dn9armg0qqnsa3193o8', 1572830790),
(135, '78a2fb1ac5b0f36961dc8d93c9eac583', 1572831534),
(136, '824483a0d367c3facbac2753904401b1', 1572852902),
(137, '616cdff40aed909a4963d52b922f9e56', 1572843764),
(138, 'd11c00e1d631a65a71de0b40db3d6e78', 1572834714),
(139, '11378f46bc52ad2a40dfba00f18b46cb', 1572839304),
(140, '5b0e0ec6fba15b91ee22b0bbd30c1e24', 1572841971),
(141, '60eef6ce9b09c6ba117c88c79db9196f', 1572842044),
(142, '9b8fcda3f9ff6957764ab0761ffc7b77', 1572856236),
(143, 'f5281ceca34564bc4a77bec1cd80a1e6', 1572847111),
(144, '7278ea3d30a1075c202af758adacd1be', 1572852617),
(145, 'i8g1hauam1mndu5qage3ct5p9u', 1572856037),
(146, '11af84fb817feb98d560fc9dd973dce8', 1572858943),
(147, 'd03fe25228258e952252249e86aa72fe', 1572859027),
(148, '53p3vmdjmdmu2rc378ikbf824k', 1572860577),
(149, 'cv6onumrll7e6k5nv0b6vr5ol7', 1572920052),
(150, 'knse2r7u80oegomuqugcvs1846', 1579383895),
(151, 'ogmuglruq50ich7fjjj6caotk2', 1572902662),
(152, 'd0v5iugns5oe4jh2965ai3fji4', 1572904492),
(153, 'pg1phee20efluie03ps9shlg62', 1572904553),
(154, '0o7hhihvhl8m34825cqa4fjdc1', 1573209275),
(155, '7god7sn8iiunlv655g2nquhp35', 1572927095),
(156, 'aajtims086clfkhe9cgdrg0to7', 1574713865),
(157, 'j2tsh4dq3mbhus5mgl642jl7d3', 1573598474),
(158, 'dq6io9th5mu9na16q2a8564fm4', 1573783087),
(159, 'avn5ebg2a16qioufmcc5p9oct6', 1574577447),
(160, 'f8sk1l8ghgn153ckhlbgol3822', 1574716555),
(161, '8990926e6fdfb5ddb5917edaa4b6753d', 1575077412),
(162, 'b73c0e26665ec52ab2ce72115c08575f', 1578287693),
(163, '86575aa44566f226e824403198009b17', 1579121228),
(164, '092f8838dbc263eca9804c517fa82709', 1578519031),
(165, '534b003863220e67b3df4cfa9dbddbad', 1578582189),
(166, 'ca7c79716853e7f3f15eff81c0c2f9d7', 1579220438),
(167, '4f3fc340fd6473561cf4e5048a39250e', 1579803915),
(168, 'e3c5c300185392847dbcb1a24bc9c42d', 1582151878),
(169, 'd15749ca0e5f85cfebe494fb721cad9d', 1584392539),
(170, 'fb69904b6f6d34c70cb753578339099b', 1586125481),
(171, '9e35a8293fed68aa473d8476989c8f84', 1586128899),
(172, 'b27447d0ce7af18e4410e5232e7e39d7', 1586128781),
(173, '9bea698a838810b34779642daaa31b19', 1586132947),
(174, 'e14c004f332cbff256c1cc1d1830409b', 1586137633),
(175, '85377e13e6858c496eb2ccef1a1b5e75', 1589583448),
(176, '5844241422393f0cb3f57b658101789b', 1589853543),
(177, '313be3fc98491b94cb834aba1d0136f7', 1589922806),
(178, 'a22335d20fc150fe3bb0f16bd3b8db1c', 1592346197),
(179, '37018792d17c3c3b38034e39d5dbe4cb', 1595466485),
(180, '32349a8f7bd7e8a35bc5723a97e59eee', 1599807087),
(181, '824df27f12eb0fa9ee0b038052447a23', 1599215989),
(182, '50ab718a48485a789567b90dd03664ca', 1599625717),
(183, 'c205733592154e3ed4f6a7011086f3ea', 1599663306),
(184, '391f62beab5ac713ea674c03fa579fb4', 1599959127),
(185, '5882158967cde9527fd984523bdaf748', 1600042742),
(186, '4060cfb546d7836ac87c589f159ebd36', 1600159475),
(187, '19e05684a34485d7fc458df004718e50', 1601698402),
(188, '70c110b548b521d16adad7b32f702e6d', 1601739973),
(189, 'fd31c1fad5dad567476eeac139be7226', 1602106795),
(190, 'd3c097733b50c13bee266e2aa510ef6f', 1602099646);

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
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

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
  MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `users_online`
--
ALTER TABLE `users_online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
