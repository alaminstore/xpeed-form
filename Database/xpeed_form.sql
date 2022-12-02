-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2022 at 07:13 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xpeed_form`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(10, 'Alamin', 'alamin.piash.ap23@gm', '12345678'),
(11, 'Alamin', 'alamin.piash.ap23@gm', '12345678');

-- --------------------------------------------------------

--
-- Table structure for table `xpeed_users`
--

CREATE TABLE `xpeed_users` (
  `id` bigint(20) NOT NULL,
  `amount` int(10) NOT NULL,
  `buyer` varchar(255) NOT NULL,
  `receipt_id` varchar(20) NOT NULL,
  `items` varchar(255) NOT NULL,
  `buyer_email` varchar(50) NOT NULL,
  `buyer_ip` varchar(20) DEFAULT NULL,
  `note` text NOT NULL,
  `city` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `hash_key` varchar(255) DEFAULT NULL,
  `entry_at` date DEFAULT NULL,
  `entry_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `xpeed_users`
--

INSERT INTO `xpeed_users` (`id`, `amount`, `buyer`, `receipt_id`, `items`, `buyer_email`, `buyer_ip`, `note`, `city`, `phone`, `hash_key`, `entry_at`, `entry_by`) VALUES
(1, 21, 'Do perspiciatis nih', 'Consequatur suscipit', '', 'lagofibe@mailinator.com', NULL, 'Sit ut magna verita', 'Ex voluptatem ut eum', '1', NULL, '2002-12-01', 18),
(2, 37, 'Fuga Similique odit', 'Doloremque asperiore', '', 'cusohaqeq@mailinator.com', NULL, 'Aut porro commodi qu', 'Quaerat voluptatum d', '1687858755', NULL, NULL, 4),
(3, 9, 'Veniam mollitia non', 'Porro eius ut et id ', '', 'xagyvi@mailinator.com', NULL, 'Cum laborum Recusan', 'Dolorem et tempore ', '2147483647', NULL, NULL, 73),
(4, 72, 'Non duis labore pari', 'Corporis qui aliqua', '', 'lopizatox@mailinator.com', NULL, 'Odit ipsum irure com', 'Velit laboris quia n', '2147483647', NULL, NULL, 26),
(5, 91, 'Qui laudantium proi', 'Dolor laborum ipsum', '', 'coboravoja@mailinator.com', NULL, 'Quam illum qui moll', 'Aut dicta sint minim', '1685220124', NULL, NULL, 11),
(6, 83, 'Cum ducimus autem m', 'Voluptatum ratione q', '', 'gozen@mailinator.com', NULL, 'In aliquip fugit et', 'Sint id officiis qui', '2147483647', NULL, NULL, 96),
(7, 49, 'Praesentium doloremq', 'Magni sunt deleniti ', '', 'kuzaheli@mailinator.com', NULL, 'Excepturi in magni m', 'Aperiam aut assumend', '2147483647', NULL, NULL, 14),
(8, 76, 'Duis doloremque itaq', 'Enim tempora ea ut e', '', 'lobovam@mailinator.com', NULL, 'Magnam debitis conse', 'At incidunt ad eum ', '88001566668415', NULL, NULL, 97),
(9, 46, 'Et aspernatur mollit', 'Accusamus iste corru', '', 'xasab@mailinator.com', NULL, 'Ducimus porro quo a', 'Maiores aut accusamu', '8801587856519', NULL, NULL, 55),
(10, 62, 'Molestiae nisi qui l', 'Modi ex a consequat', '', 'syqux@mailinator.com', NULL, 'Esse commodo tempor', 'Deserunt vitae eveni', '8801255587412', NULL, NULL, 7),
(11, 25, 'Ut et in eveniet la', 'Fuga Voluptatibus e', '', 'qevabe@mailinator.com', NULL, 'Omnis quia soluta mi', 'Veniam voluptas dol', '88+1 (958) 981-3778', NULL, NULL, 41),
(12, 63, 'Expedita natus id do', 'Elit cillum dolores', '', 'nyhasaxado@mailinator.com', NULL, 'Nemo hic illum et n', 'Amet sequi dolores ', '88+1 (109) 402-5868', NULL, NULL, 43),
(13, 82, 'John Doe', 'Adipisicing eos ape', '', 'wusizyrowi@mailinator.com', NULL, 'Consectetur quia qu', 'Pariatur Quia offic', '8801598745633', NULL, NULL, 49),
(14, 27, 'Aut nihil voluptate ', 'Quaerat veniam opti', '', 'rehocexu@mailinator.com', NULL, 'Enim aut beatae repr', 'Tempor qui non eu se', '88+1 (883) 233-2474', NULL, NULL, 24),
(15, 66, 'Quos excepturi sapie', 'Quia veniam ea perf', '', 'jokaxym@mailinator.com', NULL, 'Soluta mollit et qua', 'Laboriosam ullam qu', '8801488887722', NULL, NULL, 63),
(16, 27, 'Reiciendis a amet n', 'Et rem nostrum ut op', '', 'mizan@mailinator.com', NULL, 'Aliquip et laboriosa', 'Minus facere accusam', '88+1 (784) 906-7691', NULL, NULL, 4),
(17, 39, 'Est quibusdam repreh', 'Voluptatem eum nisi ', '', 'ducywami@mailinator.com', NULL, 'Dolorem quis non obc', 'Dolorem et eum culpa', '88+1 (887) 248-6759', NULL, NULL, 28),
(18, 22, 'Sint reiciendis nis', 'Cum non doloribus se', '', 'rukucytu@mailinator.com', NULL, 'Ab harum non nulla v', 'Magna facere ut nihi', '88+1 (632) 622-5211', NULL, NULL, 97),
(19, 91, 'Consequatur aut adi', 'Odit magni ipsam exc', '', 'qele@mailinator.com', NULL, 'Deserunt at qui vero', 'Modi deserunt omnis ', '88+1 (312) 653-2356', NULL, NULL, 47),
(20, 22, 'Ipsam quam aliquid o', 'Animi ea accusamus ', '', 'bacyhyk@mailinator.com', NULL, 'Molestiae et sit en', 'Iusto sit sunt alia', '88+1 (641) 739-1865', NULL, NULL, 22),
(21, 41, 'In autem ipsum quam', 'Optio assumenda bea', '', 'jymixa@mailinator.com', NULL, 'Sunt atque sunt dele', 'Accusamus voluptas t', '8801269874563', NULL, NULL, 22),
(22, 69, 'Veniam itaque sint ', 'Quia sunt minim sunt', '', 'simimypil@mailinator.com', NULL, 'Sed omnis dolore mag', 'Reprehenderit tenet', '88+1 (139) 799-2118', NULL, NULL, 24),
(23, 50, 'Consequat Excepturi', 'Adipisci minus fugia', '', 'bejudot@mailinator.com', NULL, 'Quam deleniti iste i', 'Dolor et aperiam Nam', '88+1 (172) 622-5495', NULL, NULL, 19),
(24, 85, 'Quos irure cumque od', 'At soluta ea qui ut ', '', 'fedakaw@mailinator.com', NULL, 'Consequatur ipsa i', 'Quo sit eveniet seq', '88+1 (738) 143-9078', NULL, NULL, 72),
(25, 1, 'Magna vel anim volup', 'Id vitae nulla sed ', '', 'gilofa@mailinator.com', NULL, 'Saepe officiis anim ', 'Omnis sed dolorem pr', '88+1 (157) 639-8004', NULL, NULL, 82),
(26, 58, 'Nostrum consequatur', 'Sunt et quia id eum ', '', 'xukiwol@mailinator.com', NULL, 'Ut deleniti et in ve', 'Hic id dolor sit el', '88+1 (988) 867-6961', NULL, NULL, 71),
(27, 86, 'Consequatur ea perfe', 'Repudiandae sunt odi', '', 'mewu@mailinator.com', NULL, 'Sunt Nam magnam inve', 'Est dolore veniam i', '88+1 (791) 422-1205', NULL, NULL, 61),
(28, 23, 'At qui cupidatat quo', 'Officia sed enim ali', '', 'wacux@mailinator.com', NULL, 'Consectetur et laud', 'Exercitationem porro', '8801698745623', NULL, NULL, 81),
(29, 33, 'Ipsa irure et fugit', 'Ut iste fugit sequi', '', 'tucefem@mailinator.com', '::1', 'Tempor alias est aut', 'Excepteur dolores ad', '88+1 (895) 854-1319', NULL, NULL, 24),
(30, 62, 'Eos et a tempor in o', 'Inventore facilis in', '', 'jopivyj@mailinator.com', '::1', 'Pariatur Enim aperi', 'Dicta earum libero e', '88+1 (867) 338-9776', NULL, NULL, 52),
(31, 16, 'Quo maiores in dolor', 'Consectetur ut repr', '', 'pucopaz@mailinator.com', '::1', 'Nostrum soluta aute ', 'Voluptas voluptatibu', '8801485666611', NULL, NULL, 75),
(32, 2, 'Aut anim illo proide', 'Rem reprehenderit bl', '[\"Flavia Nash\",\"Odysseus Reed\",\"Zelenia Flowers\",\"Angelica Finley\",\"Ima Moore\"]', 'qofan@mailinator.com', '::1', 'Dolore animi necess', 'At magna cumque quos', '8801598741236', NULL, NULL, 1),
(33, 51, 'Accusantium odio mag', 'Dolores voluptate co', '[\"Dominique Sanchez\",\"Curran Mcdowell\",\"Oleg Knapp\"]', 'mitizyl@mailinator.com', '::1', 'Voluptate doloremque', 'Exercitation dolorib', '88+1 (895) 149-9159', NULL, NULL, 56),
(34, 49, 'Expedita illo sed pe', 'Quia assumenda inven', '[\"Joan Bradford\",\"potato\"]', 'tasuli@mailinator.com', '::1', 'Dolores nostrum moll', 'Aute corrupti molli', '88+1 (523) 249-5625', NULL, NULL, 46),
(35, 8, 'Dolor mollitia accus', 'Labore exercitatione', '[\"Isadora Johnston\",\"potato\"]', 'jybamemi@mailinator.com', '::1', 'Ea necessitatibus at', 'Nulla quas sed nostr', '88+1 (504) 589-1117', NULL, '2001-12-22', 40),
(36, 14, 'Et dolor deleniti in', 'Cupiditate officia q', '[\"Miranda Cross\",\"Chiquita Baird\",\"Simon Vaughn\"]', 'wulotavek@mailinator.com', '::1', 'Aute a eligendi cum ', 'Nulla dolores sint ', '88+1 (636) 924-2531', NULL, '2001-12-22', 15),
(37, 76, 'Expedita cillum blan', 'Dicta labore sunt m', '[\"Noelle Reyes\",\"Kim Bond\",\"Deanna Day\"]', 'mavexa@mailinator.com', '::1', 'Nobis ducimus animi', 'Quos ut anim eos ac', '8801698788011', NULL, '2001-12-22', 94),
(38, 71, 'Voluptates ab volupt', 'alamin', '[\"Fatima Pugh\",\"book\",\"pen\"]', 'cydohyj@mailinator.com', '::1', 'Eu voluptate repelle', 'Amet totam autem no', '8801687850401', NULL, '2001-12-22', 55),
(39, 96, 'Suscipit nihil volup', 'alamin', '[\"Isabelle Garcia\",\"pen\"]', 'piqeb@mailinator.com', '::1', 'Dolore amet anim ne', 'Sint aut enim eos n', '8801687850706', '65d370e5df41ad70cb2c07d1fd2c198e072c7e9d', '2001-12-22', 95),
(40, 55, 'Consectetur lorem e', 'Sapiente Nam dolorem', '[\"Rogan Lyons\",\"Garrett Bush\",\"Bertha Melton\",\"Bree Reyes\"]', 'cahyliku@mailinator.com', '::1', 'Et nobis distinctio', 'Beatae consequatur ', '8801598745698', 'cb22babb6a2d6327a49da95e3cdc903232c914ae', '2001-12-22', 13),
(41, 0, '', '', '[\"\"]', '', '::1', '', '', '88', '3656265aa4edaae0118d9135d45f6430bb456855', '2001-12-22', 0),
(42, 47, 'Repudiandae dolor mo', 'Accusantium molestia', '[\"Fiona Kelly\"]', 'waroj@mailinator.com', '::1', 'Dolore dolores provi', 'Velit sunt explica', '8801687850701', 'c8688b2674c9968d8653f33c3729748fe0390878', '2001-12-22', 35),
(43, 92, 'Numquam minim vitae ', 'Neque dolor quis vol', '[\"Dexter Bradshaw\",\"time\"]', 'vuqucuzy@mailinator.com', '::1', 'Voluptatum ex elit ', 'Est facilis consecte', '8801687856498', 'b160bbcbc4f6372fa6bebf380270e5f6922c006e', '2001-12-22', 40),
(44, 92, 'Qui excepteur distin', 'Quia quod incididunt', '[\"Melvin Case\"]', 'majy@mailinator.com', '::1', 'Assumenda eiusmod ex', 'Est repellendus Lab', '8801687850409', '7887f0cbb5633e4339d22398c80163f015ae24b6', '2001-12-22', 1),
(45, 97, 'Nihil atque in volup', 'Adipisci sit cupidit', '[\"Eliana Mosley\"]', 'colohapog@mailinator.com', '::1', 'Eum consequuntur har', 'Expedita iusto cupid', '8801469998877', '8e8087cabf41116f470a787c1ee2ab0d9371726b', '2001-12-22', 84),
(46, 21, 'Sit laudantium dis', 'Incididunt nihil vel', '[\"Aladdin Weeks\"]', 'kobosigix@mailinator.com', '::1', 'Suscipit et est repu', 'Lorem aut earum veli', '8801687850701', 'f08c744fb52dfcb6c8d5fdc99e99d6fda28c8509', '2001-12-22', 82),
(47, 51, 'Sit quas qui natus ', 'Autem sint temporibu', '[\"Diana Dunn\"]', 'maxijofo@mailinator.com', '::1', 'Et obcaecati quia to', 'Laboriosam vero del', '8801687874444', 'c9e6e9f10393722b7fd1e717bc3d371e7ba078e6', '2001-12-22', 47),
(48, 64, 'Sint ut dolore alias', 'Nihil fugiat laborum', '[\"Eugenia Ballard\"]', 'nodixegi@mailinator.com', '::1', 'Saepe nihil iste pro cas ', 'Deleniti enim aliqua', '8801466666666', '46b9cfbde3d847c108d826bb16e60d0e66e9b7d0', '2001-12-22', 84),
(49, 63, 'Quas qui ut dolorum ', 'Aliqua Quis consect', '[\"Mariam Olson\"]', 'alamin.piash.ap23@gmail.com', '::1', 'Quas', 'Dhaka', '8801320582957', '68828b7b26ef218f1ec04a6c3f70bcca95c3612b', '2001-12-22', 12),
(50, 56, 'Doloremque Nam ut es', 'Libero nostrum sint', '[\"Dolan Yang\"]', 'alamin.piash.ap23@gmail.com', '::1', 'Qui', 'Dhaka', '8801320582957', '898f58236d07d8059e6d18d5eca0794564618f84', '2002-12-22', 49),
(51, 45, 'Nisi molestias accus', 'Natus quam nisi debi', '[\"Kareem Sexton\"]', 'alamin.piash.ap23@gmail.com', '::1', 'Et porro', 'Dhaka', '8801320582957', '6119b5ca1f37a52c9432cee7520d37fc88a09f5a', '2002-12-22', 78),
(52, 42, 'Earum quae totam Nam', 'Quia amet dolor id', '[\"Yen Meadows\"]', 'alamin.piash.ap23@gmail.com', '::1', 'Eiusmod', 'Dhaka', '8801320582957', '9f9bb9a22d6ea22f36084ab02f66fc965f0d35f7', '2002-12-22', 14),
(53, 36, 'Exercitationem ipsa', 'Deserunt fugiat culp', '[\"Phelan Delacruz\"]', 'huxu@mailinator.com', '::1', 'Aspernatur consequat Aspernatur consequat', 'Reiciendis in verita', '8801485666611', 'ce5b442229c73833e84fc65f136c330ac4b449c3', '2002-12-22', 83),
(54, 79, 'Doloribus voluptate ', 'Ut quam perspiciatis', '[\"\"]', 'fypyqeri@mailinator.com', '::1', 'Pariatur Earum earu', 'Doloribus beatae dui', '8801688887777', '6dbf8cb1f1047dee73268e195f20d69b825c7941', '2002-12-22', 30),
(55, 24, 'Libero at in neque c', 'Molestiae perspiciat', '[\"Tiger Owen\"]', 'alamin.piash.ap23@gmail.com', '::1', 'Aliquip quam sed off', 'Dhaka', '8801320582953', 'dedcc0c68764f526542581faddc6d9fa43d066ef', '2002-12-22', 21),
(56, 18, 'Non modi harum et de', 'Tempora et sint comm', '[\"Ryan Thompson\"]', 'leqy@mailinator.com', '::1', 'Eum autem veniam cu', 'Non facilis reprehen', '8801466666669', 'b8a5e15c9ad374d7be3d22ea38efc83d03ea3c1d', '2002-12-22', 35),
(57, 74, 'Laudantium qui dese', 'Dolor sit est aliq', '[\"Uriah Jefferson\"]', 'noji@mailinator.com', '::1', 'Enim in sed non dolo', 'Illum proident vol', '8801466666666', '3b0f3b0965fde842b9a24143f5d24a01d2c11e3d', '2002-12-22', 100),
(58, 50, 'Doloremque laboris e', 'Harum sed quam praes', '[\"Kirsten Pugh\"]', 'alamin.piash.ap23@gmail.com', '::1', 'Ipsam a ut architect', 'Dhaka', '8801320582957', 'c4dac718a4355b885b583e4b7973a0967b600a05', '2002-12-22', 101),
(59, 5, 'Et tempor ut in veli', 'Voluptatibus iste fa', '[\"Paula Stanley\",\"jhfi\"]', 'rygymi@mailinator.com', '::1', 'Tempora ab consectet', 'Dicta maxime qui ips', '8801466666664', '6a6f94d03b670e1e4f3ed19b3810db426853dde4', '2002-12-22', 69),
(60, 91, 'Omnis ut ad et excep', 'Cillum dicta deserun', '[\"Kay Jimenez\"]', 'bakyhufare@mailinator.com', '::1', 'Aut possimus sint s', 'Rerum eaque architec', '8801469998874', '4673b8150b13bdb37d70accd44cf94d8f9e07fdd', '2002-12-22', 31),
(61, 89, 'Labore voluptatem R', 'Est atque ullamco ni', '[\"Lani Rhodes\"]', 'tedum@mailinator.com', '::1', 'Consequatur fugit ', 'Laboriosam aut non ', '8801469998874', '16fdc06a4279da1183627cb5b2f76ffb56c2a45b', '2002-12-22', 52),
(62, 54, 'Placeat et similiqu', 'Reiciendis nisi est', '[\"Roth Briggs\"]', 'seqewe@mailinator.com', '::1', 'In est iure sunt omn', 'Eligendi aute nobis ', '8801466998784', 'u?t?U??r????????m?', '2002-12-22', 35),
(63, 78, 'Nesciunt voluptatib', 'Dolorum impedit odi', '[\"Zoe Allison\"]', 'dofe@mailinator.com', '::1', 'Et in laborum sint ', 'Qui et blanditiis om', '8801466699741', 'c9cde47abf527ec35701c81f7ec39b111401578f266fdbedc2243d1275ef84a152c778c3ff5b2ddcf439fe402565f8dfd2346c831374232c5fb7d1afc94213ca', '2002-12-22', 49),
(64, 16, 'Sit quo eveniet seq', 'Ut voluptas quas sin', '[\"Connor Webb\",\"timesssssv\"]', 'fynibujeg@mailinator.com', '::1', 'Lorem rerum aliqua ', 'Est dolore consequa', '8801498745632', '0075eae29c24b9c07a47d38a4fc3f0ead4d6d8d413bde920fe806600d01f08b5cce114caa3ccf7b9ac5527f227a14fbadf89c11a26e421ffe66260e69958028f', '2002-12-22', 36);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xpeed_users`
--
ALTER TABLE `xpeed_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `xpeed_users`
--
ALTER TABLE `xpeed_users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
