-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 27, 2018 lúc 03:00 AM
-- Phiên bản máy phục vụ: 10.1.34-MariaDB
-- Phiên bản PHP: 7.1.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `blog_codeto`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` mediumtext,
  `author` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `author`, `created_at`, `updated_at`) VALUES
(1, 'title', 'content', 'author', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'title2', 'content2', 'author2', '2018-11-23 14:54:47', '2018-11-24 14:54:52'),
(3, '2323', '<p>23232</p>', '23232', '2018-11-26 16:27:12', '2018-11-26 16:27:12'),
(4, 'test1', '<p>tesst1111</p>', 'tesst1', '2018-11-26 16:27:40', '2018-11-26 16:27:40'),
(5, '', '', '', '2018-11-26 16:28:51', '2018-11-26 16:28:51'),
(6, '', '', '', '2018-11-26 16:33:44', '2018-11-26 16:33:44'),
(7, '', '', '', '2018-11-26 16:34:32', '2018-11-26 16:34:32'),
(8, '2232', '<p>23232</p>', '3232', '2018-11-26 16:35:32', '2018-11-26 16:35:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `first_name`, `last_name`, `created_at`, `updated_at`) VALUES
(4, '', '$2b$10$AjWU8S555ex5HhQEahp3y.z/64yDpZ4xIZG6Ee', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, '', '$2b$10$MtaIKATwQORSAO9wxzkDgubwNwBTLNCRkqhcD1', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, '1234', '$2b$10$CnTTg40BfmXD3.qoKcXPV.Y5qtjxSNisHmchWq', 'fit', 'last', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, '2222', '$2b$10$VPYUZLmOpHlxEcqSNGk2Gub2/XtyGtNVknbLMP', 'fit', 'last', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, '22222', '$2b$10$aZ7cHEDCI14E3qn1yJc2eu4Xur5210d.qphVho', 'fit', 'last', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'qqq', '$2b$10$F9Uf2UoSl1ddZsd1i0bVguyatoy7Fr/w1gYJXv', '123', '123', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'test@gmail.com', '$2b$10$CK4.eeoTf34DQk4000B7V.CSyiIAEHeQ2GQ3pM', 'test', 'test', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'test1@gmail.com', '$2b$10$MAEWBijP4F69uQTFWtxHre71WKl8uNPJ3no94Q', '123', '123', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'test2@gmail.com', '$2b$10$vNhsIAcDatLK.uNtHEpasedKPsC9nrU7x7aV6l', 'fit', 'last', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'test3@gmail.com', '$2b$10$Z6NgfMJo7h3mY/NdYqn47OQ98vGqWdnpC6TwPY', 'fit', 'last', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, '', '$2b$10$J80M.AP8fKG67.HKnuv8xu9CpoX02Ikntv6VsU', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, '2e22', '$2b$10$gLmHz5X4RRUR7Ick22kB3OW6tPc6BidzRr1tYn', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, '2323', '$2b$10$fr02F5zmUo7ii36YDxedpOEpiIxZkX5ZvKodNp', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'test5@gmail.com', '$2b$10$RJgrcv2nNxXmEOUkNHMKZ.0VELEno122K0t3Wx66chUnoH/zXLOCu', 'ewew', 'last', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'test31@gmail.com', '$2b$10$2LIqg0R1eD03/kukpnlATO6uZwh9fyarjihQkDRF5OfYSNZhiSwEq', '123', '123', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'test31@gmail.com', '$2b$10$Ttbi1zfErQoa8PETwJzNAe0Pp/76Ff1VdjbtM7VXyr1ILnZJijPiG', '123123', '123123', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'test11@gmail.com', '$2b$10$mBLRVcUlUo5eeVIp/GGmvONUpxXLy8FVFiz4NzD5K.j7VKh5pD4Eq', '1', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, '$2b$10$qYlNuq.znDx766eGIwjnt.Iwq4MR.rcfbn3kavbX4HvxkM3VMYCP2', '$2b$10$HcdRWIhCbjL2HV0Mx/aim.ZQzs5Qez0YSGmExD9tZdc4RvrYHgh32', '123', '123', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, '$2b$10$PI0P4EPbE/c8.tOxd8SHoOENgrnjBq66hBo3u3nh6rjGOihGGVcxO', '$2b$10$1R0G6IgN4K2JxrUSwaTsVOkXoXEv27vWG6Dccnnx6MCu5.lLn8boi', 'fit', '123', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, '$2b$10$iGYXuoTDkYuUkqUc1pVqcOki9WklN57Huy1DK.nbI7czdD4CPSLtC', '$2b$10$C5Auxa7.6hJWuE81Hkbuh.00PotOODXNYpd0DmN8vAn3aQFP4FV3a', '123', '123', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, '$2b$10$EKF9aUqVWqkFudxCpJbtde4E9sU5SAASugrbe7M07JMSbmGkx.aEi', '$2b$10$RgUp3r9ZIdiIqB2mgxfau.ZVYJ/pK4MZhljdT8nxxl8MNZvKlyfv.', '12', '12', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, '$2b$10$wdvjWViIyZP0bzfhubK.5efRhHJA62lBODINMRfjYvay67sLMleym', '$2b$10$2.qayf8TaidANbsOiELv4e0wJq9xzBG91Ub8H5IYNHGNU89JsHc6e', '123', '123', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
