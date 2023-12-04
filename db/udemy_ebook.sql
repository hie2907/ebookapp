-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 08, 2023 lúc 06:33 AM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `udemy_ebook`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(111) NOT NULL,
  `username` varchar(111) NOT NULL,
  `email` varchar(111) NOT NULL,
  `password` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `username`, `email`, `password`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_author`
--

CREATE TABLE `tbl_author` (
  `id_author` int(11) NOT NULL,
  `name_author` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_author`
--

INSERT INTO `tbl_author` (`id_author`, `name_author`) VALUES
(1, 'phu'),
(7, 'admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `cat_id` int(111) NOT NULL,
  `name` varchar(111) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `photo_cat` text NOT NULL,
  `status` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`cat_id`, `name`, `photo_cat`, `status`) VALUES
(1, 'Truyện anime', '1628515681_programming.jpg', 1),
(2, 'Truyện Việt Nam', '1628515735_design.jpg', 1),
(3, 'Truyện Tàu', '1628515902_networking.jpg', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `id_comment` int(111) NOT NULL,
  `comment` text NOT NULL,
  `date_comment` datetime NOT NULL,
  `id_ebook` int(100) NOT NULL,
  `id_user` text NOT NULL,
  `rating` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_comment`
--

INSERT INTO `tbl_comment` (`id_comment`, `comment`, `date_comment`, `id_ebook`, `id_user`, `rating`) VALUES
(1, 'Very awesome, i like this app', '2023-04-07 23:32:23', 10, '112770626116767213812', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_ebook`
--

CREATE TABLE `tbl_ebook` (
  `id_ebook` int(11) NOT NULL,
  `title` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `photo` text NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `samplebook` text NOT NULL,
  `cat_id` int(11) NOT NULL,
  `status_ebook` int(1) DEFAULT NULL,
  `date` datetime NOT NULL,
  `id_author` int(11) NOT NULL,
  `id_publisher` int(11) NOT NULL,
  `pages` int(11) NOT NULL,
  `id_language` int(222) NOT NULL,
  `freebook` int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_ebook`
--

INSERT INTO `tbl_ebook` (`id_ebook`, `title`, `photo`, `description`, `samplebook`, `cat_id`, `status_ebook`, `date`, `id_author`, `id_publisher`, `pages`, `id_language`, `freebook`) VALUES
(13, 'Đảo hải tặc - One piece', '1683034593_daohaitacc.jpg', '<p>C&aacute;ch đ&acirc;y khoảng 5000 năm trước, lo&agrave;i người xuất hiện tr&ecirc;n tr&aacute;i đất, họ chung sống trong h&ograve;a b&igrave;nh. L&uacute;c n&agrave;y tr&ecirc;n mặt trăng cũng c&oacute; 3 tộc c&ugrave;ng sinh sống l&agrave; Spaceys, Shandorian v&agrave; Bilkan, v&igrave; t&agrave;i nguy&ecirc;n tr&ecirc;n mặt trăng cạn kiệt n&ecirc;n họ di cư đến tr&aacute;i đất v&agrave; mang theo c&ocirc;ng nghệ c&ugrave;ng Vũ Kh&iacute; Cổ Đại đến Tr&aacute;i Đất nơi họ gọi l&agrave; Vi&ecirc;n Ngọc Xanh (the Blue Star) gồm 3 bộ tộc l&agrave;:</p>\r\n\r\n<ul>\r\n	<li>Tộc Shandorian đ&atilde; x&acirc;y dựng n&ecirc;n th&agrave;nh phố V&agrave;ng - đảo tr&ecirc;n trời bấy giờ --&gt; Tộc ti&ecirc;n<br />\r\n	c&oacute; c&aacute;nh tr&ecirc;n trời v&agrave; tộc người l&ugrave;n Tontatta tr&ecirc;n đảo Dressrosa.</li>\r\n	<li>Tộc Spaceys l&agrave; tộc Thi&ecirc;n Long Hội l&uacute;c bấy giờ.</li>\r\n	<li>Tộc Bikan l&agrave; tộc th&uacute; --&gt; gồm tộc của người C&aacute; v&agrave; tộc Mink tr&ecirc;n đảo lưng Voi.</li>\r\n	<li>Lo&agrave;i người x&acirc;y dựng n&ecirc;n vương quốc Alubarna tức l&agrave; vương quốc Alabasta bấy giờ v&agrave; ph&aacute;t triển thịnh vượng.</li>\r\n</ul>\r\n\r\n<p>Sau đ&oacute; một cuộc chiến nổ ra mang t&ecirc;n the Great War lớn nhất lịch sử nh&acirc;n loại, 3 bộ tộc sử dụng 3 vũ kh&iacute; Cổ đại. Lịch sử ghi lại tr&ecirc;n phiến đ&aacute; Poneglyph sau cuộc chiến, bộ tộc Spaceys (Thi&ecirc;n Long Hội) chiến thắng v&agrave; l&ecirc;n nắm quyền h&agrave;nh tr&ecirc;n mặt đất. Bộ tộc Shandorian kh&ocirc;ng khuất phục họ chiến đấu tới c&ugrave;ng. V&agrave; lịch sử ghi lại sự thất bại của họ &quot;Th&agrave;nh phố vĩ đại Shandora đ&atilde; sụp đổ trong tr&acirc;n chiến, con ch&aacute;u của tộc Shandora lu&ocirc;n đấu tranh để bảo vệ những tảng đ&aacute;. V&agrave; trận chiến bảo vệ niềm tự h&agrave;o của tổ ti&ecirc;n ấy đ&atilde; k&eacute;o d&agrave;i trong suốt hơn 800 năm sau đ&oacute;.&quot;</p>\r\n\r\n<p>Sau cuộc chiến c&aacute;c bộ tộc tan r&atilde;. Tộc Thi&ecirc;n Long l&ecirc;n nắm ch&iacute;nh quyền v&agrave; th&agrave;nh lập 20 vị vua đầu ti&ecirc;n tr&ecirc;n Tr&aacute;i Đất, c&ugrave;ng l&uacute;c đ&oacute; họ lập n&ecirc;n li&ecirc;n minh của 170 quốc gia, đứng đầu l&agrave; Ngũ L&atilde;o Tinh l&uacute;c bấy giờ. Sau đ&oacute; th&agrave;nh phố v&agrave;ng bị d&ograve;ng hải lưu đẩy l&ecirc;n Skypea - Đảo tr&ecirc;n trời. Ch&iacute;nh quyền thế giới đ&atilde; t&igrave;m v&agrave; diệt những kẻ biết về lịch sử trống 100 năm. Họ che giấu tất cả v&agrave; Nico Robin (8 tuổi) được treo gi&aacute; 79 triệu Beri v&igrave; c&ocirc; l&agrave; người duy nhất đọc được chữ Cổ đại khắc tr&ecirc;n phiến đ&aacute; Poneglyph.</p>\r\n', 'sample_dohaitac70.pdf', 1, 1, '2023-04-07 16:17:54', 7, 1, 23, 5, 1),
(14, 'Doraemon và những người bạn', '1683034601_doraemonn.jpg', '<p>Doraemon l&agrave; một ch&uacute; m&egrave;o m&aacute;y đến từ thế kỷ 22 với số đo cơ thể li&ecirc;n quan đến c&aacute;c con số 3,9,2,1. M&atilde; số của Doraemon l&agrave; MS-093. Trong một lần Doraemon ngủ trưa, cậu bị con chuột m&aacute;y của Sewashi gặm mất đ&ocirc;i tai, từ đ&oacute; sinh ra chứng sợ chuột. Bị mất đ&ocirc;i tai, th&ecirc;m v&agrave;o việc bị Doramiyako bỏ rơi, Doraemon trở n&ecirc;n suy sụp n&ecirc;n lớp dầu nhờn bị biến mất, lộ lớp da thật m&agrave;u xanh, giọng n&oacute;i trở n&ecirc;n kh&agrave;n đục. Sau khi hồi phục t&acirc;m l&yacute;, hiểu được Sewashi kh&ocirc;ng c&oacute; tiền l&agrave;m lại đ&ocirc;i tai cho cậu l&agrave; v&igrave; cụ cố Nobi Nobita g&acirc;y ra một khoảng nợ lớn, Doraemon quyết t&acirc;m thay đổi qu&aacute; khứ của d&ograve;ng họ Nobi, trở về qu&aacute; khứ l&agrave;m bạn với cậu b&eacute; Nobi Nobita 10 tuổi, v&agrave; c&acirc;u chuyện bắt đầu từ đ&oacute;. Nguồn gốc c&aacute;i t&ecirc;n của Doraemon l&agrave; gh&eacute;p bởi hai từ Dora (m&egrave;o lạc) v&agrave; emon (hậu tố trong t&ecirc;n gọi của người Nhật). Như để chơi chữ, t&aacute;c giả 3F đ&atilde; cho Doraemon th&iacute;ch ăn Dorayaki (b&aacute;nh r&aacute;n) khiến nhiều người tưởng lầm Dora trong t&ecirc;n của ch&uacute; m&egrave;o m&aacute;y n&agrave;y c&oacute; nghĩa l&agrave; b&aacute;nh r&aacute;n.</p>\r\n', 'sample_doraemonp19.pdf', 1, 1, '2023-04-07 16:18:59', 1, 1, 40, 5, 0),
(16, 'Dragonball movie', '1683034452_dargon.jpg', '<p>Doraemon l&agrave; một ch&uacute; m&egrave;o m&aacute;y đến từ thế kỷ 22 với số đo cơ thể li&ecirc;n quan đến c&aacute;c con số 3,9,2,1. M&atilde; số của Doraemon l&agrave; MS-093. Trong một lần Doraemon ngủ trưa, cậu bị con chuột m&aacute;y của Sewashi gặm mất đ&ocirc;i tai, từ đ&oacute; sinh ra chứng sợ chuột. Bị mất đ&ocirc;i tai, th&ecirc;m v&agrave;o việc bị Doramiyako bỏ rơi, Doraemon trở n&ecirc;n suy sụp n&ecirc;n lớp dầu nhờn bị biến mất, lộ lớp da thật m&agrave;u xanh, giọng n&oacute;i trở n&ecirc;n kh&agrave;n đục. Sau khi hồi phục t&acirc;m l&yacute;, hiểu được Sewashi kh&ocirc;ng c&oacute; tiền l&agrave;m lại đ&ocirc;i tai cho cậu l&agrave; v&igrave; cụ cố Nobi Nobita g&acirc;y ra một khoảng nợ lớn, Doraemon quyết t&acirc;m thay đổi qu&aacute; khứ của d&ograve;ng họ Nobi, trở về qu&aacute; khứ l&agrave;m bạn với cậu b&eacute; Nobi Nobita 10 tuổi, v&agrave; c&acirc;u chuyện bắt đầu từ đ&oacute;. Nguồn gốc c&aacute;i t&ecirc;n của Doraemon l&agrave; gh&eacute;p bởi hai từ Dora (m&egrave;o lạc) v&agrave; emon (hậu tố trong t&ecirc;n gọi của người Nhật). Như để chơi chữ, t&aacute;c giả 3F đ&atilde; cho Doraemon th&iacute;ch ăn Dorayaki (b&aacute;nh r&aacute;n) khiến nhiều người tưởng lầm Dora trong t&ecirc;n của ch&uacute; m&egrave;o m&aacute;y n&agrave;y c&oacute; nghĩa l&agrave; b&aacute;nh r&aacute;n.</p>\r\n', 'sample_dragonball.pdf', 1, 0, '2023-04-07 16:20:19', 1, 1, 80, 1, 1),
(20, 'Thám tử lừng danh conan', '1683034611_conann.jpg', '<p>&nbsp;</p>\r\n\r\n<p>C&aacute;ch đ&acirc;y khoảng 5000 năm trước, lo&agrave;i người xuất hiện tr&ecirc;n tr&aacute;i đất, họ chung sống trong h&ograve;a b&igrave;nh. L&uacute;c n&agrave;y tr&ecirc;n mặt trăng cũng c&oacute; 3 tộc c&ugrave;ng sinh sống l&agrave; Spaceys, Shandorian v&agrave; Bilkan, v&igrave; t&agrave;i nguy&ecirc;n tr&ecirc;n mặt trăng cạn kiệt n&ecirc;n họ di cư đến tr&aacute;i đất v&agrave; mang theo c&ocirc;ng nghệ c&ugrave;ng Vũ Kh&iacute; Cổ Đại đến Tr&aacute;i Đất nơi họ gọi l&agrave; Vi&ecirc;n Ngọc Xanh (the Blue Star) gồm 3 bộ tộc l&agrave;:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul><br />\r\n	<li>&nbsp;&nbsp; &nbsp;</li>\r\n	<li>Tộc Shandorian đ&atilde; x&acirc;y dựng n&ecirc;n th&agrave;nh phố V&agrave;ng - đảo tr&ecirc;n trời bấy giờ --&gt; Tộc ti&ecirc;n<br />\r\n	<br />\r\n	&nbsp;&nbsp; &nbsp;c&oacute; c&aacute;nh tr&ecirc;n trời v&agrave; tộc người l&ugrave;n Tontatta tr&ecirc;n đảo Dressrosa.</li>\r\n	<br />\r\n	<li>&nbsp;&nbsp; &nbsp;</li>\r\n	<li>Tộc Spaceys l&agrave; tộc Thi&ecirc;n Long Hội l&uacute;c bấy giờ.</li>\r\n	<br />\r\n	<li>&nbsp;&nbsp; &nbsp;</li>\r\n	<li>Tộc Bikan l&agrave; tộc th&uacute; --&gt; gồm tộc của người C&aacute; v&agrave; tộc Mink tr&ecirc;n đảo lưng Voi.</li>\r\n	<br />\r\n	<li>&nbsp;&nbsp; &nbsp;</li>\r\n	<li>Lo&agrave;i người x&acirc;y dựng n&ecirc;n vương quốc Alubarna tức l&agrave; vương quốc Alabasta bấy giờ v&agrave; ph&aacute;t triển thịnh vượng.</li>\r\n	<br />\r\n	<br />\r\n	<br />\r\n	<br />\r\n	<br />\r\n	&nbsp;\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Sau đ&oacute; một cuộc chiến nổ ra mang t&ecirc;n the Great War lớn nhất lịch sử nh&acirc;n loại, 3 bộ tộc sử dụng 3 vũ kh&iacute; Cổ đại. Lịch sử ghi lại tr&ecirc;n phiến đ&aacute; Poneglyph sau cuộc chiến, bộ tộc Spaceys (Thi&ecirc;n Long Hội) chiến thắng v&agrave; l&ecirc;n nắm quyền h&agrave;nh tr&ecirc;n mặt đất. Bộ tộc Shandorian kh&ocirc;ng khuất phục họ chiến đấu tới c&ugrave;ng. V&agrave; lịch sử ghi lại sự thất bại của họ &quot;Th&agrave;nh phố vĩ đại Shandora đ&atilde; sụp đổ trong tr&acirc;n chiến, con ch&aacute;u của tộc Shandora lu&ocirc;n đấu tranh để bảo vệ những tảng đ&aacute;. V&agrave; trận chiến bảo vệ niềm tự h&agrave;o của tổ ti&ecirc;n ấy đ&atilde; k&eacute;o d&agrave;i trong suốt hơn 800 năm sau đ&oacute;.&quot;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Sau cuộc chiến c&aacute;c bộ tộc tan r&atilde;. Tộc Thi&ecirc;n Long l&ecirc;n nắm ch&iacute;nh quyền v&agrave; th&agrave;nh lập 20 vị vua đầu ti&ecirc;n tr&ecirc;n Tr&aacute;i Đất, c&ugrave;ng l&uacute;c đ&oacute; họ lập n&ecirc;n li&ecirc;n minh của 170 quốc gia, đứng đầu l&agrave; Ngũ L&atilde;o Tinh l&uacute;c bấy giờ. Sau đ&oacute; th&agrave;nh phố v&agrave;ng bị d&ograve;ng hải lưu đẩy l&ecirc;n Skypea - Đảo tr&ecirc;n trời. Ch&iacute;nh quyền thế giới đ&atilde; t&igrave;m v&agrave; diệt những kẻ biết về lịch sử trống 100 năm. Họ che giấu tất cả v&agrave; Nico Robin (8 tuổi) được treo gi&aacute; 79 triệu Beri v&igrave; c&ocirc; l&agrave; người duy nhất đọc được chữ Cổ đại khắc tr&ecirc;n phiến đ&aacute; Poneglyph.</p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'sample_doraemonp19.pdf', 1, 1, '2023-04-29 20:01:11', 1, 1, 29, 5, 1),
(21, 'Dragonball - 7 viên ngọc rồng', '1683034619_goku.jpg', '<p>C&aacute;ch đ&acirc;y khoảng 5000 năm trước, lo&agrave;i người xuất hiện tr&ecirc;n tr&aacute;i đất, họ chung sống trong h&ograve;a b&igrave;nh. L&uacute;c n&agrave;y tr&ecirc;n mặt trăng cũng c&oacute; 3 tộc c&ugrave;ng sinh sống l&agrave; Spaceys, Shandorian v&agrave; Bilkan, v&igrave; t&agrave;i nguy&ecirc;n tr&ecirc;n mặt trăng cạn kiệt n&ecirc;n họ di cư đến tr&aacute;i đất v&agrave; mang theo c&ocirc;ng nghệ c&ugrave;ng Vũ Kh&iacute; Cổ Đại đến Tr&aacute;i Đất nơi họ gọi l&agrave; Vi&ecirc;n Ngọc Xanh (the Blue Star) gồm 3 bộ tộc l&agrave;:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul><br />\r\n	<li>&nbsp;&nbsp; &nbsp;</li>\r\n	<li>Tộc Shandorian đ&atilde; x&acirc;y dựng n&ecirc;n th&agrave;nh phố V&agrave;ng - đảo tr&ecirc;n trời bấy giờ --&gt; Tộc ti&ecirc;n<br />\r\n	<br />\r\n	&nbsp;&nbsp; &nbsp;c&oacute; c&aacute;nh tr&ecirc;n trời v&agrave; tộc người l&ugrave;n Tontatta tr&ecirc;n đảo Dressrosa.</li>\r\n	<br />\r\n	<li>&nbsp;&nbsp; &nbsp;</li>\r\n	<li>Tộc Spaceys l&agrave; tộc Thi&ecirc;n Long Hội l&uacute;c bấy giờ.</li>\r\n	<br />\r\n	<li>&nbsp;&nbsp; &nbsp;</li>\r\n	<li>Tộc Bikan l&agrave; tộc th&uacute; --&gt; gồm tộc của người C&aacute; v&agrave; tộc Mink tr&ecirc;n đảo lưng Voi.</li>\r\n	<br />\r\n	<li>&nbsp;&nbsp; &nbsp;</li>\r\n	<li>Lo&agrave;i người x&acirc;y dựng n&ecirc;n vương quốc Alubarna tức l&agrave; vương quốc Alabasta bấy giờ v&agrave; ph&aacute;t triển thịnh vượng.</li>\r\n	<br />\r\n	<br />\r\n	<br />\r\n	<br />\r\n	<br />\r\n	<br />\r\n	<br />\r\n	&nbsp;\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Sau đ&oacute; một cuộc chiến nổ ra mang t&ecirc;n the Great War lớn nhất lịch sử nh&acirc;n loại, 3 bộ tộc sử dụng 3 vũ kh&iacute; Cổ đại. Lịch sử ghi lại tr&ecirc;n phiến đ&aacute; Poneglyph sau cuộc chiến, bộ tộc Spaceys (Thi&ecirc;n Long Hội) chiến thắng v&agrave; l&ecirc;n nắm quyền h&agrave;nh tr&ecirc;n mặt đất. Bộ tộc Shandorian kh&ocirc;ng khuất phục họ chiến đấu tới c&ugrave;ng. V&agrave; lịch sử ghi lại sự thất bại của họ &quot;Th&agrave;nh phố vĩ đại Shandora đ&atilde; sụp đổ trong tr&acirc;n chiến, con ch&aacute;u của tộc Shandora lu&ocirc;n đấu tranh để bảo vệ những tảng đ&aacute;. V&agrave; trận chiến bảo vệ niềm tự h&agrave;o của tổ ti&ecirc;n ấy đ&atilde; k&eacute;o d&agrave;i trong suốt hơn 800 năm sau đ&oacute;.&quot;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Sau cuộc chiến c&aacute;c bộ tộc tan r&atilde;. Tộc Thi&ecirc;n Long l&ecirc;n nắm ch&iacute;nh quyền v&agrave; th&agrave;nh lập 20 vị vua đầu ti&ecirc;n tr&ecirc;n Tr&aacute;i Đất, c&ugrave;ng l&uacute;c đ&oacute; họ lập n&ecirc;n li&ecirc;n minh của 170 quốc gia, đứng đầu l&agrave; Ngũ L&atilde;o Tinh l&uacute;c bấy giờ. Sau đ&oacute; th&agrave;nh phố v&agrave;ng bị d&ograve;ng hải lưu đẩy l&ecirc;n Skypea - Đảo tr&ecirc;n trời. Ch&iacute;nh quyền thế giới đ&atilde; t&igrave;m v&agrave; diệt những kẻ biết về lịch sử trống 100 năm. Họ che giấu tất cả v&agrave; Nico Robin (8 tuổi) được treo gi&aacute; 79 triệu Beri v&igrave; c&ocirc; l&agrave; người duy nhất đọc được chữ Cổ đại khắc tr&ecirc;n phiến đ&aacute; Poneglyph.</p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n', 'sample_doraemonp19.pdf', 1, 1, '2023-04-29 20:05:34', 1, 1, 100, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_favorites`
--

CREATE TABLE `tbl_favorites` (
  `id_favorites` int(100) NOT NULL,
  `id_fav_ebook` int(100) NOT NULL,
  `id_fav_user` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_favorites`
--

INSERT INTO `tbl_favorites` (`id_favorites`, `id_fav_ebook`, `id_fav_user`) VALUES
(2, 19, 1),
(3, 14, 3),
(4, 21, 1),
(5, 20, 1),
(6, 16, 1),
(7, 14, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_language`
--

CREATE TABLE `tbl_language` (
  `id_language` int(222) NOT NULL,
  `name_language` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_language`
--

INSERT INTO `tbl_language` (`id_language`, `name_language`) VALUES
(1, 'English'),
(5, 'Viet Nam');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_publisher`
--

CREATE TABLE `tbl_publisher` (
  `id_publisher` int(11) NOT NULL,
  `name_publisher` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_publisher`
--

INSERT INTO `tbl_publisher` (`id_publisher`, `name_publisher`) VALUES
(1, 'Kim Dong'),
(4, 'admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_ratings`
--

CREATE TABLE `tbl_ratings` (
  `id_rating` int(100) NOT NULL,
  `id_ebook` int(100) NOT NULL,
  `id_user` text NOT NULL,
  `ratings` double(1,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_setting`
--

CREATE TABLE `tbl_setting` (
  `id` int(10) NOT NULL,
  `slider` int(1) NOT NULL DEFAULT 1,
  `ads` int(1) NOT NULL DEFAULT 0,
  `startapplivemode` int(1) NOT NULL DEFAULT 0,
  `startappaccountid` varchar(100) NOT NULL,
  `androidappid` varchar(100) NOT NULL,
  `iosappid` varchar(100) NOT NULL,
  `admobreward` varchar(100) NOT NULL,
  `banner` varchar(100) NOT NULL,
  `interstisial` varchar(100) NOT NULL,
  `unitylivemode` int(1) NOT NULL DEFAULT 0,
  `unitygameid` varchar(100) NOT NULL,
  `unitybanner` varchar(100) NOT NULL,
  `unityinterstisial` varchar(100) NOT NULL,
  `unityreward` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_setting`
--

INSERT INTO `tbl_setting` (`id`, `slider`, `ads`, `startapplivemode`, `startappaccountid`, `androidappid`, `iosappid`, `admobreward`, `banner`, `interstisial`, `unitylivemode`, `unitygameid`, `unitybanner`, `unityinterstisial`, `unityreward`) VALUES
(1, 3, 1, 1, '103278217', '203045076', '203045076', 'ca-app-pub-3940256099942544/5224354917', 'ca-app-pub-3940256099942544/6300978111', 'ca-app-pub-3940256099942544/1033173712', 1, 'test', 'test', 'test', 'test');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(222) NOT NULL,
  `name_user` varchar(222) NOT NULL,
  `email_user` varchar(222) NOT NULL,
  `photo_user` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `name_user`, `email_user`, `photo_user`, `password`) VALUES
(1, 'phu', 'test@gmail.com', 'scaled_images.png', 'test'),
(2, 'phu', 'levanphu2002qb@gmail.com', 'scaled_92900532-e6cf-4148-80f0-5fa80c0cd2947547621818265385261.jpg', 'phu'),
(3, 'phu', 'vanphule22@gmail.com', 'scaled_Screenshot_2023-04-09-12-21-58-717_com.android.chrome.jpg', 'phu');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_author`
--
ALTER TABLE `tbl_author`
  ADD PRIMARY KEY (`id_author`);

--
-- Chỉ mục cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Chỉ mục cho bảng `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`id_comment`);

--
-- Chỉ mục cho bảng `tbl_ebook`
--
ALTER TABLE `tbl_ebook`
  ADD PRIMARY KEY (`id_ebook`);

--
-- Chỉ mục cho bảng `tbl_favorites`
--
ALTER TABLE `tbl_favorites`
  ADD PRIMARY KEY (`id_favorites`);

--
-- Chỉ mục cho bảng `tbl_language`
--
ALTER TABLE `tbl_language`
  ADD PRIMARY KEY (`id_language`);

--
-- Chỉ mục cho bảng `tbl_publisher`
--
ALTER TABLE `tbl_publisher`
  ADD PRIMARY KEY (`id_publisher`);

--
-- Chỉ mục cho bảng `tbl_ratings`
--
ALTER TABLE `tbl_ratings`
  ADD PRIMARY KEY (`id_rating`);

--
-- Chỉ mục cho bảng `tbl_setting`
--
ALTER TABLE `tbl_setting`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_author`
--
ALTER TABLE `tbl_author`
  MODIFY `id_author` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `cat_id` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `id_comment` int(111) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_ebook`
--
ALTER TABLE `tbl_ebook`
  MODIFY `id_ebook` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `tbl_favorites`
--
ALTER TABLE `tbl_favorites`
  MODIFY `id_favorites` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tbl_language`
--
ALTER TABLE `tbl_language`
  MODIFY `id_language` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tbl_publisher`
--
ALTER TABLE `tbl_publisher`
  MODIFY `id_publisher` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_ratings`
--
ALTER TABLE `tbl_ratings`
  MODIFY `id_rating` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_setting`
--
ALTER TABLE `tbl_setting`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
