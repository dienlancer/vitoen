-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 03, 2018 lúc 07:18 AM
-- Phiên bản máy phục vụ: 10.1.29-MariaDB
-- Phiên bản PHP: 7.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `vitoen`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `activations`
--

DROP TABLE IF EXISTS `activations`;
CREATE TABLE `activations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'ilPOiDhmKqsxtUpi7ZgWe5vDYjt2ICJK', 1, '2017-11-12 06:15:56', '2017-11-12 06:15:55', '2017-11-12 06:15:56'),
(2, 1, 'rcp04qHne8oATtrTCwKl9FuckJEarSCb', 1, '2017-11-12 06:20:02', '2017-11-12 06:20:02', '2017-11-12 06:20:02'),
(3, 1, 'AHbwHv4BMq4Z5b7nkdvOlvcOvXnPqMk0', 1, '2017-11-12 06:24:14', '2017-11-12 06:24:14', '2017-11-12 06:24:14'),
(4, 1, 'JqmoT6nwuNXt0D5jape2qCQsEVQgWEqA', 1, '2017-11-12 06:26:26', '2017-11-12 06:26:26', '2017-11-12 06:26:26'),
(5, 1, '1TnyfEnFLs7gdNZXKP2r35tc1hBvcnPg', 1, '2017-11-12 07:22:52', '2017-11-12 07:22:52', '2017-11-12 07:22:52'),
(6, 1, 'QlzbRQWzVJgg01NkGUVewoQhT4qPKTMZ', 1, '2017-11-12 07:23:56', '2017-11-12 07:23:56', '2017-11-12 07:23:56'),
(13, 8, 'l16IOygny5ihmPBxkIZIVkZjCQmH1wfA', 1, '2018-01-28 10:04:24', '2018-01-28 10:04:24', '2018-01-28 10:04:24'),
(14, 9, 'DAf22Uade27AmO71vWsE0n2vGaVSpaQH', 1, '2018-02-04 05:35:55', '2018-02-04 05:35:55', '2018-02-04 05:35:55'),
(19, 14, 'R0Yehty1Y3qhG4Wpfoc8YUyNq5TisAIk', 1, '2018-03-13 19:46:01', '2018-03-13 19:46:01', '2018-03-13 19:46:01'),
(20, 15, 'umUGPTa3kTtRJKPFFFWyhIAlxopjMg80', 1, '2018-03-13 19:50:57', '2018-03-13 19:50:57', '2018-03-13 19:50:57'),
(21, 16, 'xRYDAo6sDR9yWMszzQEJIHBnS5VMSuDf', 1, '2018-03-18 18:55:37', '2018-03-18 18:55:37', '2018-03-18 18:55:37'),
(22, 17, 'fJAm5N184e196GxE0y1Y4xo0KCm1olY7', 1, '2018-05-02 01:58:12', '2018-05-02 01:58:12', '2018-05-02 01:58:12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `album`
--

DROP TABLE IF EXISTS `album`;
CREATE TABLE `album` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `meta_description` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `intro` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `meta_description` text COLLATE utf8_unicode_ci,
  `count_view` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `article`
--

INSERT INTO `article` (`id`, `fullname`, `alias`, `image`, `intro`, `content`, `description`, `meta_keyword`, `meta_description`, `count_view`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(51, 'Công ty sản xuất băng keo dán thùng uy tín hiện nay', 'cong-ty-san-xuat-bang-keo-dan-thung-uy-tin-hien-nay', 'bang-keo-dan-thung-congty-3td0go7wn5sy.jpg', 'Công ty sản xuất băng keo dán thùng ra đời với mục đích đáp ứng các nhu cầu thị hiếu của thị trường về dòng keo đặc biệt và tiện dụng này. Sau đây Công ty chúng tôi sẽ chia sẽ một số thông tin giúp các bạn tham khảo về sản phẩm keo dán này.', '<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Với sự phát tri&ecirc;̉n mạnh mẽ của thị trường lu&ocirc;n v&ecirc;̀ v&acirc;̣n chuy&ecirc;̉n hàng hóa như hi&ecirc;̣n nay. R&acirc;́t nhi&ecirc;̀u <strong>c&ocirc;ng ty sản xu&acirc;́t băng keo dán thùng</strong> ra đời với mục đích đáp ứng các nhu c&acirc;̀u thị hi&ecirc;́u của thị trường v&ecirc;̀ dòng keo đặc bi&ecirc;̣t và ti&ecirc;̣n dụng này. Sau đ&acirc;y là những th&ocirc;ng tin giúp các bạn tham khảo v&ecirc;̀ c&ocirc;ng ty sản xu&acirc;́t dòng keo này.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"font-size:18.0pt\">Dòng&nbsp;băng keo dán thùng ch&acirc;́t lượng</span></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Như chúng ta đã biết tình hình phát tri&ecirc;̉n sản ph&acirc;̉m băng keo của nhi&ecirc;̀u c&ocirc;ng ty chuy&ecirc;n sản xu&acirc;́t băng keo ra đời. Đó là m&ocirc;̣t tín hi&ecirc;̣u t&ocirc;́t cho người ti&ecirc;u dùng có nhu c&acirc;̀u sử dụng nhi&ecirc;̀u tới băng keo dán thùng này. Tuy nhi&ecirc;n v&ecirc;̀ mặt ch&acirc;́t lượng của các sản ph&acirc;̉m được tung ra thị trường lại còn nhi&ecirc;̀u b&acirc;́t c&acirc;̣p và kh&ocirc;ng được bảo đảm. Với đặc thù là dòng sản ph&acirc;̉m c&ocirc;ng dụng nhi&ecirc;̀u trong c&ocirc;ng vi&ecirc;̣c cũng như trong đời s&ocirc;́ng. Người dùng kh&ocirc;ng th&ecirc;̉ tìm được c&ocirc;ng ty cung c&acirc;́p băng keo dán thùng uy tín hoặc có th&ecirc;̉ kh&ocirc;ng bi&ecirc;́t cách chọn. Sẽ g&acirc;y ra nhi&ecirc;̀u thi&ecirc;̣t thòi khi mua phải hàng kh&ocirc;ng đảm bảo ch&acirc;́t lượng. N&ecirc;́u kh&ocirc;ng may mua phải hàng ki&ecirc;̉m tra ch&acirc;́t lượng thì ch&acirc;́t lượng k&ecirc;́t dính kh&ocirc;ng cao, tu&ocirc;̉i thọ thấp và g&acirc;y nhi&ecirc;̀u phi&ecirc;̀n phức cho người sử dụng.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><img alt=\"Công ty sản xuất uy tín nhất hiện nay\" src=\"upload/bang-keo-dan-thung.jpg/\" /></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:14pt\"><span style=\"color:black\"><em>Hình ảnh: Băng keo dán thùng..</em></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">N&ecirc;́u bạn ở đang có nhu c&acirc;̀u v&ecirc;̀ sử dụng dòng sản băng keo dán thùng ch&acirc;́t lượng cao hoặc các dòng băng dán tương tự thì mời các bạn đ&ecirc;́n với <strong>Vitoen</strong>. M&ocirc;̣t đơn vị của c&ocirc;ng ty TNHH Vidoco, uy tín b&acirc;̣c nh&acirc;́t của khu vực phía nam.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"font-size:18.0pt\">C&ocirc;ng ty sản xu&acirc;́t uy tín nh&acirc;́t hi&ecirc;̣n nay</span></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Vitoen</strong> là m&ocirc;̣t đơn vị có nhi&ecirc;̀u năm kinh nghi&ecirc;̣m trong hoạt đ&ocirc;̣ng sản xu&acirc;́t băng keo dán thùng. Với nhi&ecirc;̀u trang thi&ecirc;́t bị máy móc hi&ecirc;̣n đại và có đ&ocirc;̣i ngũ c&ocirc;ng nh&acirc;n lành ngh&ecirc;̀. Đã tạo n&ecirc;n m&ocirc;̣t địa chỉ vàng ở H&ocirc;̀ Chí Minh trong những năm g&acirc;̀n đ&acirc;y. Hàng năm c&ocirc;ng ty đã tung ra thị trường nhi&ecirc;̀u sản ph&acirc;̉m băng keo. Đặc bi&ecirc;̣t là băng keo dán thùng là trọng t&acirc;m. Các màng qu&acirc;́n PE có ch&acirc;́t lượng hàng đ&acirc;̀u hi&ecirc;̣n nay và k&ecirc;́t cả trong tương lại. Nhằm cung c&acirc;́p đ&acirc;̀y đủ mọi nhu c&acirc;̀u tại thị trường Vi&ecirc;̣t Nam và hướng đ&ecirc;́n xu&acirc;́t kh&acirc;̉u mặt hàng nay.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><img alt=\"công ty sản xuất băng keo thùng\" src=\"upload/bang-keo-dan-thung-congty.jpg/\" /></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:14pt\"><span style=\"color:black\"><em>Hình ảnh: Cu&ocirc;̣n băng keo được sản xu&acirc;́t tại c&ocirc;ng ty.</em></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Các mặt hàng băng keo dán thùng thu&ocirc;̣c danh mục sản ph&acirc;̉m của c&ocirc;ng ty sẽ lu&ocirc;n được bán giá sỉ và giao hàng t&acirc;̣n nới m&ocirc;̣t cách mi&ecirc;̃n phí khi quý khách tìm đ&ecirc;́n chúng t&ocirc;i. Ngoài ra <strong>c&ocirc;ng ty sản xu&acirc;́t băng keo dán thùng</strong> Vitoen còn áp dụng chính sách bán hàng c&ocirc;ng nợ từ 1 tháng đ&ecirc;́n 2 tháng đ&ocirc;́i với khách hàng quen thu&ocirc;̣c hoặc th&acirc;n thi&ecirc;̣n.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Với phương ch&acirc;m trong kinh doanh của <strong>Vitoen</strong> là &ldquo;sự hài lòng và tin tưởng của khách hàng là thành c&ocirc;ng của chúng t&ocirc;i&rdquo; trong nhi&ecirc;̀u năm qua dòng băng keo dán thùng là sản ph&acirc;̉m được cung c&acirc;́p nhi&ecirc;̀u cho các đơn vị, xí nghi&ecirc;̣p hay khắp cả nước. Với các ti&ecirc;u chi khi bán sản ph&acirc;̉m là giá cả cạnh tranh tr&ecirc;n thị trường, giao hàng mi&ecirc;̃n phí tới tay khách hàng và tư v&acirc;́n chăm sóc khách hàng m&ocirc;̣t cách t&acirc;̣n tình nh&acirc;́t. Đã góp ph&acirc;̀n n&acirc;ng cao, cải ti&ecirc;́n và uy tín thương hi&ecirc;̣u Vitoen tr&ecirc;n thị trường keo dán.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Trong tương lai kh&ocirc;ng xa c&ocirc;ng ty sản xu&acirc;́t keo dán thùng Vitoen sẽ kh&ocirc;ng ngừng cải ti&ecirc;́n v&ecirc;̀ t&acirc;́t cả các mặt như d&acirc;y chuy&ecirc;̀n sản xu&acirc;́t và n&acirc;ng cao ch&acirc;́t lượng sản ph&acirc;̉m. Nhằm đáp ứng mọi nhu c&acirc;̀u ngày m&ocirc;̣t đa dạng của người dùng. Cùng với ti&ecirc;u chí khắt khe nh&acirc;́t được y&ecirc;u c&acirc;̀u v&ecirc;̀ sản ph&acirc;̉m khi mua băng keo dán thùng.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong><span style=\"font-size:20.0pt\">C&ocirc;ng ty Vitoen </span></strong></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Hotline&nbsp;:</strong> 0974289224.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Email :</strong> <a href=\"mailto:vitoen.com@gmail.com\" style=\"color:blue; text-decoration:underline\">vitoen.com@gmail.com</a>.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Địa chỉ:</strong> 35/6 B&ugrave;i Quang L&agrave;, Phường 12, Quận G&ograve; Vấp, TPHCM.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><em><span style=\"background-color:white\">Mời các bạn tới c&ocirc;ng ty chúng t&ocirc;i đ&ecirc;̉ được cung c&acirc;́p các sản ph&acirc;̉m băng keo ch&acirc;́t lượng nhé.</span></em></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>', '', 'công ty sản xuất băng keo dán thùng', 'Công ty sản xuất băng keo dán thùng ra đời với mục đích đáp ứng các nhu cầu thị hiếu của thị trường về dòng keo đặc biệt và tiện dụng này. Sau đây Công ty chúng tôi sẽ chia sẽ một số thông tin giúp các bạn tham khảo về sản phẩm keo dán này.', 8, 1, 1, '2018-04-29 16:59:00', '2018-05-01 15:40:07'),
(52, 'Cơ sở sản xuất băng keo hài lòng nhất hiện nay', 'co-so-san-xuat-bang-keo-hai-long-nhat-hien-nay', 'cac-loai-bang-keo-j3yevupbtha1.jpg', 'Cơ sở sản xuất băng keo được hình thành với mục đích đáp ứng các nhu cầu về đóng gói, gắn kết và bao bọc. Vitoen là một công ty chuyên cung ứng các sản phẩm về băng keo.', '<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Trong xu th&ecirc;́ phát tri&ecirc;̉n kinh doanh nh&ocirc;̣n nhịp như hi&ecirc;̣n nay thì thị trường xu&nbsp;hướng v&acirc;̣n chuy&ecirc;̉n hàng hóa m&ocirc;̣t cách chủ đ&ocirc;̣ng hơn. R&acirc;́t nhi&ecirc;̀u <strong>cơ sở sản xu&acirc;́t băng keo </strong>được hình thành với mục đích đáp ứng các nhu c&acirc;̀u v&ecirc;̀ đóng gói, gắn k&ecirc;́t và bao bọc. <strong>Vitoen </strong>là m&ocirc;̣t c&ocirc;ng ty chuy&ecirc;n cung ứng các sản ph&acirc;̉m v&ecirc;̀ băng keo. Sau đ&acirc;y là những th&ocirc;ng tin chia sẻ giúp các bạn tham khảo v&ecirc;̀ cơ sở sản xu&acirc;́t dòng keo này.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><img alt=\"cơ sở sản xuất băng keo\" src=\"upload/cac-loai-bang-keo.jpg/\" /></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:14pt\"><span style=\"color:black\"><em>Hình ảnh: Cu&ocirc;̣n băng keo được sản xu&acirc;́t tại cơ sở.</em></span></span></p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"font-size:18.0pt\">Xu hướng sản xu&acirc;́t băng keo ch&acirc;́t lượng</span></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Với r&acirc;́t nhi&ecirc;̀u c&ocirc;ng dụng trong c&ocirc;ng vi&ecirc;̣c cũng như trong đời s&ocirc;́ng thì người dùng kh&ocirc;ng th&ecirc;̉ tìm được cơ sở cung c&acirc;́p băng keo uy tín khi mua phải hàng kh&ocirc;ng đảm bảo ch&acirc;́t lượng. N&ecirc;́u kh&ocirc;ng may mua phải hàng kém ch&acirc;́t lượng thì ch&acirc;́t lượng k&ecirc;́t dính kh&ocirc;ng cao, tu&ocirc;̉i thọ kh&ocirc;ng được l&acirc;u và g&acirc;y nhi&ecirc;̀u phi&ecirc;̀n phức cho người sử dụng.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">N&ecirc;́u bạn ở đang có nhu c&acirc;̀u v&ecirc;̀ sử dụng dòng sản băng keo dán thùng ch&acirc;́t lượng cao hoặc các dòng băng dán tương tự thì mời các bạn đ&ecirc;́n với <strong>Vitoen</strong>. M&ocirc;̣t đơn vị, uy tín b&acirc;̣c nh&acirc;́t của khu vực phía nam.</span></span></p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"font-size:18.0pt\">Cơ sở sản xu&acirc;́t băng keo ch&acirc;́t lượng nh&acirc;́t</span></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Vitoen</strong> là m&ocirc;̣t cơ sở có nhi&ecirc;̀u năm kinh nghi&ecirc;̣m trong hoạt đ&ocirc;̣ng sản xu&acirc;́t băng keo. Với nhi&ecirc;̀u trang thi&ecirc;́t bị máy móc hi&ecirc;̣n đại và có đ&ocirc;̣i ngũ c&ocirc;ng nh&acirc;n lành ngh&ecirc;̀. Nhằm cung c&acirc;́p đ&acirc;̀y đủ mọi nhu c&acirc;̀u tại thị trường Vi&ecirc;̣t Nam và xu&acirc;́t kh&acirc;̉u mặt hàng nay.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Các mặt hàng băng keo thu&ocirc;̣c danh mục sản ph&acirc;̉m của đơn vị sẽ lu&ocirc;n được bán giá sỉ và giao hàng t&acirc;̣n nới m&ocirc;̣t cách mi&ecirc;̃n phí khi quý khách tìm đ&ecirc;́n chúng t&ocirc;i. Với các ti&ecirc;u chi khi bán sản ph&acirc;̉m là giá cả cạnh tranh tr&ecirc;n thị trường, giao hàng mi&ecirc;̃n phí tới tay khách hàng và tư v&acirc;́n chăm sóc khách hàng m&ocirc;̣t cách t&acirc;̣n tình nh&acirc;́t. </span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Trong tương lai kh&ocirc;ng xa cơ sở sản xu&acirc;́t keo của chúng t&ocirc;i sẽ kh&ocirc;ng ngừng cải ti&ecirc;́n v&ecirc;̀ t&acirc;́t cả các mặt như v&ecirc;̀ d&acirc;y chuy&ecirc;̀n sản xu&acirc;́t và ch&acirc;́t lượng sản ph&acirc;̉m t&ocirc;́t hơn. Nhằm đáp ứng mọi nhu c&acirc;̀u ngày m&ocirc;̣t đa dạng của người dùng. Cùng với ti&ecirc;u chí khắt khe nh&acirc;́t được y&ecirc;u c&acirc;̀u v&ecirc;̀ sản ph&acirc;̉m khi mua các loại băng keo.</span></span></p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"font-size:18.0pt\">Các loại băng keo được cơ sở cung c&acirc;́p</span></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Là m&ocirc;̣t cơ sở sản xu&acirc;́t keo r&acirc;́t đa dạng thì các sản ph&acirc;̉m có những loại băng keo được khách hàng tin tưởng nh&acirc;́t như: </span></span></p>\r\n\r\n<h3 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"background-color:white\">Băng keo dùng trong dính sàn</span></span></span></span></h3>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><span style=\"background-color:white\">Dòng sản ph&acirc;̉m dính sàn thường được ph&acirc;n vị trí và c&ocirc;́ định hay được dùng nơi cảnh báo nguy hi&ecirc;̉m hoặc trong giao th&ocirc;ng nhờ có đặc tính màu sắc của dòng sản ph&acirc;̉m này.</span></span></span></p>\r\n\r\n<h3 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"background-color:white\">Băng keo dính đi&ecirc;̣n</span></span></span></span></h3>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><span style=\"background-color:white\">Là dòng sản ph&acirc;̉m có tính ch&acirc;́t cách đi&ecirc;̣n r&acirc;́t th&ocirc;ng dụng với tính ch&acirc;́t r&acirc;́t an toàn với người dùng. Với sản ph&acirc;̉m này chủ y&ecirc;́u dùng cho các v&acirc;́n đ&ecirc;̀ có li&ecirc;n quan đ&ecirc;́n đi&ecirc;̣p áp.</span></span></span></p>\r\n\r\n<h3 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"background-color:white\">Băng keo in chữ</span></span></span></span></h3>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><span style=\"background-color:white\">Với các dạng chữ được in như thương hi&ecirc;̣u, t&ecirc;n c&ocirc;ng ty l&ecirc;n sản ph&acirc;̉m hoặc quảng cáo thương hi&ecirc;̣u... Đang là sản ph&acirc;̉m khác hoàn toàn so với các dòng băng keo đang hi&ecirc;̣u hữu tr&ecirc;n thị trường.</span></span></span></p>\r\n\r\n<h3 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><em><span style=\"background-color:white\">Băng keo OPP</span></em></span></span></span></h3>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><span style=\"background-color:white\">Dòng sản ph&acirc;̉m băng keo OPP thì r&acirc;́t ph&ocirc;̉ bi&ecirc;́n hi&ecirc;̣n nay. Dường như chúng ta có th&ecirc;̉ bắt gặp ở nhi&ecirc;̀u nơi tr&ecirc;n thị trường. Với 2 loại được sản xu&acirc;́t và tung ra thị trường là opp trong hoặc OPP đục v&ecirc;̀ mặt c&acirc;́u tạo.</span></span></span></p>\r\n\r\n<h3 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"background-color:white\">Băng keo dính 2 mặt </span></span></span></span></h3>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><span style=\"background-color:white\">D&ograve;ng sản phẩm n&agrave;y được bày b&aacute;n kh&aacute; nhiều ở cửa h&agrave;ng hoặc văn ph&ograve;ng phẩm. Sử dụng với nhiều nhu cầu thực t&ecirc;́ kh&aacute;c nhau. Tr&ecirc;n thị trường còn được bi&ecirc;́t đ&ecirc;́n các loại bang khác như những d&ograve;ng sản phẩm kh&aacute;c: băng d&iacute;nh simili, băng d&iacute;nh sợi thủy tinh còn có băng d&iacute;nh n&acirc;u da b&ograve;, băng d&iacute;nh vải và băng d&iacute;nh phản quang...</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong><span style=\"font-size:20.0pt\">C&ocirc;ng ty Vitoen </span></strong></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Hotline :</strong> 0974289224.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Website</strong> : vitoen.com</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Email :</strong> <a href=\"mailto:vitoen.com@gmail.com\" style=\"color:blue; text-decoration:underline\">vitoen.com@gmail.com</a>.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Địa chỉ:</strong> 35/6 B&ugrave;i Quang L&agrave;, Phường 12, Quận G&ograve; Vấp, TPHCM.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><em><span style=\"background-color:white\">Mời các bạn tới cơ sở của chúng t&ocirc;i đ&ecirc;̉ được cung c&acirc;́p các sản ph&acirc;̉m băng keo ch&acirc;́t lượng nhé.</span></em></span></span></p>', '', 'Cơ sở sản xuất băng keo', 'Cơ sở sản xuất băng keo được hình thành với mục đích đáp ứng các nhu cầu về đóng gói, gắn kết và bao bọc. Vitoen là một công ty chuyên cung ứng các sản phẩm về băng keo.', 6, 2, 1, '2018-04-29 17:36:23', '2018-05-01 15:40:04'),
(53, 'Cần mua băng keo loại nào để phù hợp với công việc', 'can-mua-bang-keo-loai-nao-de-phu-hop-voi-cong-viec', 'mua-bang-keo-phu-hop-kscm46ov7e1q.jpg', 'Trên thị trường có rất nhiều cơ sở hoặc công ty cung cấp các sản phẩm băng keo. Với các công dụng khác nhau và tác dụng khá phong phú. Quý khách hãy chọn những loại băng sao cho phù hợp với công việc..', '<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Đ&ecirc;̉ phục vụ cho c&ocirc;ng vi&ecirc;̣c dán hoặc gắn trong c&ocirc;ng vi&ecirc;̣c thì lựa chọn đưa ra quy&ecirc;́t định n&ecirc;n dùng loại băng keo nào cho phù hợp là chuy&ecirc;̣n kh&ocirc;ng phải d&ecirc;̃ dàng đ&ocirc;́i với nhi&ecirc;̀u người. Nh&acirc;́t là tr&ecirc;n thị trường có r&acirc;́t nhi&ecirc;̀u cơ sở hoặc c&ocirc;ng ty cung c&acirc;́p các sản ph&acirc;̉m băng keo. Với các c&ocirc;ng dụng khác nhau và tác dụng khá là phong phú. Sau đ&acirc;y c&ocirc;ng ty <strong>Vitoen </strong>cung c&acirc;́p cho các bạn th&ecirc;m<strong> </strong>th&ocirc;ng tin v&ecirc;̀ các loại keo, nhằm giúp bạn khi <strong>cần mua băng keo</strong> chọn loại băng keo phù hợp nhé.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><img alt=\"cần mua băng keo\" src=\"upload/mua-bang-keo-phu-hop.jpg/\" /></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:14pt\"><span style=\"color:black\"><em>Hình ảnh: Các loại băng keo tr&ecirc;n thị trường.</em></span></span></p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"font-size:18.0pt\">C&acirc;̀n mua băng keo theo c&ocirc;ng vi&ecirc;̣c</span></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">N&ecirc;́u bạn có nhu c&acirc;̀u sử dụng keo đ&ecirc;̉ dán gi&acirc;́y, quy&ecirc;̉n vở hay tạo 1 t&acirc;̣p tài li&ecirc;̣u thì bạn <strong>cần mua băng keo vài</strong> thì sẽ phù hợp nh&acirc;́t. Được sử dụng chất liệu bằng vải simili đ&ecirc;̉ tạo n&ecirc;n.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">N&ecirc;́u bạn có nhu c&acirc;̀u v&ecirc;̀ đóng gói sản ph&acirc;̉m và đ&ocirc;̀ gửi đi mà c&acirc;̀n dán ghi chú l&ecirc;n sản ph&acirc;̉m thì n&ecirc;n <strong>chọn băng keo gi&acirc;́y</strong> sẽ phù hợp hơn cả. Với ch&acirc;́t li&ecirc;̣u chủ y&ecirc;́u là gi&acirc;́y đ&ecirc;̉ c&acirc;́u tạo và 1 mặt b&ecirc;n là keo.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">N&ecirc;́u bạn đang trang trí nhà cửa hoặc các họa ti&ecirc;́t c&acirc;̀n dính thì sử dụng <strong>keo dính 2 mặt</strong> là sự lựa chọn đúng đắn trong trường hợp này. Vì bạn có th&ecirc;̉ dùng vít đ&ecirc;̉ khoan tường nhưng sẽ ảnh hưởng ít nhi&ecirc;̀u đ&ecirc;́n th&acirc;̉m mỹ ng&ocirc;i nhà của bạn.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">N&ecirc;́u bạn đang thi c&ocirc;ng m&ocirc;̣t c&ocirc;ng trình x&acirc;y dựng và dán mí cu&ocirc;̣n thép, inox... thì chắc chắn bạn phải sử dụng đ&ecirc;́n <strong>băng keo nh&ocirc;m</strong> thì đúng chu&acirc;̉n hơn.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">N&ecirc;́u bạn có nhu c&acirc;̀u v&ecirc;̀ chằng bu&ocirc;̣c hàng hóa, dán mi cu&ocirc;̣n thép ... c&acirc;̀n có sự chịu lực cao thì bạn c&acirc;̀n đ&ecirc;́n <strong>băng keo sợi thủy tinh</strong> làm t&ocirc;́t các c&ocirc;ng vi&ecirc;̣c đó.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">N&ecirc;́u bạn có nhu c&acirc;̀u đ&ecirc;̀ trang trí nhà, th&ecirc;m họa ti&ecirc;́t tr&ecirc;n món đ&ocirc;̀ và làm đẹp ở khu vực nào đó, ... dùng trong mỹ thu&acirc;̣t. Thì bạn c&acirc;̀n phải sử dụng đ&ecirc;́n <strong>băng keo trang trí </strong>là t&ocirc;́t nh&acirc;́t.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">N&ecirc;́u bạn c&acirc;̀n sản ph&acirc;̉m đ&ecirc;̉ ph&acirc;n chia khu vực hay tạo bi&ecirc;̉n cảnh báo nguy hi&ecirc;̉m thì bạn n&ecirc;n sử dụng <strong>băng keo dán n&ecirc;̀n</strong> n&ecirc;n đ&ecirc;̉ th&acirc;́y được sự khác bi&ecirc;̣t tr&ecirc;n m&ocirc;̃i địa đi&ecirc;̉m được dán.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">N&ecirc;́u cá nh&acirc;n bạn đang là m&ocirc;̣t cán b&ocirc;̣ ý t&ecirc;́ hay bạn đang bị thương.... c&acirc;̀n băng bó v&ecirc;́t thương. Thì <strong>băng keo dán ý t&ecirc;́</strong> là như lựa chọn chính xác nh&acirc;́t cho bạn. Ngày nay các nhà sản xu&acirc;́t loại băng keo này còn tích hợp các loại thu&ocirc;́c đặc trị tr&ecirc;n đó nhằm mang đ&ecirc;́n sự ti&ecirc;̣n lợi nh&acirc;́t cho khách hàng.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">N&ecirc;́u bạn có nhu c&acirc;̀u dán vào các v&acirc;̣t li&ecirc;̣u nhỏ, tạo ghi chú nhỏ và gắn k&ecirc;́t các v&acirc;̣t li&ecirc;̣u nhỏ thì bạn sử dụng <strong>băng keo văn phòng</strong> sẽ hợp lý nh&acirc;́t</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"font-size:18.0pt\">C&acirc;̀n mua băng keo theo giá thành</span></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Đ&ecirc;̉ mua được loại băng keo phù hợp với c&ocirc;ng vi&ecirc;̣c hi&ecirc;̣n tại bạn đang làm. Thì ngoài c&ocirc;ng dụng đặc thù của băng keo đáp ứng được c&ocirc;ng vi&ecirc;̣c. Thì cái ti&ecirc;́p theo mọi khách hàng c&acirc;̀n lưu ý khi c&acirc;̀n mua băng keo đó là giá thành. Bằng sự linh hoạt trong c&ocirc;ng vi&ecirc;̣c bạn sắp làm. Chọn sản ph&acirc;̉m băng keo có c&ocirc;ng dụng tương đương nhau và chọn loại băng keo có giá thành rẻ hơn là xu hướng chung của mọi khác hàng. Hi&ecirc;̉u được t&acirc;m lý khi chọn mua băng keo thì nhi&ecirc;̀u c&ocirc;ng ty hay cơ sở sản xu&acirc;́t băng keo đã đem đ&ecirc;́n cho khách hàng các mức giá h&acirc;́p d&acirc;̃n nh&acirc;́t. Mà bạn có th&ecirc;̉ tham khảo trước đ&ecirc;̉ thỏa mãn hơn.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"font-size:18.0pt\">C&acirc;̀n mua băng keo theo sở thích</span></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Các loại băng keo đang có tr&ecirc;n thị trường hi&ecirc;̣n nay có c&ocirc;ng dụng khá tương đ&ocirc;̀ng với nhau. Chính vì lẽ đó mà bạn có th&ecirc;̉ hướng đ&ecirc;́n chọn lựa băng keo theo sở thích, m&ocirc;̣t cách ri&ecirc;ng tư của mình. Các sở thích khác nhau như thích màu sắc sao cho n&ocirc;̉i b&acirc;̣t nh&acirc;́t, đ&ocirc;̣ k&ecirc;́t dính t&ocirc;́i đa nh&acirc;́t hay c&acirc;̀n sự kín đáo.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"font-size:20.0pt\">C&ocirc;ng ty Vitoen</span></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Hotline</strong> : 0974289224.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Email</strong> : vitoen.com@gmail.com.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Địa chỉ</strong>: 35/6 B&ugrave;i Quang L&agrave;, Phường 12, Quận G&ograve; Vấp, TPHCM.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><em>Mời các bạn tới c&ocirc;ng ty chúng t&ocirc;i đ&ecirc;̉ được cung c&acirc;́p các sản ph&acirc;̉m băng keo ch&acirc;́t lượng nhé.</em></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>', '', 'mua băng keo loại nào', 'Trên thị trường có rất nhiều cơ sở hoặc công ty cung cấp các sản phẩm băng keo. Với các công dụng khác nhau và tác dụng khá phong phú. Quý khách hãy chọn những loại băng sao cho phù hợp với công việc..', 9, 3, 1, '2018-05-01 02:54:22', '2018-05-01 15:40:02'),
(54, 'Các loại băng keo đang có trên thị trường việt nam', 'cac-loai-bang-keo-dang-co-tren-thi-truong-viet-nam', 'tu-phubang-keo-kq4pm19cxeyj.png', 'Các loại băng keo được phân biệt như thế nào ? Với những loại băng keo được cung ứng có các công dụng khác nhau và tác dụng khá là phong phú. Do đó có thêm sự lựa chọn cho khách hàng.', '<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:14pt\"><span style=\"color:black\">Tr&ecirc;n thị trường vi&ecirc;̣t nam nói chung đã có r&acirc;́t nhi&ecirc;̀u cơ sở hoặc c&ocirc;ng ty cung c&acirc;́p các sản ph&acirc;̉m băng keo. Các s&ocirc;́ lượng cũng như <strong>các loại băng keo</strong> được ph&acirc;n bi&ecirc;̣t như th&ecirc;́ nào ?&nbsp;Những loại băng keo được cung ứng có các c&ocirc;ng dụng khác nhau và tác dụng khá là phong phú. Do đó có th&ecirc;m sự lựa chọn cho khách hàng&nbsp;và tránh được t&acirc;m lý lúng túng khi chọn mua. Sau đ&acirc;y c&ocirc;ng ty <strong>Vitoen</strong> sẽ cung c&acirc;́p cho khách hàng cách loại keo đang hi&ecirc;̣n hữu tr&ecirc;n thị trường mời các bạn tham khảo.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><img alt=\"phân loại băng keo\" src=\"upload/tu-phu-bang-keo.png/\" /></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:14pt\"><span style=\"color:black\"><em>Hình ảnh: Các loại băng keo hi&ecirc;̣n nay.</em></span></span></p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:13pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><strong><span style=\"font-size:18.0pt\">Chi ti&ecirc;́t và ph&acirc;n loại băng keo </span></strong></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:14pt\"><span style=\"color:black\">Đa s&ocirc;́ mọi người đ&ecirc;̀u có suy nghĩ các loại băng keo tr&ecirc;n thị trường có r&acirc;́t ít loại băng keo. Th&acirc;̣m chí có sự nh&acirc;̀m l&acirc;̃n trong m&ocirc;̃i sản ph&acirc;̉m khi chọn mua. Các dòng sản ph&acirc;̉m băng keo hi&ecirc;̣n có tr&ecirc;n thị trường: </span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<h3 style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:14pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><strong>Băng keo dán thùng</strong></span></span></span></h3>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:14pt\"><span style=\"color:black\">Với dòng sản ph&acirc;̉m băng keo ph&ocirc;̉ dụng nh&acirc;́t hi&ecirc;̣n nay với loại khác được ph&acirc;n chia như băng keo trong, băng keo đục, băng keo in chữ hoặc in logo và băng keo màu. </span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:14pt\"><span style=\"color:black\">Chúng được sử dụng khá nhi&ecirc;̀u trong vi&ecirc;̣c như gói hàng đ&ecirc;̉ v&acirc;̣n chuy&ecirc;̉n Ship và làm bìa sách, làm cứng bìa hoặc có th&ecirc;̉ được sử dụng đ&ecirc;̉ trang trí nhà cửa.... tùy theo sở thích mà bạn có th&ecirc;̉ sử dụng.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<h3 style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:14pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><strong>Băng keo trong hoặc OPP trong</strong></span></span></span></h3>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:14pt\"><span style=\"color:black\">Là dòng sản ph&acirc;̉m cũng d&acirc;̀n trở n&ecirc;n khá ph&ocirc;̉ bi&ecirc;́n trong cu&ocirc;̣c s&ocirc;́ng. Có khoảng 60% người sử dụng băng keo trong sử dụng keo trong đ&ecirc;̉ dán thùng. Với quy cách r&acirc;́t đa dạng đ&ecirc;̉ có th&ecirc;̉ sử dựng đơn giản. Sản ph&acirc;̉m đóng vài trò quan trọng trong lĩnh vực dán thùng và đóng gói các sản ph&acirc;̉m bởi. Bằng sự ti&ecirc;̣n dụng v&ecirc;̀ k&ecirc;́t c&acirc;́u như hình dạng trong su&ocirc;́t sẽ giúp bảo quản các đ&ocirc;̀ dùng được t&ocirc;́t hơn. Hoặc d&ecirc;̃ dàng nh&acirc;̣n bi&ecirc;́t các dòng ghi chú được ghi tr&ecirc;n sản ph&acirc;̉m. Chắc chắn đ&acirc;y là sự lựa chọn hàng đ&acirc;̀u trong kh&acirc;́u đóng gói.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<h3 style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:14pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><strong>Băng keo đục hoặc OPP đục </strong></span></span></span></h3>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:14pt\"><span style=\"color:black\">Là dòng keo cũng khá đặc bi&ecirc;̣t và có tính ph&ocirc;̉ bi&ecirc;́n d&ecirc;̃ dàng sử dụng với nhi&ecirc;̀u c&ocirc;ng dụng r&acirc;́t phong phú mà giá thành kh&ocirc;ng quá đắt. Với dòng băng keo này được sử dụng trong trường hợp các bạn mu&ocirc;́n che hoặc kh&ocirc;ng mu&ocirc;́n cho ai bi&ecirc;́t v&ecirc;̀ sản ph&acirc;̉m b&ecirc;n trong.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<h3 style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:14pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><strong>Băng keo in chữ hoặc logo </strong></span></span></span></h3>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:14pt\"><span style=\"color:black\">Đ&acirc;y là dòng sản ph&acirc;̉m vượt tr&ocirc;̣i của dòng sản ph&acirc;̉m keo dán thùng. Với ưu vi&ecirc;̣t từ 2 loại tr&ecirc;n là vùa có sự k&ecirc;́t hợp của đóng góp sản ph&acirc;̉m vừa có sự quảng bá hình ảnh thương hi&ecirc;̣u. Chắc chắn đ&acirc;y là loại keo mang lại sự thích thú cho các bạn chọn mua. Tuy nhi&ecirc;n giá thành cũng khá cao m&ocirc;̣t chút.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<h3 style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:14pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><strong>Băng keo màu hoặc opp màu</strong></span></span></span></h3>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:14pt\"><span style=\"color:black\">Băng keo màu sẽ làm n&ocirc;̉i b&acirc;̣t sản ph&acirc;̉m khi sử dụng đ&ecirc;́n chúng hoặc đánh gi&acirc;́u sản ph&acirc;̉m đóng gói r&acirc;́t th&ocirc;ng minh. Nhưng nhược đi&ecirc;̉m của dòng s&acirc;̉n ph&acirc;̉m này là ch&acirc;́t lượng k&ecirc;́t dính kh&ocirc;ng cao lắm mà giá thành cũng kh&ocirc;ng phải th&acirc;́p. Do đó dòng sản ph&acirc;̉m này chỉ được sử dụng trong những những trường hợp đặc bi&ecirc;̣t.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:13pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><strong><span style=\"font-size:20.0pt\">Các loại keo dán khác tr&ecirc;n thị trường</span></strong></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Băng keo vải</strong> là dòng sản ph&acirc;̉m d&aacute;n gi&acirc;́y s&aacute;ch, tập vở... được sử dụng là chất liệu bằng vải simili đ&ecirc;̉ tạo n&ecirc;n và c&oacute; thể x&eacute; được. Trong quá trình sử dụng chúng.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Băng keo giấy</strong> là dòng sản ph&acirc;̉m dùng ch&acirc;́t li&ecirc;̣u chủ y&ecirc;́u là gi&acirc;́y đ&ecirc;̉ c&acirc;́u tạo và c&ocirc;ng dụng sẽ là d&ugrave;ng để d&aacute;n ghi ch&uacute; l&ecirc;n sản phẩm.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Băng keo 2 mặt</strong> là dòng sản ph&acirc;̉m được c&acirc;́u tạo bởi nhi&ecirc;̀u lớp ch&ocirc;̀ng l&ecirc;n nhau khi sản xu&acirc;́t. Và có hai mặt điều c&oacute; keo có c&ocirc;ng dụng là d&ugrave;ng để d&aacute;n trang tr&iacute;, họa tiết nhỏ.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Băng keo nh&ocirc;m</strong> là dòng sản ph&acirc;̉m dùng chủ y&ecirc;́u trong c&ocirc;ng ngh&ecirc;̣p hoặc trong c&ocirc;ng trình x&acirc;y dựng d&aacute;n t&ocirc;n, d&aacute;n sắt, inox: c&oacute; khả năng chịu nhiệt cao, thường d&ugrave;ng để d&aacute;n, v&aacute; lỗ thủng của c&aacute;c vật dụng bằng kim loại.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Băng keo sợi thủy tinh</strong> là sản ph&acirc;̉m sử dụng c&ocirc;ng ngh&ecirc;̣ mới đ&ecirc;̉ tạo thành. Các ưu đi&ecirc;̉m n&ocirc;̉i b&acirc;̣t như chằng bu&ocirc;̣c hàng hóa, dán mí các cu&ocirc;̣n thép, inox mỏng ... và có sức chịu lực cực kỳ cao. Và độ bền cao nhưng gi&aacute; th&agrave;nh cũng cao hơn c&aacute;c loại kh&aacute;c.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Băng keo trang tr&iacute;</strong> là dòng sản ph&acirc;̉m dùng đ&ecirc;̉ trang trí và làm đẹp nhà hay khu vục nào đó. Với c&aacute;c họa tiết nhỏ, hộp qu&agrave;&hellip; d&ugrave;ng trong mỹ thuật.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Băng keo d&aacute;n nền</strong> là dòng sản ph&acirc;̉m với các c&ocirc;ng dụng đặc thù như ph&acirc;n chia khu vực để h&agrave;ng. Hoặc d&aacute;n ở những nơi cảnh b&aacute;o nguy hiểm.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Băng keo d&aacute;n y tế</strong> là dòng sản ph&acirc;̉m dùng chủ y&ecirc;́u trong các trung t&acirc;m y t&ecirc;́ hay cơ sở thăm khám. Với c&ocirc;ng dụng là để băng b&oacute; vết thương cho người b&ecirc;̣nh.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Băng keo văn ph&ograve;ng</strong> l&agrave; loại băng keo trắng trong và có kích thước khá nhỏ so với các loại băng keo khác thường sử dụng trong văn ph&ograve;ng. Với c&acirc;́u tạo từ chất liệu OPP trong được k&ecirc;́t c&acirc;́u dính keo 1 mặt và lõi làm bằng nhựa trắng. Thường được sử dụng trong văn ph&ograve;ng.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"background-color:white\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><strong><span style=\"font-size:20.0pt\"><span style=\"color:#4f81bd\">C&ocirc;ng ty Vitoen</span></span></strong></span></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"background-color:white\">&nbsp;</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><strong><span style=\"font-size:14.0pt\">Hotline</span></strong><span style=\"font-size:14.0pt\">&nbsp;: 0974289224.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><strong><span style=\"font-size:14.0pt\">Email</span></strong><span style=\"font-size:14.0pt\">&nbsp;: vitoen.com@gmail.com.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><strong><span style=\"font-size:14.0pt\">Địa chỉ</span></strong><span style=\"font-size:14.0pt\">: 35/6 B&ugrave;i Quang L&agrave;, Phường 12, Quận G&ograve; Vấp, TPHCM.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"background-color:white\">&nbsp;</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><em><span style=\"font-size:14.0pt\">Mời các bạn tới c&ocirc;ng ty chúng t&ocirc;i đ&ecirc;̉ được cung c&acirc;́p các sản ph&acirc;̉m băng keo ch&acirc;́t lượng </span></em><em><span style=\"font-size:14.0pt\">và phù hợp với c&ocirc;ng vi&ecirc;̣c nhé.</span></em></span></span></p>', '', '', 'Các loại băng keo được phân biệt như thế nào ? Với những loại băng keo được cung ứng có các công dụng khác nhau và tác dụng khá là phong phú. Do đó có thêm sự lựa chọn cho khách hàng.', 7, 4, 1, '2018-05-01 03:31:03', '2018-05-01 15:40:00');
INSERT INTO `article` (`id`, `fullname`, `alias`, `image`, `intro`, `content`, `description`, `meta_keyword`, `meta_description`, `count_view`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(55, 'Quy trình sản xuất băng keo bằng công nghệ cao hiện nay', 'quy-trinh-san-xuat-bang-keo-bang-cong-nghe-cao-hien-nay', 'quy-trinh-san-xuat-bang-keo1-asjpvdfmo8y4.jpg', 'Quy trình sản xuất băng keo rất nghiêm ngặt thì mới tạo ra được sản phẩm chất lượng. Trong mỗi giai đoạn phát triển của xã hội thì quá trình có thể được thay đổi theo...', '<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Đ&ecirc;̉ có sản ph&acirc;̉m băng keo như bạn đang sử dụng trong nhà thì bản th&acirc;n các dòng sản ph&acirc;̉m đó phải trải qua m&ocirc;̣t <strong>quy trình sản xu&acirc;́t băng keo </strong>r&acirc;́t nghi&ecirc;m ngặt thì mới tạo ra được sản ph&acirc;̉m ch&acirc;́t lượng. Trong m&ocirc;̃i giai đoạn phát tri&ecirc;̉n của xã h&ocirc;̣i thì quá trình có th&ecirc;̉ được thay đ&ocirc;̉i theo. Sau đ&acirc;y C&ocirc;ng ty Vitoen sẽ cung c&acirc;́p cho quý khách quy trình làm ra sản ph&acirc;̉m mới nh&acirc;́t của chúng t&ocirc;i.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><img alt=\"quy trình sản xuất băng keo\" src=\"upload/quy-trinh-san-xuat-bang-keo1.jpg/\" /></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:14pt\"><span style=\"color:black\"><em>Hình ảnh: Quy trình sản xu&acirc;́t băng keo.</em></span></span></p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><strong><span style=\"font-size:18.0pt\">Nguy&ecirc;n li&ecirc;̣u làm keo </span></strong></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">H&acirc;̀u h&ecirc;́t các nguy&ecirc;n li&ecirc;̣u chủ y&ecirc;́u được nh&acirc;̣p kh&acirc;̉u trực ti&ecirc;́p từ nước ngoài. Khi các dòng nguy&ecirc;n li&ecirc;̣u <span style=\"color:black\">này </span>vào vi&ecirc;̣t nam sẽ được gia c&ocirc;ng từ màng băng keo đ&ecirc;́n ch&acirc;́t keo dính. Các dòng nguy&ecirc;n li&ecirc;̣u này sẽ được tán nhỏ và đi&ecirc;̀u và tạo ra loại ti&ecirc;̀n băng keo Jumbo. V&ecirc;̀ ph&acirc;̀n màu đ&ecirc;̉ tạo n&ecirc;n sự khác bi&ecirc;̣t tr&ecirc;n m&ocirc;̃i sản ph&acirc;̉m được tung ra thì c&acirc;̀n có kh&acirc;u pha tr&ocirc;̣n màu trong keo. Sau đ&oacute; các cuộn Jumbo băng keo n&agrave;y được đưa và n&acirc;ng l&ecirc;n m&aacute;y đ&aacute;nh băng keo. Tạo th&agrave;nh những cuộn băng keo t&ugrave;y theo quy c&aacute;ch&nbsp; k&iacute;ch cỡ chu&acirc;̉n được tính toán trước. Bình thường 1 băng keo sẽ tạo thành sẽ có tới 27 cuộn.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><strong><span style=\"font-size:18.0pt\">Quá trình t&ocirc;̉ng quan của sản xu&acirc;́t băng keo</span></strong></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Trong quá trình làm ra đoạn băng keo sử dụng được trong cu&ocirc;̣c s&ocirc;́ng thì giai đoạn khó nh&acirc;́t là kh&acirc;u tạo ch&acirc;́t keo dính.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Bước đ&acirc;̀u ti&ecirc;n</strong> là tái tạo chất kết d&iacute;nh từ một dung m&ocirc;i hữu cơ. Các dung m&ocirc;i n&agrave;y có đặc tính rất dễ bay hơi. Sau đó chất kết d&iacute;nh được giát rất mỏng l&ecirc;n lớp nền bằng dung m&ocirc;i bằng c&aacute;ch đẩy dung m&ocirc;i tr&agrave;n ra qua một khe rất hẹp nhỏ tr&ecirc;n máy. </span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Bước 2</strong> là tr&ecirc;n lớp nền sẽ được phủ keo đi qua một ống v&agrave; dung m&ocirc;i bay hơi trong ống đ&oacute;. Keo phủ tr&ecirc;n băng sẽ được keo kh&ocirc;. Dung m&ocirc;i bay hơi xong sẽ còn lại ch&acirc;́t k&ecirc;́t đính.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Bước <span style=\"color:black\">3</span></strong><span style=\"color:black\"> là chất </span>kết d&iacute;nh phun được phủ n&oacute;ng m&ocirc;̣t l&acirc;̀n nữa đ&ecirc;̉ được sản xuất. Cụ th&ecirc;̉ là chất kết d&iacute;nh h&oacute;a lỏng bằng c&aacute;ch đốt n&oacute;ng v&agrave; trộn trong một m&aacute;y &eacute;p đ&ugrave;n. Chất kết d&iacute;nh này được d&aacute;n đều l&ecirc;n lớp nền th&ocirc;ng qua khe rất mỏng.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong><span style=\"color:black\">Bước 4</span></strong><span style=\"color:black\"> ở </span>bước này, sau khi đã có được dung dịch hoàn chỉnh đ&ecirc;̉ k&ecirc;́t đính th&igrave; sẽ chuy&ecirc;̉n sang giai đoạn trải keo l&ecirc;n gi&acirc;́y, nh&ocirc;m, nhựa hoặc v&acirc;̣t li&ecirc;̣u mu&ocirc;́n làm băng keo.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><img alt=\"quy trình sản xuất băng keo\" src=\"upload/quy-trinh-san-xuat-bang-keo.jpg/\" /></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:14pt\"><span style=\"color:black\"><em>Hình ảnh: Cu&ocirc;̣n keo thành ph&acirc;̉m</em></span></span></p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><strong><span style=\"font-size:18.0pt\">Ki&ecirc;̉m tra ch&acirc;́t lượng keo trước khi đưa ra thị trường</span></strong></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Sau khi sản ph&acirc;̉m băng keo ra đời thì vi&ecirc;̣c ti&ecirc;́p theo là ki&ecirc;̉m tra đánh giá ch&acirc;́t lượng. Cụ th&ecirc;̉ ở đ&acirc;y c&acirc;̀n ki&ecirc;̉m tra như đ&ocirc;̣ dính, đ&ocirc;̣ b&ecirc;̀n, tỉ l&ecirc;̣ đ&ocirc;̀ng đ&ecirc;̀u của phủ keo tr&ecirc;n băng.... Những th&ocirc;ng tin được th&ocirc;ng k&ecirc; r&acirc;́t tỉ mỉ và chi ti&ecirc;́t. Các sản ph&acirc;̉m đạt y&ecirc;u c&acirc;̀u thì sẽ chuy&ecirc;̉n sang bước đóng gói sản ph&acirc;̉m. Còn những sản ph&acirc;̉m kh&ocirc;ng đạt chu&acirc;̉n qua giai đoạn ki&ecirc;̉m tra thì được xử lý bằng cách cho tái ch&ecirc;́ ph&acirc;̀n keo hoặc ti&ecirc;u hủy sản ph&acirc;̉m.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Với cách quy cách đóng gói là 20 c&acirc;y 1 thùng hoặc 20 c&acirc;y tr&ecirc;n 1 bao. Kích thước được chia sao cho phù hợp với nhu c&acirc;̀u thực t&ecirc;́ ví dụ&nbsp; 10 c&acirc;y/ 1 bao....</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Đ&ecirc;́n kh&acirc;̉u giao hàng và nh&acirc;̣n phản h&ocirc;̀i từ khách đ&ecirc;́n mua.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><strong><span style=\"font-size:18.0pt\">T&ocirc;̉ng k&ecirc;́t</span></strong></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">C&ocirc;ng ngh&ecirc;̣ sản xu&acirc;́t keo có sự tương đ&ocirc;̀ng với nhau. Do đó sau đ&acirc;y chúng ta sẽ tìm hi&ecirc;̉u quá trình sản xu&acirc;́t băng keo thùng. Làm m&ocirc;̣t sản ph&acirc;̉m có c&ocirc;ng dụng r&acirc;́t r&ocirc;̣ng tr&ecirc;n thị trường keo dán. Tr&ecirc;n đ&acirc;y là toàn b&ocirc;̣ quy trình sản xu&acirc;́t băng keo mà bạn tham khảo. Đ&ecirc;̉ bi&ecirc;́t được làm ra m&ocirc;̣t cu&ocirc;̣n băng keo bình thường như bạn c&acirc;̀m tr&ecirc;n tay c&acirc;̀n làm những gì.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"background-color:white\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><strong><span style=\"font-size:20.0pt\"><span style=\"color:#4f81bd\">C&ocirc;ng ty Vitoen</span></span></strong></span></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"background-color:white\">&nbsp;</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><strong><span style=\"font-size:14.0pt\">Hotline</span></strong><span style=\"font-size:14.0pt\">&nbsp;: 0974289224.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><strong><span style=\"font-size:14.0pt\">Email</span></strong><span style=\"font-size:14.0pt\">&nbsp;: vitoen.com@gmail.com.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><strong><span style=\"font-size:14.0pt\">Địa chỉ</span></strong><span style=\"font-size:14.0pt\">: 35/6 B&ugrave;i Quang L&agrave;, Phường 12, Quận G&ograve; Vấp, TPHCM.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"background-color:white\">&nbsp;</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><em><span style=\"font-size:14.0pt\">Mời các bạn tới c&ocirc;ng ty chúng t&ocirc;i đ&ecirc;̉ được cung c&acirc;́p các sản ph&acirc;̉m băng keo ch&acirc;́t lượng </span></em><em><span style=\"font-size:14.0pt\">và phù hợp với c&ocirc;ng vi&ecirc;̣c nhé.</span></em></span></span></p>', '', 'Quy trình sản xuất băng keo', 'Quy trình sản xuất băng keo rất nghiêm ngặt thì mới tạo ra được sản phẩm chất lượng. Trong mỗi giai đoạn phát triển của xã hội thì quá trình có thể được thay đổi theo', 5, 5, 1, '2018-05-01 03:46:06', '2018-05-01 19:39:52'),
(56, 'Giá băng keo trong được bán trên thị trường', 'gia-bang-keo-trong-duoc-ban-tren-thi-truong', 'bang-gia-bang-keo-352lnvim61kq.png', 'Công ty Vitoen sẽ công bố bảng giá băng keo để quý khách tìm hiểu và giá về giá loại sản phẩm này. Nhằm giúp quý khách yên tâm về giá cả khi mua băng keo....', '<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Trong s&ocirc;́ các loại băng keo tr&ecirc;n thị trường hi&ecirc;̣n nay thì băng keo trong có tính ph&ocirc;̉ bi&ecirc;́n r&acirc;́t cao. Nhằm trong danh mục của băng keo thùng do đó xu th&ecirc;́ thi&ecirc;n hướng v&ecirc;̀ loại keo trong có ph&acirc;̀n lưu ý hơn khi mua. Với nhi&ecirc;̀u người đang quan t&acirc;m đ&ecirc;́n giá của băng keo trong đang bày bán tr&ecirc;n thị trường như th&ecirc;́ nào? Dao đ&ocirc;̣ng giá trong khoảng nào? Sau đ&acirc;y c&ocirc;ng ty <strong>Vitoen </strong>sẽ c&ocirc;ng b&ocirc;́ <strong>bảng giá băng keo</strong> đ&ecirc;̉ quý khách tìm hi&ecirc;̉u và giá v&ecirc;̀ giá loại sản ph&acirc;̉m này. </span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><img alt=\"bảng giá băng keo\" src=\"upload/bang-gia-bang-keo.png/\" /></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\"><em>Hình ảnh: Loại keo trong tr&ecirc;n thị trường.</em></span></span></span></p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><strong><span style=\"font-size:18.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">Bảng giá keo trong trong năm 2018</span></span></strong></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\"><strong>Giá của mọi loại băng keo</strong> có sự khác nhau phụ thu&ocirc;̣c vào các y&ecirc;́u t&ocirc;́ như c&ocirc;ng ty cung c&acirc;́p, ch&acirc;́t li&ecirc;̣u đ&ecirc;̉ tạo băng keo, thời đi&ecirc;̉m mua băng keo.....Do đó đ&ecirc;̉ <span style=\"color:black\">c&acirc;̣p </span>nh&acirc;̣t các th&ocirc;ng tin mới nh&acirc;́t giá các sản ph&acirc;̉m keo thì bạn c&acirc;̀n phải nắm bắt th&ocirc;ng tin từ c&ocirc;ng ty hay cơ sở. Sau đ&acirc;y là th&ocirc;ng tin v&ecirc;̀ bảng giá keo trong của đơn vị <strong>Vitoen</strong>. </span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><u><em><strong><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Bảng giá keo trong năm 2018</span></span></span></strong></em></u></p>\r\n\r\n<ul>\r\n	<li style=\"text-align: justify;\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Băng keo trong loại 48mm 100Yard &ndash; 1 cu&ocirc;̣n có giá &ndash; 7.500 VNĐ.</span></span></span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Băng keo trong loại 48mm 80Yard &ndash; 1 cu&ocirc;̣n có giá &ndash;&nbsp; 6.200 VNĐ</span></span></span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Băng keo trong loại 48mm 100Yard &ndash; 1 cu&ocirc;̣n có giá &ndash; 8.700 VNĐ</span></span></span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Băng keo trong loại 48mm 80Yard &ndash; 1 cu&ocirc;̣n có giá &ndash; 7.200 VNĐ</span></span></span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Băng keo trong loại 60mm 100Yard &ndash; 1 cu&ocirc;̣n có giá &ndash; 9.500 VNĐ</span></span></span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Băng keo trong loại 60mm 80Yard &ndash; 1 cu&ocirc;̣n có giá &ndash; 7.800 VNĐ</span></span></span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Băng keo trong loại 60mm 100Yard &ndash; 1 cu&ocirc;̣n có giá &ndash; 10.900 VNĐ</span></span></span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Băng keo trong loại 60mm 80Yard &ndash; 1 cu&ocirc;̣n có giá &ndash; 8.900 VNĐ</span></span></span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Băng keo trong loại 48mm 80Yarrd (Xanh, Đỏ, Vàng) &ndash; 1 cu&ocirc;̣n có giá &ndash; 10.300 VNĐ</span></span></span></li>\r\n	<li style=\"text-align: justify;\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Băng keo trong loại 48mm 60Yard (Đen , H&ocirc;̀ng , Cam Tim)&ndash; 1 cu&ocirc;̣n có giá &ndash; 7.900 VNĐ</span></span></span>.</li>\r\n</ul>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Tr&ecirc;n đ&acirc;y chi là tham khảo cho m&ocirc;̣t sản ph&acirc;̉m của đơn vị chúng t&ocirc;i. Và dòng sản ph&acirc;̉m keo khác như băng keo đục, băng keo màu hay băng keo in logo&hellip; Thì sẽ có mức giá khác nhau. Và chúng lu&ocirc;n c&acirc;̣p nh&acirc;̣t tình hình <strong>giá băng keo</strong> m&ocirc;̣t cách nhanh nh&acirc;́t và li&ecirc;n tục giúp quý khách hàng thu&acirc;̣n ti&ecirc;̣n đ&ecirc;̉ so sanh giá thành. Đ&ecirc;̉ có quy&ecirc;́t định mua keo hay kh&ocirc;ng.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Với m&ocirc;̣t c&ocirc;ng ty uy tín b&acirc;̣c nh&acirc;́t tr&ecirc;n mảnh đ&acirc;́t sài thành thì quý khách đ&ecirc;́n với c&ocirc;ng ty chúng t&ocirc;i sẽ được hưởng các ch&ecirc;́ đ&ocirc;̣ đặc bi&ecirc;̣t như : </span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Khi khách hàng đã có nhi&ecirc;̀u năm hoặc sẽ mua hàng với s&ocirc;́ lượng lớn thu&ocirc;̣c danh mục các sản ph&acirc;̉m băng keo chúng t&ocirc;i đang cung thì sẽ được hưởng các mức giá t&ocirc;́t. Hoặc có th&ecirc;̉ ghi nợ từ 1 tháng đ&ecirc;́n 2 tháng. Đặc bi&ecirc;̣t của đơn vị <strong>Vitoen</strong> sẽ là giao hàng cho quý khách t&acirc;̣n tình và giao mi&ecirc;̃n phí đ&ecirc;́n tay khách hàng.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><strong><span style=\"font-size:18.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">Nguy&ecirc;n nh&acirc;n s&acirc;u xa tác đ&ocirc;̣ng l&ecirc;n giá băng keo trong</span></span></strong></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Như đã k&ecirc;́t ở tr&ecirc;n thì giá thành của m&ocirc;̣t sản ph&acirc;̉m băng keo trong hay b&acirc;́t kỳ loại sản ph&acirc;̉m nào thì đi&ecirc;̀u có sự bi&ecirc;́n đ&ocirc;̣ng theo tỉ giá. Đặc bi&ecirc;̣t là ngoại t&ecirc;̣ đã li&ecirc;n tục bi&ecirc;́n đ&ocirc;̉i đã làm cho các giá của mặt keo trong nói ri&ecirc;ng cũng kh&ocirc;ng ngừng thay đ&ocirc;̉i theo. Nguy&ecirc;n nh&acirc;n chính d&acirc;̃n đ&ecirc;́n đi&ecirc;̀u này sẽ là năm ở kh&acirc;u nguy&ecirc;n li&ecirc;̣u. Ở thị trường vi&ecirc;̣t nam, nguy&ecirc;n li&ecirc;̣u chủ y&ecirc;́u được nh&acirc;̣p kh&acirc;̉u từ nước ngoài và gia c&ocirc;ng tại thị trường trong nước. Do đó giá sẽ bi&ecirc;́n đ&ocirc;̉i s&acirc;u sắc từ ngoại t&ecirc;́ là vì th&ecirc;́. Nguy&ecirc;n li&ecirc;̣u chủ đạo là lớp keo và lớp màng OPP ngoài.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><strong><span style=\"font-size:18.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">K&ecirc;́t lu&acirc;̣n</span></span></strong></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Tr&ecirc;n đ&acirc;y là những th&ocirc;ng tin cơ bản và tạm thời v&ecirc;̀ giá băng keo trong mà bạn có th&ecirc;̉ tham khảo. Đ&ecirc;̉ đưa quy&ecirc;́t định có n&ecirc;n mua hay kh&ocirc;ng, bảng giá sẽ tác đ&ocirc;̣ng ít nhi&ecirc;̀u đ&ecirc;́n t&acirc;m lý mua hàng. Do đó, đ&ecirc;̉ chọn mặt hàng nào phù hợp với c&ocirc;ng vi&ecirc;̣c mà giá thành t&ocirc;́t nh&acirc;́t thì bạn n&ecirc;n tham khảo các th&ocirc;ng tin này.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"background-color:white\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><strong><span style=\"font-size:20.0pt\"><span style=\"color:#4f81bd\">C&ocirc;ng ty Vitoen</span></span></strong></span></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">&nbsp;</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-size:14.0pt\"><span style=\"font-family:&quot;OpenSans&quot;,&quot;serif&quot;\">Hotline</span></span></strong><span style=\"font-size:14.0pt\"><span style=\"font-family:&quot;OpenSans&quot;,&quot;serif&quot;\">&nbsp;: 0974289224.</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-size:14.0pt\"><span style=\"font-family:&quot;OpenSans&quot;,&quot;serif&quot;\">Email</span></span></strong><span style=\"font-size:14.0pt\"><span style=\"font-family:&quot;OpenSans&quot;,&quot;serif&quot;\">&nbsp;: vitoen.com@gmail.com.</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-size:14.0pt\"><span style=\"font-family:&quot;OpenSans&quot;,&quot;serif&quot;\">Địa chỉ</span></span></strong><span style=\"font-size:14.0pt\"><span style=\"font-family:&quot;OpenSans&quot;,&quot;serif&quot;\">: 35/6 B&ugrave;i Quang L&agrave;, Phường 12, Quận G&ograve; Vấp, TPHCM.</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">&nbsp;</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><em><span style=\"font-size:14.0pt\">Mời các bạn tới c&ocirc;ng ty chúng t&ocirc;i đ&ecirc;̉ được cung c&acirc;́p các sản ph&acirc;̉m băng keo ch&acirc;́t lượng </span></em><em><span style=\"font-size:14.0pt\">và phù hợp với c&ocirc;ng vi&ecirc;̣c nhé.</span></em></span></span></span></p>', '', 'bảng giá băng keo', 'Công ty Vitoen sẽ công bố bảng giá băng keo để quý khách tìm hiểu và giá về giá loại sản phẩm này. Nhằm giúp quý khách yên tâm về giá cả khi mua băng keo....', 3, 6, 1, '2018-05-01 04:10:53', '2018-05-01 15:40:09'),
(57, 'Băng keo 2 mặt giá bao nhiêu đang bày bán trên thị trường', 'bang-keo-2-mat-gia-bao-nhieu-dang-bay-ban-tren-thi-truong', 'bang-keo-2-mat-bgq2p0zoxa69.png', 'Phương pháp sản xuất đề tạo ra loại keo chất lượng mà giá thành phải chăng hơn rất nhiều. Băng keo 2 mặt giá bao nhiêu đến thời điểm hiện nay? Những thông tin sau đây sẽ giúp tâm lý mua sản phẩm này của quý khách.', '<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><span style=\"background-color:white\">Băng keo 2 mặt <span style=\"color:black\">ngày </span>càng có ch&ocirc;̃ đứng trong nhu c&acirc;̀u người ti&ecirc;u dùng hi&ecirc;̣n nay. Do đó ngày càng nhi&ecirc;̀u cơ sở kinh doanh loại băng keo này đang thay đ&ocirc;̉i phương pháp sản xu&acirc;́t đ&ecirc;̀ tạo ra loại keo ch&acirc;́t lượng mà giá thành phải chăng hơn r&acirc;́t nhi&ecirc;̀u. <strong>Băng keo 2 mặt giá bao nhi&ecirc;u</strong> đ&ecirc;́n thời đi&ecirc;̉m hi&ecirc;̣n nay? Sau đ&acirc;y là th&ocirc;ng tin v&ecirc;̀ sản ph&acirc;̉m này.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><img alt=\"băng keo 2 mặt\" src=\"upload/bang-keo2mat.png/\" /></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:14pt\"><span style=\"color:black\"><em><span style=\"background-color:white\">Hình ảnh: Cu&ocirc;̣n băng keo 2 mặt.</span></em></span></span></p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><strong><span style=\"font-size:18.0pt\"><span style=\"background-color:white\">Bảng giá chi ti&ecirc;́t v&ecirc;̀ băng keo 2 mặt tr&ecirc;n thị trường 2018</span></span></strong></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Giá thành của băng keo có th&ecirc;̉ linh hoạt và bi&ecirc;́n đ&ocirc;̣ng hơn tr&ecirc;n thị trường vì có nhưng nguy&ecirc;n nh&acirc;n khác nhau. Sẽ ảnh hưởng trực ti&ecirc;́p đ&ecirc;́n giá của m&ocirc;̃i sản ph&acirc;̉m.</span></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><span style=\"background-color:white\">Băng keo 2 mặt TN 5mm 10Yard &ndash; 1 cu&ocirc;̣n &ndash; có giá 1,375 vnđ.</span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><span style=\"background-color:white\">Băng keo 2 mặt TN 12mm 10Yard &ndash; 1 cu&ocirc;̣n &ndash; có giá 2,200 vnđ.</span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><span style=\"background-color:white\">Băng keo 2 mặt TN 24mm 10Yard &ndash; 1 cu&ocirc;̣n &ndash; có giá 3,800 vnđ.</span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><span style=\"background-color:white\">Băng keo 2 mặt TN 48mm 10Yard &ndash; 1 cu&ocirc;̣n &ndash; có giá 6,600 vnđ.</span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><span style=\"background-color:white\">Băng keo 2 mặt TN 24mm 50Yard &ndash; 1 cu&ocirc;̣n &ndash; có giá 13,200 vnđ.</span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><span style=\"background-color:white\">Băng keo 2 mặt TN 50mm 50Yard &ndash; 1 cu&ocirc;̣n &ndash; có giá 100.000 vnđ.</span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><span style=\"background-color:white\">Băng keo 2 mặt TN 36mm 10Yard &ndash; 1 cu&ocirc;̣n &ndash; có giá 19,800 vnđ.</span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><span style=\"background-color:white\">Băng keo 2 mặt TN 48mm 10Yard &ndash; 1 cu&ocirc;̣n &ndash; có giá 25,300 vnđ.</span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><span style=\"background-color:white\">Băng keo 2 mặt TN 5mm 18Yard &ndash; 1 cu&ocirc;̣n &ndash; có giá 1,700 vnđ.</span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><span style=\"background-color:white\">Băng keo 2 mặt TN 12mm 18Yard &ndash; 1 cu&ocirc;̣n &ndash; có giá 3,000 vnđ.</span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><span style=\"background-color:white\">Băng keo 2 mặt TN 24mm 18Yard &ndash; 1 cu&ocirc;̣n &ndash; có giá 5,500 vnđ.</span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><span style=\"background-color:white\">Băng keo 2 mặt TN 48mm 18Yard &ndash; 1 cu&ocirc;̣n &ndash; có giá 10,230 vnđ.</span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><span style=\"background-color:white\">Băng keo 2 mặt vàng d&acirc;̀u 12mm 10Yard &ndash; 1 cu&ocirc;̣n &ndash; có giá 2,970 vnđ.</span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><span style=\"background-color:white\">Băng keo 2 mặt vàng d&acirc;̀u 24mm 10Yard &ndash; 1 cu&ocirc;̣n &ndash; có giá 5,335 vnđ.</span></span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><span style=\"background-color:white\">Băng keo 2 mặt vàng d&acirc;̀u 12mm 18Yard &ndash; 1 cu&ocirc;̣n &ndash; có giá 4,400 vnđ.</span></span></span></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Tr&ecirc;n đ&acirc;y chi là mức giá tham khảo cho m&ocirc;̣t sản ph&acirc;̉m của đơn vị chúng t&ocirc;i. Đ&acirc;y là dòng keo duy nh&acirc;́t có c&acirc;́u trúc tạo thành r&acirc;́t nhi&ecirc;̀u lớp.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><strong><span style=\"font-size:18.0pt\">Cơ sở đang kinh doanh băng keo 2 mặt </span></strong></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Với m&ocirc;̣t c&ocirc;ng ty uy tín b&acirc;̣c nh&acirc;́t tr&ecirc;n mảnh đ&acirc;́t sài thành thì thì quý khách đ&ecirc;́n với c&ocirc;ng ty chúng t&ocirc;i sẽ được hưởng các ch&ecirc;́ đ&ocirc;̣ đặc bi&ecirc;̣t. Khi khách hàng đã có nhi&ecirc;̀u năm hoặc sẽ mua hàng với s&ocirc;́ lượng lớn thu&ocirc;̣c danh mục các sản ph&acirc;̉m băng keo chúng t&ocirc;i đang cung c&acirc;́p thì sẽ được hưởng các mức giá t&ocirc;́t. Hoặc có th&ecirc;̉ ghi nợ từ 1 tháng đ&ecirc;́n 2 tháng. Đặc bi&ecirc;̣t của đơn vị <strong><em>Vitoen</em></strong> sẽ là giao hàng cho quý khách t&acirc;̣n tình và giao mi&ecirc;̃n phí đ&ecirc;́n tay khách hàng. Và dòng sản ph&acirc;̉m keo khác như băng keo đục, băng keo màu hay băng keo in logo thì sẽ có mức giá khác nhau. Và chúng lu&ocirc;n c&acirc;̣p nh&acirc;̣t tình hình giá băng keo m&ocirc;̣t cách nhanh nh&acirc;́t và li&ecirc;n tục giúp quý khách hàng thu&acirc;̣n ti&ecirc;̣n đ&ecirc;̉ so sanh giá thành. Đ&ecirc;̉ có quy&ecirc;́t định mua keo hay kh&ocirc;ng.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><strong><span style=\"font-size:18.0pt\">Các nguy&ecirc;n nh&acirc;n tác đ&ocirc;̣ng l&ecirc;n giá băng keo 2 mặt</span></strong></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Giá của mọi loại <strong>băng keo 2 mặt có giá bao nhi&ecirc;u</strong> còn phụ thu&ocirc;̣c vào các y&ecirc;́u t&ocirc;́ khác nhau như c&ocirc;ng ty cung c&acirc;́p, thời đi&ecirc;̉m mua băng keo... Giá thành của m&ocirc;̣t sản ph&acirc;̉m băng keo 2 mặt hay b&acirc;́t kỳ loại sản ph&acirc;̉m nào thì đi&ecirc;̀u có sự bi&ecirc;́n đ&ocirc;̣ng theo tỉ giá. Đặc bi&ecirc;̣t là ngoại t&ecirc;̣ đã li&ecirc;n tục bi&ecirc;́n đ&ocirc;̉i đã làm cho các giá của mặt keo 2 mặt nói ri&ecirc;ng cũng kh&ocirc;ng ngừng thay đ&ocirc;̉i theo. Nguy&ecirc;n nh&acirc;n chính d&acirc;̃n đ&ecirc;́n đi&ecirc;̀u này sẽ là năm ở kh&acirc;u nguy&ecirc;n li&ecirc;̣u. Ở thị trường trong nước thì nguy&ecirc;n li&ecirc;̣u chủ y&ecirc;́u được nh&acirc;̣p kh&acirc;̉u từ nước ngoài và gia c&ocirc;ng tại thị trường trong nước. Do đó giá sẽ bi&ecirc;́n đ&ocirc;̉i s&acirc;u sắc từ ngoại t&ecirc;́ là vì th&ecirc;́. </span></span></p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><strong><span style=\"font-size:18.0pt\">K&ecirc;́t lu&acirc;̣n: </span></strong></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Tr&ecirc;n đ&acirc;y là th&ocirc;ng tin v&ecirc;̀ xung quanh c&acirc;u hỏi v&ecirc;̀ <strong>băng keo 2 mặt giá bao nhi&ecirc;u</strong> mà bạn có th&ecirc;̉ đặt ra. <span style=\"color:black\">Trong xu th&ecirc;́ c&ocirc;ng ngh&ecirc;̣ lu&ocirc;n thay đ&ocirc;̉i như hi&ecirc;̣n nay chỉ </span>là th&ocirc;ng tin giúp quý khách tham khảo. Đ&ecirc;̉ đưa quy&ecirc;́t định có n&ecirc;n mua hay kh&ocirc;ng, bảng giá sẽ tác đ&ocirc;̣ng ít nhi&ecirc;̀u đ&ecirc;́n t&acirc;m lý mua hàng. Do đó, đ&ecirc;̉ chọn mặt hàng nào phù hợp với c&ocirc;ng vi&ecirc;̣c mà giá thành t&ocirc;́t nh&acirc;́t thì bạn n&ecirc;n tham khảo các th&ocirc;ng tin này.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"background-color:white\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><strong><span style=\"font-size:20.0pt\"><span style=\"color:#4f81bd\">C&ocirc;ng ty Vitoen</span></span></strong></span></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"background-color:white\">&nbsp;</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><strong><span style=\"font-size:14.0pt\">Hotline</span></strong><span style=\"font-size:14.0pt\">&nbsp;: 0974289224.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><strong><span style=\"font-size:14.0pt\">Email</span></strong><span style=\"font-size:14.0pt\">&nbsp;: vitoen.com@gmail.com.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><strong><span style=\"font-size:14.0pt\">Địa chỉ</span></strong><span style=\"font-size:14.0pt\">: 35/6 B&ugrave;i Quang L&agrave;, Phường 12, Quận G&ograve; Vấp, TPHCM.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"background-color:white\">&nbsp;</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><em><span style=\"font-size:14.0pt\">Mời các bạn tới c&ocirc;ng ty chúng t&ocirc;i đ&ecirc;̉ được cung c&acirc;́p các sản ph&acirc;̉m băng keo ch&acirc;́t lượng </span></em><em><span style=\"font-size:14.0pt\">và phù hợp với c&ocirc;ng vi&ecirc;̣c nhé.</span></em></span></span></p>', '', 'Băng keo 2 mặt giá bao nhiêu', 'Phương pháp sản xuất đề tạo ra loại keo chất lượng mà giá thành phải chăng hơn rất nhiều. Băng keo 2 mặt giá bao nhiêu đến thời điểm hiện nay? Những thông tin sau đây sẽ giúp tâm lý mua sản phẩm này của quý khách.', 7, 7, 1, '2018-05-01 04:23:42', '2018-05-02 03:11:51'),
(58, 'Băng keo giấy 2cm', 'bang-keo-giay-2cm', 'bang-keo-2cm-yi0q46mwfgbh.jpg', 'Băng keo giấy 2cm là sản phẩm này có nhiều ứng khá linh hoạt trên thực tế như gián bìa nhãn, đóng góp sản phẩm, bọc đồ ga đệm hay làm tấm lót thảm.... Là giấy và có sự dung hòa với lớp cao su hỗn hợp dạng keo trên một mặt.', '<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\"><strong><span style=\"background-color:white\">Băng keo gi&acirc;́y 2cm </span></strong><span style=\"background-color:white\">là loại băng keo được làm ch&acirc;́t li&ecirc;̣u chủ y&ecirc;́u là gi&acirc;́y và có sự dung hòa với lớp cao su h&ocirc;̃n hợp dạng keo tr&ecirc;n m&ocirc;̣t mặt. Với bi&ecirc;n đ&ocirc;̣ chịu được khoảng ph&acirc;n giải nhi&ecirc;̣t là max 180 đ&ocirc;̣ C, Sản ph&acirc;̉m này có nhi&ecirc;̀u ứng khá linh hoạt tr&ecirc;n thực t&ecirc;́&nbsp;như gián bìa nhãn, đóng góp sản ph&acirc;̉m, bọc đ&ocirc;̀ ga đ&ecirc;̣m hay làm t&acirc;́m lót thảm.....Sau đ&acirc;y chúng hãy tình hi&ecirc;̉u kỹ hơn v&ecirc;̀ loại băng keo gi&acirc;́y có kích thước 2cm này.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><img alt=\"Băng keo giấy 2cm\" src=\"upload/bang-keo-2cm.jpg/\" /></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\"><em>Hình ảnh: Băng keo gi&acirc;́y 2cm.</em></span></span></span></p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"font-size:20.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">Giới thi&ecirc;̣u chung v&ecirc;̀ băng keo gi&acirc;́y 2cm</span></span></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\"><strong>Băng keo gi&acirc;́y 2cm</strong> được gọi chung băng keo gi&acirc;́y <span style=\"color:black\">nhưng kích thước chi&ecirc;̀u r&ocirc;̃ng </span>trong quy trình sản xu&acirc;́t ra loại keo đ&ecirc;̉ đặt t&ecirc;n cho băng keo này. Các cơ sở sản xu&acirc;́t băng keo đặt t&ecirc;n theo kích thước đ&ocirc;̣ r&ocirc;̣ng đ&ecirc;̉ ph&acirc;n bi&ecirc;̣t các loại băng keo. Với hai loại được c&acirc;́u thành là giấy b&ograve; nh&aacute;m 2cm v&agrave; giấy b&ograve; l&aacute;ng 2cm. Là loại băng keo có ứng dụng r&acirc;́t ph&ocirc;̉ bi&ecirc;́n. </span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Bề mặt băng keo giấy b&ograve; l&aacute;ng được phủ th&ecirc;m lớp keo cao su h&ograve;a tan tr&ecirc;n bề mặt n&ecirc;n c&oacute; khả năng chịu được m&ocirc;i trường nhiệt độ cao, băng keo giấy b&ograve; nh&aacute;m c&oacute; độ bền kh&aacute; cao, độ dai cực tốt v&agrave; c&oacute; thể ghi ch&uacute; th&ocirc;ng tin dễ d&agrave;ng l&ecirc;n bề mặt nh&aacute;m của băng keo.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Ch&iacute;nh v&igrave; sở hữu những đặc t&iacute;nh ưu việt n&ecirc;n băng keo giấy 2cm cũng l&agrave; sự lựa chọn h&agrave;ng đầu cho nhiều ứng dụng hữu &iacute;ch trong thực tế.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\"><strong>Băng keo giấy 2cm</strong> g&acirc;y ấn tượng với người d&ugrave;ng bởi độ bền cực tốt. Băng keo giấy b&ograve; l&aacute;ng, đặc biệt kh&ocirc;ng thấm nước n&ecirc;n chịu được mội trường khắc nghiệt, ứng dụng v&agrave;o việc đ&oacute;ng g&oacute;i những th&ugrave;ng h&agrave;ng c&oacute; trọng lượng nặng, bảo quản tốt, qu&aacute; tr&igrave;nh vận chuyển d&agrave;i ng&agrave;y phục vụ cho những đơn h&agrave;ng xuất khẩu.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"font-size:18.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">Các ưu đi&ecirc;̉m của băng keo gi&acirc;́y 2cm</span></span></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Với kích thước là kh&ocirc;̉ r&ocirc;̣ng 2cm thì băng keo được dùng trong các trường hợp là dán và bọc sản ph&acirc;̉m gửi ki&ecirc;̣n hàng đi. Việc một lớp băng keo giấy b&ograve; l&aacute;ng dán xuống đ&aacute;y thảm, vừa giữ vệ sinh. Vừa đảm bảo được độ bền cho tấm thảm trước nhiệt độ thay đổi đột ngột của m&ocirc;i trường xung quanh bu&ocirc;̉i l&ecirc;̃ h&ocirc;̣i. <strong>Băng keo giấy 2cm</strong> c&ograve;n được d&ugrave;ng để d&aacute;n l&ecirc;n bề các mặt sản phẩm để nhằm chống trầy xước. C&oacute; thể bảo quản trong thời gian d&agrave;i.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Nắm bắt được t&iacute;nh hữu dụng v&agrave; ưu điểm của các nhu c&acirc;̀u v&ecirc;̀ sử dụng <strong>băng keo giấy 2cm</strong>. Nhi&ecirc;̀u <span style=\"color:black\">c&ocirc;ng ty tr&ecirc;n thị trường băng keo trong nước bắt đ&acirc;̀u có những </span>khoản đ&acirc;̀u tư mạnh hơn v&ecirc;̀ dòng băng keo 2cm này. Trong sản xu&acirc;́t và trở th&agrave;nh nh&agrave; cung cấp băng keo giấy 2cm cho kh&aacute;ch h&agrave;ng. Và tung ra thị&nbsp; trường những theo y&ecirc;u c&acirc;̀u băng keo giấy b&ograve; nh&aacute;m và băng keo giấy b&ograve; l&aacute;ng. Với băng keo giấy b&ograve; nh&aacute;m, loại c&oacute; thể ghi ch&uacute;. Ngo&agrave;i ra còn có các quy c&aacute;ch kh&aacute;c nhau, t&ugrave;y theo y&ecirc;u cầu, đảm bảo chất lượng tuyệt đối. C&ugrave;ng với mức gi&aacute; hợp l&yacute;, ưu đ&atilde;i cho mọi khách hàng.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\"><em><span style=\"background-color:white\">Tr&ecirc;n đ&acirc;y là những quy chu&acirc;̉n và các th&ocirc;ng tin chi ti&ecirc;́t v&ecirc;̀ <strong>băng keo gi&acirc;́y 2cm </strong>mà các bạn có th&ecirc;̉ tham khảo ph&acirc;n bi&ecirc;̣t các dòng keo dán gi&acirc;́y với nhau. Đặc bi&ecirc;̣t là trong giai đoạn c&ocirc;ng ngh&ecirc;̣ hi&ecirc;̣n đại và thay đ&ocirc;̉i nhanh chóng như b&acirc;y giờ.</span></em></span></span></span></p>', '', 'Băng keo giấy 2cm', 'Băng keo giấy 2cm là sản phẩm này có nhiều ứng khá linh hoạt trên thực tế như gián bìa nhãn, đóng góp sản phẩm, bọc đồ ga đệm hay làm tấm lót thảm.... Là giấy và có sự dung hòa với lớp cao su hỗn hợp dạng keo trên một mặt.', 3, 8, 1, '2018-05-01 04:40:42', '2018-05-01 19:47:23');
INSERT INTO `article` (`id`, `fullname`, `alias`, `image`, `intro`, `content`, `description`, `meta_keyword`, `meta_description`, `count_view`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(59, 'Băng keo 2 mặt loại tốt trên thị trường hiện nay', 'bang-keo-2-mat-loai-tot-tren-thi-truong-hien-nay', 'bang-keo-2-mat-21-yard-27xnm4a5esyt.jpg', 'Băng keo 2 mặt là loại băng keo đã quá quen thuộc trong mọi gia đình. Vì công dụng cực kỳ hiệu quả mà nó mang lại cho. Vậy loại băng keo 2 mặt bạn đang sử dụng được đánh giá là loại băng keo tốt không?', '<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Loại băng keo 2 mặt là dòng khá ph&ocirc;̉ bi&ecirc;́n hi&ecirc;̣n nay và đã quá quen thu&ocirc;̣c trong mọi gia đình. Bởi c&ocirc;ng dụng cực kỳ hi&ecirc;̣u quả mà nó mang lại cho bạn. V&acirc;̣y loại băng keo 2 mặt bạn đang sử dụng được đánh giá là loại băng keo t&ocirc;́t <span style=\"color:black\">kh&ocirc;ng? n&ecirc;́u </span>bạn đang có nhu c&acirc;̀u v&ecirc;̀ vi&ecirc;̣c mua loại keo này l&acirc;̀n đ&acirc;̀u chắc sẽ g&acirc;y cho bạn kh&ocirc;ng ít sự lúng túng và b&ocirc;́i r&ocirc;̀i. <strong>Băng keo 2 mặt </strong><span style=\"color:black\"><strong>loại nào t&ocirc;́t</strong>? Đó là c&acirc;u </span>hỏi được đặt ra cho bạn trong lúc này. Sau đ&acirc;y chung ta hãy tìm hi&ecirc;̉u xung quanh v&acirc;́n đ&ecirc;̀ này nhé.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><img alt=\"băng keo 2 mặt\" src=\"upload/bang-keo-2-mat-21-yard.jpg/\" /></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:14pt\"><span style=\"color:black\"><em>Hình ảnh: Băng keo 2 mặt loại t&ocirc;́t.</em></span></span></p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"font-size:18.0pt\">Ph&acirc;n loại băng keo 2 mặt</span></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Đ&ecirc;̉ ph&acirc;n chia loại keo 2 mặt hi&ecirc;̣n đang có tr&ecirc;n thị trường thì <span style=\"color:black\">nhà sản </span>xu&acirc;́t băng keo 2 mặt chủ y&ecirc;́u dựa vào màu sắc đ&ecirc;̉ ph&acirc;n chia. Mà bỏ qua các th&ocirc;ng s&ocirc;́ kỹ thu&acirc;̣t như Chi&ecirc;̀u dài (8mm, 12mm..), đ&ocirc;̣ dài (12 Yard, 24Yard..), .... Sau đ&acirc;y là t&ecirc;n gọi của băng keo 2 mặt <span style=\"color:black\">sau </span>khi ph&acirc;n chia:</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<h3 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"font-size:16.0pt\">Băng keo 2 mặt trong</span></span></span></span></h3>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Đ&ocirc;́i với dòng sản ph&acirc;̉m băng keo 2 mặt này có b&ecirc;̀ ngoài được c&acirc;́u tạo bới lớp vỏ trắng bóng, còn b&ecirc;n trong sẽ là lớp keo trong su&ocirc;́t. Nhưng đ&ocirc;́i với loại này có đ&ocirc;̣ k&ecirc;́t dính vừa phải. Được sử dụng chủ y&ecirc;́u trong văn phòng, gia đình sử dụng trong c&ocirc;ng vi&ecirc;̣c nhỏ.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<h3 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"font-size:16.0pt\">Băng keo 2 mặt vàng đục</span></span></span></span></h3>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Đ&ocirc;́i với loại băng keo này thì sẽ được c&acirc;́u tạo bởi b&ecirc;n ngoài băng keo 2 mặt là màu vàng đục. Và lớp keo b&ecirc;n trong là có màu vàng ngả đen. Ưu đi&ecirc;̉m n&ocirc;̉i tr&ocirc;̣i của dòng keo này chính là ch&acirc;́t lượng k&ecirc;́t dính của lớp keo khá cao, m&ocirc;̣t khi đã đính thì r&acirc;́t khó gỡ ra. Loại keo này được sử dụng chủ y&ecirc;̉u vào mục đích c&ocirc;ng nghi&ecirc;̣p và c&ocirc;ng trình lớn. Do đó loại này thường ít khi được bày bán tr&ecirc;n thị trường. Vì giá cả có ph&acirc;̀n hơi cao và ưu đi&ecirc;̉m của nó. N&ecirc;́u bạn có nhu c&acirc;̀u mua loại keo này thì có th&ecirc;̉ đặt trực ti&ecirc;́p tại c&ocirc;ng ty hay cơ sở sản xu&acirc;́t băng keo.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<h3 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"font-size:16.0pt\">Băng keo 2 mặt trắng d&acirc;̀u </span></span></span></span></h3>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><span style=\"color:black\">Loại băng keo 2 mặt này cũng khá ph&ocirc;̉ bi&ecirc;́n tr&ecirc;n thị trường hi&ecirc;̣n nay. Và xu&acirc;́t hi&ecirc;̣n nhi&ecirc;̀u nơi tr&ecirc;n thị trường vi&ecirc;̣t nam và nước ngoài. V&ecirc;̀ mặt c&acirc;́u tạo loại băng keo 2 mặt trắng </span>d&acirc;̀u có lớp bỏ trắng bong, cùng lớp trong được phủ 1 lớp keo trong su&ocirc;́t. Đ&ocirc;́i với băng keo d&acirc;̀u khá gi&ocirc;́ng với băng keo trắng nhưng đi&ecirc;̉m khác bi&ecirc;̣t giữa chúng là băng keo 2 mặt trắng d&acirc;̀u có mùi d&acirc;̀u đặc trưng. Tùy nhi&ecirc;n mùi này khá kho chịu đ&ocirc;́i với 1 s&ocirc;́ người. Do đó loai keo này chủ y&ecirc;́u dùng trong các <span style=\"color:black\">ngành </span>c&ocirc;ng nghi&ecirc;̣p mà ít khi đưa vào trong sinh hoạt gia đình.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<h3 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"font-size:16.0pt\">Băng keo 2 mặt mút trắng</span></span></span></span></h3>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Quy cách c&acirc;́u tạo của loại băng keo 2 mặt này là có lớp vỏ ngoài hơi có màu hơi s&acirc;̀n màu vàng. Còn b&ecirc;n trong có 1 lớp mút x&ocirc;́p màu trắng được k&ecirc;́t đính và phủ keo l&ecirc;n. Chính vì th&ecirc;́ mà loại sản ph&acirc;̉m này có t&ecirc;n gọi là băng keo 2 mặt mút x&ocirc;́p trắng. Băng keo này có đ&ocirc;̣ k&ecirc;́t đính r&acirc;́t cao. Do đó nó được dùng đ&ecirc;̀ thay th&ecirc;̉ các dinh vít trong vi&ecirc;̣c treo các đ&ocirc;̀ v&acirc;̣t lớn l&ecirc;n tường. Đi&ecirc;̉n hình <span style=\"color:black\">như treo tranh </span>ảnh, móc treo hay b&ocirc; lịch...</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<h3 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"font-size:16.0pt\">Băng keo 2 mặt mút đen </span></span></span></span></h3>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Quy cách c&acirc;́u tạo của loại băng keo 2 mặt này là có lớp vỏ ngoài hơi có màu đen. Còn b&ecirc;n trong có 1 lớp mút x&ocirc;́p màu đen được k&ecirc;́t đính và phủ keo l&ecirc;n. Chính vì th&ecirc;́ mà loại sản ph&acirc;̉m này có t&ecirc;n gọi là băng keo 2 mặt mút x&ocirc;́p đen. Băng keo này có đ&ocirc;̣ k&ecirc;́t đính khủng nh&acirc;́t trong các loại băng keo 2 mặt. Lọa băng keo này chủ y&ecirc;́u đ&ecirc;̉ thay th&ecirc;́ những vi&ecirc;̣c mà băng keo 2 mặt mút trắng kh&ocirc;ng dùng được. Bạn có th&ecirc;̉ mua loại này theo phương thức đặt hàng.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:14pt\"><span style=\"color:black\"><img alt=\"băng keo 2 mặt\" src=\"upload/bang-keo-2-mat-cuong-luc.jpg/\" /></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><em><span style=\"font-size:16px\">Hình ảnh: Cu&ocirc;̣n băng keo đang có tr&ecirc;n thị trường.</span></em></p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"font-size:18.0pt\">Băng keo 2 mặt loại t&ocirc;́t tr&ecirc;n thị trường</span></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Sau khi có được th&ocirc;ng tin các loại băng keo đang có tr&ecirc;n thị trường thì đ&ecirc;́n ph&acirc;̀n ch&acirc;́t lượng trong m&ocirc;̃i sản ph&acirc;̉m đó. Đ&ecirc;̉ đánh giá loại băng keo có t&ocirc;́t hay kh&ocirc;ng thì đựa vào s&ocirc;́ lượng ch&acirc;́t keo trải tr&ecirc;n b&ecirc;̀ mặt của cu&ocirc;̣n băng. </span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Băng keo 2 mặt loại thường có lớp keo mỏng. Khi đi vào sử dụng d&ecirc;̃ bị bong và đứt...và khi dùng tay thử thì đ&ocirc;̣ dình thì khá th&acirc;́p. Khi bóc lớp bỏ ngoài r&acirc;́t khó khăn.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Băng keo 2 mặt loại t&ocirc;́t có lớp keo trải r&acirc;́t đ&ecirc;̀u. Khi đi vào sử dụng kh&ocirc;ng bị bong, khi bóc lớp bỏ ngoài r&acirc;́t d&ecirc;̃ dàng.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><em>Tr&ecirc;n đ&acirc;y là m&ocirc;̣t s&ocirc; th&ocirc;ng tin tham khảo mà bạn có th&ecirc;̉ áp dụng đ&ecirc;̉ chọn băng keo 2 mặt loại t&ocirc;́t khi mua. Ngoài ra, đ&ecirc;̀ kh&ocirc;ng quá ph&acirc;n t&acirc;m trong vi&ecirc;̣c chọn sản ph&acirc;̉m băng keo 2 mặt thì bạn n&ecirc;n tìm đ&ecirc;́n c&ocirc;ng ty hay cơ sở uy tín đ&ecirc;̉ mua.</em></span></span></p>', '', 'Băng keo 2 mặt', 'Băng keo 2 mặt là loại băng keo đã quá quen thuộc trong mọi gia đình. Vì công dụng cực kỳ hiệu quả mà nó mang lại cho. Vậy loại băng keo 2 mặt bạn đang sử dụng được đánh giá là loại băng keo tốt không?', 4, 9, 1, '2018-05-01 04:59:45', '2018-05-01 15:39:52'),
(60, 'Chọn thang nhôm nào lắp đặt cho điều hòa', 'chon-thang-nhom-nao-lap-dat-cho-dieu-hoa', NULL, '', '', '', '', '', NULL, 10, 1, '2018-05-03 04:49:41', '2018-05-03 04:52:13'),
(61, 'Những ưu điểm của thang nhôm chữ A', 'nhung-uu-diem-cua-thang-nhom-chu-a', NULL, '', '', '', '', '', NULL, 11, 1, '2018-05-03 04:50:35', '2018-05-03 04:52:37'),
(62, 'Hướng dẫn giữ gìn và làm sạch thang nhôm', 'huong-dan-giu-gin-va-lam-sach-thang-nhom', NULL, '', '', '', '', '', NULL, 11, 1, '2018-05-03 04:50:54', '2018-05-03 04:52:56'),
(63, 'Các tiêu chí chọn mua thang nhôm phù hợp', 'cac-tieu-chi-chon-mua-thang-nhom-phu-hop', NULL, '', '', '', '', '', NULL, 11, 1, '2018-05-03 04:51:56', '2018-05-03 04:51:56'),
(64, 'Cách lựa chọn thang nhôm rút gọn phù hợp', 'cach-lua-chon-thang-nhom-rut-gon-phu-hop', NULL, '', '', '', '', '', NULL, 11, 1, '2018-05-03 04:53:27', '2018-05-03 04:53:27'),
(65, 'Những tư thế sử dụng thang nhôm', 'nhung-tu-the-su-dung-thang-nhom', NULL, '', '', '', '', '', NULL, 11, 1, '2018-05-03 04:53:48', '2018-05-03 04:53:48'),
(66, 'Nguyên tắc sử dụng thang nhôm A', 'nguyen-tac-su-dung-thang-nhom-a', NULL, '', '', '', '', '', NULL, 11, 1, '2018-05-03 04:54:03', '2018-05-03 04:54:03'),
(67, 'Bộ sưu tập thang nhôm chất lượng', 'bo-suu-tap-thang-nhom-chat-luong', NULL, '', '', '', '', '', NULL, 11, 1, '2018-05-03 04:54:20', '2018-05-03 04:54:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `article_category`
--

DROP TABLE IF EXISTS `article_category`;
CREATE TABLE `article_category` (
  `id` bigint(20) NOT NULL,
  `article_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `article_category`
--

INSERT INTO `article_category` (`id`, `article_id`, `category_id`, `created_at`, `updated_at`) VALUES
(71, 51, 12, '2018-04-29 16:59:00', '2018-04-29 16:59:00'),
(72, 52, 12, '2018-04-29 17:36:23', '2018-04-29 17:36:23'),
(73, 53, 12, '2018-05-01 02:54:22', '2018-05-01 02:54:22'),
(74, 54, 12, '2018-05-01 03:31:03', '2018-05-01 03:31:03'),
(75, 55, 12, '2018-05-01 03:46:06', '2018-05-01 03:46:06'),
(76, 56, 12, '2018-05-01 04:10:53', '2018-05-01 04:10:53'),
(77, 57, 12, '2018-05-01 04:23:42', '2018-05-01 04:23:42'),
(78, 58, 8, '2018-05-01 04:40:42', '2018-05-01 04:40:42'),
(79, 59, 8, '2018-05-01 04:59:45', '2018-05-01 04:59:45'),
(80, 60, 13, '2018-05-03 04:49:41', '2018-05-03 04:49:41'),
(81, 61, 13, '2018-05-03 04:50:35', '2018-05-03 04:50:35'),
(82, 62, 13, '2018-05-03 04:50:54', '2018-05-03 04:50:54'),
(83, 63, 13, '2018-05-03 04:51:56', '2018-05-03 04:51:56'),
(84, 64, 13, '2018-05-03 04:53:27', '2018-05-03 04:53:27'),
(85, 65, 13, '2018-05-03 04:53:48', '2018-05-03 04:53:48'),
(86, 66, 13, '2018-05-03 04:54:03', '2018-05-03 04:54:03'),
(87, 67, 13, '2018-05-03 04:54:20', '2018-05-03 04:54:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner` (
  `id` bigint(20) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `caption` text COLLATE utf8_unicode_ci,
  `alt` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_url` text COLLATE utf8_unicode_ci,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`id`, `category_id`, `caption`, `alt`, `image`, `page_url`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(2, 1, 'Khi trẻ cười', 'khi trẻ cười 2', 'thang-gap-3spqvc4xwbue.jpg', 'cloudbeauty.vn', 2, 1, '2017-12-16 05:04:04', '2018-04-16 08:34:37'),
(3, 2, '', '', 'member-1.png', '', 1, 1, '2017-12-28 02:38:24', '2017-12-28 02:40:03'),
(4, 2, '', '', 'member-2.png', '', 2, 1, '2017-12-28 02:38:40', '2017-12-28 02:40:03'),
(5, 2, '', '', 'member-3.png', '', 3, 1, '2017-12-28 02:38:51', '2017-12-28 02:40:07'),
(6, 2, '', '', 'member-4.png', '', 4, 1, '2017-12-28 02:38:59', '2017-12-28 02:40:03'),
(7, 2, '', '', 'member-5.png', '', 5, 1, '2017-12-28 02:39:08', '2017-12-28 02:40:03'),
(8, 2, '', '', 'member-6.png', '', 6, 1, '2017-12-28 02:39:19', '2017-12-28 02:40:03'),
(9, 2, '', '', 'member-7.png', '', 7, 1, '2017-12-28 02:39:28', '2017-12-28 02:40:03'),
(14, 1, 'thang nhôm', 'thang nhôm', 'thang-nhom-uy-tin-ziev9wl2nr56.jpg', 'http://magiwan.vn/', 3, 1, '2018-01-18 07:23:11', '2018-04-16 08:55:02'),
(15, 2, '', '', 'partner-1.png', '', 8, 1, '2018-01-20 04:26:00', '2018-01-20 04:26:00'),
(16, 2, '', '', 'partner-2.png', '', 9, 1, '2018-01-20 04:26:06', '2018-01-20 04:26:06'),
(17, 2, '', '', 'partner-3.png', '', 10, 1, '2018-01-20 04:26:14', '2018-01-20 04:26:14'),
(18, 2, '', '', 'partner-4.png', '', 11, 1, '2018-01-20 04:26:23', '2018-01-20 04:26:23'),
(19, 2, '', '', 'partner-5.png', '', 12, 1, '2018-01-20 04:26:32', '2018-01-20 04:26:32'),
(20, 2, '', '', 'partner-6.png', '', 13, 1, '2018-01-20 04:26:43', '2018-01-20 04:26:43'),
(21, 2, '', '', 'partner-7.png', '', 14, 1, '2018-01-20 04:26:54', '2018-01-20 04:27:02'),
(22, 2, '', '', 'partner-8.png', '', 15, 1, '2018-01-20 04:27:12', '2018-01-20 04:27:12'),
(23, 2, '', '', 'partner-9.png', '', 16, 1, '2018-01-20 04:27:20', '2018-01-20 04:27:20'),
(24, 2, '', '', 'partner-10.png', '', 17, 1, '2018-01-20 04:27:28', '2018-01-20 04:27:28'),
(25, 2, '', '', 'partner-11.png', '', 19, 1, '2018-01-20 04:27:38', '2018-01-20 04:27:38'),
(26, 2, '', '', 'partner-12.png', '', 20, 1, '2018-01-20 04:27:50', '2018-01-20 04:27:50'),
(27, 2, '', '', 'partner-13.png', '', 21, 1, '2018-01-20 04:28:00', '2018-01-20 04:28:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_article`
--

DROP TABLE IF EXISTS `category_article`;
CREATE TABLE `category_article` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `meta_description` text COLLATE utf8_unicode_ci,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category_article`
--

INSERT INTO `category_article` (`id`, `fullname`, `meta_keyword`, `meta_description`, `alias`, `parent_id`, `image`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(8, 'Sản phẩm', '', '', 'san-pham', 0, NULL, 3, 0, '2018-02-28 08:08:49', '2018-04-24 04:09:32'),
(12, 'Tư vấn', '', '', 'tu-van', 0, NULL, 1, 1, '2018-04-29 15:56:25', '2018-04-29 15:56:25'),
(13, 'Thang nhôm', '', '', 'thang-nhom-480865', 0, NULL, 3, 1, '2018-05-03 04:48:57', '2018-05-03 04:48:57');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_banner`
--

DROP TABLE IF EXISTS `category_banner`;
CREATE TABLE `category_banner` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `theme_location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category_banner`
--

INSERT INTO `category_banner` (`id`, `fullname`, `theme_location`, `status`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 'Slideshow', 'slideshow', 1, 1, '2017-12-16 05:02:58', '2017-12-28 08:45:44'),
(2, 'Đối tác', 'doi-tac', 1, 12, '2017-12-26 04:32:09', '2018-02-25 12:13:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_param`
--

DROP TABLE IF EXISTS `category_param`;
CREATE TABLE `category_param` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `param_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category_param`
--

INSERT INTO `category_param` (`id`, `fullname`, `alias`, `parent_id`, `param_value`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Xuất xứ', 'xuat-xu', 0, '', 1, 1, '2018-02-01 20:40:54', '2018-02-02 01:34:27'),
(5, 'Nhật', 'nhat', 1, '', 5, 1, '2018-02-01 20:46:48', '2018-05-03 01:58:20'),
(9, 'Thương hiệu', 'thuong-hieu', 0, '', 2, 1, '2018-02-02 01:38:44', '2018-02-02 01:38:48'),
(10, 'Mỹ', 'my', 1, '', 4, 1, '2018-02-02 01:39:59', '2018-05-03 01:58:20'),
(11, 'Hàn Quốc', 'han-quoc', 1, '', 3, 1, '2018-02-02 01:40:14', '2018-02-02 01:40:14'),
(12, 'Trung Quốc', 'trung-quoc', 1, '', 2, 1, '2018-02-02 01:40:27', '2018-05-03 02:04:42'),
(22, 'Đơn vị', 'don-vi', 0, '', 3, 0, '2018-02-02 01:44:45', '2018-04-18 09:08:18'),
(23, 'Chiếc', 'chiec', 22, '', 1, 0, '2018-02-02 01:45:15', '2018-04-18 09:08:20'),
(24, 'Bịch', 'bich', 22, '', 1, 0, '2018-02-02 01:45:25', '2018-04-18 09:08:21'),
(25, 'Lọ', 'lo', 22, '', 1, 0, '2018-02-02 01:45:34', '2018-04-18 09:08:22'),
(26, 'Lô hàng', 'lo-hang', 22, '', 1, 0, '2018-02-02 01:46:20', '2018-04-18 09:08:26'),
(52, 'Tình trạng', 'tinh-trang', 0, '', 7, 0, '2018-02-27 03:33:32', '2018-04-18 09:09:00'),
(53, 'Còn hàng', 'con-hang', 52, '1', 1, 0, '2018-02-27 03:34:09', '2018-04-18 09:09:02'),
(54, 'Hết hàng', 'het-hang', 52, '0', 2, 0, '2018-02-27 03:34:29', '2018-04-18 09:09:02'),
(55, 'Bảo hành', 'bao-hanh', 0, '', 8, 1, '2018-03-01 03:21:37', '2018-03-01 03:21:44'),
(56, '1 tháng', '1-thang', 55, '', 1, 1, '2018-03-01 03:23:13', '2018-03-01 03:23:13'),
(57, '2 tháng', '2-thang', 55, '', 2, 1, '2018-03-01 03:23:23', '2018-03-01 03:23:23'),
(58, '3 tháng', '3-thang', 55, '', 3, 1, '2018-03-01 03:23:31', '2018-03-01 03:23:31'),
(59, '4 tháng', '4-thang', 55, '', 4, 1, '2018-03-01 03:23:38', '2018-03-01 03:23:38'),
(60, '5 tháng', '5-thang', 55, '', 5, 1, '2018-03-01 03:23:50', '2018-03-01 03:23:50'),
(61, '6 tháng', '6-thang', 55, '', 6, 1, '2018-03-01 03:24:00', '2018-03-01 03:24:00'),
(62, '7 tháng', '7-thang', 55, '', 7, 1, '2018-03-01 03:24:09', '2018-03-01 03:24:09'),
(63, 'Việt Nam', 'viet-nam', 1, '', 1, 1, '2018-03-02 18:28:20', '2018-05-03 02:04:41'),
(72, 'Masada', 'masada', 9, '', 1, 1, '2018-05-03 02:01:39', '2018-05-03 02:01:39'),
(73, 'Phong Thạnh', 'phong-thanh', 9, '', 1, 1, '2018-05-03 02:02:01', '2018-05-03 02:02:01'),
(74, 'Sumo', 'sumo', 9, '', 1, 1, '2018-05-03 02:02:12', '2018-05-03 02:02:12'),
(75, 'Advindeq', 'advindeq', 9, '', 1, 1, '2018-05-03 02:02:31', '2018-05-03 02:02:31'),
(76, 'Dandy', 'dandy', 9, '', 1, 1, '2018-05-03 02:02:43', '2018-05-03 02:02:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_product`
--

DROP TABLE IF EXISTS `category_product`;
CREATE TABLE `category_product` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `meta_description` text COLLATE utf8_unicode_ci,
  `alias` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `category_product`
--

INSERT INTO `category_product` (`id`, `fullname`, `meta_keyword`, `meta_description`, `alias`, `image`, `status`, `parent_id`, `sort_order`, `created_at`, `updated_at`) VALUES
(19, 'Thang nhôm nikawa', '', '', 'thang-nhom-nikawa', NULL, 1, 39, 3, '2018-04-16 10:09:55', '2018-04-24 18:20:22'),
(20, 'Thang nhôm nikita', '', '', 'thang-nhom-nikita', NULL, 1, 39, 4, '2018-04-17 01:30:04', '2018-04-24 18:20:28'),
(22, 'Thang nhôm rút', '', '', 'thang-nhom-rut', NULL, 1, 39, 2, '2018-04-17 01:31:04', '2018-04-24 18:20:17'),
(23, 'Thang nhôm chữ A', '', '', 'thang-nhom-chu-a', NULL, 1, 39, 1, '2018-04-17 01:31:31', '2018-04-26 01:12:59'),
(25, 'Thang nhôm ghế', '', '', 'thang-nhom-ghe', NULL, 1, 39, 5, '2018-04-17 01:32:25', '2018-04-24 18:20:34'),
(27, 'Thang nhôm Sumika', '', '', 'thang-nhom-sumika', NULL, 1, 39, 2, '2018-04-24 03:07:31', '2018-04-26 01:12:30'),
(28, 'Thang nhôm xếp', '', '', 'thang-nhom-xep', NULL, 1, 39, 6, '2018-04-24 03:10:42', '2018-04-24 18:20:40'),
(29, 'Thang nhôm gấp', '', '', 'thang-nhom-gap', NULL, 1, 39, 7, '2018-04-24 03:12:10', '2018-04-24 18:20:46'),
(30, 'Thang nhôm cũ', '', '', 'thang-nhom-cu', NULL, 1, 39, 9, '2018-04-24 03:18:03', '2018-04-24 18:20:52'),
(31, 'Thang nhôm tay vịn', '', '', 'thang-nhom-tay-vin', NULL, 1, 39, 10, '2018-04-24 03:20:00', '2018-04-24 18:20:57'),
(32, 'Thang nhôm trượt rút dây', '', '', 'thang-nhom-truot-rut-day', NULL, 1, 39, 11, '2018-04-24 03:22:35', '2018-04-24 18:21:02'),
(33, 'Thang nhôm bàn', '', '', 'thang-nhom-ban', NULL, 1, 39, 12, '2018-04-24 03:23:52', '2018-04-24 18:21:07'),
(34, 'Thang nhôm cách điện', '', '', 'thang-nhom-cach-dien', NULL, 1, 39, 13, '2018-04-24 03:24:52', '2018-04-24 18:21:14'),
(35, 'Thang nhôm rút nikawa', '', '', 'thang-nhom-rut-nikawa', NULL, 1, 22, 14, '2018-04-24 03:26:20', '2018-05-02 09:23:20'),
(36, 'Thang nhôm  rút đôi', '', '', 'thang-nhom-rut-doi', NULL, 1, 22, 15, '2018-04-24 03:28:37', '2018-05-02 09:23:30'),
(37, 'Thang nhôm rút đơn', '', '', 'thang-nhom-rut-don', NULL, 1, 22, 16, '2018-04-24 03:29:59', '2018-05-02 09:23:40'),
(38, 'Thang nhôm trượt', '', '', 'thang-nhom-truot', NULL, 1, 39, 17, '2018-04-24 03:34:32', '2018-04-24 18:21:34'),
(39, 'Thang nhôm', 'Thang nhôm', 'Vitoen là công ty chuyên cung cấp các loại thang nhôm chất lượng, cao cấp và uy tín nhất. Các sản phẩm thang nhôm cao cấp được nhập khẩu từ các nước phát triển, với công cụ sản xuất hiện đại.', 'thang-nhom', NULL, 1, 0, 1, '2018-04-24 03:57:02', '2018-04-29 15:40:00'),
(40, 'Băng keo', 'thang nhôm cao cấp, băng keo, kệ trưng bày, dụng cụ cầm,', 'Vitonen là đơn vị cung ứng dịch vụ về các sản phẩm băng keo dán thùng, băng keo vải, băng keo dán nền, băng keo 2 mặt,... với chất lượng tốt nhất. Cùng với giá thành hợp lý nhất cho mọi khách hàng đã và đang sử dụng các sản phẩm của chúng tôi', 'bang-keo', NULL, 1, 0, 2, '2018-04-27 01:54:55', '2018-05-02 10:34:36');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_video`
--

DROP TABLE IF EXISTS `category_video`;
CREATE TABLE `category_video` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `meta_description` text COLLATE utf8_unicode_ci,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category_video`
--

INSERT INTO `category_video` (`id`, `fullname`, `meta_keyword`, `meta_description`, `alias`, `parent_id`, `image`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Video', 'metakeyword video', 'metadescription video', 'video', NULL, 'thuvienhinh-1.png', 1, 1, '2018-01-09 10:03:48', '2018-01-09 11:08:05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `district`
--

DROP TABLE IF EXISTS `district`;
CREATE TABLE `district` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `district`
--

INSERT INTO `district` (`id`, `fullname`, `alias`, `province_id`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Tân Bình', 'tan-binh', 24, 3, 1, '2018-02-26 03:03:50', '2018-02-26 03:23:39'),
(2, 'Phú Nhuận', 'phu-nhuan', 24, 4, 1, '2018-02-26 03:19:32', '2018-02-26 03:23:39'),
(3, 'Quận 1', 'quan-1', 24, 1, 1, '2018-02-26 03:19:56', '2018-02-26 03:21:12'),
(4, 'Quận 2', 'quan-2', 24, 2, 1, '2018-02-26 03:20:06', '2018-02-26 03:26:09'),
(5, 'Quận 2', 'quan-2', 36, 6, 1, '2018-02-26 03:23:23', '2018-02-26 03:25:07'),
(6, 'Quận 1', 'quan-1', 36, 5, 1, '2018-02-26 03:24:19', '2018-02-26 03:25:00'),
(7, 'Tân Bình', 'tan-binh', 36, 7, 1, '2018-02-26 03:24:47', '2018-02-26 03:25:07'),
(8, 'Phú Nhuận', 'phu-nhuan', 36, 8, 1, '2018-02-26 03:25:52', '2018-02-26 03:25:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `group_member`
--

DROP TABLE IF EXISTS `group_member`;
CREATE TABLE `group_member` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `group_member`
--

INSERT INTO `group_member` (`id`, `fullname`, `alias`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', 1, '2016-12-17 05:05:18', '2018-02-01 20:44:57'),
(2, 'Bài viết', 'bai-viet', 2, '2016-12-17 05:05:41', '2018-01-26 04:49:29'),
(3, 'Thành viên vip', 'thanh-vien-vip', 3, '2018-01-26 04:06:49', '2018-01-26 04:49:35'),
(4, 'Thành viên thường', 'thanh-vien-thuong', 4, '2018-01-26 04:08:16', '2018-01-26 04:49:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `group_privilege`
--

DROP TABLE IF EXISTS `group_privilege`;
CREATE TABLE `group_privilege` (
  `id` int(11) NOT NULL,
  `group_member_id` int(11) NOT NULL,
  `privilege_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `group_privilege`
--

INSERT INTO `group_privilege` (`id`, `group_member_id`, `privilege_id`, `created_at`, `updated_at`) VALUES
(3040, 2, 1, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3041, 2, 2, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3042, 2, 3, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3043, 2, 4, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3044, 2, 5, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3045, 2, 16, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3046, 2, 17, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3047, 2, 33, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3048, 2, 49, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3049, 2, 50, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3050, 2, 55, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3051, 2, 56, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3052, 2, 57, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3053, 2, 58, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3054, 2, 59, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3055, 2, 60, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3056, 2, 61, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3057, 2, 62, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3058, 2, 63, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3059, 2, 67, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3060, 2, 68, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3061, 2, 79, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3062, 2, 80, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3063, 2, 85, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3064, 2, 86, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3065, 2, 103, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3066, 2, 104, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3067, 2, 105, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3068, 2, 106, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3069, 2, 107, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3070, 2, 108, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3071, 2, 109, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3072, 2, 110, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3073, 2, 111, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3074, 2, 112, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3075, 2, 113, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3076, 2, 114, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3077, 2, 115, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3078, 2, 116, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3079, 2, 117, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3080, 2, 118, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3081, 2, 119, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3082, 2, 120, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3083, 2, 121, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3084, 2, 122, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3085, 2, 123, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3086, 2, 124, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3087, 2, 125, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3088, 2, 126, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3089, 2, 127, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3090, 2, 128, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3091, 2, 129, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3092, 2, 130, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3093, 2, 131, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3094, 2, 132, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3095, 2, 133, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3096, 2, 134, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3097, 2, 135, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3098, 2, 136, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3099, 2, 137, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3100, 2, 138, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3101, 2, 139, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3102, 2, 140, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3103, 2, 141, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3104, 2, 142, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3105, 2, 143, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3106, 2, 144, '2018-01-22 02:03:55', '2018-01-22 02:03:55'),
(3180, 3, 0, '2018-01-26 04:06:59', '2018-01-26 04:06:59'),
(3641, 1, 1, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3642, 1, 2, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3643, 1, 3, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3644, 1, 4, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3645, 1, 5, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3646, 1, 16, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3647, 1, 17, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3648, 1, 18, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3649, 1, 19, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3650, 1, 24, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3651, 1, 25, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3652, 1, 33, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3653, 1, 43, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3654, 1, 44, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3655, 1, 49, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3656, 1, 50, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3657, 1, 55, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3658, 1, 56, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3659, 1, 57, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3660, 1, 58, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3661, 1, 59, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3662, 1, 60, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3663, 1, 61, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3664, 1, 62, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3665, 1, 63, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3666, 1, 67, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3667, 1, 68, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3668, 1, 79, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3669, 1, 80, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3670, 1, 85, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3671, 1, 86, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3672, 1, 103, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3673, 1, 104, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3674, 1, 105, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3675, 1, 106, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3676, 1, 107, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3677, 1, 108, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3678, 1, 109, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3679, 1, 110, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3680, 1, 111, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3681, 1, 112, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3682, 1, 113, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3683, 1, 114, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3684, 1, 115, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3685, 1, 116, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3686, 1, 117, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3687, 1, 118, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3688, 1, 119, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3689, 1, 120, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3690, 1, 121, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3691, 1, 122, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3692, 1, 123, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3693, 1, 124, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3694, 1, 125, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3695, 1, 126, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3696, 1, 127, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3697, 1, 128, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3698, 1, 129, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3699, 1, 130, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3700, 1, 131, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3701, 1, 132, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3702, 1, 133, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3703, 1, 134, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3704, 1, 135, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3705, 1, 136, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3706, 1, 137, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3707, 1, 138, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3708, 1, 139, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3709, 1, 140, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3710, 1, 141, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3711, 1, 142, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3712, 1, 143, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3713, 1, 144, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3714, 1, 145, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3715, 1, 146, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3716, 1, 147, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3717, 1, 148, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3718, 1, 149, '2018-02-01 20:44:57', '2018-02-01 20:44:57'),
(3719, 1, 150, '2018-02-01 20:44:57', '2018-02-01 20:44:57');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `invoice`
--

DROP TABLE IF EXISTS `invoice`;
CREATE TABLE `invoice` (
  `id` int(11) NOT NULL,
  `code` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `fullname` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `quantity` int(11) DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `invoice_detail`
--

DROP TABLE IF EXISTS `invoice_detail`;
CREATE TABLE `invoice_detail` (
  `id` int(11) NOT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_code` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `product_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `product_image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `product_price` decimal(10,2) DEFAULT NULL,
  `product_quantity` int(11) DEFAULT NULL,
  `product_total_price` decimal(10,2) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `menu_type_id` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `menu_class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu`
--

INSERT INTO `menu` (`id`, `fullname`, `alias`, `parent_id`, `menu_type_id`, `level`, `menu_class`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(57, 'Trang chủ', 'trang-chu', 0, 5, 0, NULL, 1, 1, '2018-01-10 07:14:21', '2018-01-10 07:14:21'),
(61, 'Liên hệ', 'lien-he', 0, 5, 0, NULL, 3, 1, '2018-01-10 07:15:34', '2018-03-04 12:48:59'),
(340, 'Thang nhôm', 'thang-nhom', 0, 1, 0, '', 1, 1, '2018-02-26 07:47:48', '2018-04-24 03:57:18'),
(361, 'Thang nhôm', 'thang-nhom', 0, 8, 0, '', 1, 1, '2018-02-28 07:00:20', '2018-04-18 04:28:29'),
(388, 'Thang nhôm', 'thang-nhom', 0, 10, 0, '', 1, 1, '2018-02-28 16:53:11', '2018-04-16 09:18:09'),
(406, 'Sản phẩm', 'nen-mua-may-tinh-xach-tay-cua-hang-nao', 0, 5, 0, '', 2, 1, '2018-03-04 12:48:56', '2018-03-19 10:34:58'),
(407, 'Laptop', 'van-thang-nhom', 406, 5, 1, '', 1, 1, '2018-03-04 12:49:11', '2018-03-04 12:49:11'),
(423, 'Thang nhôm rút', 'thang-nhom-rut', 340, 1, 1, '', 2, 1, '2018-04-16 07:45:36', '2018-04-18 06:41:02'),
(424, 'Thang nhôm chữ A', 'thang-nhom-chu-a', 340, 1, 1, '', 1, 1, '2018-04-16 07:51:02', '2018-04-18 06:40:45'),
(433, 'Thang nhôm ghế', 'thang-nhom-ghe', 340, 1, 1, '', 8, 1, '2018-04-16 07:54:50', '2018-04-16 07:54:50'),
(434, 'Băng keo', 'bang-keo', 0, 8, 0, '', 2, 1, '2018-04-18 04:27:10', '2018-04-18 04:28:27'),
(435, 'Băng keo', 'bang-keo', 0, 1, 0, '', 1, 1, '2018-04-18 04:31:06', '2018-04-27 01:59:23'),
(436, 'Thang nhôm nikawa', 'thang-nhom-nikawa', 340, 1, 1, '', 3, 1, '2018-04-18 06:53:10', '2018-04-18 06:53:10'),
(437, 'Thang nhôm nikita', 'thang-nhom-nikita', 340, 1, 1, '', 4, 1, '2018-04-18 06:54:02', '2018-04-18 06:54:02'),
(438, 'Thang nhôm Sumika', 'thang-nhom-sumika', 340, 1, 1, '', 5, 1, '2018-04-24 03:08:04', '2018-04-24 03:09:47'),
(439, 'Thang nhôm xếp', 'thang-nhom-xep', 340, 1, 1, '', 6, 1, '2018-04-24 03:11:29', '2018-04-24 03:11:29'),
(440, 'Thang nhôm gấp', 'thang-nhom-gap', 340, 1, 1, '', 7, 1, '2018-04-24 03:12:34', '2018-04-24 03:12:34'),
(441, 'Thang nhôm cũ', 'thang-nhom-cu', 340, 1, 1, '', 9, 1, '2018-04-24 03:18:35', '2018-04-24 03:18:35'),
(442, 'Thang nhôm tay vịn', 'thang-nhom-tay-vin', 340, 1, 1, '', 10, 1, '2018-04-24 03:20:34', '2018-04-24 03:20:34'),
(444, 'Thang nhôm trượt rút dây', 'thang-nhom-truot-rut-day', 340, 1, 1, '', 11, 1, '2018-04-24 03:23:04', '2018-04-24 03:23:04'),
(445, 'Thang nhôm bàn', 'thang-nhom-ban', 340, 1, 1, '', 12, 1, '2018-04-24 03:24:19', '2018-04-24 03:24:19'),
(446, 'Thang nhôm cách điện', 'thang-nhom-cach-dien', 340, 1, 1, '', 13, 1, '2018-04-24 03:25:19', '2018-04-24 03:25:19'),
(447, 'Thang nhôm rút nikawa', 'thang-nhom-rut-nikawa', 423, 1, 2, '', 14, 1, '2018-04-24 03:26:54', '2018-04-24 03:26:54'),
(448, 'Thang nhôm  rút đôi', 'thang-nhom-rut-doi', 423, 1, 2, '', 15, 1, '2018-04-24 03:29:14', '2018-04-24 03:29:14'),
(449, 'Thang nhôm rút đơn', 'thang-nhom-rut-don', 423, 1, 2, '', 16, 1, '2018-04-24 03:30:32', '2018-04-24 03:30:32'),
(450, 'Thang nhôm trượt', 'thang-nhom-truot', 340, 1, 1, '', 17, 1, '2018-04-24 03:35:15', '2018-04-24 03:35:15'),
(451, 'Tư vấn', 'tu-van', 0, 3, 0, '', 1, 1, '2018-04-29 15:54:18', '2018-04-29 15:54:18'),
(452, 'Tư vấn', 'tu-van', 0, 8, 0, '', 3, 1, '2018-04-29 15:59:12', '2018-04-29 15:59:12'),
(453, 'Thang nhôm chữ A', 'thang-nhom-chu-a', 0, 11, 0, '', 1, 1, '2018-05-03 02:25:00', '2018-05-03 02:25:00'),
(454, 'Thang nhôm rút', 'thang-nhom-rut', 0, 11, 0, '', 2, 1, '2018-05-03 02:25:14', '2018-05-03 02:46:13'),
(462, 'Thang nhôm Sumika', 'thang-nhom-sumika', 0, 11, 0, '', 3, 1, '2018-05-03 02:45:13', '2018-05-03 02:46:13'),
(463, 'Thang nhôm nikawa', 'thang-nhom-nikawa', 0, 11, 0, '', 4, 1, '2018-05-03 02:45:23', '2018-05-03 02:46:13'),
(464, 'Thang nhôm nikita', 'thang-nhom-nikita', 0, 11, 0, '', 5, 1, '2018-05-03 02:46:47', '2018-05-03 02:46:50'),
(465, 'Tất cả các thiết bị thang nhôm', 'thang-nhom', 0, 11, 0, '', 6, 1, '2018-05-03 02:48:10', '2018-05-03 02:48:10'),
(466, 'Băng keo', 'bang-keo', 0, 10, 0, '', 2, 1, '2018-05-03 04:38:00', '2018-05-03 04:38:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_type`
--

DROP TABLE IF EXISTS `menu_type`;
CREATE TABLE `menu_type` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `theme_location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_type`
--

INSERT INTO `menu_type` (`id`, `fullname`, `theme_location`, `status`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 'MainMenu', 'main-menu', 1, 1, '2017-12-15 03:37:06', '2018-02-22 17:15:43'),
(3, 'Tin tức sự kiện', 'ttsk', 1, 3, '2018-01-03 04:22:54', '2018-02-28 07:58:31'),
(5, 'MobileMenu', 'mobile-menu', 1, 5, '2018-01-09 19:31:48', '2018-04-29 15:25:28'),
(8, 'Danh mục sản phẩm', 'danhmucspfooter', 1, 4, '2018-02-28 06:56:55', '2018-02-28 06:59:40'),
(9, 'Hỗ trợ khách hàng', 'htkh', 1, 6, '2018-02-28 07:19:49', '2018-02-28 07:25:08'),
(10, 'Sản phẩm', 'dmsp-left', 1, 6, '2018-02-28 16:52:58', '2018-02-28 16:52:58'),
(11, 'Thang nhôm', 'thang-nhom', 1, 1, '2018-05-03 02:24:06', '2018-05-03 02:24:06'),
(12, 'Băng keo', 'bang-keo', 1, 1, '2018-05-03 02:24:15', '2018-05-03 02:24:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_07_02_230147_migration_cartalyst_sentinel', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `module_item`
--

DROP TABLE IF EXISTS `module_item`;
CREATE TABLE `module_item` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_id` text COLLATE utf8_unicode_ci,
  `position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `component` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `setting` text COLLATE utf8_unicode_ci,
  `status` int(1) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `module_item`
--

INSERT INTO `module_item` (`id`, `fullname`, `item_id`, `position`, `component`, `setting`, `status`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 'Sản phẩm nổi bật', '[{\"id\":49,\"sort_order\":1}]', 'san-pham-noi-bat', 'article', NULL, 1, 1, '2018-03-02 18:37:45', '2018-04-24 04:00:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `organization`
--

DROP TABLE IF EXISTS `organization`;
CREATE TABLE `organization` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `meta_description` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `intro` text COLLATE utf8_unicode_ci,
  `content` text COLLATE utf8_unicode_ci,
  `count_view` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `page`
--

DROP TABLE IF EXISTS `page`;
CREATE TABLE `page` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `theme_location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `intro` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `meta_description` text COLLATE utf8_unicode_ci,
  `count_view` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `page`
--

INSERT INTO `page` (`id`, `fullname`, `alias`, `theme_location`, `image`, `intro`, `content`, `description`, `meta_keyword`, `meta_description`, `count_view`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Công Ty TNHH VIDOCO', 'cong-ty-tnhh-vidoco', 'intro-footer', NULL, '', '<p>Địa chỉ: 35/6 B&ugrave;i Quang L&agrave;, Phường 12, Quận G&ograve; Vấp, TPHCM</p>\r\n\r\n<p>Điện thoại: 0974289224<br />\r\nEmail: vitoen.vn@gmail.com<br />\r\nWebsite:http://vitoen.com/</p>', '', '', '', NULL, 6, 1, '2017-12-28 04:10:41', '2018-05-02 02:46:06'),
(6, 'Fanpage', 'fanpage', 'fanpage-footer', NULL, '', '', '', '', '', NULL, 7, 0, '2018-01-19 02:31:15', '2018-04-24 04:43:47'),
(15, 'Page test', 'page-test', 'content-bottom-category', NULL, '', '<p>test</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>chương</p>', '', '', '', NULL, 1, 1, '2018-04-24 18:28:39', '2018-04-26 10:56:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payment_method`
--

DROP TABLE IF EXISTS `payment_method`;
CREATE TABLE `payment_method` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `content` text,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `payment_method`
--

INSERT INTO `payment_method` (`id`, `fullname`, `alias`, `content`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Thanh toán bằng Ví điện tử NgânLượng', 'NL', '<p style=\"text-align:justify\">Thanh toán trực tuyến AN TOÀN và ĐƯỢC BẢO VỆ, sử dụng thẻ ngân hàng trong và ngoài nước hoặc nhiều hình thức tiện lợi khác. Được bảo hộ & cấp phép bởi NGÂN HÀNG NHÀ NƯỚC, ví điện tử duy nhất được cộng đồng ƯA THÍCH NHẤT 2 năm liên tiếp, Bộ Thông tin Truyền thông trao giải thưởng Sao Khuê<br />\nGiao dịch. Đăng ký ví NgânLượng.vn miễn phí <a href=\"https://www.nganluong.vn/?portal=nganluong&page=user_register\"><span style=\"color:#2980b9\">tại đây</span></a></p>', 1, 1, '2018-01-07 17:25:13', '2018-02-06 10:46:40'),
(2, 'Thanh toán online bằng thẻ ngân hàng nội địa', 'ATM_ONLINE', '<p><i>\n				<span style=\"color:#ff5a00;font-weight:bold;text-decoration:underline;\">Lưu ý</span>: Bạn cần đăng ký Internet-Banking hoặc dịch vụ thanh toán trực tuyến tại ngân hàng trước khi thực hiện.</i></p>\n							\n						<ul class=\"cardList clearfix\">\n						<li class=\"bank-online-methods \">\n							<label for=\"vcb_ck_on\">\n								<i class=\"BIDV\" title=\"Ngân hàng TMCP Đầu tư &amp; Phát triển Việt Nam\"></i>\n								<input type=\"radio\" value=\"BIDV\" name=\"bankcode\">\n							\n						</label></li>\n						<li class=\"bank-online-methods \">\n							<label for=\"vcb_ck_on\">\n								<i class=\"VCB\" title=\"Ngân hàng TMCP Ngoại Thương Việt Nam\"></i>\n								<input type=\"radio\" value=\"VCB\" name=\"bankcode\">\n							\n						</label></li>\n\n						<li class=\"bank-online-methods \">\n							<label for=\"vnbc_ck_on\">\n								<i class=\"DAB\" title=\"Ngân hàng Đông Á\"></i>\n								<input type=\"radio\" value=\"DAB\" name=\"bankcode\">\n							\n						</label></li>\n\n						<li class=\"bank-online-methods \">\n							<label for=\"tcb_ck_on\">\n								<i class=\"TCB\" title=\"Ngân hàng Kỹ Thương\"></i>\n								<input type=\"radio\" value=\"TCB\" name=\"bankcode\">\n							\n						</label></li>\n\n						<li class=\"bank-online-methods \">\n							<label for=\"sml_atm_mb_ck_on\">\n								<i class=\"MB\" title=\"Ngân hàng Quân Đội\"></i>\n								<input type=\"radio\" value=\"MB\" name=\"bankcode\">\n							\n						</label></li>\n\n						<li class=\"bank-online-methods \">\n							<label for=\"sml_atm_vib_ck_on\">\n								<i class=\"VIB\" title=\"Ngân hàng Quốc tế\"></i>\n								<input type=\"radio\" value=\"VIB\" name=\"bankcode\">\n							\n						</label></li>\n\n						<li class=\"bank-online-methods \">\n							<label for=\"sml_atm_vtb_ck_on\">\n								<i class=\"ICB\" title=\"Ngân hàng Công Thương Việt Nam\"></i>\n								<input type=\"radio\" value=\"ICB\" name=\"bankcode\">\n							\n						</label></li>\n\n						<li class=\"bank-online-methods \">\n							<label for=\"sml_atm_exb_ck_on\">\n								<i class=\"EXB\" title=\"Ngân hàng Xuất Nhập Khẩu\"></i>\n								<input type=\"radio\" value=\"EXB\" name=\"bankcode\">\n							\n						</label></li>\n\n						<li class=\"bank-online-methods \">\n							<label for=\"sml_atm_acb_ck_on\">\n								<i class=\"ACB\" title=\"Ngân hàng Á Châu\"></i>\n								<input type=\"radio\" value=\"ACB\" name=\"bankcode\">\n							\n						</label></li>\n\n						<li class=\"bank-online-methods \">\n							<label for=\"sml_atm_hdb_ck_on\">\n								<i class=\"HDB\" title=\"Ngân hàng Phát triển Nhà TPHCM\"></i>\n								<input type=\"radio\" value=\"HDB\" name=\"bankcode\">\n							\n						</label></li>\n\n						<li class=\"bank-online-methods \">\n							<label for=\"sml_atm_msb_ck_on\">\n								<i class=\"MSB\" title=\"Ngân hàng Hàng Hải\"></i>\n								<input type=\"radio\" value=\"MSB\" name=\"bankcode\">\n							\n						</label></li>\n\n						<li class=\"bank-online-methods \">\n							<label for=\"sml_atm_nvb_ck_on\">\n								<i class=\"NVB\" title=\"Ngân hàng Nam Việt\"></i>\n								<input type=\"radio\" value=\"NVB\" name=\"bankcode\">\n							\n						</label></li>\n\n						<li class=\"bank-online-methods \">\n							<label for=\"sml_atm_vab_ck_on\">\n								<i class=\"VAB\" title=\"Ngân hàng Việt Á\"></i>\n								<input type=\"radio\" value=\"VAB\" name=\"bankcode\">\n							\n						</label></li>\n\n						<li class=\"bank-online-methods \">\n							<label for=\"sml_atm_vpb_ck_on\">\n								<i class=\"VPB\" title=\"Ngân Hàng Việt Nam Thịnh Vượng\"></i>\n								<input type=\"radio\" value=\"VPB\" name=\"bankcode\">\n							\n						</label></li>\n\n						<li class=\"bank-online-methods \">\n							<label for=\"sml_atm_scb_ck_on\">\n								<i class=\"SCB\" title=\"Ngân hàng Sài Gòn Thương tín\"></i>\n								<input type=\"radio\" value=\"SCB\" name=\"bankcode\">\n							\n						</label></li>\n\n						\n\n						<li class=\"bank-online-methods \">\n							<label for=\"bnt_atm_pgb_ck_on\">\n								<i class=\"PGB\" title=\"Ngân hàng Xăng dầu Petrolimex\"></i>\n								<input type=\"radio\" value=\"PGB\" name=\"bankcode\">\n							\n						</label></li>\n\n						<li class=\"bank-online-methods \">\n							<label for=\"bnt_atm_gpb_ck_on\">\n								<i class=\"GPB\" title=\"Ngân hàng TMCP Dầu khí Toàn Cầu\"></i>\n								<input type=\"radio\" value=\"GPB\" name=\"bankcode\">\n							\n						</label></li>\n\n						<li class=\"bank-online-methods \">\n							<label for=\"bnt_atm_agb_ck_on\">\n								<i class=\"AGB\" title=\"Ngân hàng Nông nghiệp &amp; Phát triển nông thôn\"></i>\n								<input type=\"radio\" value=\"AGB\" name=\"bankcode\">\n							\n						</label></li>\n\n						<li class=\"bank-online-methods \">\n							<label for=\"bnt_atm_sgb_ck_on\">\n								<i class=\"SGB\" title=\"Ngân hàng Sài Gòn Công Thương\"></i>\n								<input type=\"radio\" value=\"SGB\" name=\"bankcode\">\n							\n						</label></li>	\n						<li class=\"bank-online-methods \">\n							<label for=\"sml_atm_bab_ck_on\">\n								<i class=\"BAB\" title=\"Ngân hàng Bắc Á\"></i>\n								<input type=\"radio\" value=\"BAB\" name=\"bankcode\">\n							\n						</label></li>\n						<li class=\"bank-online-methods \">\n							<label for=\"sml_atm_bab_ck_on\">\n								<i class=\"TPB\" title=\"Tền phong bank\"></i>\n								<input type=\"radio\" value=\"TPB\" name=\"bankcode\">\n							\n						</label></li>\n						<li class=\"bank-online-methods \">\n							<label for=\"sml_atm_bab_ck_on\">\n								<i class=\"NAB\" title=\"Ngân hàng Nam Á\"></i>\n								<input type=\"radio\" value=\"NAB\" name=\"bankcode\">\n							\n						</label></li>\n						<li class=\"bank-online-methods \">\n							<label for=\"sml_atm_bab_ck_on\">\n								<i class=\"SHB\" title=\"Ngân hàng TMCP Sài Gòn - Hà Nội (SHB)\"></i>\n								<input type=\"radio\" value=\"SHB\" name=\"bankcode\">\n							\n						</label></li>\n						<li class=\"bank-online-methods \">\n							<label for=\"sml_atm_bab_ck_on\">\n								<i class=\"OJB\" title=\"Ngân hàng TMCP Đại Dương (OceanBank)\"></i>\n								<input type=\"radio\" value=\"OJB\" name=\"bankcode\">\n							\n						</label></li>\n						\n\n\n\n						\n					</ul>', 2, 1, '2018-01-07 17:25:25', '2018-02-08 02:57:55'),
(3, 'Thanh toán bằng IB', 'IB_ONLINE', '<p><i>\n						<span style=\"color:#ff5a00;font-weight:bold;text-decoration:underline;\">Lưu ý</span>: Bạn cần đăng ký Internet-Banking hoặc dịch vụ thanh toán trực tuyến tại ngân hàng trước khi thực hiện.</i></p>\n\n				<ul class=\"cardList clearfix\">\n					<li class=\"bank-online-methods \">\n						<label for=\"vcb_ck_on\">\n							<i class=\"BIDV\" title=\"Ngân hàng TMCP Đầu tư &amp; Phát triển Việt Nam\"></i>\n							<input type=\"radio\" value=\"BIDV\" name=\"bankcode\">\n\n						</label></li>\n					<li class=\"bank-online-methods \">\n						<label for=\"vcb_ck_on\">\n							<i class=\"VCB\" title=\"Ngân hàng TMCP Ngoại Thương Việt Nam\"></i>\n							<input type=\"radio\" value=\"VCB\" name=\"bankcode\">\n\n						</label></li>\n\n					<li class=\"bank-online-methods \">\n						<label for=\"vnbc_ck_on\">\n							<i class=\"DAB\" title=\"Ngân hàng Đông Á\"></i>\n							<input type=\"radio\" value=\"DAB\" name=\"bankcode\">\n\n						</label></li>\n\n					<li class=\"bank-online-methods \">\n						<label for=\"tcb_ck_on\">\n							<i class=\"TCB\" title=\"Ngân hàng Kỹ Thương\"></i>\n							<input type=\"radio\" value=\"TCB\" name=\"bankcode\">\n\n						</label></li>\n\n\n				</ul>', 3, 1, '2018-02-05 11:55:58', '2018-02-08 02:58:59'),
(4, 'Thanh toán atm offline', 'ATM_OFFLINE', '<ul class=\"cardList clearfix\">\n					<li class=\"bank-online-methods \">\n						<label for=\"vcb_ck_on\">\n							<i class=\"BIDV\" title=\"Ngân hàng TMCP Đầu tư &amp; Phát triển Việt Nam\"></i>\n							<input type=\"radio\" value=\"BIDV\" name=\"bankcode\">\n\n						</label></li>\n						\n					<li class=\"bank-online-methods \">\n						<label for=\"vcb_ck_on\">\n							<i class=\"VCB\" title=\"Ngân hàng TMCP Ngoại Thương Việt Nam\"></i>\n							<input type=\"radio\" value=\"VCB\" name=\"bankcode\">\n\n						</label></li>\n\n					<li class=\"bank-online-methods \">\n						<label for=\"vnbc_ck_on\">\n							<i class=\"DAB\" title=\"Ngân hàng Đông Á\"></i>\n							<input type=\"radio\" value=\"DAB\" name=\"bankcode\">\n\n						</label></li>\n\n					<li class=\"bank-online-methods \">\n						<label for=\"tcb_ck_on\">\n							<i class=\"TCB\" title=\"Ngân hàng Kỹ Thương\"></i>\n							<input type=\"radio\" value=\"TCB\" name=\"bankcode\">\n\n						</label></li>\n\n					<li class=\"bank-online-methods \">\n						<label for=\"sml_atm_mb_ck_on\">\n							<i class=\"MB\" title=\"Ngân hàng Quân Đội\"></i>\n							<input type=\"radio\" value=\"MB\" name=\"bankcode\">\n\n						</label></li>\n\n					<li class=\"bank-online-methods \">\n						<label for=\"sml_atm_vtb_ck_on\">\n							<i class=\"ICB\" title=\"Ngân hàng Công Thương Việt Nam\"></i>\n							<input type=\"radio\" value=\"ICB\" name=\"bankcode\">\n\n						</label></li>\n\n					<li class=\"bank-online-methods \">\n						<label for=\"sml_atm_acb_ck_on\">\n							<i class=\"ACB\" title=\"Ngân hàng Á Châu\"></i>\n							<input type=\"radio\" value=\"ACB\" name=\"bankcode\">\n\n						</label></li>\n\n					<li class=\"bank-online-methods \">\n						<label for=\"sml_atm_msb_ck_on\">\n							<i class=\"MSB\" title=\"Ngân hàng Hàng Hải\"></i>\n							<input type=\"radio\" value=\"MSB\" name=\"bankcode\">\n\n						</label></li>\n\n					<li class=\"bank-online-methods \">\n						<label for=\"sml_atm_scb_ck_on\">\n							<i class=\"SCB\" title=\"Ngân hàng Sài Gòn Thương tín\"></i>\n							<input type=\"radio\" value=\"SCB\" name=\"bankcode\">\n\n						</label></li>\n					<li class=\"bank-online-methods \">\n						<label for=\"bnt_atm_pgb_ck_on\">\n							<i class=\"PGB\" title=\"Ngân hàng Xăng dầu Petrolimex\"></i>\n							<input type=\"radio\" value=\"PGB\" name=\"bankcode\">\n\n						</label></li>\n					\n					 <li class=\"bank-online-methods \">\n						<label for=\"bnt_atm_agb_ck_on\">\n							<i class=\"AGB\" title=\"Ngân hàng Nông nghiệp &amp; Phát triển nông thôn\"></i>\n							<input type=\"radio\" value=\"AGB\" name=\"bankcode\">\n\n						</label></li>\n					<li class=\"bank-online-methods \">\n						<label for=\"sml_atm_bab_ck_on\">\n							<i class=\"SHB\" title=\"Ngân hàng TMCP Sài Gòn - Hà Nội (SHB)\"></i>\n							<input type=\"radio\" value=\"SHB\" name=\"bankcode\">\n\n						</label></li>\n					\n\n\n\n				</ul>', 4, 1, '2018-02-06 10:09:38', '2018-02-08 03:00:18'),
(5, 'Thanh toán tại văn phòng ngân hàng', 'NH_OFFLINE', '<ul class=\"cardList clearfix\">\n					<li class=\"bank-online-methods \">\n						<label for=\"vcb_ck_on\">\n							<i class=\"BIDV\" title=\"Ngân hàng TMCP Đầu tư &amp; Phát triển Việt Nam\"></i>\n							<input type=\"radio\" value=\"BIDV\" name=\"bankcode\">\n\n						</label></li>\n					<li class=\"bank-online-methods \">\n						<label for=\"vcb_ck_on\">\n							<i class=\"VCB\" title=\"Ngân hàng TMCP Ngoại Thương Việt Nam\"></i>\n							<input type=\"radio\" value=\"VCB\" name=\"bankcode\">\n\n						</label></li>\n\n					<li class=\"bank-online-methods \">\n						<label for=\"vnbc_ck_on\">\n							<i class=\"DAB\" title=\"Ngân hàng Đông Á\"></i>\n							<input type=\"radio\" value=\"DAB\" name=\"bankcode\">\n\n						</label></li>\n\n					<li class=\"bank-online-methods \">\n						<label for=\"tcb_ck_on\">\n							<i class=\"TCB\" title=\"Ngân hàng Kỹ Thương\"></i>\n							<input type=\"radio\" value=\"TCB\" name=\"bankcode\">\n\n						</label></li>\n\n					<li class=\"bank-online-methods \">\n						<label for=\"sml_atm_mb_ck_on\">\n							<i class=\"MB\" title=\"Ngân hàng Quân Đội\"></i>\n							<input type=\"radio\" value=\"MB\" name=\"bankcode\">\n\n						</label></li>\n\n					<li class=\"bank-online-methods \">\n						<label for=\"sml_atm_vib_ck_on\">\n							<i class=\"VIB\" title=\"Ngân hàng Quốc tế\"></i>\n							<input type=\"radio\" value=\"VIB\" name=\"bankcode\">\n\n						</label></li>\n\n					<li class=\"bank-online-methods \">\n						<label for=\"sml_atm_vtb_ck_on\">\n							<i class=\"ICB\" title=\"Ngân hàng Công Thương Việt Nam\"></i>\n							<input type=\"radio\" value=\"ICB\" name=\"bankcode\">\n\n						</label></li>\n\n					<li class=\"bank-online-methods \">\n						<label for=\"sml_atm_acb_ck_on\">\n							<i class=\"ACB\" title=\"Ngân hàng Á Châu\"></i>\n							<input type=\"radio\" value=\"ACB\" name=\"bankcode\">\n\n						</label></li>\n\n					<li class=\"bank-online-methods \">\n						<label for=\"sml_atm_msb_ck_on\">\n							<i class=\"MSB\" title=\"Ngân hàng Hàng Hải\"></i>\n							<input type=\"radio\" value=\"MSB\" name=\"bankcode\">\n\n						</label></li>\n\n					<li class=\"bank-online-methods \">\n						<label for=\"sml_atm_scb_ck_on\">\n							<i class=\"SCB\" title=\"Ngân hàng Sài Gòn Thương tín\"></i>\n							<input type=\"radio\" value=\"SCB\" name=\"bankcode\">\n\n						</label></li>\n\n\n\n					<li class=\"bank-online-methods \">\n						<label for=\"bnt_atm_pgb_ck_on\">\n							<i class=\"PGB\" title=\"Ngân hàng Xăng dầu Petrolimex\"></i>\n							<input type=\"radio\" value=\"PGB\" name=\"bankcode\">\n\n						</label></li>\n\n					<li class=\"bank-online-methods \">\n						<label for=\"bnt_atm_agb_ck_on\">\n							<i class=\"AGB\" title=\"Ngân hàng Nông nghiệp &amp; Phát triển nông thôn\"></i>\n							<input type=\"radio\" value=\"AGB\" name=\"bankcode\">\n\n						</label></li>\n					<li class=\"bank-online-methods \">\n						<label for=\"sml_atm_bab_ck_on\">\n							<i class=\"TPB\" title=\"Tền phong bank\"></i>\n							<input type=\"radio\" value=\"TPB\" name=\"bankcode\">\n\n						</label></li>\n\n\n\n				</ul>', 5, 1, '2018-02-06 10:09:53', '2018-02-08 03:01:03'),
(6, 'Thanh toán bằng thẻ Visa hoặc MasterCard', 'VISA', '<p><span style=\"color:#ff5a00;font-weight:bold;text-decoration:underline;\">Lưu ý</span>:Visa hoặc MasterCard.</p>\n				<ul class=\"cardList clearfix\">\n						<li class=\"bank-online-methods \">\n							<label for=\"vcb_ck_on\">\n								Visa:\n								<input type=\"radio\" value=\"VISA\" name=\"bankcode\">\n							\n						</label></li>\n\n						<li class=\"bank-online-methods \">\n							<label for=\"vnbc_ck_on\">\n								Master:<input type=\"radio\" value=\"MASTER\" name=\"bankcode\">\n						</label></li>\n				</ul>', 6, 1, '2018-02-06 10:10:08', '2018-02-08 03:01:34'),
(7, 'Thanh toán bằng thẻ Visa hoặc MasterCard trả trước', 'CREDIT_CARD_PREPAID', '<p><span style=\"color:#ff5a00;font-weight:bold;text-decoration:underline;\">Lưu ý</span>:Thanh toán bằng thẻ Visa hoặc MasterCard trả trước.</p>', 7, 1, '2018-02-06 10:10:45', '2018-02-06 11:02:11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `persistences`
--

DROP TABLE IF EXISTS `persistences`;
CREATE TABLE `persistences` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `persistences`
--

INSERT INTO `persistences` (`id`, `user_id`, `code`, `created_at`, `updated_at`) VALUES
(6, 1, 'WphP2gHqBbRpGKp2WcZb6APTYCNo1onf', '2017-11-12 08:12:08', '2017-11-12 08:12:08'),
(12, 1, 'HMMWMPpBDgdUbv54tKOldPvWyvcaeDCp', '2017-11-12 08:20:55', '2017-11-12 08:20:55'),
(20, 1, 'F4bWDfEvllT0fTv4EzWDp3NWpLxGo4n5', '2017-11-12 08:44:06', '2017-11-12 08:44:06'),
(27, 1, 'f7VCzyYASPW5vTVgTfv3Ji50sxy2ckIt', '2017-11-12 10:14:09', '2017-11-12 10:14:09'),
(35, 1, 'Zlbi5ja6c9Z7no06i5MvPsa8kZI3oLEZ', '2017-11-12 10:41:59', '2017-11-12 10:41:59'),
(43, 3, 'ZsvbfzLh4A4k34VMpmZCqIO2KIDk9pzP', '2017-11-12 10:51:37', '2017-11-12 10:51:37'),
(45, 3, '61CQHzrI8v42ppzJ35HclGUgzulYNwKD', '2017-11-12 10:51:57', '2017-11-12 10:51:57'),
(48, 4, 'M1VbjAgWRrVuXhVCqqvWAQHP287e5fuk', '2017-11-12 11:00:38', '2017-11-12 11:00:38'),
(52, 4, 'zWj9obfujhk7L1DEKOcSOMTi49HvkeVo', '2017-11-12 11:04:17', '2017-11-12 11:04:17'),
(64, 4, 'sGcmm3lmMPLTUyFeagebRe9YiPjWxHn0', '2017-11-12 11:20:36', '2017-11-12 11:20:36'),
(68, 4, 'DsgzaC5yhMG3miJpNrQFeWCpBwqfsMuO', '2017-11-12 11:21:48', '2017-11-12 11:21:48'),
(71, 4, 'aFa63uj6gzLcV0mZtU0nYvVinHZnvyAi', '2017-11-12 11:22:33', '2017-11-12 11:22:33'),
(73, 4, 'P672dGDcBqxGazfRAzJtUxPwSjTq9N4K', '2017-11-12 11:22:59', '2017-11-12 11:22:59'),
(74, 4, 'm0D8Z9mVczUYgqkSJXAwGQi8S9EaqrSg', '2017-11-12 11:23:03', '2017-11-12 11:23:03'),
(94, 1, 'W1uglu6PzKaOfwxa766IOJ33NDdulIri', '2017-11-12 13:01:17', '2017-11-12 13:01:17'),
(105, 4, 'lpP9axx2fJB8SUi7t2NlNMHasH10fl9N', '2017-11-12 19:31:42', '2017-11-12 19:31:42'),
(106, 4, '1PNxpqM3E2RYNr5CT1NzPzCOlNu4xILB', '2017-11-12 19:31:45', '2017-11-12 19:31:45'),
(107, 4, 'IJleJPrQEduTCpRbolCVqNbD3vzzhqXH', '2017-11-12 19:31:51', '2017-11-12 19:31:51'),
(110, 4, 'RyU6rnrEVVwusqJpB1boWgpODKNKthib', '2017-11-12 19:32:50', '2017-11-12 19:32:50'),
(113, 4, '2iWGSejY4rkJdkY2iK65Na0UV05uJEZ3', '2017-11-12 19:34:34', '2017-11-12 19:34:34'),
(115, 1, 'WQkHX9pd7HnW6Fwd58b6FNwURcoRYyK6', '2017-11-12 19:36:57', '2017-11-12 19:36:57'),
(119, 4, 'FGLu6nkqZkVigimI5Chx4mNmXgdi22qe', '2017-11-12 19:44:50', '2017-11-12 19:44:50'),
(124, 1, '1kZXCQqSfCEwmILvBACrUaHl5MpzQWXX', '2017-11-12 20:47:34', '2017-11-12 20:47:34'),
(125, 1, 'XJfqJ7pZakt8xtLNkULZUElD7jHOCtKt', '2017-11-13 17:44:28', '2017-11-13 17:44:28'),
(129, 1, 'JtMzzU4e61U2GRbOedwzutyNWAHHRHKp', '2017-11-13 23:43:59', '2017-11-13 23:43:59'),
(134, 1, 'zTVEKL7zcc4kvYk80AuKHQkn17d1TX0d', '2017-11-14 07:10:53', '2017-11-14 07:10:53'),
(135, 1, 'ZxzpfDpxrMTx7dRhvd1IQs0KoAyp8beZ', '2017-11-14 10:00:40', '2017-11-14 10:00:40'),
(138, 1, 'M9zXqXyMOTprNqZQI4LEpKqNogmDZiCE', '2017-11-14 20:35:29', '2017-11-14 20:35:29'),
(139, 1, 'CDF73h1lqr864dh5T5BQdTRf0hcrS45y', '2017-11-15 01:20:36', '2017-11-15 01:20:36'),
(143, 1, '50Hrxr02Q6CqKUF4p0G0bpP6PhcrLaNG', '2017-11-15 10:34:05', '2017-11-15 10:34:05'),
(145, 1, 'LRlBDrPFH3sF0WLHAUBGdJuLn5beDkqb', '2017-11-15 10:45:25', '2017-11-15 10:45:25'),
(149, 1, 'zV2fdfnD6X5jTDrXbKtgm2BQ4I4CN0vP', '2017-11-15 21:20:42', '2017-11-15 21:20:42'),
(154, 1, 'VbajMvJtRtkXTmUREmO1x8SnojOzoNy4', '2017-11-16 12:09:09', '2017-11-16 12:09:09'),
(155, 1, 'EN255XIbrvzjbXm2TdeuHOJnjAHBKhm0', '2017-11-16 19:00:45', '2017-11-16 19:00:45'),
(156, 1, 'a2STqoxCKAdKjJBxt5RxyBo23j196SqS', '2017-11-17 01:55:13', '2017-11-17 01:55:13'),
(157, 1, 'bWYcBrGX0pTubrxZ2Gz8mOrpfZh4d3R5', '2017-11-17 03:54:15', '2017-11-17 03:54:15'),
(158, 1, 'rOqRgZyRXdpE2wPQxm60VZEi4MVsaHwd', '2017-11-17 09:26:45', '2017-11-17 09:26:45'),
(159, 1, 'MUi9tluQQy8AhsadOL4sMuRSRaMPY2Vi', '2017-11-17 21:05:41', '2017-11-17 21:05:41'),
(162, 1, '0fsBWGHy3uFkICDp4rgusPKisYenbUr5', '2017-11-18 08:03:50', '2017-11-18 08:03:50'),
(163, 1, 'z2MidVz3A5SfcQtc9CjF83lbB9Ncxw4c', '2017-11-19 05:53:59', '2017-11-19 05:53:59'),
(164, 1, 'C3NrRRgDRZQLTrZraBO9IGEl2wXobUup', '2017-11-20 05:47:41', '2017-11-20 05:47:41'),
(165, 1, 'wgjWLdlRLP6Cireh1mZswQnOOTXG8z8O', '2017-11-21 03:33:18', '2017-11-21 03:33:18'),
(166, 1, 'OHI8P6DtqZVW9K4VlZ1mw5gI0IuJYPH1', '2017-11-21 04:17:05', '2017-11-21 04:17:05'),
(167, 1, 'qNdOfppeTTO8yQemqSZtz0s9qjIu8bSY', '2017-11-21 17:39:32', '2017-11-21 17:39:32'),
(168, 1, 'UJbhn9QwAcZUUXnVDtSStqNCq5akR4Lw', '2017-11-21 23:49:19', '2017-11-21 23:49:19'),
(169, 1, 'eo5eQNRwtkvZlv0DmXfze6JymlS0wylC', '2017-11-22 18:21:12', '2017-11-22 18:21:12'),
(173, 1, 'IulV4jEfAVovdnn5YGOTprw3kkvFe8NP', '2017-11-23 05:15:58', '2017-11-23 05:15:58'),
(174, 1, 'Awg5gkMADLkjPbiVitjCzS9ad5sCN9eF', '2017-11-23 18:51:55', '2017-11-23 18:51:55'),
(175, 1, 'STmoiFXISPPMkYZ46mHVd1FgZleRFPma', '2017-11-24 01:23:33', '2017-11-24 01:23:33'),
(176, 1, 'DS9Yw83Zm2blL1F2azbyCcQ4v2ktYX5H', '2017-11-24 02:11:20', '2017-11-24 02:11:20'),
(177, 1, 'e1ZyuWKHR7HQaQSkQEv4J6YMwpFFLXeC', '2017-11-24 06:39:38', '2017-11-24 06:39:38'),
(178, 1, '6KeLIVlJyL7P6FMEGpgxpNljzsQxI20T', '2017-11-25 05:02:32', '2017-11-25 05:02:32'),
(179, 1, 'tKhufJfgecAKrGEAT2EBaEPLaf517QVS', '2017-11-25 09:08:54', '2017-11-25 09:08:54'),
(180, 1, 't3XDlldaLWhVaxrPuwM6dT02mMflr87j', '2017-11-25 19:53:59', '2017-11-25 19:53:59'),
(182, 1, 'fM0W9o41fDgCiycVxhvQeJ02Opj3tULU', '2017-11-25 21:10:55', '2017-11-25 21:10:55'),
(184, 1, 'EMmXbaWTDFtG4QX9UfVNcK7eUBsy7nmJ', '2017-11-25 21:32:34', '2017-11-25 21:32:34'),
(185, 1, 'r6cxynGaM90IU8uZA7aJFjox941jTivP', '2017-11-26 05:12:26', '2017-11-26 05:12:26'),
(198, 1, 'qNJI9OXlvBnQT9IZvLyhcvnjFBHI3dZz', '2017-11-26 10:37:48', '2017-11-26 10:37:48'),
(199, 1, 'C9FPmC5NtedAPoygDQN2oqpB4EZN8azX', '2017-11-26 11:20:11', '2017-11-26 11:20:11'),
(202, 1, 'qCWvTU0oJSjAyobzeHt21656Rl1eWuvq', '2017-11-26 20:07:36', '2017-11-26 20:07:36'),
(203, 1, 'I0m5QArlodAFsFQj0cfoSiIaJ2ZGgbyg', '2017-11-26 23:06:11', '2017-11-26 23:06:11'),
(204, 1, '6tDVgt6sfCGnbfPYISYbMzCQKpXm8QKc', '2017-11-27 00:00:05', '2017-11-27 00:00:05'),
(205, 1, 'R0MhkpKtLCI5fIe1wwCeicZa0ftDQPwx', '2017-11-27 02:16:57', '2017-11-27 02:16:57'),
(206, 1, 'E69AlB0p8xLhxxNVrs46xwrP0a5wm3KX', '2017-11-27 07:58:05', '2017-11-27 07:58:05'),
(207, 1, 'qFJkZtCoPK72qECK96tX226VuMubIMBv', '2017-11-27 19:23:06', '2017-11-27 19:23:06'),
(208, 1, 'yTiyEBo8xE3PfzxTL1GFRVnqqi4ChmIZ', '2017-11-27 20:15:53', '2017-11-27 20:15:53'),
(209, 1, 'YN8x4updqv0OrIsWStBz2c7ZxI7VO5ug', '2017-11-27 20:17:20', '2017-11-27 20:17:20'),
(210, 1, 'UpPwfQYjNbyRmztTDCfl16md4weLyjG3', '2017-11-30 08:03:21', '2017-11-30 08:03:21'),
(211, 1, 'ArOxlkVdyW3lu3SJqot209bFrPZUAPgD', '2017-12-01 10:48:28', '2017-12-01 10:48:28'),
(212, 1, 'xoOGCB3x8fVFoBznts5EU1k13GmZiO11', '2017-12-02 19:53:50', '2017-12-02 19:53:50'),
(214, 1, 'Jqk5DXGugxgRtsZy4pBEFn7brMvOjghm', '2017-12-03 11:57:16', '2017-12-03 11:57:16'),
(216, 1, 'nYe5QuFSOr8eu7GG8atx6EbvbM1XUMlY', '2017-12-03 17:58:34', '2017-12-03 17:58:34'),
(217, 1, 'P5Q1q3gYWSt4k7c0BLPth6QEpGmYVG5T', '2017-12-04 11:12:33', '2017-12-04 11:12:33'),
(218, 1, '0aNMDBXR8Xzt5DTF9HcK4OBSaZyohSzF', '2017-12-05 09:04:17', '2017-12-05 09:04:17'),
(219, 1, '8J8vasVhkLwqagOIRNKwiIU94QoexH4O', '2017-12-05 18:41:41', '2017-12-05 18:41:41'),
(220, 1, 'JChXlObze9eklsMJrTNLH6ekOw47H5mz', '2017-12-06 00:14:21', '2017-12-06 00:14:21'),
(221, 1, 'z18eXjqdkmbBbwJcvBAIt2o5DxA51xjw', '2017-12-06 08:20:51', '2017-12-06 08:20:51'),
(222, 1, 'F40EmMwa02fVssVHs66z0XASzB3S5sqM', '2017-12-08 11:51:41', '2017-12-08 11:51:41'),
(223, 1, 'Ee5i5S8MD2HQVPa7TKeEK3HekFbSCLcO', '2017-12-10 19:42:21', '2017-12-10 19:42:21'),
(224, 1, 'JebpNZTP11ct8IzcxmbYePuG978Jpumq', '2017-12-10 20:05:44', '2017-12-10 20:05:44'),
(226, 1, 'qPVObxjq9k29qoRVkiAV89K6Ds8MnpRz', '2017-12-10 21:48:03', '2017-12-10 21:48:03'),
(227, 1, 'Q0mGHYM1KOmlyLqq9Kw2lH5F1e2t8nIE', '2017-12-11 09:24:23', '2017-12-11 09:24:23'),
(228, 1, 'PKvAShIoy3rHzKX98qFrlcxx9q0weXbE', '2017-12-11 20:07:50', '2017-12-11 20:07:50'),
(229, 1, 'D3EIc9je8gVdFHzEluwGYSxLvcYWfISa', '2017-12-12 10:23:23', '2017-12-12 10:23:23'),
(230, 1, 'LlCfFTdhZIG7Fqb0249N2hlssIbwgswv', '2017-12-12 19:38:58', '2017-12-12 19:38:58'),
(231, 1, '5P3ys652WPCFCcMEtYp9K6YFz8KClLdt', '2017-12-12 20:37:12', '2017-12-12 20:37:12'),
(232, 1, 'AuLUtUUmPWZaLWJxm2RtyHkflWsMlIvb', '2017-12-12 20:48:06', '2017-12-12 20:48:06'),
(233, 1, 'OoMvRAracnoqhoXECrlxDTA8S4M7pGEC', '2017-12-12 21:39:03', '2017-12-12 21:39:03'),
(234, 1, 'LspxbedO8o6CbiofYR0uqLfOwunUpfCT', '2017-12-12 22:11:41', '2017-12-12 22:11:41'),
(235, 1, 'TaJdE7jjBDOwYE4eqf955JoMQh2MGnga', '2017-12-12 23:42:01', '2017-12-12 23:42:01'),
(236, 1, '9ldSOnqDOOdFI4SuMFTE5sOXeKeDaFMK', '2017-12-13 01:24:31', '2017-12-13 01:24:31'),
(237, 1, 'Omqc5SMLNnckeyPe5h70EHA0yUqZ1yAr', '2017-12-13 01:26:17', '2017-12-13 01:26:17'),
(238, 1, 'N57JQIUmXSgVZUN25mI9zA6QB3krnDJa', '2017-12-13 01:27:02', '2017-12-13 01:27:02'),
(239, 1, 'tKi6yXfXoogbGH6Ui12Pps4xBnKQQ1Y6', '2017-12-13 02:42:24', '2017-12-13 02:42:24'),
(241, 1, 'fdAX0oX5HE6HEOuPnpQOCPJPQHOTJazL', '2017-12-13 11:11:26', '2017-12-13 11:11:26'),
(243, 1, '5F15aKMYAKbpu8xARjjk4Z3b4ZLLaiHN', '2017-12-13 19:46:28', '2017-12-13 19:46:28'),
(244, 1, 'bmx6cC4QULNMW3CCh933DzA3kvhDM0ai', '2017-12-13 20:18:26', '2017-12-13 20:18:26'),
(245, 1, 'p89msT6X0idRVFgnJegC63D5VXzGzQZs', '2017-12-13 20:46:43', '2017-12-13 20:46:43'),
(247, 1, 'pS5xSImoYKACiZzQYCbCN9WYfAyE17BJ', '2017-12-13 23:44:24', '2017-12-13 23:44:24'),
(248, 1, 'Ei3UzlkB8E8L2EwvJ6uf7RqWbSiEXWqw', '2017-12-14 02:24:40', '2017-12-14 02:24:40'),
(249, 1, 'XDhhxpNpsyR8JqU9QF9ciEtMAUxzQb70', '2017-12-14 05:39:40', '2017-12-14 05:39:40'),
(251, 1, 'gYei12wI1Xx9L458waGZcXrpzfJSLrEw', '2017-12-14 05:40:20', '2017-12-14 05:40:20'),
(253, 1, 'o0i98RskGVcDO68h58WHtVILX3X7GyZZ', '2017-12-14 08:30:08', '2017-12-14 08:30:08'),
(254, 1, 'rYXzVG9bTG0q8AAikn8E1gKFDUln4zZT', '2017-12-14 17:36:03', '2017-12-14 17:36:03'),
(255, 1, 'yaZ3Gkr2fhEHy46HJzcTlIMgLZjtVE0P', '2017-12-14 18:39:23', '2017-12-14 18:39:23'),
(256, 1, 'YmZvD9xhUam8WQjZebIu5UA5fa79Vmpw', '2017-12-14 19:13:37', '2017-12-14 19:13:37'),
(257, 1, 'GHd02IbsGjboWps4UOuoRMKEHhdAeM4Q', '2017-12-14 19:20:29', '2017-12-14 19:20:29'),
(258, 1, 'bEwsrdAAVsEols37gzepZRofpjQ5CpkS', '2017-12-14 19:46:00', '2017-12-14 19:46:00'),
(259, 1, 'Op5b8y1v9a1Z1AasgU1buuI9PXTpXq14', '2017-12-14 20:36:43', '2017-12-14 20:36:43'),
(260, 1, 'H491pNtELCOBnhzmGJJG5pVQqCQqQ6y9', '2017-12-15 07:13:52', '2017-12-15 07:13:52'),
(265, 1, 'x7SZJyE8pqvN1UmSOiLMvTIDgPU8Op1v', '2017-12-15 23:56:34', '2017-12-15 23:56:34'),
(269, 1, 'bCLJ9ILMZeWaTyO9PK1h4WZ3yG712Q3h', '2017-12-16 00:27:26', '2017-12-16 00:27:26'),
(270, 1, 'VTVKHrHmyn9Ree3oENKNiqLQ8PEllFBP', '2017-12-16 00:40:12', '2017-12-16 00:40:12'),
(271, 1, 'tE71PsmEixwJk0QCDYeIEPpZ6XfzfmQL', '2017-12-16 02:57:23', '2017-12-16 02:57:23'),
(272, 1, '5aHeCSmiZ5bKLIYyaV3gGw8msN1aA63K', '2017-12-16 08:08:53', '2017-12-16 08:08:53'),
(282, 1, 'EUtWgeynbqabsviLDajTiXg6az4xEx4S', '2017-12-16 11:25:51', '2017-12-16 11:25:51'),
(283, 1, 'xKZoSmxNW0WGyljs2cdzeQI7OoHOEYbj', '2017-12-16 20:33:48', '2017-12-16 20:33:48'),
(284, 1, '958RICNQ5SWqdtnNopOEAQEGjy71OLrP', '2017-12-17 07:52:39', '2017-12-17 07:52:39'),
(286, 1, '5wQF5syYD14KXWyo2G0TdOpFgPvDwWML', '2017-12-17 19:52:04', '2017-12-17 19:52:04'),
(287, 1, '57cBU7Ds9QMsjwn0klqjotmHkWuIFlp7', '2017-12-25 19:27:36', '2017-12-25 19:27:36'),
(288, 1, 'pSNdXiePmuervyNG25HffYLqSY4CqCNV', '2017-12-25 21:29:41', '2017-12-25 21:29:41'),
(289, 1, 'HrHLtRQPfVz6XIzSP9YMkHOswmru4q9A', '2017-12-25 21:47:02', '2017-12-25 21:47:02'),
(290, 1, 'loABizfP1dl9zchCj2681qVIsF3OKrJ3', '2017-12-27 10:38:20', '2017-12-27 10:38:20'),
(291, 1, '6oNxIkIquNcQIOEPZnb9gd69OiMONpDD', '2017-12-27 10:45:14', '2017-12-27 10:45:14'),
(292, 1, '1tEcrFgJDbeU1aUB6H5mnmO7zua63PuQ', '2017-12-27 19:13:01', '2017-12-27 19:13:01'),
(293, 1, 'MUkVIspzdlXbtHyCGhcCsnvK7SeCkOVu', '2017-12-27 19:25:12', '2017-12-27 19:25:12'),
(294, 1, 'PSyuKpYZcZ9Ji2eZ5j5rfSh0u6yWDxDS', '2017-12-27 22:32:12', '2017-12-27 22:32:12'),
(295, 1, '5QXQdR5dMiMQF4MSYyuVsYzj5N51Tzux', '2017-12-28 01:38:51', '2017-12-28 01:38:51'),
(296, 1, '6oyeQrWmS58vLjNBe4iMxPX7mUl4gJ8g', '2017-12-29 02:09:33', '2017-12-29 02:09:33'),
(297, 1, 'myq1k4YmAJV6HmELv3CY4Fme7QllpMyV', '2017-12-29 05:40:48', '2017-12-29 05:40:48'),
(298, 1, 'KqG7rQKRTxtJ5owuAVvKCpgDd9ylxyuB', '2018-01-01 19:20:46', '2018-01-01 19:20:46'),
(299, 1, 'gGIbwURi3h2p30EwdzpVSN7s89oJbs1o', '2018-01-01 19:42:39', '2018-01-01 19:42:39'),
(300, 1, 'TMAKb6m8MTahrN1lFJTIoni9vymizoPX', '2018-01-01 22:34:23', '2018-01-01 22:34:23'),
(301, 1, 'fZ3RQ9jvj6UvF2UOcrWIC5tnFpmqrmJr', '2018-01-02 00:59:34', '2018-01-02 00:59:34'),
(302, 1, 'mP3Z9KVER7893IYjcGERZFXKDhm7biAm', '2018-01-02 18:30:12', '2018-01-02 18:30:12'),
(303, 1, 'tsyksujmywH7Hoz3hxqML9Th24Zcv3Dy', '2018-01-03 00:41:50', '2018-01-03 00:41:50'),
(304, 1, 'dMRpWGk7Uvdn3lza8LXBsbteeUnWMOSW', '2018-01-03 05:04:01', '2018-01-03 05:04:01'),
(305, 1, 'F8pNbJFdCdNEIwRCgulVQ1rb5oYmT267', '2018-01-03 09:50:30', '2018-01-03 09:50:30'),
(308, 1, 'mmgyGjX6FKaZrTA1Sy46Xk5afFSPTiLz', '2018-01-03 10:32:13', '2018-01-03 10:32:13'),
(309, 1, 'WkZAETYgs1qll9a5SzLJ5emRNEM2jQcC', '2018-01-03 19:35:54', '2018-01-03 19:35:54'),
(310, 1, 'i3u3Fev9GhSTSKw8zqKOtDxyBukTswNF', '2018-01-04 00:00:04', '2018-01-04 00:00:04'),
(311, 1, 'wIgyuIWSRPW3SoRC3SCDlIdvMSN1ntwp', '2018-01-04 07:50:26', '2018-01-04 07:50:26'),
(312, 1, 'lhTwGs8hINh78Dsjm9VZpOqyGh4ubnFD', '2018-01-04 18:27:00', '2018-01-04 18:27:00'),
(313, 1, 'XZqSKTU7fCn9dhY7pDGf6ny090eeqe8H', '2018-01-05 05:03:20', '2018-01-05 05:03:20'),
(314, 1, 'xPlA9MCUQ1DqNmZwgnVqmexRptuA4bju', '2018-01-05 07:13:15', '2018-01-05 07:13:15'),
(315, 1, 'tIKVZUBkeaj76cE4QGvO5rqFgawgYMNP', '2018-01-06 03:08:10', '2018-01-06 03:08:10'),
(316, 1, 'ntMLkIGaGhDneocoWJFOZTyl6MhuzZan', '2018-01-06 12:28:22', '2018-01-06 12:28:22'),
(317, 1, 'QU8qluCPQ7F4XdP5njtjcRWqzlXX9S8h', '2018-01-06 22:56:38', '2018-01-06 22:56:38'),
(318, 1, 'Us4ZHvY5DHcwpQVf9XysqakskdvsAzFV', '2018-01-07 04:20:27', '2018-01-07 04:20:27'),
(319, 1, 'AsTUE50pKXOtm27NbymiqbnpVrlhzWQ4', '2018-01-07 07:12:26', '2018-01-07 07:12:26'),
(320, 1, 'TSocJysjRMp42L96vEg02rwZBiEUKyyN', '2018-01-07 09:18:55', '2018-01-07 09:18:55'),
(321, 1, 'KQ0cszOBSWH87hnzA7wcYJLSbNcVQgpg', '2018-01-07 19:37:24', '2018-01-07 19:37:24'),
(322, 1, 'H8BxgWKyBTe4U5lwpdbYG43owssAnk1y', '2018-01-08 02:28:24', '2018-01-08 02:28:24'),
(323, 1, '8CEZcoGrealxWIzhXRxoDIGmPieyZkGP', '2018-01-08 04:07:45', '2018-01-08 04:07:45'),
(324, 1, '9wJ8Z8j1bqUBFAPGBkUytzbUmZqKV3HL', '2018-01-08 08:56:34', '2018-01-08 08:56:34'),
(325, 1, 'XKZh1syWLfcamMSbLhsL9SJVPf2Mfv67', '2018-01-08 10:14:35', '2018-01-08 10:14:35'),
(327, 1, 'loNG0asl3Sj6zCitYw1n692cZ5AWL72j', '2018-01-08 23:13:14', '2018-01-08 23:13:14'),
(328, 1, 'kFqFfFmhk2m2hy3Bj3Kuhn8YkI6WyGP1', '2018-01-08 23:20:42', '2018-01-08 23:20:42'),
(329, 1, 'U7t1BBwwPaAhglF8LUPBuWCzHANUDsKh', '2018-01-09 01:22:36', '2018-01-09 01:22:36'),
(330, 1, 'kryBmI5jqwrndEJvS7r4QFl5aKOUn4Rl', '2018-01-09 11:51:15', '2018-01-09 11:51:15'),
(331, 1, 'Yll3QjOrDTaxUkqpcbg62fOqmFlHLhgp', '2018-01-09 20:29:19', '2018-01-09 20:29:19'),
(332, 1, 'AYnzFsKBk3DG8o1HFCkbUaRcTs92YbM3', '2018-01-09 21:30:21', '2018-01-09 21:30:21'),
(333, 1, 'rNBV0y0Wan6Qpj65pQmiJOQ52qtkQ0sL', '2018-01-10 00:31:26', '2018-01-10 00:31:26'),
(334, 1, 'jKTPdBjo4Ev0seh3qIoU8CMVvIE0TTkE', '2018-01-10 02:52:39', '2018-01-10 02:52:39'),
(335, 1, 'E8NFXc9C2nsm8W6FWfgrrGsobWiPRnCT', '2018-01-10 08:34:20', '2018-01-10 08:34:20'),
(336, 1, 'vQMwlhh0SMMXZiQ7fQX1UweaJtNwM2Bv', '2018-01-10 19:06:53', '2018-01-10 19:06:53'),
(337, 1, 'ws5Lv88o5eWYYKzeiqwIHXmhwb5ItcOf', '2018-01-11 07:38:41', '2018-01-11 07:38:41'),
(338, 1, 'ouWCgfhI5q9H3k4h6w2tttsiJV8y3Qzp', '2018-01-11 10:31:12', '2018-01-11 10:31:12'),
(339, 1, 'elx9rwAfOXrPGOmTcsxZ9gsI5i9B9FAJ', '2018-01-11 10:32:25', '2018-01-11 10:32:25'),
(340, 1, 'utdXQIFty8RcOHFm8tpglAx8ANG7irml', '2018-01-11 18:57:38', '2018-01-11 18:57:38'),
(341, 1, 'XigZe34t3cWVnSlrmtPwHHvUHXNHmyPT', '2018-01-11 19:10:44', '2018-01-11 19:10:44'),
(342, 1, 'wwJoo2CBoB1bdZp6C56TPlo1lQ7mLSUa', '2018-01-11 23:57:32', '2018-01-11 23:57:32'),
(343, 1, 'D4OaTt5Z6zu1q6cPPJdne029l1QSAIJz', '2018-01-12 00:55:46', '2018-01-12 00:55:46'),
(344, 1, 'pvdA7qp7hS1G0FazeLwNIJkHXK7hQXzs', '2018-01-12 01:56:45', '2018-01-12 01:56:45'),
(345, 1, 'TcFmUyoJEeyOuCos5ePBdYugNanUjxVd', '2018-01-12 02:06:12', '2018-01-12 02:06:12'),
(346, 1, 'gKRIy92eSDkDLPtDEzZxHPvTO7vmNoaA', '2018-01-13 12:11:00', '2018-01-13 12:11:00'),
(347, 1, 'RHDxUSWbh2csZRCETQ3hXJuTLr4FyzzU', '2018-01-13 13:09:15', '2018-01-13 13:09:15'),
(348, 1, 'pTRVtKlFP6VnVnh61v9ZDhDBtutgZcta', '2018-01-13 13:12:05', '2018-01-13 13:12:05'),
(349, 1, '6k8RmyBaDmXZTwXKws2BaqjnebRDA46s', '2018-01-13 22:32:59', '2018-01-13 22:32:59'),
(350, 1, '29aWBcPaThOZhTUJ3TCMTr06inrXXpPc', '2018-01-14 05:18:27', '2018-01-14 05:18:27'),
(351, 1, 'l1FodYbVYnF5qllJXQn47jURkjbYQIah', '2018-01-14 09:12:20', '2018-01-14 09:12:20'),
(352, 1, 'C7CLHzromxCwETZPNWuFB5KQ1lLgJktO', '2018-01-14 09:39:44', '2018-01-14 09:39:44'),
(353, 1, 'Y7i1AwV61KINlely1225s2t3KYEoTeCl', '2018-01-14 09:54:05', '2018-01-14 09:54:05'),
(354, 1, 'yEepEQljz0lQ9veGResUYlNzZmZVSzYY', '2018-01-14 21:21:16', '2018-01-14 21:21:16'),
(355, 1, 'MoHMY2GAVZ06IfQ8lOrjvKHgSpRlt3sf', '2018-01-14 21:43:17', '2018-01-14 21:43:17'),
(356, 1, 'gJFjqXGL718vBEDWtiWFqrXd7wzQ3PJu', '2018-01-15 11:12:16', '2018-01-15 11:12:16'),
(357, 1, 'lAT4nQL5p2NV6Av36QLpsaS9oTck2miN', '2018-01-15 18:30:37', '2018-01-15 18:30:37'),
(358, 1, '7YzpEdozcjd8zxPMQBoLKz4wKQNvPvmk', '2018-01-15 18:55:34', '2018-01-15 18:55:34'),
(359, 1, 'CDE7azpfNeLEJOz3qA6iixYxURaNY7eL', '2018-01-16 02:56:25', '2018-01-16 02:56:25'),
(360, 1, 'MeVL2sSlFRzhrG0xaJ6ZqRoDCyyrfqpw', '2018-01-16 10:27:54', '2018-01-16 10:27:54'),
(362, 1, '7YWkgnr0fcthbBrZtZxI5VYfq9GkeIrH', '2018-01-16 20:15:12', '2018-01-16 20:15:12'),
(363, 1, 'C7HQZp1uoHWuUddbCURbC67F8WRFPbhz', '2018-01-16 20:57:30', '2018-01-16 20:57:30'),
(364, 1, 'An1hk9DM1kFNeHQDbXs26BUas2QhrMQM', '2018-01-17 00:28:12', '2018-01-17 00:28:12'),
(366, 1, '1wUTqWD2BFEEIS98lz1DmfP6K2QhdeMT', '2018-01-17 00:47:17', '2018-01-17 00:47:17'),
(368, 1, 'qsZQcTzpevnkZoiyIpQbaR4qu3r4g3GV', '2018-01-17 04:18:35', '2018-01-17 04:18:35'),
(372, 1, 'WjL3wP64VMbVgVUFVl99MdM5kcIdpQCy', '2018-01-17 08:29:47', '2018-01-17 08:29:47'),
(373, 1, 'ttUIgNCKBMBEkjLsKH9WuRDAEG4TPjzU', '2018-01-17 20:14:51', '2018-01-17 20:14:51'),
(374, 1, 'noRUog2Feq5ZNAGHfze9DBaubeDzabca', '2018-01-17 20:57:02', '2018-01-17 20:57:02'),
(375, 1, 'zkZ51ymxpywKCyuXmR3HqwHymINrQMfz', '2018-01-18 00:10:25', '2018-01-18 00:10:25'),
(376, 1, 'lzNZOymz8HgNudpRO5sMyTKipm0tpDGF', '2018-01-18 00:16:14', '2018-01-18 00:16:14'),
(377, 1, '2yCG7tSmilLxN8pzJjS2eMkCbplTTJ0h', '2018-01-18 03:52:31', '2018-01-18 03:52:31'),
(378, 1, 'RMWiH4kf71KduXOMGFtgTa3VDI7RA25R', '2018-01-18 09:25:22', '2018-01-18 09:25:22'),
(379, 1, 'jXAi4A9SVVlzEzUs51gWW6AFaJRNKgkG', '2018-01-18 11:20:09', '2018-01-18 11:20:09'),
(380, 1, 'WxxLLaypmZiGOfHWBQbzPUjt0bams3gx', '2018-01-18 11:57:31', '2018-01-18 11:57:31'),
(381, 1, 'KkJ6EvsSh1GkOXBYtfLzTeTE4H2mLzTT', '2018-01-18 19:23:30', '2018-01-18 19:23:30'),
(382, 1, 'xF88UwOSd9p1tmkrmBOEgAjIomkJB0Hx', '2018-01-19 00:25:51', '2018-01-19 00:25:51'),
(383, 1, 'A32q6kvPJplJ4WAIYSrx60zCSSnxpaDG', '2018-01-19 01:20:22', '2018-01-19 01:20:22'),
(384, 1, 'lPLxh0KbKNSsXA2BILeBXobgaGj68OKR', '2018-01-19 02:03:13', '2018-01-19 02:03:13'),
(385, 1, '5HCVqG0BkfTwNNXMnON1OkvmplY5VtPh', '2018-01-19 09:04:44', '2018-01-19 09:04:44'),
(386, 1, 'taFneiiXaSPaXyiEJwFR60oA690Cb2X8', '2018-01-19 20:43:49', '2018-01-19 20:43:49'),
(387, 1, 't23Yq0Wf57G9dDYIZ2lHzkBEnq6ICQAK', '2018-01-20 11:58:10', '2018-01-20 11:58:10'),
(388, 1, 'XmFShMJFqbARwYvuwfNLSOdWLrZmr32z', '2018-01-20 21:08:01', '2018-01-20 21:08:01'),
(389, 1, 'MBWjdSM0CwnQcdFbo5ea8EyDH1YC5ST0', '2018-01-21 05:40:50', '2018-01-21 05:40:50'),
(390, 1, 'evDd4G82kjgac50TOKv1DZrobHzWEZr8', '2018-01-21 08:05:52', '2018-01-21 08:05:52'),
(391, 1, '4dPKUN7BFQPOuGvA8Xt8Oh8azZQQ9pkx', '2018-01-21 10:51:12', '2018-01-21 10:51:12'),
(392, 1, 'iOi6rBobAw6B2Khg9CLDbPizVJYKGW94', '2018-01-21 18:51:39', '2018-01-21 18:51:39'),
(393, 1, 'CY5tmN8UCUMqmSVoRFOipfHKUpoT0j4f', '2018-01-22 00:07:03', '2018-01-22 00:07:03'),
(394, 1, 'aGzNsWOhDrVlT9HIVVFwCpsue1r7D5YA', '2018-01-22 00:44:48', '2018-01-22 00:44:48'),
(395, 1, 'VS5iiETNULvHItpuUmHQUH81sChbbY1l', '2018-01-22 19:02:07', '2018-01-22 19:02:07'),
(399, 1, 'NWnj4UvnZqwWOTX3CeusZ6v8Fhf2c6ub', '2018-01-24 19:02:36', '2018-01-24 19:02:36'),
(400, 1, 'VLSxXPLlSKCtughyjzMut9ug3flrhyi1', '2018-01-24 19:27:36', '2018-01-24 19:27:36'),
(401, 1, 'SnMonFyxu1katYF7DoIioInfgbQIbY6Z', '2018-01-24 23:56:14', '2018-01-24 23:56:14'),
(402, 1, 'u8RnIhbv4c9eCZZaMSjHrsM9hfTRb3r5', '2018-01-25 00:09:18', '2018-01-25 00:09:18'),
(403, 1, 'kb7yBdeIHuIl4kIa9Jt7nDFpllfRVRhx', '2018-01-25 02:08:12', '2018-01-25 02:08:12'),
(404, 1, 'gVw8xTL0zeKZYrqEGP4CcC85esbG8ypE', '2018-01-25 18:18:17', '2018-01-25 18:18:17'),
(406, 4, 'A4FLGiVU9LvfsVEp5mrRl5TZl6nb3ksW', '2018-01-26 01:05:01', '2018-01-26 01:05:01'),
(408, 4, 'aiVheclIV8RMZL6ZMbi0Dg04vjfucSZP', '2018-01-26 01:05:31', '2018-01-26 01:05:31'),
(409, 1, 'gUdW9qbl64egCPRWtavTK9wnexEo3keM', '2018-01-26 01:08:27', '2018-01-26 01:08:27'),
(410, 4, '3HSzUQI78C96yV5DRt6jGX33bdYCK9fb', '2018-01-26 01:43:11', '2018-01-26 01:43:11'),
(411, 4, 'tOlFF3JRWPtyXMuVCeaaMiHjBd2elRJF', '2018-01-26 01:44:07', '2018-01-26 01:44:07'),
(412, 4, 'NscMqRLmkV3IOWMf6RhfVuJbkL8xgsDC', '2018-01-26 01:46:45', '2018-01-26 01:46:45'),
(414, 6, 'wgJCXkC4Mn1V5f0YC9lp8bPKDt85kGtq', '2018-01-26 02:25:04', '2018-01-26 02:25:04'),
(416, 6, 'zSKba5kTj8Qr4ojFsxLqGI7xLuD4q0WR', '2018-01-26 02:30:32', '2018-01-26 02:30:32'),
(417, 6, 'rzG8JBGeT8fiapZ9DtD2uip0lQJwh5q2', '2018-01-26 02:37:18', '2018-01-26 02:37:18'),
(419, 1, 'Sw9M1Lswoukl6vcgMxoFzXvaAtMQCxAA', '2018-01-26 02:57:09', '2018-01-26 02:57:09'),
(420, 1, 'uUOUyXWyeFziFHkxz8h4bDzxhywQ37Si', '2018-01-26 02:57:48', '2018-01-26 02:57:48'),
(421, 1, 'MbKhVbGfhtxwZPPVgtHxdstVXuLeAaiU', '2018-01-26 02:58:29', '2018-01-26 02:58:29'),
(422, 1, 'wJ73tjH6p3w5MYYe7n21fOiCeA3QZfKb', '2018-01-26 02:58:29', '2018-01-26 02:58:29'),
(423, 1, 'VnxOGigvNVkdiHwI3uvstUftvZRW8oBI', '2018-01-26 02:58:36', '2018-01-26 02:58:36'),
(425, 6, 'J0ifpUcLW0NOdbzz7ewLRHG9BpBcOrRA', '2018-01-26 03:17:02', '2018-01-26 03:17:02'),
(427, 6, 'balWgkJAiveVZzQfMycjeIUYgqNmLW3y', '2018-01-26 03:35:38', '2018-01-26 03:35:38'),
(429, 6, 'UyB9F0vWGHpwS1r9avhYxJizwU4HVIwM', '2018-01-26 03:39:37', '2018-01-26 03:39:37'),
(431, 6, 'qfkVlp3dp4QXymKAkS2PfMQCdIeFHQOx', '2018-01-26 04:32:49', '2018-01-26 04:32:49'),
(433, 1, 'A3z4mzsQPa7TSS1rthS9qcXBXGZRHvME', '2018-01-28 09:36:02', '2018-01-28 09:36:02'),
(434, 1, 'fAPFbxNuoTiKlDhdRh4hZPCArPfnVG4h', '2018-01-28 09:36:02', '2018-01-28 09:36:02'),
(439, 1, '0KG2CDdHiNeVtq5WaMwsrvsHxWeLiY9E', '2018-01-28 09:59:33', '2018-01-28 09:59:33'),
(441, 1, 'coUpXV4oip1EFQd6L1wHB22aEgmD85MB', '2018-01-28 10:02:44', '2018-01-28 10:02:44'),
(442, 1, 'qxtyJQgQjE7IdV5pnazmZdm0VB1dGvJn', '2018-01-28 10:02:44', '2018-01-28 10:02:44'),
(443, 1, 'eBajDKsoIEBHqQFXz0BKLjJ9nJHtELsK', '2018-01-28 18:19:52', '2018-01-28 18:19:52'),
(444, 1, 'l9baDmYe0AnLN5Gle9ep2sE7cHEVOnr5', '2018-01-28 18:19:52', '2018-01-28 18:19:52'),
(447, 8, 'GmZMlufC8X5lo3RzA5gsyz2kXYwWvwQF', '2018-01-28 20:45:36', '2018-01-28 20:45:36'),
(448, 8, 'PPGJaXq6NaHLG1dnSP9FOkjzFSdKqvvI', '2018-01-28 21:38:01', '2018-01-28 21:38:01'),
(449, 1, 'vBzzq1RtNsCmGiczUJLFsHSyNzTTubXg', '2018-01-28 21:38:13', '2018-01-28 21:38:13'),
(451, 1, 'B3WzQ8UpMARDoY28vEkB7erfEEpHmLT1', '2018-01-28 21:38:37', '2018-01-28 21:38:37'),
(454, 8, 'tn7HvCBoyGphTHqjxPl0d3fJ3TWVRmTi', '2018-01-29 00:39:35', '2018-01-29 00:39:35'),
(457, 1, 'oo71n7ghA1RolYX2RzzeXwiTJ4KcV6zr', '2018-01-29 18:33:51', '2018-01-29 18:33:51'),
(458, 8, 'jfRtZvsf76QuiNUNY0sgWSA0SbX0YmBR', '2018-01-30 01:41:20', '2018-01-30 01:41:20'),
(460, 1, 'V2vGTjxoDwMXXVvXTCCsodx2oqNRBswK', '2018-01-31 00:07:51', '2018-01-31 00:07:51'),
(461, 1, 'WXfdX3IbIO2N4pHvxeElybt2HWjDzpsZ', '2018-01-31 00:07:51', '2018-01-31 00:07:51'),
(462, 1, 'zWSf8uHGNVGZn8HsVpCc4iowpPHSBqvU', '2018-01-31 09:19:53', '2018-01-31 09:19:53'),
(464, 8, 'ajfSvynTDfObqdqWFVTaN52EkMP1AUNJ', '2018-01-31 10:29:33', '2018-01-31 10:29:33'),
(465, 8, 'ag2Euhwpe5LXZvoQ1FsRXSH2yo0EHwsm', '2018-01-31 10:35:49', '2018-01-31 10:35:49'),
(467, 8, 'yR8tHjT4HKlrVJLADJ5LykJbP27czCKC', '2018-01-31 10:38:45', '2018-01-31 10:38:45'),
(468, 1, 'gJnB66CrVq6a8Mo6GhtYiOtLZhZ1LTMd', '2018-01-31 10:50:07', '2018-01-31 10:50:07'),
(475, 1, 'L7DcvNPiOQIUjCUATn61Y2sh3g3R2k49', '2018-01-31 19:35:25', '2018-01-31 19:35:25'),
(476, 1, 'QK86h3fyZTBFMRUhuP0ZKm1Wq4kzxPbS', '2018-01-31 19:35:25', '2018-01-31 19:35:25'),
(478, 1, 'VqoYkwd6LBv1rVWPEtIMR05InmYOuszG', '2018-01-31 19:55:02', '2018-01-31 19:55:02'),
(479, 1, 'JztvQ0vdnItZtqSiZD0Fi6NEK6c5PjZc', '2018-01-31 19:55:02', '2018-01-31 19:55:02'),
(481, 8, 'zX2GBFJB6Jpcz8jaXScc8XmWSgARW6y1', '2018-02-01 01:42:35', '2018-02-01 01:42:35'),
(482, 8, 'JWqpm7p61IXddy2YyuMkzHTdg7OWwVdL', '2018-02-01 01:50:31', '2018-02-01 01:50:31'),
(483, 1, 'Ck89j1QoAOeoNZvhYi5wPRW4nTm0C1dq', '2018-02-01 02:29:04', '2018-02-01 02:29:04'),
(486, 1, 'AKrOzoCvVttxLIVRMnTD6GPbj2iWGwvK', '2018-02-01 02:56:37', '2018-02-01 02:56:37'),
(487, 1, 'BaciCQSFrRR68rCmWlXSBTzmdHd27uiN', '2018-02-01 02:56:37', '2018-02-01 02:56:37'),
(488, 1, 'KGY6WVGRXBb3UJWz8YnDSw8hXGgzgkA6', '2018-02-01 11:35:24', '2018-02-01 11:35:24'),
(489, 1, '6WdgCEIxtViQrSWjU3UK9HL7wyZ34TUX', '2018-02-01 11:35:24', '2018-02-01 11:35:24'),
(490, 1, 'SfQrjxzVWC8XrSnz8yWht0t3Q8UQdOQr', '2018-02-01 18:27:36', '2018-02-01 18:27:36'),
(494, 1, 'RjNhUlg5noCoWG1eUNo1StHO874EkDvu', '2018-02-01 19:03:40', '2018-02-01 19:03:40'),
(497, 1, 'cESLyplJNgtAmPpMwURnw68ZWEV39PK2', '2018-02-01 19:42:32', '2018-02-01 19:42:32'),
(499, 8, 'NtMOofbv1v5rH5JB3OUHnsrFrF271Tzi', '2018-02-01 20:49:06', '2018-02-01 20:49:06'),
(500, 1, 'wcFo02JafGaHPsM64DKM6t3jA5wTrYjF', '2018-02-01 20:56:50', '2018-02-01 20:56:50'),
(502, 1, 'fGUtMqDBI2ZARFPFBhlaxnCkzrm7UodL', '2018-02-01 20:57:08', '2018-02-01 20:57:08'),
(504, 8, 'KfXSL3FN1hK8b6QT9LdmouyS37T0qqHB', '2018-02-01 20:57:36', '2018-02-01 20:57:36'),
(505, 1, '8Iv9LY8GOJZd1WTl1I5Wz01lx1KzdZWT', '2018-02-01 20:58:09', '2018-02-01 20:58:09'),
(507, 1, 'w9M0kSWQtdQD7zD6stbK63JUbTj1u058', '2018-02-01 20:58:17', '2018-02-01 20:58:17'),
(510, 8, 'NJ76oLl9RoWbXTJShfkd00cpuQZK5zr5', '2018-02-01 21:37:57', '2018-02-01 21:37:57'),
(511, 1, 'jgz8uBUFbY3MSxPOXp7bqA0knGoU5zi7', '2018-02-01 21:37:59', '2018-02-01 21:37:59'),
(514, 8, 'JsQzqbxIGhNuS6SeJ4y8eCnhSDJaeL3s', '2018-02-01 23:56:53', '2018-02-01 23:56:53'),
(515, 1, 'r3gBMpKSI53eQpXqydREPc6oSjC06OUB', '2018-02-01 23:56:56', '2018-02-01 23:56:56'),
(518, 1, 'QoyBvVRHUwmgnGPnOcyUXU4YqPRqMZVe', '2018-02-02 00:01:51', '2018-02-02 00:01:51'),
(521, 1, '0SWAzz5NkBMas3g7T6GC34L38vm83epY', '2018-02-02 00:19:04', '2018-02-02 00:19:04'),
(524, 1, 'MQuKcCFJhtuKynkQkFHxyZBLIy8Ivd3r', '2018-02-02 00:24:05', '2018-02-02 00:24:05'),
(526, 1, '3DniRRSZFO1aYX6cCNqgyiL0OJqpfEVf', '2018-02-02 01:06:18', '2018-02-02 01:06:18'),
(528, 1, 'OfRdoNYhFL3afKEYmg9oWZjtuhANsBfv', '2018-02-02 01:44:35', '2018-02-02 01:44:35'),
(529, 1, 'MlR5175cwkutGCxMpXuVrhgCzUgFIt9A', '2018-02-02 01:44:35', '2018-02-02 01:44:35'),
(530, 8, 'ipiaaYYS8qIo8iSdqnZ6VdkRKq1iyooC', '2018-02-02 09:02:53', '2018-02-02 09:02:53'),
(531, 1, 'wSD7DupM92LgniN8nQQvue0JvXYrEUwC', '2018-02-02 10:18:45', '2018-02-02 10:18:45'),
(532, 1, 'X2NpDhYEcKGWnyoBxRkMG0nasltzUZq4', '2018-02-02 10:18:45', '2018-02-02 10:18:45'),
(533, 1, 'HdLRvWB8aWY9gaFouz9JVIZii2eGcpPp', '2018-02-02 19:05:37', '2018-02-02 19:05:37'),
(535, 1, 'ot4ul9MDUpNjh3avRZwfDQhckk7zNpNC', '2018-02-02 19:07:26', '2018-02-02 19:07:26'),
(536, 1, 'QMzisn3xBXMMAegjFxwbyYlkU2opUFRz', '2018-02-02 19:07:26', '2018-02-02 19:07:26'),
(538, 8, 'ubMneyA1o1wIPK0UHx6I8WuhTRJlYHkP', '2018-02-02 21:16:54', '2018-02-02 21:16:54'),
(539, 8, 'qGTddyiGKSzM0wHVkenVijba0gtvLqOt', '2018-02-03 04:53:58', '2018-02-03 04:53:58'),
(541, 8, 'Nwn0yVO5SlhBd9eY4Z46SbZ1gEPi5IEr', '2018-02-03 09:41:10', '2018-02-03 09:41:10'),
(543, 8, '1aF9GIC1ZWN63Q3hyjgcI91MVJfM5syC', '2018-02-03 13:40:10', '2018-02-03 13:40:10'),
(544, 8, 'Ac5aAgvHGYcsowe9TvjwCmQ4Pp1qNc5P', '2018-02-03 22:01:23', '2018-02-03 22:01:23'),
(546, 1, '2DXLdK0k8pyyhkft4O1N31OHN3qVoZYv', '2018-02-04 06:13:43', '2018-02-04 06:13:43'),
(551, 1, '8Vt8s6xqOFyHpiqYk2QykhWXRenYyUJW', '2018-02-04 08:07:49', '2018-02-04 08:07:49'),
(557, 8, 'COuQ7uk7ZUXmIXoa9x5b5d0WhvRAniBn', '2018-02-04 12:33:20', '2018-02-04 12:33:20'),
(558, 8, 'qLTc2Kf6n28q8us3IMOWD4xzBoQMtVTk', '2018-02-04 18:52:19', '2018-02-04 18:52:19'),
(559, 1, 'OrzHOZ6ZZKJqxkZ0uuh7RKPL9XURJpXd', '2018-02-04 22:21:08', '2018-02-04 22:21:08'),
(561, 8, '1PJvdJesyc0mWbqOamG4hCblgkwH5qgI', '2018-02-04 22:47:36', '2018-02-04 22:47:36'),
(562, 8, 'tVXO1RdjrqL2sGvzHXidbAPJIamEnWxw', '2018-02-04 22:53:02', '2018-02-04 22:53:02'),
(563, 1, 'UdTjDEseGz6vBOmnq318N4Y4raiVQBrB', '2018-02-04 22:53:04', '2018-02-04 22:53:04'),
(565, 8, 'oT80knQNx6JAaH80HdUeHaCsf7HHsuwY', '2018-02-05 01:50:20', '2018-02-05 01:50:20'),
(566, 1, 'vaD9xZckMlXmH8R7l7TyJWgOZD5do7Uc', '2018-02-05 01:50:37', '2018-02-05 01:50:37'),
(568, 1, 'EOGfrIYfC9vcvYfvXURtTeVVrPmeOoXJ', '2018-02-05 01:52:32', '2018-02-05 01:52:32'),
(570, 8, 'peDpe1IKfhu56XA0DLJe8OSCk0zKJqvj', '2018-02-05 03:05:08', '2018-02-05 03:05:08'),
(571, 1, 'UINT91dzThurVugQu61SJytD5X3LmyZH', '2018-02-05 03:16:48', '2018-02-05 03:16:48'),
(572, 1, 'UM3IJ8WRYFkhphJOrwfErOH0523YDVuS', '2018-02-05 19:49:28', '2018-02-05 19:49:28'),
(574, 8, 'uaRVCHac02KAjEWxDiFmDPas2xYNUqAX', '2018-02-05 20:04:45', '2018-02-05 20:04:45'),
(579, 1, 'tnf6HppP4rV0x45qbHoz4BGfoD47gWbI', '2018-02-06 01:01:51', '2018-02-06 01:01:51'),
(580, 1, 'FZe4gTDXRLFyUZ3A17o0qnX95A1OSwer', '2018-02-06 01:01:51', '2018-02-06 01:01:51'),
(583, 8, 'tqm9bi8D3RLI8zOnKZsKAn7a7cJKmj3Y', '2018-02-06 03:00:07', '2018-02-06 03:00:07'),
(584, 1, '8IZWzK4wl0Xk01HPV8Vh1koOFhdBwZWF', '2018-02-06 19:27:14', '2018-02-06 19:27:14'),
(586, 1, '15ABJfq0cryamDZ5TV6HD9Mba3p0Uyff', '2018-02-06 20:03:27', '2018-02-06 20:03:27'),
(588, 1, '13y4QjFvSXPvYHHfN5YrsJA7kQYlqL9B', '2018-02-06 21:31:19', '2018-02-06 21:31:19'),
(589, 8, '6Lk66es0aaoHBjnWLOiXoEC09UixmRoL', '2018-02-06 22:14:33', '2018-02-06 22:14:33'),
(594, 1, 'LqfDWDEwEXDSaXGuQRMwWzjq77ji3Nly', '2018-02-07 19:10:05', '2018-02-07 19:10:05'),
(595, 1, 'mBU8rnnsiGvHbXSOV09fHj7sT1d1FloX', '2018-02-07 19:10:05', '2018-02-07 19:10:05'),
(603, 1, 'bTaiIxtbyDm1fGgESgMMIRMJB1ARzzfN', '2018-02-08 00:31:00', '2018-02-08 00:31:00'),
(605, 8, 'wxlw1jLv1NJPSyyCrjEihVsS8AkSeKdB', '2018-02-08 01:22:05', '2018-02-08 01:22:05'),
(607, 1, 'OVz8xnhOU8CPRYocJu7VZFnUKbs4F7pU', '2018-02-08 02:00:31', '2018-02-08 02:00:31'),
(608, 1, 'WvVjNtgeRP2EOW2R9aydHr7a0rqYQf8s', '2018-02-08 02:00:31', '2018-02-08 02:00:31'),
(609, 1, 'z3FGmuAL19mXNfrDX7HExsCkTbm8LYb7', '2018-02-20 18:38:21', '2018-02-20 18:38:21'),
(610, 1, '8iIAmLFC5uspsDTI1zQ9gSu25mvwHYXA', '2018-02-20 18:38:21', '2018-02-20 18:38:21'),
(611, 1, 'MFXMdjdHYLiWQo0o1aJfn28uaSrS1GDo', '2018-02-20 23:00:58', '2018-02-20 23:00:58'),
(612, 1, 'a1OKXCZYs0EMwGgaHaW2qJSZaGtsal13', '2018-02-20 23:00:58', '2018-02-20 23:00:58'),
(613, 1, 'q0j01G5VhXCVFUZ0IZ6VsCpEJfRHAWez', '2018-02-21 18:32:21', '2018-02-21 18:32:21'),
(614, 1, 'EY4TszKzR6ghCh9MaMwHAQfr8QepXbBa', '2018-02-21 18:32:21', '2018-02-21 18:32:21'),
(615, 1, '8ZTCNSIt1J9qlpQDK4PH1V0ctML0IMJr', '2018-02-22 00:51:27', '2018-02-22 00:51:27'),
(616, 1, 'nbTuhxZ0PxDipT1kSUpgDZUmFsUkwPsx', '2018-02-22 09:03:38', '2018-02-22 09:03:38'),
(618, 1, 'uKNI6Mvu1ExO7rK09MNvAovaWYHLhTs1', '2018-02-23 01:15:17', '2018-02-23 01:15:17'),
(619, 1, 'FspQxFJhmh85knlMInT4WZDQRixJz71d', '2018-02-23 18:38:12', '2018-02-23 18:38:12'),
(620, 1, 'tjOZJFQR1oDB5LaKTE8Ms8vxLUUKbbBF', '2018-02-23 18:38:12', '2018-02-23 18:38:12'),
(621, 1, 'K3NNN4k9OKUSnvmsj5kK14rq8l39pFmT', '2018-02-23 22:37:19', '2018-02-23 22:37:19'),
(622, 1, '5VdOj9t1SMTOOkxlX3SGJb8qVQ9WoHgM', '2018-02-23 22:37:19', '2018-02-23 22:37:19'),
(623, 1, 'Ul8BpMVjUeWF98UrKmTgSPUtkv9Xic9A', '2018-02-23 22:37:41', '2018-02-23 22:37:41'),
(624, 1, 'qKGsmyQqNwNTYgTG5O9sEJrmibWsYdVD', '2018-02-23 22:37:41', '2018-02-23 22:37:41'),
(625, 1, 'C7VKdFfGrpXWoomUQCmBXO02hcu8fGCO', '2018-02-23 22:39:35', '2018-02-23 22:39:35'),
(626, 1, '220mzZp1oL38PQ2d8VhliYoNo7UxHm67', '2018-02-23 22:39:35', '2018-02-23 22:39:35'),
(627, 1, 'al5sb4g355hIHLH0BIP0ejesi0XPo5Di', '2018-02-25 05:09:49', '2018-02-25 05:09:49'),
(628, 1, 'ZJXzKSM1VX1qqAWf6unOvBqLY9a6Hb6P', '2018-02-25 05:09:49', '2018-02-25 05:09:49'),
(629, 1, 'LhH0SVTSzMCqaqPf4QX0aotZP9v3taog', '2018-02-26 00:25:42', '2018-02-26 00:25:42'),
(630, 1, 'hjLZjKjEArW8ZQelh5p7QqG0vhApKwAo', '2018-02-26 00:25:42', '2018-02-26 00:25:42'),
(631, 1, 'jaftrpAl7wTji0W4Vyb16pkxzoapWsfy', '2018-02-26 01:00:44', '2018-02-26 01:00:44'),
(632, 1, '4XZRRoTxUao1PGjjCxGWXllfR5ruKWfi', '2018-02-26 01:00:44', '2018-02-26 01:00:44'),
(633, 1, 'z20ZCP6ZoaRUfjoiYXYl0VfUDtJpkV7I', '2018-02-26 18:21:19', '2018-02-26 18:21:19'),
(634, 1, 'fYkysaSFydtYce4V0Kqu66HMH98mhsZA', '2018-02-26 18:21:19', '2018-02-26 18:21:19'),
(635, 1, 'NVO6Qedfm9ioOmGBaG0UsueQmLLaMVAC', '2018-02-26 18:26:11', '2018-02-26 18:26:11'),
(636, 1, '3EHuVytNqQxcUc5Xuq08CC1n51YzNSiD', '2018-02-26 18:26:11', '2018-02-26 18:26:11'),
(637, 1, 'c4iIxDaA2K6OiJr0XAW6Tu47VBukfcQf', '2018-02-26 20:13:38', '2018-02-26 20:13:38'),
(638, 1, 'vqXjvCqJe3X1op4zgUqUCudbHjpy28gg', '2018-02-26 20:13:38', '2018-02-26 20:13:38'),
(639, 1, 'NpDrfo1E8XvDjE0mShe5FB97WcO94rn4', '2018-02-27 10:23:41', '2018-02-27 10:23:41'),
(640, 1, 'j587qEvVqx0IehstgvOJTJjUoA8k6N8X', '2018-02-27 10:23:41', '2018-02-27 10:23:41'),
(641, 1, 'PfZXqgOR1v7gA6WrxyxpyWzyrPlgvS0a', '2018-02-27 17:47:18', '2018-02-27 17:47:18'),
(642, 1, 'L5CmFhHsSk6eCz6Cozc8uR4Dpn7umBqd', '2018-02-27 17:47:18', '2018-02-27 17:47:18'),
(643, 1, 'KXjsLxOPGtNy5fY68ahfuMo4OPnNXitK', '2018-02-27 23:48:15', '2018-02-27 23:48:15'),
(644, 1, '7XxjQd4pk2DClfqq1IXry2iSKr6LmLAo', '2018-02-27 23:48:15', '2018-02-27 23:48:15'),
(645, 1, 'JHpWzQbEXMpcG0mQnTEDJw5rlUJITahI', '2018-02-28 01:50:26', '2018-02-28 01:50:26'),
(646, 1, 'HRAVYZBLZl4R5biLhwuavdWyVb43UOUj', '2018-02-28 01:50:26', '2018-02-28 01:50:26'),
(647, 1, 'uH3X4pzxKl9fV4wDwVJ1XZbpt3STpyRm', '2018-02-28 03:37:47', '2018-02-28 03:37:47'),
(648, 1, 'E13QWrFrZqr5PLSyEeYHgsAB25STeClg', '2018-02-28 03:37:47', '2018-02-28 03:37:47'),
(649, 1, 'dRkAQr52wD2puNKCRKvxA3IBwyv1C9NN', '2018-02-28 09:52:00', '2018-02-28 09:52:00'),
(650, 1, 'U4hRYTbezKc2z52vHILaLIlYizMtow8i', '2018-02-28 09:52:00', '2018-02-28 09:52:00'),
(651, 1, 'byhwFx5G9AOvJN6SyMRcv4lbyTeqtST2', '2018-02-28 19:44:49', '2018-02-28 19:44:49'),
(652, 1, '0THJSAseoUTuZ4cCGCbSOIHXTp1Q9YdI', '2018-02-28 19:44:49', '2018-02-28 19:44:49'),
(653, 1, 'GZIPErT4Bapcw5CNBQuRCr374lM8BSHm', '2018-02-28 22:07:57', '2018-02-28 22:07:57'),
(654, 1, 'CZhMa7iBCpFSEOxJpRSfLcl9qYbZ7WDN', '2018-02-28 22:07:57', '2018-02-28 22:07:57'),
(655, 1, 'srwsy5CAnIAzexTEEnYNnsBhZhfUBC6j', '2018-02-28 23:53:56', '2018-02-28 23:53:56'),
(657, 1, 'NrZQdcOBNuOR3iW97MgzDVVYdR4hWrts', '2018-02-28 23:54:01', '2018-02-28 23:54:01'),
(658, 1, 'Th102BYfA2BEu65BdXRqqucrfkKHIjTu', '2018-02-28 23:54:01', '2018-02-28 23:54:01'),
(659, 1, 'epmwUt2eEbBAlPUsRvLYye9UXrDbWRsY', '2018-03-01 20:36:24', '2018-03-01 20:36:24'),
(660, 1, 'IBPtMs86N9ZxYAokjAo5IZVsifLYULe0', '2018-03-01 20:36:24', '2018-03-01 20:36:24'),
(661, 1, 'ah6aFi5zxKdz1F8cxjJ1pZnBnHyNZKOc', '2018-03-01 21:05:27', '2018-03-01 21:05:27'),
(662, 1, '6XwoqEwOBL1VASKFFs38FyUX5qgQpyQD', '2018-03-01 21:05:27', '2018-03-01 21:05:27'),
(663, 1, 'fYpXZppwD1leYB1S9D3O2DKE0rZqMVil', '2018-03-02 03:27:22', '2018-03-02 03:27:22'),
(664, 1, 'C5bfu1teMTdMwuwKXc9DsSSr65V4prxu', '2018-03-02 03:27:22', '2018-03-02 03:27:22'),
(665, 1, '18FtXw4eCoEk9aYC4KKeSujj3Skeeg1j', '2018-03-02 07:41:14', '2018-03-02 07:41:14'),
(666, 1, 'gd6maf8zgzzu2O0mHXqHBn9IY1Ovvl0F', '2018-03-02 07:41:14', '2018-03-02 07:41:14'),
(667, 1, 'K3emBbgwwtLt5ojXcvk8Q0tP3VqLefsd', '2018-03-02 11:23:06', '2018-03-02 11:23:06'),
(668, 1, 'P6tdNZSePBmSorun8ODixsb0VDybzRdU', '2018-03-02 11:23:06', '2018-03-02 11:23:06'),
(669, 1, 'dsnZFyjdEunjpPlzdUWupZUThhoLRUhj', '2018-03-02 18:49:24', '2018-03-02 18:49:24'),
(670, 1, 'R1KiyE1oFR7SaY9COquFyViCysmD7GeT', '2018-03-02 18:49:24', '2018-03-02 18:49:24'),
(671, 1, 'iJo0kENKMWSbmbhpqurfsGt1fxhOq8rb', '2018-03-02 20:42:13', '2018-03-02 20:42:13'),
(672, 1, 'ciIiJWF6jOPdWQvcRU0AkOugGLYgOMvC', '2018-03-02 20:42:13', '2018-03-02 20:42:13'),
(673, 1, 'HLvUMZxuVNmkyFrisdoWuDDA801m5sm3', '2018-03-04 05:44:09', '2018-03-04 05:44:09'),
(674, 1, 'HeTLfvd9zkuaeXwksD615gyq72TLtHNs', '2018-03-04 05:44:09', '2018-03-04 05:44:09'),
(675, 1, 'sbC8E1Kk4ot47cgDWJbeSvkF9s0Qqp2g', '2018-03-05 00:00:13', '2018-03-05 00:00:13'),
(676, 1, 'i25E6x2AMWgQaPCYtX56nUNDScxRKV6t', '2018-03-05 00:00:13', '2018-03-05 00:00:13'),
(677, 1, 'xn87wi5uUQDn2uSTmRsJxs0CXzEjAVv4', '2018-03-07 02:54:18', '2018-03-07 02:54:18'),
(678, 1, 'KSUT34nlKI6L8PGyv0cTrbv4I3DYrEi7', '2018-03-07 02:54:18', '2018-03-07 02:54:18'),
(679, 1, 'B8XzrZooV8fU2utG3I3HVqIsJGb8BMsg', '2018-03-07 05:25:09', '2018-03-07 05:25:09'),
(680, 1, 'zWZ5YGezeMIbSJYc0UBVW3DQW6FpmFUV', '2018-03-07 05:25:09', '2018-03-07 05:25:09'),
(681, 1, 'xtqAAbkXcYwpA4BRcU6egvPXRW7NG0L1', '2018-03-07 10:46:09', '2018-03-07 10:46:09'),
(682, 1, 'TxbrsGteK8j72P79MFrD3Z44I4T192Hk', '2018-03-07 10:46:09', '2018-03-07 10:46:09'),
(683, 1, 'mRHjqjwRSX3p7AqLPzILk4zi31W8gI2O', '2018-03-07 13:38:35', '2018-03-07 13:38:35'),
(684, 1, 'xGBGJTbe1e0umQQZjLbpAxVZmKvLubGB', '2018-03-07 13:38:35', '2018-03-07 13:38:35'),
(685, 1, '0gO2pf6VOD5s8pbNYWTpN12mupJboZPU', '2018-03-07 13:56:58', '2018-03-07 13:56:58'),
(686, 1, 'l0V6YuGv4QSMkyFYh5u4smIxHp9bKMfD', '2018-03-07 13:56:58', '2018-03-07 13:56:58'),
(687, 1, 'DdH0YXntFHnDzdAcYtTHLXNOSrD9Nayi', '2018-03-08 00:35:08', '2018-03-08 00:35:08'),
(688, 1, 'WVP0SgXfTfRXMtDKn5yCzhniy6ITsYXn', '2018-03-08 00:35:08', '2018-03-08 00:35:08'),
(689, 1, 'dtPekV4MsbO8mfegEY5HQXncXvVAAicq', '2018-03-08 02:55:06', '2018-03-08 02:55:06'),
(690, 1, '44nWxEUwwTD8CGzOzjoutv1Yyt34Xi42', '2018-03-08 02:55:06', '2018-03-08 02:55:06'),
(691, 1, 'zW258naq0j0KTXkI9f9n0iJDB5UMviZa', '2018-03-09 01:31:57', '2018-03-09 01:31:57'),
(692, 1, 'c7937k8NYcXK3j1Hr96LJQhDxaK00XwP', '2018-03-09 01:31:57', '2018-03-09 01:31:57'),
(693, 1, '5R8A7OodILq54RYQ0TC5tKrhigfTfHFP', '2018-03-09 23:03:00', '2018-03-09 23:03:00'),
(695, 1, 'bLqkWAb61eAbB2GzWSzacoZKF7JVcqmx', '2018-03-10 00:21:45', '2018-03-10 00:21:45'),
(696, 1, 'CmDgjN9sv1zEHPMha1xbZqrNvxr1u6fU', '2018-03-10 00:21:45', '2018-03-10 00:21:45'),
(697, 1, '70LhgQmbM3ePDyhUk0m8clPUuOfeVlax', '2018-03-12 01:26:52', '2018-03-12 01:26:52'),
(698, 1, 'uXA1S7f3Fv218HhK0KYpx6ohND0LVaBG', '2018-03-12 01:26:52', '2018-03-12 01:26:52'),
(699, 1, 'Z5UGllqTBbuZdy2FGBpB7AxVlnPycCxk', '2018-03-12 04:25:56', '2018-03-12 04:25:56'),
(700, 1, 'uLr0gFAcWegAkejxnIg572CNftPlQEfj', '2018-03-12 04:25:56', '2018-03-12 04:25:56'),
(701, 1, 'o6eHDvnHWdn1MqyMLZeQ0s4qSbyH5YCh', '2018-03-12 05:14:27', '2018-03-12 05:14:27'),
(702, 1, 'iwckNXMkOnCVQdj1PNngM1edLxTuMKNK', '2018-03-12 05:14:27', '2018-03-12 05:14:27'),
(703, 1, 'z3CFbndaFo63KgiQjPuV6jwh6OMMmUNr', '2018-03-12 18:56:01', '2018-03-12 18:56:01'),
(704, 1, 'yp1HVdtxNYSITndkMjIMOcj61cIWS3uK', '2018-03-12 18:56:01', '2018-03-12 18:56:01'),
(705, 1, '0o5TH3GwFbGw4I0IUH6zxj05N5YFezWb', '2018-03-12 19:37:48', '2018-03-12 19:37:48'),
(706, 1, 'NhrIwDeXhvPxfvcTYHwSdKe0Nmc2Orv2', '2018-03-12 19:37:48', '2018-03-12 19:37:48'),
(707, 1, 'vUwqO2s9eU92ka8XBcjzgOyrntdNvecG', '2018-03-12 19:50:39', '2018-03-12 19:50:39'),
(708, 1, 'S626mJT9dxa71O7kPIzcyY6MEk1P4K2O', '2018-03-12 19:50:39', '2018-03-12 19:50:39'),
(709, 1, 'mcQtwdrvHWpOxVzTrPExUs9cUBDh4etX', '2018-03-12 20:48:08', '2018-03-12 20:48:08'),
(710, 1, '4jJWxP2m43APqDQAvJGELgjb3tihWGVj', '2018-03-12 20:48:08', '2018-03-12 20:48:08'),
(711, 1, 'IKNd6lpDgpH58dzdf48yUPjT7NNNFuDn', '2018-03-12 20:49:36', '2018-03-12 20:49:36'),
(712, 1, 'VRMuqJzbghv7aLQLD2Ynx6oPimNZ9sdk', '2018-03-12 20:49:36', '2018-03-12 20:49:36'),
(713, 1, 'OCKS44CPwpsLS0qNsJeaHp3uxztND167', '2018-03-12 21:34:29', '2018-03-12 21:34:29'),
(714, 1, '9LNeEsiwSNIRsxAAZGkXrG21eywNwBcE', '2018-03-12 21:34:29', '2018-03-12 21:34:29'),
(715, 1, 'paKxxM0eS68pn4rVkrUi18tfut58edsf', '2018-03-12 22:14:56', '2018-03-12 22:14:56'),
(716, 1, 'SF352JEZsAstv41mIlJlzpfAibtVd4tf', '2018-03-12 22:14:56', '2018-03-12 22:14:56'),
(717, 1, '4JdD49wrb0V4sHtNxEAK0gfAI8iiUDNV', '2018-03-13 00:46:58', '2018-03-13 00:46:58'),
(718, 1, '7fkvj5IctcBAjpLNB7oW5rQLXd0uac3t', '2018-03-13 00:46:58', '2018-03-13 00:46:58'),
(719, 1, 'XP510DrDG5PD6bREHiswReySnl4djsIN', '2018-03-13 01:14:42', '2018-03-13 01:14:42'),
(720, 1, 'PjGZkgvejGQMipZZ1BI0Udfqe0akmhQi', '2018-03-13 01:14:42', '2018-03-13 01:14:42'),
(721, 1, 'WhjyxT93LFWPKOG8x4bSwnrwleuIRHNk', '2018-03-13 04:06:37', '2018-03-13 04:06:37'),
(722, 1, 'AUeHtgYnHpX9VPVAQIc61g8c4OCPf65g', '2018-03-13 04:06:37', '2018-03-13 04:06:37'),
(723, 1, '4AIThW03xeUzORzL1RagV6I1OIQIri29', '2018-03-13 18:39:53', '2018-03-13 18:39:53'),
(724, 1, 'VfXIErsQMYW6hD2dQd3jkv7GJauG7OqQ', '2018-03-13 18:39:53', '2018-03-13 18:39:53'),
(725, 12, 'rBFCZxXwvmbkGO8jinaJglOpkT4wTNIg', '2018-03-13 18:44:05', '2018-03-13 18:44:05'),
(726, 12, 'pwnEsMxBLTWNOx7rPvJLHcac1SETvd4h', '2018-03-13 18:44:05', '2018-03-13 18:44:05'),
(727, 1, 'GDSnYc9pMm7sukbMmrXDAY2XH0l6gBGf', '2018-03-13 18:44:35', '2018-03-13 18:44:35'),
(728, 1, 'gnbnHXOAFuAZaIWJoKu8J8In6MoaiFfx', '2018-03-13 18:44:35', '2018-03-13 18:44:35'),
(729, 12, 'p7AQU0WYA5d5BP9GeBbxfGLqXgHg1VwU', '2018-03-13 18:44:58', '2018-03-13 18:44:58'),
(730, 12, 'Qws70qug0cXVd2BPBH6PYBxavmW5X382', '2018-03-13 18:44:58', '2018-03-13 18:44:58'),
(731, 1, 'LffILsb9qh7cY16GlPOxouaFevpzbm8G', '2018-03-13 19:07:03', '2018-03-13 19:07:03'),
(732, 1, 'rmOc6IM1qu4Fas56uNFunZBGKmtY73KU', '2018-03-13 19:07:04', '2018-03-13 19:07:04'),
(733, 1, 'OAernJS8fBlY8gIqiHqF1M3ya3wipNQx', '2018-03-13 19:07:12', '2018-03-13 19:07:12'),
(734, 1, 'BaZkrjj1WxCbzDoQuLiSugEZuCTklT7w', '2018-03-13 19:07:12', '2018-03-13 19:07:12'),
(735, 1, 'DNR0vm0lGETTtM8mKVnv40s2kvgXri3K', '2018-03-13 19:44:31', '2018-03-13 19:44:31'),
(736, 1, 'zgueCViTDBhjrWZRbAokY51R9Vw5CFRW', '2018-03-13 19:44:31', '2018-03-13 19:44:31'),
(737, 14, 'K6tw6t7Evn9GcXybQeDw6A3PswlvHr2r', '2018-03-13 19:46:20', '2018-03-13 19:46:20'),
(738, 14, 'sj8dKug5hlUjX1e5Wv8tOxyDycNNttzE', '2018-03-13 19:46:20', '2018-03-13 19:46:20'),
(739, 14, 'LcH5SlmiKC5pVEK1f3deU52nD0nhsbKc', '2018-03-13 19:48:14', '2018-03-13 19:48:14'),
(740, 14, 'bfAXcJBUpQPHK4WMqkg5WRzRgcyFDH6A', '2018-03-13 19:48:14', '2018-03-13 19:48:14'),
(741, 1, 'cNgo5DY7yg6fvZWfUiUR9Qdn0AJLcgon', '2018-03-13 19:48:46', '2018-03-13 19:48:46'),
(743, 15, 'kc4mJCfW8b1VgNukNXC3jMxSTjWiWeW3', '2018-03-13 19:51:13', '2018-03-13 19:51:13'),
(744, 15, 'liAHdi51M6DDNTpLF77kYkkGlw1jQAvO', '2018-03-13 19:51:13', '2018-03-13 19:51:13'),
(745, 14, '6LXqipS7esU82Dqek9w3sLj2j9uyeTss', '2018-03-13 19:52:48', '2018-03-13 19:52:48'),
(746, 14, 'rz95L28UCDVZSoxFZ5UmQ5Kzu0SRbrd4', '2018-03-13 19:52:48', '2018-03-13 19:52:48'),
(747, 14, 'fqMCgW9PbUfqEwMHXSi2iMNWSEqe5hDq', '2018-03-13 19:53:39', '2018-03-13 19:53:39'),
(749, 1, 'g653FIPyACmVjJ0n6ApAP0BCLZob6hli', '2018-03-13 19:57:02', '2018-03-13 19:57:02'),
(750, 1, '0gE3V33LpGkYUhKRsewm2Spe5fjJJzbq', '2018-03-13 19:57:02', '2018-03-13 19:57:02'),
(751, 14, 'sIL8bqixgLkVrSJoNHCrAmzuttCT1zfg', '2018-03-13 20:44:48', '2018-03-13 20:44:48'),
(752, 14, 'GBoIaul3HYHxi8dTA0j8Ggy0qKQylkIm', '2018-03-13 20:44:48', '2018-03-13 20:44:48'),
(753, 1, '0wF9kIYt2oObmX8tyPOackmkAoQfPXTL', '2018-03-13 20:49:04', '2018-03-13 20:49:04'),
(754, 1, '3O6zhLbgC05RgNMqp9qxG4fpIepK4Ij3', '2018-03-13 20:49:04', '2018-03-13 20:49:04'),
(755, 1, 'ZVh9hRNiVl3XiQR9xtoRdVnkLHbyl13n', '2018-03-13 21:36:05', '2018-03-13 21:36:05'),
(756, 1, 'PyGPsqXGrWJGhyU5S6oSI7wNvrcwv2CL', '2018-03-13 21:36:05', '2018-03-13 21:36:05'),
(757, 15, 'mdI2P0htiB1XTNy0jEXJ1BqMBqfBQyPJ', '2018-03-13 21:42:34', '2018-03-13 21:42:34'),
(759, 1, 'X91z4SAAJPqnPhQQWJucuktFl1d01rLq', '2018-03-13 21:43:06', '2018-03-13 21:43:06'),
(760, 1, 'zV1rYcBgsjx148qNaAEcBIX3kdvudS2A', '2018-03-13 21:43:06', '2018-03-13 21:43:06'),
(761, 1, 'nGjHiMvoCrcMWshE87TcyTISYiA7BpK8', '2018-03-15 00:56:28', '2018-03-15 00:56:28'),
(762, 1, '5WmAG8o7ME5dJorZvxAyaigcIZUZ4UYF', '2018-03-15 00:56:28', '2018-03-15 00:56:28'),
(763, 1, 'rZ0Vp4PWAauBqhb4C0S7vCfpMRsSvl6c', '2018-03-18 18:54:01', '2018-03-18 18:54:01'),
(764, 1, '1w3KzwIgJE8OLlx3xanGKsJxjdcmyXbM', '2018-03-18 18:54:01', '2018-03-18 18:54:01'),
(765, 1, 'VhVlDqMJubCHEPePi1n772dekLVbRn15', '2018-03-18 20:21:11', '2018-03-18 20:21:11'),
(766, 1, 'wxCSpkojictK2Hvbh5Y5KQkXDim7FpV6', '2018-03-18 20:21:11', '2018-03-18 20:21:11'),
(767, 1, 'dSzmO4oZqiaL4Etg7Ok1T2rXnKw2rg8A', '2018-03-18 20:39:50', '2018-03-18 20:39:50'),
(768, 1, 'bl0yxr9SZz4jOhL1e3h0mmf4Wx5YhSJW', '2018-03-18 20:39:50', '2018-03-18 20:39:50'),
(769, 16, '01f8wN2ZmkVKMBgP5BoRG2MV5x1CmW3K', '2018-03-19 00:20:56', '2018-03-19 00:20:56'),
(770, 16, 'aM9920ka8ubXxTqvTm4uNxiXhPrzWRWx', '2018-03-19 00:20:56', '2018-03-19 00:20:56'),
(771, 1, 'A8Up6kY4pvbozwSKehn1ddzOHefoIlrj', '2018-03-19 01:12:38', '2018-03-19 01:12:38'),
(772, 1, '361U4P9qpDzYle3zIniqiAtukIbuvSqx', '2018-03-19 01:12:38', '2018-03-19 01:12:38'),
(773, 1, 'zAXxpnoUcF08gAU4UeYLBgef9uYZptk2', '2018-03-19 01:28:39', '2018-03-19 01:28:39'),
(774, 1, 'pSnAoCsRyprvfzfmiLYY7XkNEJXvjVnM', '2018-03-19 01:28:39', '2018-03-19 01:28:39'),
(775, 16, 'MxVtDzSwdxDkDKfnPTqYCskdw7OUsblY', '2018-03-19 03:12:44', '2018-03-19 03:12:44'),
(776, 16, 'A6xfoHOxAbLOdcJr9Wn08Oq02cgZX2s6', '2018-03-19 03:12:44', '2018-03-19 03:12:44'),
(777, 16, 'qYLeHVz7RWmKpUM22gNuwp3wz1VwtiAS', '2018-03-19 03:12:45', '2018-03-19 03:12:45'),
(778, 16, 'lvnrZgBTdg6Zo3vpXxZF9GwriZ8L3NYa', '2018-03-19 03:12:45', '2018-03-19 03:12:45'),
(779, 1, 'GG35Q0kQ2Fe9i3sbofYDGteABiXLrX0c', '2018-03-19 03:28:32', '2018-03-19 03:28:32'),
(780, 1, 'gHRCovhTkV3b4MzL44DRQIowg58HnLld', '2018-03-19 03:28:32', '2018-03-19 03:28:32'),
(781, 1, 'zrQ1axb0kh2ghSUFpWWEswy5OU4s6G6R', '2018-03-19 03:34:32', '2018-03-19 03:34:32'),
(782, 1, 'AwkpqiKxm8X2wFxmt8xJuEzPycFiVYgm', '2018-03-19 03:34:32', '2018-03-19 03:34:32'),
(783, 16, 'noUhRYeuNtuRE76tcTk4TvWbLV5PVeue', '2018-03-19 03:53:17', '2018-03-19 03:53:17'),
(784, 1, 'ETIUZmJz0Oi7dau7HuudmvyHXPg3wXJ6', '2018-03-19 03:59:05', '2018-03-19 03:59:05'),
(785, 1, 'bSmht48OLuiB46dT6u0o4r4QYnc0lOG3', '2018-03-19 04:07:29', '2018-03-19 04:07:29'),
(786, 1, '8b3uuZqjagUdmxSe0hmdA2mrZ1Qbahcb', '2018-03-19 04:31:08', '2018-03-19 04:31:08'),
(787, 1, 'c11pXNbXi4ze83socfogJUwKzUkBnPVT', '2018-03-19 06:39:09', '2018-03-19 06:39:09'),
(788, 1, 'lMTysJKQXfO7IaEVC5h6J35WcVI4vguR', '2018-03-19 18:55:52', '2018-03-19 18:55:52'),
(789, 1, 'rrSlqgueLGrCcZmXTiC9Cw7jLHOLjWgI', '2018-03-19 20:21:22', '2018-03-19 20:21:22'),
(790, 1, '5fFvQihHLCJR9s1Clg2shCDQA2LdxbaO', '2018-03-19 21:18:56', '2018-03-19 21:18:56'),
(791, 1, 'rgIQTAh1y9Apxn1XeE74h4BXrTSJELka', '2018-03-19 21:43:10', '2018-03-19 21:43:10'),
(792, 1, 'mazlYOdL090B7OkcvPKOc5JDjPZTC3vu', '2018-03-19 22:09:02', '2018-03-19 22:09:02'),
(793, 1, 'nItdoT4bghRRTFkt6ekP6ELt6Q7iL4oj', '2018-03-20 02:19:26', '2018-03-20 02:19:26'),
(794, 1, 'WmA7cIHiFKHVF3HXbYfT6gf7Y58YCZ4w', '2018-03-20 03:46:05', '2018-03-20 03:46:05'),
(795, 1, 'h9IdtJUOoNRL0I97ZXfCKb5aF5rE5Wym', '2018-03-20 08:58:06', '2018-03-20 08:58:06'),
(796, 1, 'G9V6NahLvTy6LUaaDh62bSZT95kdMnaw', '2018-03-20 12:21:29', '2018-03-20 12:21:29'),
(797, 1, 'RMezE5QaASJR8afKG7cO9IyW5jO0tISz', '2018-03-20 13:30:50', '2018-03-20 13:30:50'),
(798, 1, 'XaR7hRK1EwC2Kf7nUFVhOuZy2zUf8ucg', '2018-03-20 18:52:28', '2018-03-20 18:52:28'),
(799, 1, 'Snqh8ivQX4bnFMuMl1yJhz0EA8MzA84V', '2018-03-20 20:02:13', '2018-03-20 20:02:13'),
(800, 1, '7L73nlW04VxorSHPgD2BSZ0gWoIIukji', '2018-03-20 20:13:23', '2018-03-20 20:13:23'),
(801, 1, 'PyXsZmiEkNsZ3AtBPZQYSkRSN9rqsdg7', '2018-03-20 20:34:59', '2018-03-20 20:34:59'),
(802, 1, 'lSmOXzPQu7B3Gsxz8Q6B0PU4nWZ10ety', '2018-03-20 20:35:46', '2018-03-20 20:35:46'),
(803, 1, 'fynhnpWCeQATdD2Qmf8RCyXH02QjCj7P', '2018-03-20 20:50:25', '2018-03-20 20:50:25'),
(804, 1, 'yCW4U2bHSfGFiDIl7z0HXoh1UFPUIeqE', '2018-03-20 20:55:43', '2018-03-20 20:55:43'),
(805, 1, 'JkF4p8tYUP4oN5der79jIWWgFefqU0fI', '2018-03-20 21:09:48', '2018-03-20 21:09:48'),
(806, 1, 'TpAbAiDvu5vRRA3RcuJcRUxArJ7yqdSe', '2018-03-20 21:35:40', '2018-03-20 21:35:40'),
(807, 1, 'Bm3L0cx6AgmmfwosMXedJSYkCrN6Hi5L', '2018-03-21 04:40:14', '2018-03-21 04:40:14'),
(808, 1, 'aMP5vFkW9K3Ohk6BkFn6EJHhqkGuIkvP', '2018-03-21 22:55:29', '2018-03-21 22:55:29'),
(809, 1, 'IsseRvXc2Yw1jjvzp7mxYIanXPO5rjEZ', '2018-03-21 22:59:19', '2018-03-21 22:59:19'),
(810, 1, 'QWM4SgxxWtrZBvoTJYLTjgkRTUCXRvVl', '2018-03-22 00:20:21', '2018-03-22 00:20:21'),
(811, 1, 'ucC1zcIYRHxEZ6jFZMn1piUNdCBndVrB', '2018-03-22 07:50:08', '2018-03-22 07:50:08'),
(812, 1, 'hBuAPCwJsXpImVFDczr07NUKD4maczgv', '2018-03-25 21:13:02', '2018-03-25 21:13:02'),
(813, 1, '7f44jonBZCaWhRG3fq6LnySxvpIWT3lF', '2018-03-26 00:37:16', '2018-03-26 00:37:16'),
(814, 1, '98iIPSZUtmkECi4CndD1fXPs7iz9VhDi', '2018-03-28 20:45:30', '2018-03-28 20:45:30'),
(815, 1, '4e817wTnlzwdR1gXdS9h9CJxgQ3s8WEA', '2018-03-28 21:51:08', '2018-03-28 21:51:08'),
(817, 1, 'NYMrWaQC7C0MXnZ3guIH3jcGodi03awk', '2018-03-29 02:21:44', '2018-03-29 02:21:44'),
(818, 1, 'gtACDQRc26hY8jEO0WCcOa9KYkXVuvKK', '2018-03-29 21:41:27', '2018-03-29 21:41:27'),
(819, 1, 'z1J0xvNwTwzWPsS6cIVoUQkDn62vuwVB', '2018-04-03 00:44:43', '2018-04-03 00:44:43'),
(820, 1, '6UxGtKre7I7IUz510inaeyD6z36eoXk4', '2018-04-03 00:49:26', '2018-04-03 00:49:26'),
(825, 1, 'bRPqZpsypc8iXo8kowyMb93Np1kZ2c2p', '2018-04-15 23:50:55', '2018-04-15 23:50:55'),
(826, 1, 'TOaNMV980tfmirmc1vg2C7D6LFio1Xwr', '2018-04-15 23:51:54', '2018-04-15 23:51:54'),
(827, 1, 'OTxVCM2lnuW45BiEFd2RluygadE6Eio1', '2018-04-16 18:26:15', '2018-04-16 18:26:15'),
(828, 1, 'YFnvuraR3KJsen0iWC9ZeJNy1pufoaTJ', '2018-04-16 18:28:17', '2018-04-16 18:28:17'),
(829, 1, 'YTtrRYhrub2AJqavJnfy3V95bMl4s9YZ', '2018-04-17 19:40:46', '2018-04-17 19:40:46'),
(830, 1, 'R6D6N0uzDHkVBbvEWI8FoKfRWGvP03Tt', '2018-04-18 18:20:05', '2018-04-18 18:20:05'),
(831, 1, 'zvHTWhj91XsLN3xnJK2JsBGVwCK7cqD5', '2018-04-23 19:20:50', '2018-04-23 19:20:50'),
(832, 1, 'IQiYhQaxbr4jyFY8EGnS2dEhHKUrTBEL', '2018-04-24 00:14:22', '2018-04-24 00:14:22'),
(833, 1, 'OB887OYpUEXHpDSTd6hgkGtkTkAQ9fuz', '2018-04-24 11:19:49', '2018-04-24 11:19:49'),
(834, 1, 'DqWHDz5qA6zfofkbLO1ZmxtpFN8FFjvI', '2018-04-25 18:11:52', '2018-04-25 18:11:52'),
(835, 1, 'enGVV1RJRsGzhT2KEQAaDeBOd98lSnZ8', '2018-04-25 22:28:02', '2018-04-25 22:28:02'),
(836, 1, '6t7Uk2uIEIo3BfDwI4s2YUJXkyojl3rE', '2018-04-26 03:26:40', '2018-04-26 03:26:40'),
(837, 1, '6Gc72MMqieU0ClC94EkvaNevJHYSKrTD', '2018-04-26 07:53:45', '2018-04-26 07:53:45'),
(838, 1, 'xwJo2wNjc2vF6zZMb266jQBThM2Xr4Me', '2018-04-26 18:42:29', '2018-04-26 18:42:29'),
(839, 1, 'YG4SRb9Hp4GHlgGPBudv2TlhVyDl5w8W', '2018-04-26 19:01:53', '2018-04-26 19:01:53'),
(840, 1, '0IjcSzma5QlFi0z6d6gYiEBWOYu7ENAA', '2018-04-26 19:08:56', '2018-04-26 19:08:56');
INSERT INTO `persistences` (`id`, `user_id`, `code`, `created_at`, `updated_at`) VALUES
(841, 1, 'sxjtFBQuH0zRjYAO3KCWKsIfelv24Nk2', '2018-04-26 19:10:39', '2018-04-26 19:10:39'),
(842, 1, 'kZHdW4XxpAz03zRqQVbMNGCl1VHk0fiE', '2018-04-27 00:21:20', '2018-04-27 00:21:20'),
(843, 1, '8yh1wPw11AyaE33IxpWzEF4VoOhSl2Mn', '2018-04-27 10:15:23', '2018-04-27 10:15:23'),
(844, 1, 'fIGi5rz9j92xzj6eEA6RJvoJ5u6Spml0', '2018-04-28 00:48:30', '2018-04-28 00:48:30'),
(845, 1, 'jy0HAsepiydHKVEHDbRhcisYONqguBvx', '2018-04-28 01:18:39', '2018-04-28 01:18:39'),
(846, 1, '6Mb9pjZkpnfLfSbF0rgiLBT8YDrZYbqQ', '2018-04-29 00:32:59', '2018-04-29 00:32:59'),
(847, 1, '3JZq6o6iDOM1Jv9Tgoa3twCzyXalPYAz', '2018-04-29 00:38:05', '2018-04-29 00:38:05'),
(848, 1, 'vn6vgQwkRPmkEKG6jAsNhh7NScSNCka8', '2018-04-29 06:27:16', '2018-04-29 06:27:16'),
(849, 1, 'tkUTBrBKA2Khh5H9EgnqR6BbJChczv28', '2018-04-30 19:42:56', '2018-04-30 19:42:56'),
(850, 1, 'qcsVOGRqZgf6DIKvVjoE9YA1tzvDkVI0', '2018-05-01 01:23:19', '2018-05-01 01:23:19'),
(851, 1, '5zHnK9m47iAY5AxMbMBwJaSu6bHIetQx', '2018-05-01 01:25:51', '2018-05-01 01:25:51'),
(852, 1, 'ZCxwBJE8pFSvhk1DDjV3HWFRcPnwqmV1', '2018-05-01 06:20:40', '2018-05-01 06:20:40'),
(853, 1, 'BEUrV0d65HGhQzs32QgJuLzT03TqIIe9', '2018-05-01 06:36:26', '2018-05-01 06:36:26'),
(854, 1, '0kI8OipbCCKmq2lRliimj2K17ZkxLWOX', '2018-05-01 19:05:07', '2018-05-01 19:05:07'),
(855, 1, 'hCjLt90zXIevJ8loCEpiyhnQlwskZWrz', '2018-05-01 21:46:56', '2018-05-01 21:46:56'),
(856, 1, 'zyWtlOIzkltqns8D8U90MlGyZy5gdxfb', '2018-05-01 22:00:11', '2018-05-01 22:00:11'),
(857, 1, 'kdLUtaD2Cyp6YtZ7HkaL5X1TkRm7ezwR', '2018-05-01 23:42:06', '2018-05-01 23:42:06'),
(858, 1, 'gKwLHiky1TUVGYwFko7NO8vpi9D43m8S', '2018-05-02 01:40:00', '2018-05-02 01:40:00'),
(859, 1, 'A90WoVAuC0zUeJhstpcifoHvKrU9pF8t', '2018-05-02 02:21:58', '2018-05-02 02:21:58'),
(860, 1, '28wEnbTLFx68RvcimZwSeG2zzmVVjRla', '2018-05-02 18:28:16', '2018-05-02 18:28:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `photo`
--

DROP TABLE IF EXISTS `photo`;
CREATE TABLE `photo` (
  `id` int(11) NOT NULL,
  `album_id` int(11) DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post_param`
--

DROP TABLE IF EXISTS `post_param`;
CREATE TABLE `post_param` (
  `id` bigint(20) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `param_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `post_param`
--

INSERT INTO `post_param` (`id`, `post_id`, `param_id`, `created_at`, `updated_at`) VALUES
(1, 82, 73, '2018-05-03 02:03:31', '2018-05-03 02:03:31'),
(2, 71, 72, '2018-05-03 02:05:21', '2018-05-03 02:05:21'),
(3, 72, 73, '2018-05-03 02:05:35', '2018-05-03 02:05:35'),
(4, 73, 74, '2018-05-03 02:06:05', '2018-05-03 02:06:05'),
(5, 74, 75, '2018-05-03 02:06:16', '2018-05-03 02:06:16'),
(6, 105, 73, '2018-05-03 02:07:47', '2018-05-03 02:07:47'),
(7, 75, 75, '2018-05-03 02:09:46', '2018-05-03 02:09:46'),
(8, 76, 76, '2018-05-03 02:09:55', '2018-05-03 02:09:55'),
(9, 78, 72, '2018-05-03 02:10:25', '2018-05-03 02:10:25'),
(10, 77, 74, '2018-05-03 02:10:40', '2018-05-03 02:10:40'),
(11, 79, 73, '2018-05-03 02:10:50', '2018-05-03 02:10:50'),
(12, 80, 74, '2018-05-03 02:11:07', '2018-05-03 02:11:07'),
(13, 81, 75, '2018-05-03 02:11:21', '2018-05-03 02:11:21'),
(14, 90, 74, '2018-05-03 02:11:42', '2018-05-03 02:11:42'),
(15, 95, 74, '2018-05-03 02:11:54', '2018-05-03 02:11:54'),
(16, 83, 74, '2018-05-03 02:12:13', '2018-05-03 02:12:13'),
(17, 84, 76, '2018-05-03 02:12:27', '2018-05-03 02:12:27'),
(18, 96, 74, '2018-05-03 02:12:47', '2018-05-03 02:12:47'),
(19, 85, 74, '2018-05-03 02:13:03', '2018-05-03 02:13:03'),
(20, 97, 74, '2018-05-03 02:13:13', '2018-05-03 02:13:13'),
(21, 86, 75, '2018-05-03 02:13:51', '2018-05-03 02:13:51'),
(22, 98, 75, '2018-05-03 02:14:09', '2018-05-03 02:14:09'),
(23, 87, 73, '2018-05-03 02:14:41', '2018-05-03 02:14:41'),
(24, 99, 74, '2018-05-03 02:15:08', '2018-05-03 02:15:08'),
(25, 100, 73, '2018-05-03 02:15:53', '2018-05-03 02:15:53'),
(26, 88, 74, '2018-05-03 02:16:20', '2018-05-03 02:16:20'),
(27, 101, 74, '2018-05-03 02:16:36', '2018-05-03 02:16:36'),
(28, 89, 76, '2018-05-03 02:16:51', '2018-05-03 02:16:51'),
(29, 102, 75, '2018-05-03 02:17:04', '2018-05-03 02:17:04'),
(30, 91, 73, '2018-05-03 02:17:17', '2018-05-03 02:17:17'),
(31, 92, 75, '2018-05-03 02:17:41', '2018-05-03 02:17:41'),
(32, 103, 73, '2018-05-03 02:20:18', '2018-05-03 02:20:18'),
(33, 93, 74, '2018-05-03 02:20:32', '2018-05-03 02:20:32'),
(34, 104, 73, '2018-05-03 02:20:52', '2018-05-03 02:20:52'),
(35, 94, 76, '2018-05-03 02:21:09', '2018-05-03 02:21:09'),
(36, 106, 72, '2018-05-03 02:21:33', '2018-05-03 02:21:33'),
(37, 107, 73, '2018-05-03 02:22:05', '2018-05-03 02:22:05'),
(38, 108, 75, '2018-05-03 02:22:15', '2018-05-03 02:22:15'),
(39, 109, 73, '2018-05-03 02:22:23', '2018-05-03 02:22:23'),
(40, 110, 76, '2018-05-03 02:22:34', '2018-05-03 02:22:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `privilege`
--

DROP TABLE IF EXISTS `privilege`;
CREATE TABLE `privilege` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `controller` varchar(45) NOT NULL,
  `action` varchar(45) NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `privilege`
--

INSERT INTO `privilege` (`id`, `fullname`, `controller`, `action`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 'category-article-list', 'category-article', 'list', 1, '2017-05-18 06:49:30', '2017-05-19 17:26:33'),
(2, 'category-article-form', 'category-article', 'form', 1, '2017-05-18 06:50:32', '2017-11-26 16:43:37'),
(3, 'category-article-trash', 'category-article', 'trash', 1, '2017-05-18 06:51:27', '2017-11-26 16:43:37'),
(4, 'article-list', 'article', 'list', 1, '2017-05-18 08:34:41', '2017-05-19 18:11:35'),
(5, 'article-form', 'article', 'form', 1, '2017-05-18 08:35:17', '2017-05-19 17:24:54'),
(16, 'category-article-status', 'category-article', 'status', 1, '2017-05-19 08:23:46', '2017-11-26 16:43:37'),
(17, 'category-article-delete', 'category-article', 'delete', 1, '2017-05-19 08:25:14', '2017-11-26 16:43:37'),
(18, 'privilege-list', 'privilege', 'list', 1, NULL, '2017-11-26 16:43:37'),
(19, 'privilege-form', 'privilege', 'form', 1, NULL, '2017-11-26 16:43:37'),
(24, 'group-member-list', 'group-member', 'list', 1, '2017-05-19 11:59:40', '2017-11-26 16:43:37'),
(25, 'group-member-form', 'group-member', 'form', 1, '2017-05-19 12:00:09', '2017-11-26 16:43:37'),
(33, 'category-article-ordering', 'category-article', 'ordering', 1, '2017-05-19 17:29:14', '2017-11-26 16:43:37'),
(43, 'user-list', 'user', 'list', 1, '2017-05-19 17:45:27', '2017-11-26 16:43:37'),
(44, 'user-form', 'user', 'form', 1, '2017-05-19 17:45:57', '2017-11-26 16:43:37'),
(49, 'menu-type-list', 'menu-type', 'list', 1, '2017-05-19 17:49:35', '2017-11-26 16:43:37'),
(50, 'menu-type-form', 'menu-type', 'form', 1, '2017-05-19 17:49:53', '2017-11-26 16:43:37'),
(55, 'menu-list', 'menu', 'list', 1, '2017-05-19 18:01:20', '2017-11-26 16:43:37'),
(56, 'menu-form', 'menu', 'form', 1, '2017-05-19 18:01:38', '2017-11-26 16:43:37'),
(57, 'menu-trash', 'menu', 'trash', 1, '2017-05-19 18:01:52', '2017-11-26 16:43:37'),
(58, 'menu-delete', 'menu', 'delete', 1, '2017-05-19 18:02:17', '2017-11-26 16:43:37'),
(59, 'menu-status', 'menu', 'status', 1, '2017-05-19 18:02:31', '2017-11-26 16:43:37'),
(60, 'menu-ordering', 'menu', 'ordering', 1, '2017-05-19 18:02:50', '2017-11-26 16:43:37'),
(61, 'media-list', 'media', 'list', 1, '2017-05-19 18:05:47', '2017-11-26 16:43:37'),
(62, 'media-form', 'media', 'form', 1, '2017-05-19 18:06:05', '2017-11-26 16:43:37'),
(63, 'media-trash', 'media', 'trash', 1, '2017-05-19 18:06:22', '2017-11-26 16:43:37'),
(67, 'product-list', 'product', 'list', 1, '2017-05-19 18:09:08', '2017-11-26 16:43:37'),
(68, 'product-form', 'product', 'form', 1, '2017-05-19 18:09:20', '2017-11-26 16:43:37'),
(79, 'invoice-list', 'invoice', 'list', 1, '2017-05-19 18:14:02', '2017-11-26 16:43:37'),
(80, 'invoice-form', 'invoice', 'form', 1, '2017-05-19 18:14:30', '2017-11-26 16:43:37'),
(85, 'customer-list', 'customer', 'list', 1, '2017-05-19 18:16:10', '2017-11-26 16:43:37'),
(86, 'customer-form', 'customer', 'form', 1, '2017-05-19 18:16:33', '2017-11-26 16:43:37'),
(103, 'category-product-list', 'category-product', 'list', 1, '2017-11-26 14:50:53', '2017-11-26 14:50:53'),
(104, 'category-product-form', 'category-product', 'form', 1, '2017-11-26 14:51:11', '2017-11-26 14:51:11'),
(105, 'payment-method-list', 'payment-method', 'list', 1, '2017-11-26 14:52:56', '2017-11-26 14:52:56'),
(106, 'payment-method-form', 'payment-method', 'form', 1, '2017-11-26 14:53:10', '2017-11-26 14:53:10'),
(107, 'module-item-list', 'module-item', 'list', 1, '2017-11-26 14:54:56', '2017-11-26 14:54:56'),
(108, 'module-item-form', 'module-item', 'form', 1, '2017-11-26 14:55:07', '2017-11-26 14:55:07'),
(109, 'setting-system-list', 'setting-system', 'list', 1, '2017-11-26 14:56:14', '2017-11-26 14:56:31'),
(110, 'setting-system-form', 'setting-system', 'form', 1, '2017-11-26 14:56:46', '2017-11-26 14:56:46'),
(111, 'category-product-trash', 'category-product', 'trash', 1, '2017-11-26 16:31:27', '2017-11-26 16:31:45'),
(112, 'category-product-status', 'category-product', 'status', 1, '2017-11-26 16:32:17', '2017-11-26 16:32:17'),
(113, 'category-product-delete', 'category-product', 'delete', 1, '2017-11-26 16:32:50', '2017-11-26 16:32:50'),
(114, 'category-product-ordering', 'category-product', 'ordering', 1, '2017-11-26 16:33:08', '2017-11-26 16:33:08'),
(115, 'category-banner-list', 'category-banner', 'list', 1, '2017-12-12 04:05:17', '2017-12-12 04:05:17'),
(116, 'category-banner-form', 'category-banner', 'form', 1, '2017-12-12 04:05:47', '2017-12-12 04:05:47'),
(117, 'category-banner-trash', 'category-banner', 'trash', 1, '2017-12-12 04:06:15', '2017-12-12 04:06:15'),
(118, 'category-banner-status', 'category-banner', 'status', 1, '2017-12-12 04:06:43', '2017-12-12 04:06:43'),
(119, 'category-banner-delete', 'category-banner', 'delete', 1, '2017-12-12 04:07:11', '2017-12-12 04:08:01'),
(120, 'category-banner-ordering', 'category-banner', 'ordering', 1, '2017-12-12 04:07:32', '2017-12-12 04:08:01'),
(121, 'banner-list', 'banner', 'list', 1, '2017-12-12 07:41:46', '2017-12-12 07:41:46'),
(122, 'banner-form', 'banner', 'form', 1, '2017-12-12 07:41:56', '2017-12-12 07:41:56'),
(123, 'page-list', 'page', 'list', 1, '2017-12-13 18:10:13', '2017-12-13 18:10:13'),
(124, 'page-form', 'page', 'form', 1, '2017-12-13 18:10:24', '2017-12-13 18:10:24'),
(125, 'project-list', 'project', 'list', 1, '2018-01-04 09:45:36', '2018-01-04 09:45:36'),
(126, 'project-form', 'project', 'form', 1, '2018-01-04 09:45:49', '2018-01-04 09:45:49'),
(127, 'project-article-list', 'project-article', 'list', 1, '2018-01-04 15:21:53', '2018-01-04 15:21:53'),
(128, 'project-article-form', 'project-article', 'form', 1, '2018-01-04 15:22:08', '2018-01-04 15:22:08'),
(129, 'supporter-list', 'supporter', 'list', 1, '2018-01-07 17:18:23', '2018-01-07 17:18:23'),
(130, 'supporter-form', 'supporter', 'form', 1, '2018-01-07 17:18:39', '2018-01-07 17:18:39'),
(131, 'organization-list', 'organization', 'list', 1, '2018-01-08 04:32:03', '2018-01-08 04:32:03'),
(132, 'organization-form', 'organization', 'form', 1, '2018-01-08 04:32:17', '2018-01-08 04:32:17'),
(133, 'album-list', 'album', 'list', 1, '2018-01-08 15:57:00', '2018-01-08 15:57:00'),
(134, 'album-form', 'album', 'form', 1, '2018-01-08 15:57:10', '2018-01-08 15:57:10'),
(135, 'photo-list', 'photo', 'list', 1, '2018-01-08 18:07:30', '2018-01-08 18:07:30'),
(136, 'photo-form', 'photo', 'form', 1, '2018-01-08 18:07:39', '2018-01-08 18:07:39'),
(137, 'category-video-list', 'category-video', 'list', 1, '2018-01-09 09:54:53', '2018-01-09 09:54:53'),
(138, 'category-video-form', 'category-video', 'form', 1, '2018-01-09 09:55:06', '2018-01-09 09:55:06'),
(139, 'video-list', 'video', 'list', 1, '2018-01-09 09:55:16', '2018-01-09 09:55:16'),
(140, 'video-form', 'video', 'form', 1, '2018-01-09 09:55:24', '2018-01-09 09:55:24'),
(141, 'province-list', 'province', 'list', 1, '2018-01-21 17:53:20', '2018-01-21 17:53:20'),
(142, 'province-form', 'province', 'form', 1, '2018-01-21 17:53:29', '2018-01-21 17:53:29'),
(143, 'district-list', 'district', 'list', 1, '2018-01-22 02:03:24', '2018-01-22 02:03:24'),
(144, 'district-form', 'district', 'form', 1, '2018-01-22 02:03:34', '2018-01-22 02:03:34'),
(145, 'category-param-list', 'category-param', 'list', 1, '2018-02-01 20:15:43', '2018-02-01 20:15:43'),
(146, 'category-param-form', 'category-param', 'form', 1, '2018-02-01 20:15:56', '2018-02-01 20:15:56'),
(147, 'category-param-trash', 'category-param', 'trash', 1, '2018-02-01 20:43:36', '2018-02-01 20:43:36'),
(148, 'category-param-delete', 'category-param', 'delete', 1, '2018-02-01 20:43:52', '2018-02-01 20:43:52'),
(149, 'category-param-status', 'category-param', 'status', 1, '2018-02-01 20:44:13', '2018-02-01 20:44:13'),
(150, 'category-param-ordering', 'category-param', 'ordering', 1, '2018-02-01 20:44:42', '2018-02-01 20:44:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `code` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `meta_description` text COLLATE utf8_unicode_ci,
  `alias` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `child_image` text CHARACTER SET utf8,
  `price` decimal(11,2) DEFAULT NULL,
  `sale_price` decimal(11,2) DEFAULT NULL,
  `intro` text COLLATE utf8_unicode_ci,
  `detail` text CHARACTER SET utf8,
  `technical_detail` text COLLATE utf8_unicode_ci,
  `video_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `count_view` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `code`, `fullname`, `meta_keyword`, `meta_description`, `alias`, `image`, `status`, `child_image`, `price`, `sale_price`, `intro`, `detail`, `technical_detail`, `video_id`, `count_view`, `category_id`, `sort_order`, `created_at`, `updated_at`) VALUES
(59, '689273154', 'Băng keo in chữ', 'băng keo in chữ', 'Băng keo in chữ là một băng keo được dùng khá phổ biến trong việc gói kiện hàng, bịt lỗ trên sản phẩm...ngoài ra băng keo còn có những ưu điểm quảng bá thương hiệu hay trang trí rất hiệu quả.', 'bang-keo-in-chu', 'bang-keo-in-chu-4rfawueioj53.jpg', 1, NULL, '0.00', '0.00', '', '<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><span style=\"background-color:white\"><strong>Băng keo in chữ</strong> hay còn gọi là băng dính ( Orienter PolyPropylene ) là m&ocirc;̣t cu&ocirc;̣n băng làm bằng nhựa tán mỏng và dòng sản ph&acirc;̉m có khả năng k&ecirc;́t dính các v&acirc;̣t với nhau. Chúng là m&ocirc;̣t v&acirc;̣t li&ecirc;̣u được dùng chủ y&ecirc;́u trong c&ocirc;ng vi&ecirc;̣c gói thùng hoặc bịt l&ocirc;̃. <strong>Băng keo in chữ</strong> được&nbsp;trang trí th&ecirc;m các dòng chữ tùy bi&ecirc;́n so với các loại keo bình thường. Sau đ&acirc;y chúng ta h&atilde;y tìm hi&ecirc;̉u sơ qua loại băng keo này.</span></span></span></p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"font-size:18.0pt\"><span style=\"background-color:white\">K&ecirc;́t c&acirc;́u của băng keo in chữ </span></span></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><span style=\"background-color:white\"><a href=\"http://vitoen.com/bang-keo-373608.html\">Băng keo</a> được tạo ra bởi m&ocirc;̣t lớp màng keo và lớp nhựa màng filim BOPP. Được tùy bi&ecirc;́n th&ecirc;m dòng chữ nhằm tạo th&ecirc;m đ&ocirc;̣ h&acirc;́p d&acirc;̃n cho sản ph&acirc;̉m. Quá trình k&ecirc;́t hợp đ&ecirc;̉ tạo ra sản ph&acirc;̉m giữa thành ph&acirc;̀n tr&ecirc;n được gọi là jumbo hay còn gọi với cái t&ecirc;n th&acirc;n thi&ecirc;̣n là jumbo băng keo. Đặc bi&ecirc;̣t ph&acirc;̀n chữ được tạo ra theo ý mu&ocirc;́n và mục đích sử dụng khác nhau.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><img alt=\"Băng keo in chữ\" src=\"/upload/bang-keo-in-chu-vitoen.jpg/\" /></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:14pt\"><span style=\"color:black\"><em><span style=\"background-color:white\">Hình 1 : Băng keo in chữ</span></em></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><span style=\"background-color:white\">Những cu&ocirc;̣n <strong>băng keo in chữ</strong> có kích thước lớn v&ecirc;̀ chi&ecirc;̀u cao l&acirc;̃n chi&ecirc;̀u dài hoặc có th&ecirc;̉ được tinh chỉnh th&ocirc;ng s&ocirc;́ theo mặt hàng đóng gói. Đ&ecirc;̉ tạo ra sản ph&acirc;̉m ch&acirc;́t lượng nh&acirc;́t đ&ecirc;̉ tung ra thị trường như chúng ta thường th&acirc;́y thì phải trải qua cái giai đoạn hoặc quá trình cắt cu&ocirc;̣n hay ph&acirc;n cu&ocirc;̣n. Còn tùy thu&ocirc;̣c vào nhu c&acirc;̀u sử dụng của khách hàng sẽ được các cu&ocirc;̣n keo in chữ với kh&ocirc;̉ r&ocirc;̣ng và chi&ecirc;̀u r&acirc;́t khác nhau. Còn chi&ecirc;̀u dài của dãi băng keo thì tùy thu&ocirc;̣c vào s&ocirc;́ ti&ecirc;̀n và đ&ocirc;̣ thích của khác hàng. </span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><span style=\"background-color:white\">Băng keo in chữ có kích thước thường dùng là 4.8cm x 100Y hoặc 2.4cm x 100Y.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><span style=\"background-color:white\">Còn v&ecirc;̀ ph&acirc;̀n chữ được in chìm dưới mặt keo đ&ecirc;̉ tạo ra sử khác&nbsp;bi&ecirc;̣t ở m&ocirc;̃i khác hàng như t&ecirc;n c&ocirc;ng ty, t&ecirc;n doanh nghi&ecirc;̣p hoặc có th&ecirc;̉ c&acirc;u kh&acirc;̉u ngữ đặc bi&ecirc;̣t nào đó. ... Các chữ này có th&ecirc;̉ được chu&acirc;̉n hóa theo c&acirc;́u trúc y&ecirc;u c&acirc;̀u hoặc có sẵn đ&ecirc;̉ đáp ứng t&acirc;́t cả các y&ecirc;u c&acirc;̀u.</span></span></span></p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"font-size:18.0pt\"><span style=\"background-color:white\">Các loại băng keo và nh&acirc;̣n biết băng keo in chữ</span></span></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><span style=\"background-color:white\">Ở thị trường có r&acirc;́t nhi&ecirc;̀u loại băng keo khác nhau như sau:</span></span></span></p>\r\n\r\n<h3 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><em><span style=\"background-color:white\">Băng keo OPP: </span></em></span></span></span></h3>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><span style=\"background-color:white\">Đ&ocirc;́i với dòng sản ph&acirc;̉m băng keo này thì r&acirc;́t ph&ocirc;̉ bi&ecirc;́n hi&ecirc;̣n nay. Dường như chúng ta có th&ecirc;̉ bắt gặp ở nhi&ecirc;̀u nơi tr&ecirc;n thị trường. Với 2 loại được sản xu&acirc;́t và tung ra thị trường là opp trong hoặc opp đục v&ecirc;̀ mặt c&acirc;́u tạo.</span></span></span></p>\r\n\r\n<h3 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"background-color:white\">Băng keo dùng trong dính sàn</span></span></span></span></h3>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><span style=\"background-color:white\">Đ&ocirc;́i với dòng sản ph&acirc;̉m này thường được ph&acirc;n l&ocirc;&nbsp; và c&ocirc;́ định, hay ở những nơi đ&ecirc;̉ cảnh báo nguy hi&ecirc;̉m &nbsp;hoặc trong giao th&ocirc;ng nhờ có đặc tính màu sắc của dòng sản ph&acirc;̉m này.</span></span></span></p>\r\n\r\n<h3 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"background-color:white\">Băng keo dính đi&ecirc;̣n</span></span></span></span></h3>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><span style=\"background-color:white\">Là dòng sản ph&acirc;̉m r&acirc;́t th&ocirc;ng dụng với tính ch&acirc;́t r&acirc;́t an toàn với người dùng. Với sản ph&acirc;̉m này chủ y&ecirc;́u dùng cho các v&acirc;́n đ&ecirc;̀ có li&ecirc;n quan đ&ecirc;́n đi&ecirc;̣p áp.</span></span></span></p>\r\n\r\n<h3 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"background-color:white\">Băng keo dính 2 mặt&nbsp;</span></span></span></span></h3>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><span style=\"background-color:white\">D&ograve;ng sản phẩm n&agrave;y được bầy b&aacute;n kh&aacute; nhiều ở cửa h&agrave;ng văn ph&ograve;ng phẩm. Sử dụng với nhiều nhu cầu thực t&ecirc;́ kh&aacute;c nhau. Tr&ecirc;n thị trường còn được bi&ecirc;́t đ&ecirc;́n các loại bang khác như những d&ograve;ng sản phẩm kh&aacute;c: băng d&iacute;nh simili, băng d&iacute;nh sợi thủy tinh còn có băng d&iacute;nh n&acirc;u da b&ograve; , băng d&iacute;nh vải và băng d&iacute;nh phản quang...</span></span></span></p>\r\n\r\n<h3 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"background-color:white\">Băng keo in chữ hoặc dính in logo</span></span></span></span></h3>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><span style=\"background-color:white\">Ngay nay nhu c&acirc;̀u v&ecirc;̀ quảng cáo, maketing tăng mạnh thì các dòng sản ph&acirc;̉m của <strong>băng keo in chữ</strong> cũng tăng theo. Với các dạng chữ được in như in thương hi&ecirc;̣u, t&ecirc;n c&ocirc;ng ty l&ecirc;n sản ph&acirc;̉m hoặc có th&ecirc;̉ là quảng cáo thương hi&ecirc;̣u... Đang là sản ph&acirc;̉m khác hoàn toàn so với các dòng băng keo đang hi&ecirc;̣u hữu tr&ecirc;n thị trường.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><img alt=\"băng keo in chữ đẹp\" src=\"/upload/bang-keo-in-chu.jpg\" /></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:14pt\"><span style=\"color:black\"><em><span style=\"background-color:white\">Hình 2 : Băng keo in chữ dính tr&ecirc;n sản ph&acirc;̉m</span></em></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><span style=\"background-color:white\">Đ&ocirc;́i với dòng <strong>băng keo in chữ</strong> có r&acirc;́t nhi&ecirc;̀u đơn vị cung c&acirc;́p với giá thành cũng khác nhau mà ch&acirc;́t lượng cũng tương đ&ocirc;́i t&ocirc;́t.</span></span></span></p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"font-size:16.0pt\"><span style=\"background-color:white\">K&ecirc;́t lu&acirc;̣n</span></span></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><span style=\"background-color:white\">Tr&ecirc;n đ&acirc;y là th&ocirc;ng tin cơ bản v&ecirc;̀ dòng<strong> sản</strong> <strong>ph&acirc;̉m băng keo in chữ </strong>đang hot tr&ecirc;n thị trường. Với dòng sản ph&acirc;̉m này kh&ocirc;ng&nbsp;quá khắt khe v&ecirc;̀ kỹ thu&acirc;̣t n&ecirc;n bạn hãy chọn những nơi uy tín đ&ecirc;̉ có giá thành phù hợp nh&acirc;́t nhé.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><em><span style=\"font-size:14pt\"><span style=\"color:black\"><span style=\"background-color:white\">N&ecirc;́u bạn có nhu c&acirc;̀u v&ecirc;̀ mua các băng keo in chữ hoặc các dòng keo khác thì hãy li&ecirc;n h&ecirc;̣ với&nbsp;&nbsp;<strong>vitoen</strong>&nbsp;đ&ecirc;̉ được phục vụ !</span></span></span></em></p>', '<p><span style=\"font-size:16px\"><strong>M&agrave;u sắc của băng keo </strong>: nhi&ecirc;̀u màu &nbsp;và có chữ.<br />\r\n<strong>Th&agrave;nh phần c&acirc;́u tạo keo</strong>: Acrylic và màng filim BOPP.<br />\r\n<strong>Độ d&agrave;y băng keo</strong>: 0.03 mm.<br />\r\n<strong>Chiều d&agrave;i của đoạn băng</strong>: 50-100 Yard.<br />\r\n<strong>Chịu nhiệt trong khoảng max</strong> : &nbsp;70&deg;C.<br />\r\n<strong>K&iacute;ch cỡ trong k&ecirc;́t c&acirc;́u chi&ecirc;̀u r&ocirc;̣ng </strong>: 48mm.</span></p>', '', 36, 40, 1, '2018-04-27 01:54:08', '2018-04-29 09:13:07'),
(60, '846571923', 'Băng keo nhôm', 'băng keo nhôm', 'Băng keo nhôm là một dạng băng keo được sử dụng phổ biến trong các trong trình trọng điểm như trong công nghiệp, công trình xây dựng... ngày nay loại keo này có thể hiện hữu nhiều hơn.', 'bang-keo-nhom', 'bang-keo-nhom-1-hk4x2erudmfp.png', 1, NULL, '0.00', '0.00', '', '<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><span style=\"background-color:white\"><strong>Băng keo nh&ocirc;m</strong> là dòng sản ph&acirc;̉m có tính ph&ocirc;̉ dụng và được áp dụng nhi&ecirc;̀u trong đời s&ocirc;́ng hiện nay. Đ&acirc;y là&nbsp;dòng băng keo có khả năng thích ứng r&ocirc;̣ng trong nhi&ecirc;̀u ngành đặc bi&ecirc;̣t là ngành c&ocirc;ng nghi&ecirc;̣p. <strong>Vitoen </strong>l&agrave; đơn vị cung cấp c&aacute;c sản phẩm băng keo uy t&iacute;n nhất, sau đ&acirc;y sẽ giới thiệu những th&ocirc;ng tin về loại băng keo nh&ocirc;m nay.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><img alt=\"băng keo nhôm\" src=\"/upload/bang-keo-nhom.jpg\" /></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:13pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"font-size:18.0pt\">Đặc điểm của dòng băng keo nh&ocirc;m</span></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:14pt\"><span style=\"color:black\">Băng keo nh&ocirc;m có các ưu đi&ecirc;̉m như chống lửa, độ ẩm, thời tiết v&agrave; kh&aacute;ng h&oacute;a chất tuyệt vời. Cho c&aacute;c y&ecirc;u cầu ứng dụng trong h&agrave;ng kh&ocirc;ng vũ trụ, &ocirc; t&ocirc;, thiết bị, bảo tr&igrave;, sửa chữa v&agrave; c&aacute;c hoạt động v&agrave; nhiều ph&acirc;n đoạn hơn. Ngo&agrave;i ra, sản phẩm n&agrave;y cũng dẫn nhiệt hiệu quả trong sưởi ấm hoặc l&agrave;m m&aacute;t.</span></span></p>\r\n\r\n<ul style=\"list-style-type:circle\">\r\n	<li><span style=\"font-size:14pt\"><span style=\"color:black\">Nh&ocirc;m l&aacute; mỏng kết hợp với loại keo d&iacute;nh cao cấp v&agrave; dễ d&agrave;ng sử dụng l&agrave;m đệm l&oacute;t.</span></span></li>\r\n	<li><span style=\"font-size:14pt\"><span style=\"color:black\">Bảo vệ bịt k&iacute;n, sử dụng tr&ecirc;n nhiều loại bề mặt.</span></span></li>\r\n	<li><span style=\"font-size:14pt\"><span style=\"color:black\">Đ&aacute;nh gi&aacute; t&iacute;nh dễ ch&aacute;y đ&aacute;p ứng theo ti&ecirc;u chuẩn.</span></span></li>\r\n	<li><span style=\"font-size:14pt\"><span style=\"color:black\">Tốc độ truyền hơi thấp tuyệt vời v&agrave; hiệu suất bịt k&iacute;n rất tốt.</span></span></li>\r\n	<li><span style=\"font-size:14pt\"><span style=\"color:black\">Giải chịu nhi&ecirc;̣t của băng keo nh&ocirc;m có th&ecirc;̉ chịu là &nbsp;-25 &deg; C cho đến 80 &deg; C. Nhiệt độ tối đa của băng keo trong thời gian ngắn hạn l&ecirc;n đ&ecirc;́n 100 &deg; C.</span></span></li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:13pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"font-size:18.0pt\">Các loại băng keo nh&ocirc;m hi&ecirc;̣n có tr&ecirc;n thị trường</span></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:14pt\"><span style=\"color:black\">Băng keo nh&ocirc;m là dòng sản ph&acirc;̉m l&aacute; mỏng trong kh&acirc;u thiết kế để bao gồm tất cả c&aacute;c lĩnh vực ứng dụng quan trọng. Với các đặc thù là nơi chịu nhiệt độ cao v&agrave; độ dẫn điện hoặc nhiệt. </span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:14pt\"><span style=\"color:black\">Sản phẩm ch&iacute;nh của băng keo nh&ocirc;m bao gồm: </span></span></p>\r\n\r\n<ul style=\"list-style-type:circle\">\r\n	<li><span style=\"font-size:14pt\"><span style=\"color:black\">Loại băng keo nh&ocirc;m với lớp l&oacute;t chất kết d&iacute;nh acrylic và độ d&agrave;y 0.054mm. Có khả năng ch&ocirc;́ng bắt ngọn lửa Class1 335.</span></span></li>\r\n	<li><span style=\"font-size:14pt\"><span style=\"color:black\">Loại băng keo nh&ocirc;m với lớp l&oacute;t chất kết d&iacute;nh acrylic và độ d&agrave;y 0.08mm. Có khả năng chịu ngọn lửa M1 330.</span></span></li>\r\n	<li><span style=\"font-size:14pt\"><span style=\"color:black\">Loại băng keo nh&ocirc;m kh&ocirc;ng l&oacute;t, acrylic chất kết d&iacute;nh, tổng độ d&agrave;y 0.13mm.</span></span></li>\r\n	<li><span style=\"font-size:14pt\"><span style=\"color:black\">Loại băng keo nh&ocirc;m lá có lớp vải, acrylic chất kết d&iacute;nh, tổng độ d&agrave;y 0.15mm.</span></span></li>\r\n</ul>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Ngoài ra băng keo nh&ocirc;m 3M Aluminum Foil Tape 425 l&agrave; loại băng keo nh&ocirc;m đặc biệt nh&acirc;́t hi&ecirc;̣n nay. Đ&ocirc;́i với loại này c&oacute; m&ocirc;̣t lớp nh&ocirc;m mềm độ d&agrave;y 0.7mm, được li&ecirc;n kết chặt với lớp keo acrylic. Dòng sản ph&acirc;̉m có đ&ocirc;̣ trong suốt ph&iacute;a dưới, l&agrave; sản phẩm băng keo nh&ocirc;m th&ocirc;ng dụng. Và được ứng dụng ph&ocirc;̉ bi&ecirc;́n trong nhiều lĩnh vực, ng&agrave;nh nghề để l&agrave;m ni&ecirc;m phong, che chắn, băng keo kh&aacute;ng h&oacute;a chất, c&ocirc;ng nghiệp mạ, c&ocirc;ng nghiệp đ&oacute;ng g&oacute;i, bảo vệ nhựa, chống nhiệt, c&aacute;ch nhiệt và lấy nhiệt phản quang.....</span></span></p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm\"><img alt=\"sản phẩm băng keo nhôm\" src=\"/upload/bang-keo-nhom-1.png\" /></h2>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</h2>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:13pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"font-size:18.0pt\">Tính năng n&ocirc;̉i tr&ocirc;̣i băng keo nh&ocirc;m </span></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:14pt\"><span style=\"color:black\">C&oacute; khả năng chống ch&aacute;y r&acirc;́t t&ocirc;́t, chịu được nhiệt độ cùng thời tiết khắc nghiệt và tia chống tia UV.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:14pt\"><span style=\"color:black\">Băng keo nh&ocirc;m hấp thụ nhiệt v&agrave; phản chiếu &aacute;nh s&aacute;ng tự nhi&ecirc;n t&ocirc;́t.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Băng keo nh&ocirc;m</strong> gi&uacute;p tản nhiệt trong hệ thống sưởi v&agrave; l&agrave;m m&aacute;t hiệu quả. N&ecirc;n sử dụng trong các c&ocirc;ng trình ch&ocirc;́ng nóng hi&ecirc;̣u quả.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:14pt\"><span style=\"color:black\">Chất kết d&iacute;nh của băng keo nh&ocirc;m là acrylic trong suốt, chắc chắn, tuổi thọ cao v&agrave; độ bền l&acirc;u d&agrave;i.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Băng keo nh&ocirc;m</strong> chuy&ecirc;n sử dụng trong c&aacute;c ứng dụng cần chống ẩm, giảm rung động, kh&aacute;ng h&oacute;a chất, dẫn nhiệt, phản quang&hellip; r&acirc;́t t&ocirc;́t.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Băng keo nh&ocirc;m còn sử dụng trong c&aacute;c lĩnh vực c&ocirc;ng nghiệp như x&acirc;y dựng, &ocirc; t&ocirc;, điện tử, giao th&ocirc;ng, sản xuất thiết bị gia dụng v&agrave; cả qu&acirc;n sự.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><span style=\"background-color:white\">Tr&ecirc;n đ&acirc;y là những quy chu&acirc;̉n và các th&ocirc;ng tin chi ti&ecirc;́t v&ecirc;̀ <strong>băng keo nh&ocirc;m</strong> mà các bạn có th&ecirc;̉ tham khảo đ&ecirc;̉ chọn băng keo ch&acirc;́t lượng t&ocirc;́t. Đặc bi&ecirc;̣t là trong giai đoạn c&ocirc;ng ngh&ecirc;̣ hi&ecirc;̣n đại như b&acirc;y giờ. </span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:16px\"><em>N&ecirc;́u bạn có nhu c&acirc;̀u v&ecirc;̀ mua các băng keo in chữ hoặc các dòng keo khác thì hãy li&ecirc;n h&ecirc;̣ với <a href=\"http://vitoen.com/\"><strong>vitoen</strong></a>&nbsp;đ&ecirc;̉ được phục vụ !</em></span></p>', '<p><span style=\"font-size:18px\"><strong>M&agrave;u sắc của băng keo :</strong> M&agrave;u bạc s&aacute;ng.<br />\r\n<strong>Th&agrave;nh phần c&acirc;́u tạo keo</strong>: Acrylic.<br />\r\n<strong>Độ d&agrave;y băng keo:</strong> 0.07 mm.<br />\r\n<strong>Chiều d&agrave;i của đoạn băng</strong>: 55m.<br />\r\n<strong>Chịu nhiệt trong khoảng</strong>: -50&deg; đến 150&deg;C.<br />\r\n<strong>K&iacute;ch cỡ trong k&ecirc;́t c&acirc;́u chi&ecirc;̀u r&ocirc;̣ng</strong> : 48mm.</span></p>', '', 19, 40, 2, '2018-04-27 03:32:16', '2018-04-29 08:32:12'),
(61, '948351726', 'Băng keo dán thùng', 'Băng keo dán thùng', 'Băng keo dán thùng được sử dụng rất phổ biến hiện nay vì những ưu điểm mà loại băng keo này mang lại. Ngoài ra khả năng kết dính vô cùng hiệu quả đã làm keo dán thùng được nhiều người chọn mua.', 'bang-keo-dan-thung', 'dan-thung-76p8htn03uao.png', 1, NULL, '0.00', '0.00', '', '<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong><span style=\"background-color:white\">Băng keo dán thùng</span></strong><span style=\"background-color:white\"> là v&acirc;̣t li&ecirc;̣u </span>r&acirc;́t <span style=\"background-color:white\">hữu hi&ecirc;̣u và ph&ocirc;̉ bi&ecirc;́n trong cu&ocirc;̣c s&ocirc;́ng của chúng ta. Với các tính năng và khả năng k&ecirc;́t dính tương đ&ocirc;́i cao. Loại băng keo này có sự k&ecirc;́t hợp của m&ocirc;̣t vài v&acirc;̣t li&ecirc;̣u m&ecirc;̀m mỏng như màng nhựa PVC, BOPP.... <strong>Băng keo dính thùng</strong> được sử dụng chủ y&ecirc;́u trong đóng gói thành ph&acirc;̀n, bảo v&ecirc;̣ sản ph&acirc;̉m. Và được sử dụng khá r&ocirc;̣ng rãi trong các ngành c&ocirc;ng nghi&ecirc;̣p, đi&ecirc;̣n tử và dịch vụ cung ứng.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><img alt=\"băng keo dán thùng\" src=\"upload/cuon-keo-dan-thung.jpg/\" /></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><em><span style=\"font-size:18px\">Hình 1 : Băng keo dán thung.</span></em></p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"font-size:18.0pt\"><span style=\"background-color:white\">Th&ocirc;ng s&ocirc;́ kỹ thu&acirc;̣t của băng keo dán thùng</span></span></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong><span style=\"background-color:white\">Băng keo dán thùng</span></strong><span style=\"background-color:white\"> chủ đạo là thùng carton được c&acirc;́u thành từ nhựa OPP. </span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><span style=\"background-color:white\">Với đ&ocirc;̣ dài&nbsp;100YD, 200YD, 300YD và 400YD,... </span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><span style=\"background-color:white\">Và đ&ocirc;̣ k&ecirc;́t dính của băng keo sẽ là 50Mic , 60Mic và 70Mic... </span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><span style=\"background-color:white\">Đ&ocirc;̣ nặng m&ocirc;̃i cu&ocirc;̣n băng dán thành ph&acirc;̉m là 0,2 kg, 0,3 kg và 0,4 kg ...</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:13pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"font-size:18.0pt\">Cách chọn loại băng keo dán thùng t&ocirc;́t tr&ecirc;n thị trường </span></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Đ&ecirc;̉ có được đoạn băng keo t&ocirc;́t nh&acirc;́t tr&ecirc;n thì bạn có th&ecirc;̉ tham khảo các th&ocirc;ng tin sau:</span></span></p>\r\n\r\n<h3 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"background-color:white\">Đơn vị tính Mét hoặc Yard </span></span></span></span></h3>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><span style=\"background-color:white\">Hi&ecirc;̣n nay <strong>băng keo dán thùng</strong> là dòng sản ph&acirc;̉m mà bạn sẽ bắt gặp r&acirc;́t nhi&ecirc;̀u. Nhưng các bạn có đ&ecirc;̉ ý rằng th&ocirc;ng s&ocirc;́ Yard&nbsp; được ký hi&ecirc;̣u khi bày bán tr&ecirc;n m&ocirc;̃i sản ph&acirc;̉m là gì kh&ocirc;ng ? Đ&acirc;y là đơn vị đo lường qu&ocirc;́c t&ecirc;́ với giá trị quy đ&ocirc;̉i là 1 Yard = 0.9144 mét. Do đó với đơn vị đo lường này ở thị trường vi&ecirc;̣t nam kh&ocirc;ng dùng n&ecirc;n khi các bạn đi mua n&ecirc;n lưu ý đ&ecirc;́n. Khi đi mua bạn n&ecirc;n ki&ecirc;̉m tra sơ b&ocirc;̣ ở cu&ocirc;̣n băng với th&ocirc;ng s&ocirc;́ Yard.</span></span></span></p>\r\n\r\n<h3 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"background-color:white\">Ph&acirc;̀n lõi gi&acirc;́y của băng keo dán thùng</span></span></span></span></h3>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><span style=\"background-color:white\">Đ&ecirc;̉ mua sản ph&acirc;̉m này đa ph&acirc;̀n trong s&ocirc;́ chúng ta thường c&acirc;n đ&ecirc;̉ bi&ecirc;́t giá trị của cu&ocirc;̣n băng keo. Nhưng c&ocirc;ng ngh&ecirc;̣ sản xu&acirc;́t hi&ecirc;̣n nay thì c&ocirc;́ tình làm lõi gi&acirc;́y dày đ&ecirc;̉ gian đ&ocirc;́i trong kinh doanh mặt hàng này. Đơn cử có đoạn băng dán ph&acirc;̀n ploix dày hơn 10mm.&nbsp; Nhưng theo th&ocirc;ng s&ocirc;́ chu&acirc;̉n mực nh&acirc;́t được c&ocirc;ng b&ocirc;́ là 3-4mm.&nbsp; Ch&acirc;́t li&ecirc;̣u là gi&acirc;́y nguy&ecirc;n ch&acirc;́t với trong lượng khoảng 36 gram1 lõi, kh&ocirc;ng pha tr&ocirc;̣n tạp ch&acirc;́t. </span></span></span></p>\r\n\r\n<h3 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"background-color:white\">Đ&ocirc;̣ dày của băng keo dán thùng</span></span></span></span></h3>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><span style=\"background-color:white\">Vi&ecirc;̣c k&ecirc;́t c&acirc;́u cu&ocirc;̣n băng sẽ có kh&ocirc;́i lượng bằng nhau khi sản xu&acirc;́t cũng như tr&ecirc;n thị trường. Nhưng đoạn băng dày và chi&ecirc;̀u dài của cu&ocirc;̣n băng keo thì tỉ l&ecirc;̣ nghịch với nhau. Do đó đ&acirc;y là đi&ecirc;̀u khi&ecirc;́n bạn r&acirc;́t khó phát hi&ecirc;̣n đ&ecirc;̉ mua. Đ&ocirc;́i với 1 băng keo dán có 100 Yard, màng có đ&ocirc;̣ dày 43 mic, ri&ecirc;ng ph&acirc;̀n băng keo là khoảng 13 ly.... Do đó đ&ecirc;̉ có được 1 cu&ocirc;̣c băng keo t&ocirc;́t nh&acirc;́t n&ecirc;n lưu ý đ&ecirc;́n ph&acirc;̀n này nhé. Ngoài ra bạn hãy lưu ý đ&ecirc;́n đ&ocirc;̣ mảnh của nó vì m&ocirc;̃i cu&ocirc;̣n băng dán thùng có tu&ocirc;̉i thọ nhau vì kích thước m&ecirc;̀m mỏng này.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<h3 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"background-color:white\">Lớp keo của cu&ocirc;̣n băng </span></span></span></span></h3>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><span style=\"background-color:white\">Trong quá trình sản xu&acirc;́t những c&ocirc;ng ty hay cở sở đ&ecirc;̀u có quy chu&acirc;̉n trong vi&ecirc;̣c trải keo nhưng vì chút lợi nhu&acirc;̣n trong kinh doanh mà cách doanh nghi&ecirc;̣p đã tăng th&ecirc;m lợi nhu&acirc;̣n mà lượng keo sẽ giảm đi đ&ecirc;̉ giảm giá thành. Do đó n&ecirc;n bạn mua phải loại <strong>keo này sẽ d&ecirc;̃ bị bong h&ecirc;́t sau khi dán thùng</strong>.</span></span></span></p>\r\n\r\n<h3 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"background-color:white\">Đ&ocirc;̣ r&ocirc;̣ng của giải băng dán thùng</span></span></span></span></h3>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><span style=\"background-color:white\">Tuy đ&ocirc;̣ r&ocirc;̣ng khá tương đ&ocirc;̀ng nhau nhưng bạn n&ecirc;n ki&ecirc;̉m tra đ&ecirc;̉ đảm bảo tu&ocirc;̉i thọ khi sử dụng v&ecirc;̀ sau.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><img alt=\"băng keo dán thùng\" src=\"upload/bang-keo-dan-thung.png/\" /></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:14pt\"><span style=\"color:black\"><em><span style=\"background-color:white\">Hình 2 : Băng keo dán thùng ở thị trường.</span></em></span></span></p>\r\n\r\n<h3 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"background-color:white\">Ch&acirc;́t lượng các cu&ocirc;̣n kh&ocirc;ng đ&ocirc;̀ng đi&ecirc;̀u </span></span></span></span></h3>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><span style=\"background-color:white\">Vi&ecirc;̣c đưa ra thị trường từ l&ocirc; hàng sẽ được phía b&ecirc;n nhà sản xu&acirc;́t đưa ra nhưng trong những cu&ocirc;̣n được bán ra sẽ có nhưng cu&ocirc;̣n kh&ocirc;ng đúng chu&acirc;̉n. Chính đi&ecirc;̀u này sẽ kh&ocirc;ng đảm bảo được tu&ocirc;̉i thọ cũng như ch&acirc;́t lượng khi dán thùng.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><span style=\"background-color:white\">Tr&ecirc;n đ&acirc;y là những quy chu&acirc;̉n và các th&ocirc;ng tin chi ti&ecirc;́t v&ecirc;̀ <strong>băng keo dán thùng</strong> mà các bạn có th&ecirc;̉ tham khảo đ&ecirc;̉ tránh hàng giả, hàng nhái và hàng kém ch&acirc;́t lượng. Đặc bi&ecirc;̣t là trong giai đoạn c&ocirc;ng ngh&ecirc;̣ hi&ecirc;̣n đại như b&acirc;y giờ.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><strong><span style=\"font-size:14pt\"><span style=\"color:black\"><em><span style=\"background-color:white\">N&ecirc;́u bạn có nhu c&acirc;̀u v&ecirc;̀ mua các băng keo dán thùng hoặc các dòng keo khác thì hãy li&ecirc;n h&ecirc;̣ với <a href=\"http://vitoen.com/\">vitoen.com</a> để được tư vấn v&agrave; hỗ trợ trong thời gian sớm nhất.</span></em></span></span></strong></p>', '<p><span style=\"font-size:16px\"><strong>M&agrave;u sắc của băng keo :</strong>&nbsp;Nhi&ecirc;̀u màu<br />\r\n<strong>Th&agrave;nh phần c&acirc;́u tạo keo:</strong> </span>Acrylic<span style=\"font-size:16px\">.<br />\r\n<strong>Độ d&agrave;y băng keo</strong>: 0.3mm hoặc 0.4mm.<br />\r\n<strong>Đ&ocirc;̣ k&ecirc;́t dính </strong>: &gt;50Mic.<br />\r\n<strong>Chiều d&agrave;i của đoạn băng:</strong> &gt;100 Yard.<br />\r\n<strong>Chịu nhiệt trong khoảng max </strong>: &nbsp;70&deg;C.<br />\r\n<strong>K&iacute;ch cỡ trong k&ecirc;́t c&acirc;́u chi&ecirc;̀u r&ocirc;̣ng </strong>: &gt;48mm.<br />\r\n<strong>Kh&ocirc;́i lượng m&ocirc;̃i cu&ocirc;̣n : </strong>&gt;0.2 Kg.</span></p>', '', 27, 40, 3, '2018-04-28 10:00:54', '2018-05-02 03:15:56'),
(62, '241689753', 'Băng keo dán nền', 'Băng keo dán nền', 'Băng keo dán nền dùng để dán nền và sàn trong nhà, xí nghiệp hay xưởng...hoặc phần khu vực khác. Dòng keo này sẽ được sử dụng trong các công việc khác. Dòng sản phẩm này ngày  càng sử dụng  rộng rãi hơn', 'bang-keo-dan-nen', 'bang-viny-tape-g0no7wpmq1rd.jpg', 1, NULL, '0.00', '0.00', '', '<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Băng keo dán n&ecirc;̀n</strong> là loại băng keo được chuy&ecirc;n dùng đ&ecirc;̉ dán n&ecirc;̀n và sàn trong nhà, xí nghi&ecirc;̣p hay xưởng...hoặc ph&acirc;̀n khu vực khác. Loại băng keo này sử dụng ph&ocirc;̉ bi&ecirc;́n trong kh&ocirc;ng gian r&ocirc;̣ng và các ngành c&ocirc;ng nghi&ecirc;̣p. C&ocirc;ng dụng đặc bi&ecirc;̣t của băng keo n&agrave;y chính là ph&acirc;n chia khu vực hay đánh d&acirc;́u mã sản ph&acirc;̉m hoặc tạo đường như mong mu&ocirc;́n khi che chắn sơn.... Sau đ&acirc;y chúng ta hãy tìm hi&ecirc;̉u kỹ hơn v&ecirc;̀ loại băng keo này.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><img alt=\"mẫu băng keo dán nền\" src=\"upload/mau-bang-keo-dan-nen.jpg/\" /></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:14pt\"><span style=\"color:black\"><em><span style=\"background-color:white\">Băng keo d&aacute;n nền tr&ecirc;n thị trường</span></em></span></span></p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:13pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"font-size:18.0pt\">Giới thi&ecirc;̣u sơ qua của băng keo d&aacute;n nền và th&ocirc;ng s&ocirc;́ kỹ thu&acirc;̣t</span></span></span></span></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Băng keo d&aacute;n nền </strong>là dạng băng keo kh&ocirc;ng đ&ecirc;̉ lại keo ở tr&ecirc;n b&ecirc;̀ mặt và kh&ocirc;ng bao giờ đ&ocirc;̉i màu ở nhi&ecirc;̣t đ&ocirc;̣ 4 &ndash; 77 đ&ocirc;̣ nhưng mức cao nh&acirc;́t có th&ecirc;̉ được áp dụng là 150 đ&ocirc;̣ C. Khi bạn sử dụng băng keo dán n&ecirc;̀n đ&ecirc;̉ che chắn thì mặt sàn sẽ kh&ocirc;ng bị dính sơn. Và tạo ra các 1 đường thẳng đẹp và tuy&ecirc;̣t đ&ocirc;́i khong có răng cửa khi bạn tháo gỡ khi xong vi&ecirc;̣c. Với các ứng dụng n&ocirc;̉i b&acirc;̣t được sử dụng của băng keo là &nbsp;cảnh b&aacute;o, d&aacute;n s&agrave;n cùng với ph&acirc;n biệt Layout trong nh&agrave; xưởng. Và các c&ocirc;ng tr&igrave;nh, đường ống, và các bi&ecirc;̉n cảnh b&aacute;o nguy hiểm, d&ugrave;ng cho những k&iacute;ch thước nhỏ, đường cong uốn, hoặc có đ&ocirc;̣ phức tạp m&agrave; băng keo giấy khác kh&ocirc;ng có chức năng này.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">K&iacute;ch thước chu&acirc;̉n thường dùng là 127mm * 30m. Ngoài ra bạn có th&ecirc;̉ cắt c&aacute;c k&iacute;ch thước theo y&ecirc;u cầu vì mục đích sử dụng như: 47mm * 30m, 60mm * 30m ...&nbsp; Cùng độ d&agrave;y là: 0.170mm, với hệ số gi&atilde;n d&agrave;i băng keo dán n&ecirc;̀n là: 180% so với kích thước ban đ&acirc;̀u. Với độ d&iacute;nh của <strong><span style=\"background-color:white\">băng keo d&aacute;n nền</span></strong> là 0.3kg/cm2.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Là m&ocirc;̣t m&acirc;̃u sản phẩm băng d&iacute;nh d&aacute;n nền n&agrave;y kh&ocirc;ng để lại keo. Nhưng khi b&oacute;c băng d&iacute;nh cũ để thay bằng lớp băng d&iacute;nh mới kh&ocirc;ng đ&ecirc;̉ lại tàn dư.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><img alt=\"Cuộn băng keo dán nền\" src=\"upload/cuon-bang-keo-dan-nen.jpg/\" /></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:14pt\"><span style=\"color:black\"><em><span style=\"background-color:white\">Băng keo d&aacute;n nền đi&ecirc;̉n hình</span></em></span></span></p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"font-size:18.0pt\">Các loại băng keo dán n&ecirc;̀n đang có tr&ecirc;n thị trường</span></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Những <strong>băng keo dán n&ecirc;̀n</strong> của 3M là dòng băng keo có 1 mặt với nhi&ecirc;̀u màu sắc tr&ecirc;n m&ocirc;̃i sản ph&acirc;̉m. Bản th&acirc;n loại băng keo dán n&ecirc;̀n có đ&ocirc;̣ bám dính cao. Và sử dụng được nhi&ecirc;̀u loại v&acirc;̣t li&ecirc;̣u và chịu sự mài mòn r&acirc;́t cao.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Loại băng keo 3M này có 3 loại được ph&acirc;n chia như :</strong></span></span></p>\r\n\r\n<h3 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"font-size:16.0pt\">Băng keo dán n&ecirc;̀n 471 </span></span></span></span></h3>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">là m&ocirc;̣t sản ph&acirc;̉m đ&acirc;̀u tay của t&acirc;̣p đoàn 3M. Với ưu đi&ecirc;̉m chủ đạo là khả năng chịu nhi&ecirc;̣t khá&nbsp; t&ocirc;́t từ 4 đ&ocirc;̣ l&ecirc;n 77 đ&ocirc;̣ C. Với các dải màu được tung ra thị trưởng là : Vàng, Đỏ, Cam, Xanh dương, Xanh lá c&acirc;y, Đen, Trong su&ocirc;́t, Tím, N&acirc;u. Được sử dụng chủ y&ecirc;́u là dán n&ecirc;̀n, ph&acirc;n làn, chen sơn hoặc đánh d&acirc;́u khu vực nhưng khu vực nguy hi&ecirc;̉m. Và đi&ecirc;̀u đặc bi&ecirc;̣t của dòng băng dán này là có khả năng chịu mài mòn t&ocirc;́t.</span></span></p>\r\n\r\n<h3 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"font-size:18.0pt\">Băng keo dán n&ecirc;̀n 764 </span></span></span></span></h3>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Cũng là m&ocirc;̣t sản ph&acirc;̉m của 3M. Với ưu đi&ecirc;̉m chủ đạo là khả năng chịu nhi&ecirc;̣t khá&nbsp; t&ocirc;́t từ 4 đ&ocirc;̣ l&ecirc;n 77 đ&ocirc;̣ C. Với các dải màu được tung ra thị trưởng là : Vàng, Đỏ , Cam, Xanh dương, xanh lá c&acirc;y, đen, trong su&ocirc;́t, tím, n&acirc;u. Đặc tính n&ocirc;̉i tr&ocirc;̣i của loại keo 764 là khả năng k&ecirc;́t dính tr&ecirc;n nhi&ecirc;̀u loại v&acirc;̣t li&ecirc;̣u. Và với bản ch&acirc;́t là dẻo, d&ecirc;̃ dàng gở bỏ sau khi xong vi&ecirc;̣c và tính năng m&ecirc;̀m khi ti&ecirc;́p xúc với chúng.</span></span></p>\r\n\r\n<h3 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"font-size:18.0pt\">Băng keo dán n&ecirc;̀n 766 </span></span></span></span></h3>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Cũng là 1 trong 3 dòng sản ph&acirc;̉m của keo dán n&ecirc;̀n 3M. Nhưng đi&ecirc;̉m khác nằm ở ch&ocirc;̃ nhưng dòng sản ph&acirc;̉m tr&ecirc;n có tới 10 nhưng băng keo 766 có hai màu chính là vàng và đen. Với ưu đi&ecirc;̉m chủ đạo là khả năng chịu nhi&ecirc;̣t khá&nbsp; t&ocirc;́t từ 4 đ&ocirc;̣ l&ecirc;n 77 đ&ocirc;̣ C. Và tính năng &acirc;́n tượng của dòng này là linh hoạt, d&ecirc;̃ dàng tháo bỏ khi c&acirc;̀n.</span></span></p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"font-size:18.0pt\">T&ocirc;̉ng k&ecirc;́t : </span></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Tr&ecirc;n đ&acirc;y là những v&acirc;́n đ&ecirc;̀ li&ecirc;n quan đ&ecirc;́n <strong><span style=\"background-color:white\">băng keo d&aacute;n nền</span></strong><span style=\"background-color:white\"> mà bạn có có th&ecirc;̉ tham khảo đ&ecirc;̉ chọn mua được t&ocirc;́t hơn.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><em><span style=\"background-color:white\">N&ecirc;́u bạn có nhu c&acirc;̀u v&ecirc;̀ mua các băng keo dán n&ecirc;̀n hoặc các dòng keo khác thì hãy li&ecirc;n h&ecirc;̣ với&nbsp;</span></em><strong><em><span style=\"background-color:white\">vitoen</span></em></strong><em><span style=\"background-color:white\">&nbsp;đ&ecirc;̉ được phục vụ !</span></em></span></span></p>', '<p><br />\r\n<span style=\"font-size:16px\"><strong>M&agrave;u sắc của băng keo : </strong>Nhi&ecirc;̀u màu.<br />\r\n<strong>Th&agrave;nh phần c&acirc;́u tạo keo:</strong> Acrylic + phụ gia khác.<br />\r\n<strong>Thành ph&acirc;̀n tạo màng : </strong>Nhựa pe, opp, pvc.<br />\r\n<strong>Độ d&agrave;y băng keo: </strong>&gt;47mm<strong>.<br />\r\nĐ&ocirc;̣ k&ecirc;́t dính : </strong>0.3kg/cm3<strong>.<br />\r\nChiều d&agrave;i của đoạn băng: </strong>&gt;30m.<br />\r\n<strong>Chịu nhiệt max&nbsp;:&nbsp; 15</strong>0&deg;C<strong>.<br />\r\nTỉ l&ecirc;̣ dàn h&ocirc;̀i : </strong>180%<strong>.<br />\r\nKh&ocirc;́i lượng m&ocirc;̃i cu&ocirc;̣n : </strong>&gt;0.2 Kg<strong>.</strong></span></p>', '', 34, 40, 4, '2018-04-28 10:45:18', '2018-05-01 19:40:50');
INSERT INTO `product` (`id`, `code`, `fullname`, `meta_keyword`, `meta_description`, `alias`, `image`, `status`, `child_image`, `price`, `sale_price`, `intro`, `detail`, `technical_detail`, `video_id`, `count_view`, `category_id`, `sort_order`, `created_at`, `updated_at`) VALUES
(63, '526743189', 'Băng keo giấy nâu', '', 'Băng keo giấy nâu được sử dụng phổ biến ở trong  cuộc sống thường nhật. Là sự kết hợp giữa một màng giấy mỏng, mịn và có ứng dụng đối cao trong cuộc sống thường nhật', 'bang-keo-giay-nau', 'bang-keo-giay-nau-a1b2zqet5v9s.jpg', 1, NULL, '0.00', '0.00', '', '<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Băng keo gi&acirc;́y n&acirc;u</strong> cũng tương tự những các dòng băng keo khác. Chúng được sử dụng ph&ocirc;̉ bi&ecirc;́n ở trong&nbsp; cu&ocirc;̣c s&ocirc;́ng thường nh&acirc;̣t. Băng keo này là sự k&ecirc;́t hợp giữa m&ocirc;̣t màng gi&acirc;́y mỏng và mịn mà có ứng dụng tương đ&ocirc;́i cao. Sau đ&acirc;y chúng ta hãy tìm hi&ecirc;̉u chi ti&ecirc;́t loại băng keo này.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><img alt=\"băng keo giấy nâu\" src=\"upload/bang-keo-giay-nau.jpg/\" /></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:14pt\"><span style=\"color:black\"><em>Hình 1 : Băng keo gi&acirc;́y n&acirc;u.</em></span></span></p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"font-size:20.0pt\">Các đặc tính của băng keo gi&acirc;́y n&acirc;u</span></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">T&ecirc;n gọi khác của <strong>băng keo gi&acirc;y n&acirc;u</strong> (băng keo gi&acirc;́y da bò) l&agrave; một loại băng d&aacute;n l&agrave;m bằng chất liệu giấy r&aacute;p, kh&aacute; d&agrave;y v&agrave; r&acirc;́t dẻo dai. Với hai loại được c&acirc;́u thành là giấy b&ograve; nh&aacute;m v&agrave; giấy b&ograve; l&aacute;ng. Là loại băng keo có ứng dụng tr&ecirc;n thực t&ecirc;́ r&acirc;́t ph&ocirc;̉ bi&ecirc;́n. </span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Bề mặt băng keo giấy b&ograve; l&aacute;ng được phủ th&ecirc;m lớp keo cao su h&ograve;a tan tr&ecirc;n bề mặt n&ecirc;n c&oacute; khả năng chịu được m&ocirc;i trường nhiệt độ cao, băng keo giấy b&ograve; nh&aacute;m c&oacute; độ bền kh&aacute; cao, độ dai cực tốt v&agrave; c&oacute; thể ghi ch&uacute; th&ocirc;ng tin dễ d&agrave;ng l&ecirc;n bề mặt nh&aacute;m của băng keo.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Ch&iacute;nh v&igrave; sở hữu những đặc t&iacute;nh ưu việt n&ecirc;n băng keo giấy n&acirc;u cũng l&agrave; sự lựa chọn h&agrave;ng đầu cho nhiều ứng dụng hữu &iacute;ch trong thực tế.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Băng keo giấy n&acirc;u</strong> g&acirc;y ấn tượng với người d&ugrave;ng bởi độ bền cực tốt. Băng keo giấy b&ograve; l&aacute;ng, đặc biệt kh&ocirc;ng thấm nước n&ecirc;n chịu được mội trường khắc nghiệt, ứng dụng v&agrave;o việc đ&oacute;ng g&oacute;i những th&ugrave;ng h&agrave;ng c&oacute; trọng lượng nặng, bảo quản tốt, qu&aacute; tr&igrave;nh vận chuyển d&agrave;i ng&agrave;y phục vụ cho những đơn h&agrave;ng xuất khẩu.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"font-size:18.0pt\">Ứng dụng tr&ecirc;n thực t&ecirc;́ của băng keo gi&acirc;́y n&acirc;u</span></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Trong c&aacute;c kh&aacute;ch sạn cao cấp hiện nay hoặc các c&ocirc;ng ty kinh doanh lớn thì họ thường dùng loại băng keo này đ&ecirc;̉ trang trí. Hoặc trong c&aacute;c nơi tổ chức event hoặc sự ki&ecirc;̣n nào người ta cũng thường hay sử dụng loại băng này. Việc l&oacute;t một lớp băng keo giấy b&ograve; l&aacute;ng xuống đ&aacute;y thảm vừa đẹp vừa giữ vệ sinh. Vừa đảm bảo được độ bền cho tấm thảm trước nhiệt độ thay đổi đột ngột của m&ocirc;i trường xung quanh bu&ocirc;̉i l&ecirc;̃ h&ocirc;̣i. <strong>Băng keo giấy n&acirc;u</strong> c&ograve;n được d&ugrave;ng để d&aacute;n l&ecirc;n bề các mặt sản phẩm để nhằm chống trầy xước. C&oacute; thể bảo quản trong thời gian d&agrave;i.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><img alt=\"cuộn băng keo nâu\" src=\"upload/cuon-bang-keo-tt.jpg/\" /></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:14pt\"><span style=\"color:black\"><em>Hình 2 : Các loại băng keo gi&acirc;y n&acirc;u tr&ecirc;n thị trường.</em></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Nắm bắt được t&iacute;nh hữu dụng v&agrave; ưu điểm của các nhu c&acirc;̀u v&ecirc;̀ sử dụng băng keo giấy n&acirc;u. Nhi&ecirc;̀u c&ocirc;ng ty ở thì trường trong nước b&acirc;́t đ&acirc;̀u có những bước đi. Trong sản xu&acirc;́t và trở th&agrave;nh nh&agrave; cung cấp băng keo giấy n&acirc;u cho kh&aacute;ch h&agrave;ng. </span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">M&ocirc;̣t s&ocirc;́ c&ocirc;ng ty uy tín ở vi&ecirc;̣t nam hi&ecirc;̣n tại đang cung c&acirc;́p hai loại băng keo này. Bao gồm băng keo giấy b&ograve; nh&aacute;m và băng keo giấy b&ograve; l&aacute;ng. Với k&ecirc;́t c&acirc;́u kỹ thu&acirc;̣t là 5 cm, 2.5 cm cùng với độ d&agrave;i 50 yard đ&ocirc;́i với băng keo giấy b&ograve; nh&aacute;m c&oacute; thể ghi ch&uacute; được. Với k&ecirc;́t c&acirc;́u kỹ thu&acirc;̣t 4.8 cm, 2.4 cm cùng với độ d&agrave;i 50 yard đ&ocirc;́i với băng keo láng bò. Ngo&agrave;i ra còn có các quy c&aacute;ch và k&ecirc;́t c&acirc;́u kỹ thu&acirc;̣t kh&aacute;c, t&ugrave;y theo y&ecirc;u cầu của khách hàng, vừa đảm bảo chất lượng băng keo tuyệt đối. C&ugrave;ng với mức gi&aacute; hợp l&yacute;, ưu đ&atilde;i cho mọi khách hàng.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"font-size:18.0pt\"><span style=\"background-color:white\">K&ecirc;́t lu&acirc;̣n : </span></span></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><span style=\"background-color:white\">Tr&ecirc;n đ&acirc;y là những quy chu&acirc;̉n và các th&ocirc;ng tin chi ti&ecirc;́t v&ecirc;̀ <strong>băng keo gi&acirc;́y n&acirc;u </strong>mà các bạn có th&ecirc;̉ tham khảo đ&ecirc;̉ tránh hàng giả hoặc hàng kém ch&acirc;́t lượng. Đặc bi&ecirc;̣t là trong giai đoạn c&ocirc;ng ngh&ecirc;̣ hi&ecirc;̣n đại và thay đ&ocirc;̉i nhanh chóng như b&acirc;y giờ.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><em><span style=\"background-color:white\">N&ecirc;́u bạn có nhu c&acirc;̀u v&ecirc;̀ mua các băng keo gi&acirc;́y n&acirc;u hoặc các dòng keo khác thì hãy li&ecirc;n h&ecirc;̣ với&nbsp;<strong>vitoen</strong>&nbsp;đ&ecirc;̉ được phục vụ !</span></em></span></span></p>', '<p><span style=\"font-size:16px\"><strong>M&agrave;u sắc của băng keo </strong>: Màu n&acirc;u<br />\r\n<strong>Th&agrave;nh phần c&acirc;́u tạo keo :</strong> Acrylic + phụ gia khác<br />\r\n<strong>Thành ph&acirc;̀n tạo màng</strong> : Nhựa OPP.<br />\r\n<strong>Độ d&agrave;y băng keo&nbsp;</strong>: &gt;47mm.<br />\r\n<strong>Đ&ocirc;̣ k&ecirc;́t dính :</strong> 0.3kg/cm3.<br />\r\n<strong>Chiều d&agrave;i của đoạn băng</strong>: 50Yard.<br />\r\n<strong>Chịu nhiệt Max</strong>&nbsp;: 70&deg;C.<br />\r\n<strong>Kh&ocirc;́i lượng m&ocirc;̃i cu&ocirc;̣n</strong> : &gt;0.2 Kg.</span></p>', '', 14, 40, 5, '2018-04-29 09:17:19', '2018-05-01 19:40:52'),
(64, '648172593', 'Băng keo vải', '', 'Băng keo vải có đặc tính khá tốt và độ dính rất phù hợp với mọi bề mặt của chất liệu với mọi mục đích sử dụng như ngành đặc thù về sơn, bắn cát đồ vật...', 'bang-keo-vai', 'bang-keo-vai-yf2qgnap1rd9.jpg', 1, NULL, '0.00', '0.00', '', '<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong><span style=\"background-color:white\">Băng keo vải</span></strong><span style=\"background-color:white\"> là sự k&ecirc;́t hợp nhu&acirc;̀n nhuy&ecirc;̃n các sợi vải nguy&ecirc;n ch&acirc;́t k&ecirc;́t hợp lớp keo cao su. Đ&ecirc;̉ tạo ra m&ocirc;̣t sản ph&acirc;̉m đặc bi&ecirc;̣t đó là băng keo vải. Đ&ocirc;́i với sản ph&acirc;̉m này bản ch&acirc;́t nó có c&acirc;́u trúc b&ecirc;̀n vững và chắc chắn. Với các đặc tính khá t&ocirc;́t tr&ecirc;n sản ph&acirc;̉m này mang đ&ecirc;́n đ&ocirc;̣ dính r&acirc;́t phù hợp với mọi b&ecirc;̀ mặt của ch&acirc;́t li&ecirc;̣u với mọi mục đích sử dụng như ngành đặc thù v&ecirc;̀ sơn, bắn cát đ&ocirc;̀ v&acirc;̣t. Sau đ&acirc;y chúng ta cùng tìm hi&ecirc;̉u loại <strong>băng keo vải</strong> đặc bi&ecirc;̣t này. </span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><img alt=\"băng keo vải\" src=\"upload/bang-keo-vai.jpg/\" /></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:14pt\"><span style=\"color:black\"><em>Hình 1: Giải băng keo vải tr&ecirc;n thị trường.</em></span></span></p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"font-size:18.0pt\">Các th&ocirc;ng s&ocirc;́ kỹ thu&acirc;̣t của m&acirc;̃u băng keo vải</span></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Băng keo vải được c&acirc;́u tạo thành các sản ph&acirc;̉m với các màu sắc được lựa chọn là màu xanh (Đậm v&agrave; nhạt), n&acirc;u và bạc, trắng, v&agrave;ng, da cam hoặc đen, đỏ,...&nbsp; V&ecirc;̀ chi&ecirc;̀u r&ocirc;̣ng được k&ecirc;́t c&acirc;́u thành ph&acirc;̉m với kích thước là 2.4F, 3.6F và&nbsp; 4.8F hoặc 5F, 6F,...&nbsp; v&ecirc;̀ k&ecirc;́t c&acirc;́u chi&ecirc;̀u dài được ph&acirc;n thành ở khoảng từ 10 Ya, 20 Ya, 30 Ya, 40 Ya, 50 Ya, 60 Ya, 70 Ya, 90 Ya, 80 Ya... Với đơn vị quy đ&ocirc;̉i sẽ là 1 Yard(Ya) sẽ bằng 0.9m tr&ecirc;n đơn vị đo lường của vi&ecirc;̣t nam. Tuy nhi&ecirc;n n&ecirc;́u bạn có nhu c&acirc;̀u mua loại băng keo này thì có th&ecirc;̉ y&ecirc;u c&acirc;̀u theo Ya. Nhằm linh đ&ocirc;̣ng hơn trong giải quy&ecirc;́t c&ocirc;ng vi&ecirc;̣c mà mình đang làm.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Đ&ocirc;̣ b&ecirc;̀n của loại bằng keo vải sẽ là 12,5 KGF/ 25MM. Với mức chịu nhi&ecirc;̣t sẽ dao đ&ocirc;̣ng trong dải từ 85 đ&ocirc;̣ đ&ecirc;́n 180 đ&ocirc;̣ C. Với đ&ocirc;̣ giãn kéo sẽ là 14%&nbsp; so với đ&ocirc;̣ giãn ban đ&acirc;̀u. Được c&acirc;́u tạo từ 65% Polyester cùng với 35% Cotton trong thành ph&acirc;̀n c&acirc;́u thành tr&ecirc;n mọi sản ph&acirc;̉m.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"font-size:18.0pt\">Chi ti&ecirc;́t v&ecirc;̀ c&acirc;́u tạo băng keo vải</span></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Lớp sợi được đặt ngang hoặc dọc giúp chúng k&ecirc;́t n&ocirc;́i với nhau tạo n&ecirc;n mảng chắc chắn và chịu được lực đàn h&ocirc;̀i lớn khi sử dụng. Lớp keo dính được đi&ecirc;̉m ch&acirc;́t lượng cao khi trải l&ecirc;n mà kh&ocirc;ng ảnh hưởng màu sắc hay ch&acirc;́t lượng của băng keo vải.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Loại keo này thu&ocirc;̣c vào keo 1 mặt dính do đó được tạo thành r&acirc;́t tỉ mỉ. Xử lý đ&ecirc;̉ keo kh&ocirc;ng dính được l&ecirc;n b&ecirc;̀ mặt và mặt kia được phủ 1 lớp keo với t&ecirc;n Acrylic. Đi&ecirc;̀u đặc bi&ecirc;̣t của lớp keo này chính là có đ&ocirc;̣ dày l&ecirc;n đ&ecirc;́n cả 300 Micron. Như v&acirc;̣y so sánh v&ecirc;̀ mặt v&acirc;̣t lý thì loại keo duy nh&acirc;́t có đ&ocirc;̣ đ&acirc;̀y hơn g&acirc;́p 5 l&acirc;̀n so với loại băng keo khác, ví dụ như băng keo dán thùng chẳng hạn.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"font-size:18.0pt\">Đặc tính của băng keo vải</span></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Băng keo vải</strong> có khả năng như chịu đựng ở dải nhi&ecirc;̣t đ&ocirc;̣ r&ocirc;̣ng, cách đi&ecirc;̣n t&ocirc;́t và có ưu đi&ecirc;̉m n&ocirc;̉i tr&ocirc;̣i là khả năng ch&ocirc;́ng được tia UV v&ocirc; cùng lợi hại. Nhưng nhược đi&ecirc;̉m của loại keo này chính là ảnh hưởng s&acirc;u sắc từ thời ti&ecirc;́t&nbsp; và khi h&acirc;̣u. Do đó vì sao ở mi&ecirc;̀n bắc khi sử dụng loại này có tu&ocirc;̉i thọ kh&ocirc;ng cao bằng mi&ecirc;̀n nam là vì th&ecirc;́.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><img alt=\"các giải băng keo vải\" src=\"upload/cac-bang-dinh-vai.jpg\" /></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:14pt\"><span style=\"color:black\"><em>Hình 2 : Các băng keo vải.</em></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Ngoài ra những đặc tính của loại keo này được sử dụng r&ocirc;̣ng rãi trong nhi&ecirc;̀u lĩnh vực và các c&ocirc;ng vi&ecirc;̣c khác như dán inox, dán vào các thùng hàng c&acirc;̀n được đóng góp nặng. Hoặc đơn gian hơn chúng được sử dụng đ&ecirc;̉ trang trí trong nhà.</span></span></p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"font-size:18.0pt\"><span style=\"background-color:white\">K&ecirc;́t lu&acirc;̣n : </span></span></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><span style=\"background-color:white\">Tr&ecirc;n đ&acirc;y là những quy chu&acirc;̉n và các th&ocirc;ng tin chi ti&ecirc;́t v&ecirc;̀ <strong>băng keo vải </strong>mà các bạn có th&ecirc;̉ tham khảo đ&ecirc;̉ tránh hàng giả và hàng kém ch&acirc;́t lượng. Đặc bi&ecirc;̣t là trong giai đoạn c&ocirc;ng ngh&ecirc;̣ hi&ecirc;̣n đại như b&acirc;y giờ.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><em><span style=\"background-color:white\">N&ecirc;́u bạn có nhu c&acirc;̀u v&ecirc;̀ mua các băng keo dán vải hoặc các dòng keo khác thì hãy li&ecirc;n h&ecirc;̣ với&nbsp;<strong>vitoen</strong>&nbsp;đ&ecirc;̉ được phục vụ !</span></em></span></span></p>', '<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><strong><span style=\"font-size:16px\">M&agrave;u sắc của băng keo :</span></strong><span style=\"font-size:16px\"> Nhi&ecirc;̀u màu.</span><br />\r\n<strong><span style=\"font-size:16px\">Th&agrave;nh phần c&acirc;́u tạo keo:</span></strong><span style=\"font-size:16px\"> Acrylic</span><br />\r\n<strong><span style=\"font-size:16px\">Thành ph&acirc;̀n tạo màng : </span></strong><span style=\"font-size:16px\">Nhựa opp + Màu.</span><br />\r\n<strong><span style=\"font-size:16px\">Độ d&agrave;y băng keo: </span></strong><span style=\"font-size:16px\">&gt;47mm.</span><br />\r\n<strong><span style=\"font-size:16px\">Đ&ocirc;̣ k&ecirc;́t dính : </span></strong><span style=\"font-size:16px\">&gt;2.4F.</span><br />\r\n<strong><span style=\"font-size:16px\">Tỉ l&ecirc;̣ đàn h&ocirc;̀i : </span></strong><span style=\"font-size:16px\">14%.</span><br />\r\n<strong><span style=\"font-size:16px\">Chiều d&agrave;i của đoạn băng: </span></strong><span style=\"font-size:16px\">&gt;10 Yard.</span><br />\r\n<strong><span style=\"font-size:16px\">Chịu nhiệt Max&nbsp;:&nbsp; </span></strong><span style=\"font-size:16px\">180&deg;C.</span></p>', '', 14, 40, 6, '2018-04-29 09:44:43', '2018-05-01 19:41:02'),
(65, '761253984', 'Băng keo hai mặt', 'Băng keo 2 mặt', 'Băng keo hai mặt là một loại băng keo có sự ứng dụng rất cao trong cuộc sống chúng ta như cố định gương vào tường, dán một tấm thảm tạm thời lên sàn... hoặc cần treo một bức tranh đẹp lên tường.', 'bang-keo-hai-mat', 'bang-keo-hai-mat-giay-aobdi3xfeu9v.jpg', 1, '[\"bang-keo-2-mat-cao-cap-l4q0r89bjgdi.jpg\",\"bang-dinh-2-mat-chat-luong-cao-5qwk0x4petm1.jpg\",\"bang-dinh-2-mat-31xky7umwd5e.png\"]', '0.00', '0.00', '', '<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong><span style=\"background-color:white\">Băng keo hai mặt</span></strong><span style=\"background-color:white\"> là m&ocirc;̣t loại băng keo có sự ứng dụng r&acirc;́t cao trong cu&ocirc;̣c s&ocirc;́ng chúng ta. Chẳng hạn như c&ocirc;́ định gương vào tường, dán m&ocirc;̣t t&acirc;́m thảm tạm thời l&ecirc;n sàn... hoặc c&acirc;̀n treo m&ocirc;̣t bức tranh đẹp l&ecirc;n tường. V&igrave; thế, n&ecirc;n sử dụng <strong>loại keo hai mặt</strong> l&agrave; lý tưởng nh&acirc;́t trong những trường hợp này. C&ocirc;ng ty <strong>Vitoen </strong>là chuy&ecirc;n cung ứng các loại keo trong đó có keo 2 mặt. Sau đ&acirc;y chúng ta hãy tìm hi&ecirc;̉u các v&acirc;́n đ&ecirc;̀ li&ecirc;n quan đ&ecirc;́n loại keo này.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><img alt=\"băng keo 2 mặt\" src=\"upload/bang-dinh-2-mat-chat-luong-cao.jpg/\" /></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:14pt\"><span style=\"color:black\"><em><span style=\"background-color:white\">Hình ảnh: Băng keo hai mặt.</span></em></span></span></p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"font-size:18.0pt\"><span style=\"background-color:white\">C&acirc;́u trúc của băng keo hai mặt </span></span></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><span style=\"background-color:white\">Đ&ecirc;̉ tạo ra loại băng keo này thì phải sử dụng với nhi&ecirc;̀u lớp khác nhau trong k&ecirc;́t c&acirc;́u. Lớp keo được phủ l&ecirc;n 2 mặt của băng keo và được phủ l&ecirc;n m&ocirc;̣t lớp gi&acirc;́y trơn đ&ecirc;̉ cu&ocirc;̣n vào khung. Cụ th&ecirc;̉ như sau: </span></span></span></p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"font-size:18.0pt\">Lớp nền băng keo hai mặt</span></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Lớp nền có t&iacute;nh năng ch&iacute;nh của băng keo hai mặt. Đối với bề mặt th&ocirc; r&aacute;p, băng keo xốp d&agrave;y l&agrave; giải ph&aacute;p. Được sử dụng băng keo phim mỏng cho li&ecirc;n kết trong suốt v&agrave; băng keo hiệu suất cao. Và làm ph&acirc;n t&aacute;n lực t&aacute;c động nhờ v&agrave;o thuộc t&iacute;nh thẩm thấu v&agrave; đ&agrave;n hồi cực t&ocirc;́t hơn.</span></span></p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"font-size:18.0pt\">Lớp vỏ băng keo hai mặt</span></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Lớp vỏ bao phủ keo l&agrave; một th&agrave;nh phần quan trọng trong giải băng v&agrave; quy tr&igrave;nh t&aacute;ch rời khi sử dụng. Tại lớp vỏ được làm bằng giấy v&agrave; phim với nhiều đặc t&iacute;nh kh&aacute;c nhau.</span></span></p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"font-size:18.0pt\">Hệ thống keo của băng keo hai mặt</span></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Vi&ecirc;̣c lựa chọn ph&ugrave; hợp về chất keo còn t&ugrave;y thuộc v&agrave;o c&aacute;c <strong>băng keo hai mặt</strong> được sử dụng. Loại bề mặt cùng với vật liệu sẽ được li&ecirc;n kết, thời gian cần li&ecirc;n kết. Trong bao l&acirc;u v&agrave; đ&oacute; c&ocirc;ng cụ trong nh&agrave; hay ngo&agrave;i trời.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"font-size:18.0pt\">Băng keo hai mặt d&agrave;nh cho bạn</span></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Băng keo hai mặt</strong> có khả năng dán l&ecirc;n hai mặt c&acirc;̀n k&ecirc;́t n&ocirc;́i. Do đó tạo li&ecirc;n k&ecirc;́t &acirc;̉n và khó bị phát hi&ecirc;̣n sử được sử dụng. Đặc biệt khi d&aacute;n c&aacute;c đồ trang tr&iacute; treo poster, băng keo hai mặt cực kỳ tiện lợi. Khả năng chịu tải kết d&iacute;nh đủ mạnh để thay thế hiệu quả hơn việc khoan tường. Thay v&igrave; l&agrave;m hỏng tường v&agrave; g&acirc;y bụi bẩn thì chỉ cần sử dụng băng keo hai mặt để treo đồ vật của m&igrave;nh l&ecirc;n một c&aacute;ch chắc chắn.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"font-size:18.0pt\">Lựa chọn băng keo hai mặt vào trang tr&iacute;</span></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Băng keo hai mặt</strong> l&agrave; một c&ocirc;ng ngh&ecirc;̣ t&agrave;i t&igrave;nh v&agrave; ứng dụng cho tất cả những ai y&ecirc;u thích l&agrave;m thủ c&ocirc;ng mỹ nghệ v&agrave; trang tr&iacute; nh&agrave; cửa. Trong phi&ecirc;n bản trước c&aacute;c dải băng keo lu&ocirc;n dễ bị hi&ecirc;n tr&ecirc;n v&agrave; đ&ocirc;i khi tạo ra khiếm khuyết trực quan. Ng&agrave;y nay, phi&ecirc;n bản mới sẽ có sự tinh vi hơn. Và dễ d&agrave;ng giấu băng keo m&agrave; kh&ocirc;ng bị mất kết d&iacute;nh. Do băng keo hai mặt này sẽ kh&ocirc;ng nh&igrave;n thấy được n&ecirc;n mọi sự ch&uacute; &yacute; sẽ hướng về đồ vật.</span></span></p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"font-size:18.0pt\">Băng keo hai mặt trong hoạt đ&ocirc;̣ng sản xu&acirc;́t</span></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Trong hoạt đ&ocirc;̣ng sản xu&acirc;́t <strong>băng keo hai mặt</strong> th&igrave; đ&acirc;y l&agrave; d&acirc;y chuy&ecirc;̀n sản xu&acirc;́t khá &acirc;́n tượng. Băng keo hai mặt cũng như sử dụng trong c&aacute;c thiết bị gia dụng như l&ograve; nướng, tủ lạnh v&agrave; m&aacute;y điều h&ograve;a. C&aacute;c th&agrave;nh phần kết cấu v&agrave; x&acirc;y dựng chẳng hạn như hệ mặt dựng, cửa sổ v&agrave; cửa ra v&agrave;o hay thang m&aacute;y, v&aacute;ch ngăn k&iacute;nh, đồ nội thất, v.v. Trong những lĩnh vực băng keo hai mặt đ&aacute;p ứng được rất nhiều nhiệm vụ. Băng keo hai mặt kh&ocirc;ng chỉ cung cấp lực li&ecirc;n kết cao, bền l&acirc;u. T&ugrave;y thuộc v&agrave;o đặc t&iacute;nh cụ thể của từng loại băng keo. C&oacute; thể ph&acirc;n t&aacute;n lực t&aacute;c động nhờ v&agrave;o đặc t&iacute;nh thẩm thấu đ&agrave;n hồi tốt, chống &ocirc;xy h&oacute;a v&agrave; chịu được bức xạ tia, nhiệt độ khắc nghiệt, l&atilde;o h&oacute;a, độ ẩm v&agrave; h&oacute;a chất.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:16px\"><em>N&ecirc;́u bạn có nhu c&acirc;̀u v&ecirc;̀ mua các băng keo dán vải hoặc các dòng keo khác thì hãy li&ecirc;n h&ecirc;̣ với&nbsp;<strong>vitoen</strong>&nbsp;đ&ecirc;̉ được phục vụ !</em></span></p>', '<p><span style=\"font-size:16px\"><strong>M&agrave;u sắc của băng keo :</strong> Trắng và Đục<br />\r\n<strong>Th&agrave;nh phần c&acirc;́u tạo keo: </strong>Acrylic + phụ gia khác<br />\r\n<strong>Thành ph&acirc;̀n tạo màng :</strong> Nhựa opp, pvc.<br />\r\n<strong>Độ d&agrave;y băng keo: </strong>&gt;30mm.<br />\r\n<strong>Đ&ocirc;̣ k&ecirc;́t dính :</strong> 45Mic.<br />\r\n<strong>Chiều d&agrave;i của đoạn băng :</strong> &gt;10m.<br />\r\n<strong>Chịu nhiệt Max&nbsp;: </strong>&nbsp;100&deg;C.<br />\r\n<strong>Tỉ l&ecirc;̣ dàn h&ocirc;̀i </strong>: 5%.<br />\r\n<strong>Kh&ocirc;́i lượng m&ocirc;̃i cu&ocirc;̣n : </strong>&gt;0.2 Kg.</span></p>', '', 11, 40, 6, '2018-04-29 13:45:02', '2018-05-02 02:04:52'),
(66, '387154629', 'Băng keo Simili', 'Băng keo simili', 'Băng keo simili là sản phẩm được dùng vô cùng hữu dụng trong cuộc sống và công việc ở các văn phòng như dán bia sách, đóng gói sổ sách, trang trí nội thất...', 'bang-keo-simili', 'bang-dinh-simili-gia-q8i160uamvl7.jpg', 1, '[\"bang-dinh-simili-gia1-2az1jpsk4y8o.jpg\",\"bang-dinh-simili-gia2-5hekcd418qr7.jpg\",\"bang-dinh-simili-gia3-i2s60x5dhkvo.png\"]', '0.00', '0.00', '', '<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\"><strong>Băng keo simili</strong> là sản ph&acirc;̉m được d&ugrave;ng v&ocirc; cùng hữu dụng trong cu&ocirc;̣c s&ocirc;́ng và c&ocirc;ng vi&ecirc;̣c ở các văn phòng như dán bia sách, đóng gói s&ocirc;̉ sách, trang trí n&ocirc;̣i th&acirc;́t... Đ&acirc;y là dòng keo m&ocirc;̣t mặt và thi&ecirc;́t k&ecirc;́ có ph&acirc;̀n đặc bi&ecirc;̣t ở ch&ocirc; các đường ngang x&ecirc;́p lớp giúp d&ecirc;̃ dàng xé dán trong khi làm vi&ecirc;̣c với loại keo này. Sau đ&acirc;y là <strong>Vitoen </strong>sẽ giới thi&ecirc;̣u&nbsp;m&ocirc;̣t s&ocirc;́ th&ocirc;ng tin v&ecirc;̀ loại keo này.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"font-size:18.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">C&acirc;́u tạo của băng keo simili</span></span></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Là loại keo được l&agrave;m từ lớp vải da và c&oacute; những thành ph&acirc;̀n nhựa PVC hay còn gọi là giả da, băng keo simili với có đ&ocirc;̣ dính cao và đặc bi&ecirc;̣t là có đ&ocirc;̣ đàn h&ocirc;̀i r&acirc;́t t&ocirc;́t.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Trong dòng sản ph&acirc;̉m <strong>băng keo simili</strong> được c&acirc;́u tạo từ những màu như trắng, xanh, vàng, đỏ....đ&ecirc;̉ tạo đủ b&ocirc;̣ màu sắc đ&ocirc;̣c đáo trong m&ocirc;̃i sản ph&acirc;̉m. Nhằm đáp ứng các sở thích khác nhau của khách hàng. </span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><img alt=\"băng keo simili\" src=\"upload/bang-keo-simili.jpg/\" /></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\"><em>Hình ảnh: Cu&ocirc;̣n băng keo simili nhi&ecirc;̀u màu.</em></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Những kích thước được c&acirc;́u tạo như 2F4, 4F8, 3F6, 5F hoặc 7F..... nhằm đa dạng v&ecirc;̀ giá thành hơn. Chúng được sử dụng đ&ecirc;̉ đóng gáy sách, t&acirc;̣p gi&acirc;́y trong các quán photo copy , trang trí n&ocirc;̣i th&acirc;́t văn phòng, in &acirc;́n và xu&acirc;́t bản.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\"><strong>Băng keo simili</strong> nhiều k&iacute;ch cỡ kh&aacute;c bi&ecirc;̣t nhau được l&agrave;m chất liệu từ simili. Với lớp keo d&aacute;n d&iacute;nh chắc, độ bền dai th&iacute;ch hợp cho mục đ&iacute;ch sử dụng. Đi&ecirc;̉m đặc bi&ecirc;̣t của loại keo này kh&ocirc;ng th&acirc;́m nước.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"font-size:18.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">Tính ph&ocirc;̉ dụng của dòng băng simili</span></span></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Đ&ocirc;́i với băng keo simili ch&iacute;nh l&agrave; loại băng keo c&oacute; nhiều m&agrave;u sắc nh&acirc;́t tr&ecirc;n thị trường đang sử dụng để d&aacute;n g&aacute;y s&aacute;ch vở v&agrave; t&agrave;i liệu. Loại băng keo n&agrave;y hẳn kh&ocirc;ng qu&aacute; xa lạ đối với c&aacute;c bạn học sinh và sinh vi&ecirc;n thường xuy&ecirc;n sử dụng t&agrave;i liệu photo. </span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">L&agrave; <strong>loại băng keo</strong> kh&aacute; phổ biến d&ugrave;ng trong văn ph&ograve;ng v&agrave; c&aacute;c tiệm photocopy n&ecirc;n băng keo simili được sản xuất kh&aacute; ph&ocirc;̉ bi&ecirc;́n hi&ecirc;̣n nay. Với những người thường xuy&ecirc;n sử dụng, họ sẽ kh&ocirc;ng thắc mắc vấn đề n&ecirc;n sử dụng băng keo simili hay kh&ocirc;ng. Mà cái chính họ sẽ quan t&acirc;m đến nơi n&agrave;o b&aacute;n băng keo simili gi&aacute; thành của sản ph&acirc;̉m.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"font-size:18.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">K&iacute;ch thước chu&acirc;́n của băng keo Simili</span></span></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Về quy c&aacute;ch tạo kích thước <strong>băng keo simili</strong> thì có các trong s&ocirc;́ kích thước như 4,8cm x 24 yards, 2,4 cm x 24yards&hellip; tùy thu&ocirc;̣c vào mục đích sử dụng đ&ecirc;̉ khách hàng y&ecirc;u cầu đặt theo từng quy c&aacute;ch mong muốn. Nhằm mang đ&ecirc;́n cho khách hàng sự ti&ecirc;̣n lợi trong c&ocirc;ng vi&ecirc;̣c và giá thành t&ocirc;́t nh&acirc;́t đ&ocirc;́i với Simili.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"font-size:18.0pt\"><span style=\"font-family:&quot;Times New Roman&quot;,&quot;serif&quot;\">Hướng dẫn c&aacute;ch sử dụng v&agrave; bảo quản</span></span></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\"><strong>Băng keo simili</strong> l&agrave; một trong những loại sản phẩm c&oacute; c&aacute;ch sử dụng kh&aacute; đơn giản, tiện lợi nhất ít khi sử dụng đến dao cắt băng keo. Bởi v&igrave; được l&agrave;m từ th&agrave;nh phần nilon mỏng. N&ecirc;n ch&uacute;ng c&oacute; th&ecirc;̉ dễ d&agrave;ng d&ugrave;ng tay x&eacute; theo chiều ngang. Vừa d&ugrave;ng l&agrave;m lớp bảo vệ b&ecirc;n ngo&agrave;i và vừa d&ugrave;ng l&agrave;m tem ghi ch&uacute; cho t&acirc;̣p tài li&ecirc;̣u.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\"><strong>Băng keo simili</strong> l&agrave; một sản phẩm dễ bị t&aacute;c động bởi c&aacute;c nh&acirc;n tố tác đ&ocirc;̣ng b&ecirc;n ngo&agrave;i như: nhiệt độ, lực k&eacute;o, độ ẩm&hellip;Điều n&agrave;y cũng r&acirc;́t dễ hiểu khi th&agrave;nh phần cấu tạo của sản phẩm.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">V&igrave; vậy khi sử dụng băng keo simili bạn phải hết sức lưu &yacute; những đi&ecirc;̉m như sau:</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Kh&ocirc;ng để sản phẩm băng keo simili tiếp x&uacute;c trực tiếp với lửa hay nhiệt độ cao tr&ecirc;n 100 oC.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Trái lại kh&ocirc;ng n&ecirc;n đặt sản phẩm ở những nơi c&oacute; độ ẩm cao hoặc tiếp x&uacute;c với nước đ&ecirc;̉ k&eacute;o d&agrave;i tu&ocirc;̉i thọ cho keo<span style=\"color:red\">.</span> Trong đó ph&acirc;n keo sẽ có đ&ocirc;̣ k&ecirc;́t dính giảm xu&ocirc;́ng. Khi&ecirc;́n cho vi&ecirc;̣c sử dụng sau này hạn ch&ecirc;́ đi.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\">Đi&ecirc;̀u đặc bi&ecirc;̣t là tr&aacute;nh để sản phẩm tiếp x&uacute;c với dung m&ocirc;i hữu cơ như xăng, dầu, hay c&aacute;c h&oacute;a chất kh&aacute;c.</span></span></span></p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\"><em><span style=\"font-size:16.0pt\"><span style=\"background-color:white\">C&ocirc;ng ty vitoen chuy&ecirc;n cung cấp c&aacute;c sản phẩm băng keo chất lượng cao, gi&aacute; th&agrave;nh cạnh tranh. Mọi thắc mắc xin vui l&ograve;ng li&ecirc;n hệ qua&nbsp;<span style=\"font-size:14pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"color:black\"><em><span style=\"font-size:16.0pt\"><span style=\"background-color:white\">Hotline : <span style=\"color:red\">0974289224</span>.</span></span></em></span></span></span></span></span></em></span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>', '<p><span style=\"font-size:16px\"><strong>M&agrave;u sắc của băng keo :</strong> nhi&ecirc;̀u màu<br />\r\n<strong>Th&agrave;nh phần c&acirc;́u tạo keo:</strong> Acrylic + phụ gia khác<br />\r\n<strong>Thành ph&acirc;̀n tạo màng </strong>: Nhựa&nbsp;pvc.<br />\r\n<strong>Độ d&agrave;y băng keo: </strong>&gt;45mm.<br />\r\n<strong>Đ&ocirc;̣ k&ecirc;́t dính :</strong> 40Mic<br />\r\n<strong>Chiều d&agrave;i của đoạn băng: </strong>&gt;24Yard.</span></p>\r\n\r\n<p><span style=\"font-size:16px\"><strong>Chiều r&ocirc;̣ngcủa đoạn băng: </strong>&gt;2.4Cm<br />\r\n<strong>Chịu nhiệt trong khoảng </strong>: &nbsp;4-100&deg;C.<br />\r\n<strong>Kh&ocirc;́i lượng m&ocirc;̃i cu&ocirc;̣n </strong>: &gt;0.3&nbsp;Kg.</span></p>', '', 7, 40, 8, '2018-04-29 14:15:40', '2018-05-01 19:40:57'),
(67, '167854932', 'Băng keo vải 48mmx10m', 'Băng keo vải 48mmx10m', 'Băng keo vải 48mmx10m là dòng keo dòng sản phẩm phổ dụng hiện nay. Được làm từ sợ vải nguyên chất kết hợp lớp keo cao su tự nhiên. Đối với sản phẩm này bản chất nó có cấu trúc bền vững và chắc chắn', 'bang-keo-vai-48mmx10m', 'bang-keo-vai-48mmx10m-ouqlx2avw9sc.png', 1, '[\"bang-keo-vai-48mmx10m3-nt24agswmz70.png\",\"bang-keo-vai-48mmx10m4-zf9qmvab3udo.png\",\"bang-keo-vaia-gon84kjb3dct.png\"]', '0.00', '0.00', '', '<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong><span style=\"background-color:white\">Băng keo vải 48mmx10m</span></strong><span style=\"background-color:white\"> là dòng sản ph&acirc;̉m tương đ&ocirc;́i ph&ocirc;̉ dụng hi&ecirc;̣n nay. Với sự k&ecirc;́t hợp đặc bi&ecirc;̣t giữa sợ vải nguy&ecirc;n ch&acirc;́t k&ecirc;́t hợp lớp keo cao su tự nhi&ecirc;n. Cách gọi t&ecirc;n th&ocirc;ng qua c&acirc;́u trúc kỹ thu&acirc;̣t tr&ecirc;n sản ph&acirc;̉m này. Đ&ocirc;́i với sản ph&acirc;̉m này bản ch&acirc;́t nó có c&acirc;́u trúc b&ecirc;̀n vững và chắc chắn. Sau đ&acirc;y chúng ta cùng tìm hi&ecirc;̉u loại <strong>Băng keo vải 48mmx10m</strong> đặc bi&ecirc;̣t này. </span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><img alt=\"băng keo vải\" src=\"upload/bang-keo-vai-48mmx10m2.jpg/\" /></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:14pt\"><span style=\"color:black\"><em>Hình ảnh: Giải băng keo vải 48mm10m.</em></span></span></p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"font-size:18.0pt\">Nguy&ecirc;n lý c&acirc;́u tạo băng keo 48mmx10m </span></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Lớp sợi được đặt ngang hoặc dọc giúp chúng k&ecirc;́t n&ocirc;́i với nhau tạo n&ecirc;n mảng chắc chắn và chịu được lực đàn h&ocirc;̀i lớn khi sử dụng. Lớp keo dính được đi&ecirc;̉m ch&acirc;́t lượng cao khi trải l&ecirc;n mà kh&ocirc;ng ảnh hưởng màu sắc hay ch&acirc;́t lượng của băng keo vải.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Loại keo này thu&ocirc;̣c vào keo 1 mặt dính do đó được tạo thành r&acirc;́t tỉ mỉ. Xử lý đ&ecirc;̉ keo kh&ocirc;ng dính được l&ecirc;n b&ecirc;̀ mặt và mặt kia được phủ 1 lớp keo với t&ecirc;n Acrylic. Đi&ecirc;̀u đặc bi&ecirc;̣t của lớp keo này chính là có đ&ocirc;̣ dày l&ecirc;n đ&ecirc;́n cả 300 Micron. Như v&acirc;̣y so sánh v&ecirc;̀ mặt v&acirc;̣t lý thì loại keo duy nh&acirc;́t có đ&ocirc;̣ đ&acirc;̀y hơn g&acirc;́p 5 l&acirc;̀n so với loại băng keo khác ví dụ như băng keo dán thùng chẳng hạn.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"font-size:18.0pt\"><span style=\"background-color:white\">Những đi&ecirc;̀u chưa bi&ecirc;́t v&ecirc; băng keo vải 48mmx10m</span></span></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Là loại băng keo được c&acirc;́u tạo có ph&acirc;̀n đặc bi&ecirc;̣t giữa ph&acirc;̀n vải và trải 1 lớp keo mỏng. Trong k&ecirc;́t c&acirc;́u loại băng keo vài 48mmx10m được bắt ngu&ocirc;̀n từ th&ocirc;ng s&ocirc;́ chi&ecirc;̀u r&ocirc;̣ng và chi&ecirc;̀u dài của kh&ocirc;̉ băng keo đ&ecirc;̉ gắn li&ecirc;n với t&ecirc;n gọi này. Ngoài ra, băng keo vải được c&acirc;́u tạo thành các sản ph&acirc;̉m với các màu sắc được lựa chọn là màu xanh đậm v&agrave; xanh nhạt, n&acirc;u và bạc, trắng, v&agrave;ng, da cam hoặc đen, đỏ. Tuy nhi&ecirc;n n&ecirc;́u bạn có nhu c&acirc;̀u mua loại băng keo này có th&ecirc;̉ bạn phải linh đ&ocirc;̣ng trong kh&acirc;̉u tìm ki&ecirc;́m. Nhằm linh đ&ocirc;̣ng hơn trong giải quy&ecirc;́t c&ocirc;ng vi&ecirc;̣c mà mình đang làm.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Với đ&ocirc;̣ giãn dàn h&ocirc;̀i của băng keo vài có th&ecirc;̉ đạt 14% so với đ&ocirc;̣ giãn ban đ&acirc;̀u. Được c&acirc;́u tạo từ 65% Polyester cùng với 35% Cotton trong thành ph&acirc;̀n c&acirc;́u thành tr&ecirc;n mọi sản ph&acirc;̉m.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"font-size:18.0pt\">Tính ch&acirc;́t của băng keo vải</span></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong><span style=\"background-color:white\">Băng keo vải 48mmx10m</span></strong> có khả năng như chịu đựng ở dải nhi&ecirc;̣t đ&ocirc;̣ r&ocirc;̣ng, cách đi&ecirc;̣n t&ocirc;́t và có ưu đi&ecirc;̉m n&ocirc;̉i tr&ocirc;̣i là khả năng ch&ocirc;́ng được tia UV v&ocirc; cùng lợi hại. Nhưng nhược đi&ecirc;̉m của loại keo này chính là ảnh hưởng s&acirc;u sắc từ thời ti&ecirc;́t và khi h&acirc;̣u. Do đó vì sao ở mi&ecirc;̀n bắc khi sử dụng loại này có tu&ocirc;̉i thọ kh&ocirc;ng cao bằng mi&ecirc;̀n nam là vì th&ecirc;́. Ngoài ra những đặc tính của loại keo này được sử dụng r&ocirc;̣ng rãi trong nhi&ecirc;̀u lĩnh vực và các c&ocirc;ng vi&ecirc;̣c khác như dán inox, dán vào các thùng hàng c&acirc;̀n được đóng góp hàng nặng. Hoặc đơn giản hơn chúng được sử dụng đ&ecirc;̉ trang trí trong nhà.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><em><span style=\"font-size:16.0pt\"><span style=\"background-color:white\">C&ocirc;ng ty vitoen chuy&ecirc;n cung cấp c&aacute;c sản phẩm băng keo chất lượng cao, gi&aacute; th&agrave;nh cạnh tranh. Mọi thắc mắc xin vui l&ograve;ng li&ecirc;n hệ qua&nbsp;<span style=\"font-size:14pt\"><span style=\"color:black\"><em><span style=\"font-size:16.0pt\"><span style=\"background-color:white\">Hotline : <span style=\"color:red\">0974289224</span>.</span></span></em></span></span></span></span></em></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>', '<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>M&agrave;u sắc của băng keo</strong> : Nhi&ecirc;̀u màu</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Th&agrave;nh phần c&acirc;́u tạo keo</strong>: Acrylic + phụ gia khác</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Thành ph&acirc;̀n tạo màng</strong> : Polyester và Cotton</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Đ&ocirc;̣ k&ecirc;́t dính</strong> : 30Mic.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Chiều d&agrave;i của đoạn băng</strong>: 10m.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Chiều r&ocirc;̣ng của đoạn băng</strong>: 48mm.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Chịu nhiệt Max</strong> :&nbsp; 150&deg;C.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Tỉ l&ecirc;̣ dàn h&ocirc;̀i</strong> : 14%.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Kh&ocirc;́i lượng m&ocirc;̃i cu&ocirc;̣n</strong> : &gt;0.3 Kg.</span></span></p>', '', 9, 40, 9, '2018-04-29 14:37:46', '2018-05-02 07:27:22');
INSERT INTO `product` (`id`, `code`, `fullname`, `meta_keyword`, `meta_description`, `alias`, `image`, `status`, `child_image`, `price`, `sale_price`, `intro`, `detail`, `technical_detail`, `video_id`, `count_view`, `category_id`, `sort_order`, `created_at`, `updated_at`) VALUES
(68, '567349812', 'Băng keo dán gáy sách', '', 'Băng keo dán gáy sách là loại băng keo được dùng khá phổ biến trong mỗi gia đình, trong văn phòng phẩm hoặc hiệu copy thì được dùng rất nhiều... Bạn có thể mua để tự tay mình dán những quyển sách nhé', 'bang-keo-dan-gay-sach', 'bang-dinh-dan-gay-qgpr5taklcju.jpg', 1, '[\"bang-dinh-dan-gay4-6bq9vzsk1cn5.jpg\",\"bang-dinh-dan-gay-sach-na54ty29j0om.jpg\",\"bang-keo-gay-sach-jpeg-vozde4kg6iqj.jpeg\"]', '10000.00', '0.00', '', '<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Băng keo dán gáy</strong> sách là 1 loại băng keo được dùng khá ph&ocirc;̉ bi&ecirc;́n trong m&ocirc;̃i gia đình. Đặc bi&ecirc;̣t ở trong văn phòng ph&acirc;̉m hoặc hi&ecirc;̣u copy thì được dùng r&acirc;́t nhi&ecirc;̀u. Đ&acirc;y kh&ocirc;ng đơn giản là dòng keo 1 mặt dán th&ocirc;ng thường mà còn là băng keo dán có nhi&ecirc;u ưu đi&ecirc;̉m n&ocirc;̉i b&acirc;̣t như khá nhẹ nhàng khi c&acirc;̀n nắm, keo k&ecirc;́t đính khá t&ocirc;́t khi sử dụng và thao tác cắt xé nhanh gọn.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><img alt=\"Băng keo dán gáy sách\" src=\"upload/bang-keo-gay-sach5.jpg/\" /></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:14pt\"><span style=\"color:black\"><em>Hình ảnh: Băng keo dán gáy sách.</em></span></span></p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"font-size:18.0pt\">Tác đ&ocirc;̣ng của thị trường l&ecirc;n loại băng keo dán gáy sách</span></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Tr&ecirc;n thị trường trong nước cũng như ngoài nước đ&ecirc;̀u có sự chuy&ecirc;̉n bi&ecirc;́n s&acirc;u sắc. V&ecirc;̀ mặt c&ocirc;ng ngh&ecirc;̣ sản xu&acirc;́t l&acirc;̃n chủng loại băng keo được tung ra. Chính vì lẽ mà thị trường dòng sản ph&acirc;̉m này khá phong phú v&ecirc;̀ s&ocirc;́ lượng và chủng loại. Đứng tr&ecirc;n góc đ&ocirc;̣ người mua thì quả th&acirc;̣t r&acirc;́t lúng túng khi chọn mua, và kh&ocirc;ng xác định loại băng keo phù hợp.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Các loại băng keo tr&ecirc;n thị trường được ph&acirc;n bi&ecirc;̣t với nhau th&ocirc;ng qua các đặc đi&ecirc;̉m như kích thuớc cu&ocirc;̣n băng keo, màu sắc cu&ocirc;̣n băng keo và ch&acirc;́t lượng đặc trưng tr&ecirc;n m&ocirc;̃i sản ph&acirc;̉m. Từ đó sẽ có sự ph&acirc;n chia rõ ràng v&ecirc;̀ t&ecirc;n. Băng keo gáy sách có hình thức c&acirc;́u tạo tương đ&ocirc;́i gi&ocirc;́ng băng keo thùng. Nhưng đ&ecirc;̉ ph&acirc;n bi&ecirc;̣t 2 loại băng keo này thường chúng ta chỉ bi&ecirc;́t được th&ocirc;ng qua màu sắc. Còn v&ecirc;̀ đ&ocirc;̣ k&ecirc;́t dính thì băng keo gáy sách có ph&acirc;̀n t&ocirc;́t hơn. Trong khi sử dụng và các thao tác dán xé thì khá gi&ocirc;́ng nhau.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"font-size:18.0pt\">Th&ocirc;ng s&ocirc;́ kỹ thu&acirc;̣t của sản ph&acirc;̉m </span></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Với dòng sản ph&acirc;̉m là <strong>băng keo dán gáy sách</strong> thì chúng dùng chủ y&ecirc;́u trong các c&ocirc;ng vi&ecirc;̣c trong văn phòng như đóng gáy s&ocirc;̉ sách, trang trí n&ocirc;i th&acirc;́t văn phòng, dán nhãn bìa... Chủ y&ecirc;́u t&acirc;̣p trung ở các văn phòng ph&acirc;̉m, cửa hi&ecirc;̣u photo thì người ta dùng nhi&ecirc;̀u. Các sản ph&acirc;̉m từ băng keo gáy sách được c&acirc;́u tạo và thi&ecirc;́t k&ecirc;́ đặc bi&ecirc;̣t hơn so với băng keo khác. Đó là các đường&nbsp; ngang được sắp x&ecirc;́p lớp ph&acirc;̀n nào giúp bạn d&ecirc;̃ dàng. Thực hi&ecirc;̣n các thao tác như dán và cắt bằng tay.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Các ch&acirc;́t k&ecirc;́t dính đ&ecirc;̉ là n&ecirc;n 1 cu&ocirc;̣n băng keo dán gáy sách là được làm chủ y&ecirc;́u từ cao su tự nhi&ecirc;n. Đặc tính t&ocirc;́t các của cu&ocirc;̣n băng keo dán là khả năng ch&ocirc;́ng nước tương đ&ocirc;́i cao. </span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Kích thước chu&acirc;̉n của cu&ocirc;̣n <strong>băng keo dán gáy sách</strong> sẽ là chi&ecirc;̀u r&ocirc;̣ng 5cm. Chi&ecirc;̀u dài thì tùy thu&ocirc;̣c vào nhu c&acirc;̀u mà bạn mua băng keo. </span></span></p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"font-size:18.0pt\">Đặc tính của băng keo vải</span></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Băng keo dán gáy sách </strong>có khả năng như chịu đựng ở dải nhi&ecirc;̣t đ&ocirc;̣ kh&ocirc;ng quá r&ocirc;̣ng. Nhưng đi&ecirc;̉m n&ocirc;̉i tr&ocirc;̣i khác của băng keo này chính l&acirc;̀ cách đi&ecirc;̣n t&ocirc;́t và kh&ocirc;ng th&acirc;́m nước. Và đ&ecirc;̉ trong m&ocirc;i trường có đ&ocirc;̣ &acirc;̉m quá cao thì ch&acirc;́t lượng của keo k&ecirc;́t dính kh&ocirc;ng còn cao nữa. Do đó vì sao ở mi&ecirc;̀n bắc có 4 mùa n&ecirc;n tu&ocirc;̉i thọ khi sử dụng loại này kh&ocirc;ng cao bằng mi&ecirc;̀n nam.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Ngoài ra những đặc tính của loại keo k&ecirc;̉ tr&ecirc;n được sử dụng r&ocirc;̣ng rãi trong nhi&ecirc;̀u lĩnh vực và các c&ocirc;ng vi&ecirc;̣c khác như sửa chữa đi&ecirc;̣n, dán vào các thùng hàng c&acirc;̀n được đóng góp nhẹ. Hoặc đơn giản hơn băng keo được sử dụng đ&ecirc;̉ trang trí trong nhà.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><em><span style=\"font-size:16.0pt\"><span style=\"background-color:white\">C&ocirc;ng ty <strong>vitoen</strong> chuy&ecirc;n cung cấp c&aacute;c sản phẩm băng keo chất lượng cao, gi&aacute; th&agrave;nh cạnh tranh. Mọi thắc mắc xin vui l&ograve;ng li&ecirc;n hệ qua&nbsp;<span style=\"font-size:14pt\"><span style=\"color:black\"><em><span style=\"font-size:16.0pt\"><span style=\"background-color:white\">Hotline : <span style=\"color:red\">0974289224</span>.</span></span></em></span></span></span></span></em></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>', '<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>M&agrave;u sắc của băng keo</strong> : Nhi&ecirc;̀u màu</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Th&agrave;nh phần c&acirc;́u tạo keo</strong>: Acrylic + phụ gia khác</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Thành ph&acirc;̀n tạo màng</strong> : Nhựa opp, pvc</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Đ&ocirc;̣ k&ecirc;́t dính</strong> : 40Mic.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Chiều d&agrave;i của đoạn băng</strong>: &gt;5m.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Chiều r&ocirc;̣ng của đoạn băng</strong>: 5cm.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Chịu nhiệt Max</strong> :&nbsp;180&deg;C.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Tỉ l&ecirc;̣ dàn h&ocirc;̀i</strong> : 14%.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Kh&ocirc;́i lượng m&ocirc;̃i cu&ocirc;̣n</strong> : &gt;0.5&nbsp;Kg.</span></span></p>', '', 11, 40, 10, '2018-04-29 15:12:42', '2018-05-02 07:27:27'),
(69, '984613572', 'Băng keo dán nền 48mmx25m', 'băng keo dán nền', 'Băng keo dán nền 48mmx25m là loại băng keo chuyên dùng để dán nền và mặt sàn trong nhà hay xưởng... Được sử dụng phổ biến trong các khu vực như phân chia khuc vực, đánh dấu mã sản phẩm, tạo đường hoặc che chắn sơn....', 'bang-keo-dan-nen-48mmx25m', 'bang-dan-nen-anohu7mfigvy.jpg', 1, '[\"bang-keo-canh-bao1-i15fptkv2w4g.jpg\",\"bang-keo-dan-nen-aw80r4sy9vie.jpg\",\"bang-keo-canh-bao-ku4rjfv51e2m.jpg\"]', '10000.00', '0.00', '', '<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Băng keo dán n&ecirc;̀n 48mmx25m</strong> là loại băng keo chuy&ecirc;n dùng đ&ecirc;̉ dán n&ecirc;̀n và mặt sàn trong nhà hay xưởng... Sản phẩm n&agrave;y có kích thước chu&acirc;̉n trong kỹ thu&acirc;̣t thi&ecirc;́t k&ecirc;́ theo kh&ocirc;̉ r&ocirc;̣ng và kh&ocirc;̉ dài đ&ecirc;̉ đặt t&ecirc;n. Loại băng keo này sử dụng ph&ocirc;̉ bi&ecirc;́n trong các khu vực đặc thù như ph&acirc;n chia khuc vực hay đánh d&acirc;́u mã sản ph&acirc;̉m hoặc tạo đường hoặc che chắn sơn.... Sau đ&acirc;y chúng ta hãy tìm hi&ecirc;̉u chi ti&ecirc;́t hơn v&ecirc;̀ loại băng keo này.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"font-size:18.0pt\">Giới thi&ecirc;̣u sơ qua v&ecirc;̀ băng keo dán n&ecirc;̀n 48mmx25m</span></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Băng keo d&aacute;n nền 48mmx25m </strong>là dạng băng keo có tính ph&ocirc;̉ dụng cao và l&acirc;́y kích chu&acirc;̉n tr&ecirc;n băng keo đ&ecirc;̉ đặt t&ecirc;n cho sản ph&acirc;̉m. Ở loại bằng keo này kh&ocirc;ng đ&ocirc;̉i màu ở trong khoảng nhi&ecirc;̣t đ&ocirc;̣ từ 4 - 80 đ&ocirc;̣. Nhưng mức cao nh&acirc;́t có th&ecirc;̉ được chịu được là 150 đ&ocirc;̣ C. Tr&ecirc;n b&ecirc;̀ mặt băng keo cụ khi bóc kh&ocirc;ng bị dính băng keo khi bạn thao tác và kh&ocirc;ng bị dính sơn. Khi xé đ&ecirc;̉ sử dụng sẽ tạo ra các 1 đường thẳng đẹp và tuy&ecirc;̣t đ&ocirc;́i kh&ocirc;ng có răng cửa. Với các ứng dụng n&ocirc;̉i b&acirc;̣t được sử dụng của băng keo dán n&ecirc;̀n, đ&oacute; là làm cảnh b&aacute;o, d&aacute;n s&agrave;n cùng với ph&acirc;n biệt Layout trong nh&agrave; xưởng. Và các c&ocirc;ng tr&igrave;nh, đường ống và các bi&ecirc;̉n cảnh b&aacute;o nguy hiểm, được sử dụng cho những k&iacute;ch thước nhỏ, đường cong uốn, hoặc có đ&ocirc;̣ phức tạp m&agrave; băng keo khác kh&ocirc;ng có chức năng này.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Là m&ocirc;̣t m&acirc;̃u sản phẩm <strong>băng keo d&aacute;n nền 48mmx25m </strong>n&agrave;y kh&ocirc;ng để lại keo khi b&oacute;c băng d&iacute;nh cũ để thay lớp bằng mới mà kh&ocirc;ng đ&ecirc;̉ lại tàn dư.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><img alt=\"băng keo dán nền\" src=\"upload/bang-dinh-dan-nen-go.jpg/\" /></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:14pt\"><span style=\"color:black\"><em>Hình ảnh:&nbsp; </em><em><span style=\"background-color:white\">Băng keo d&aacute;n nền 48mmx25m tr&ecirc;n thị trường.</span></em></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"font-size:20.0pt\">Tính ph&ocirc;̉ dụng của băng keo d&aacute;n nền 48mmx25m</span></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Những <strong>Băng keo d&aacute;n nền 48mmx25m </strong>thu&ocirc;̣c danh mục sản ph&acirc;̉m của 3M với băng keo có 1 mặt với nhi&ecirc;̀u màu sắc tr&ecirc;n m&ocirc;̃i sản ph&acirc;̉m. Bản th&acirc;n loại băng keo dán n&ecirc;̀n có đ&ocirc;̣ bám dính. Và sử dụng được nhi&ecirc;̀u loại v&acirc;̣t li&ecirc;̣u và chịu sự mài mòn r&acirc;́t cao. Đặc bi&ecirc;̣t đ&acirc;y là loại băng keo có kích thước lớn trong các loại băng keo dán n&ecirc;̀n hi&ecirc;̣n có tr&ecirc;n thị trường hi&ecirc;̣n có.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<h3 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"font-size:16.0pt\">Băng keo dán n&ecirc;̀n 471 </span></span></span></span></h3>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Là m&ocirc;̣t sản ph&acirc;̉m đ&acirc;̀u tay của t&acirc;̣p đoàn 3M. Với ưu đi&ecirc;̉m chủ đạo là khả năng chịu nhi&ecirc;̣t khá t&ocirc;́t từ 5 đ&ocirc;̣ l&ecirc;n 77 đ&ocirc;̣ C. Với các dải màu được tung ra thị trưởng như Vàng, Đỏ, Cam, Xanh dương, Xanh lá c&acirc;y, Đen, trong su&ocirc;́t, tím, n&acirc;u. Được sử dụng chủ y&ecirc;́u là dán n&ecirc;̀n, ph&acirc;n làn, chen sơn hoặc đánh d&acirc;́u khu vực nhưng khu vực nguy hi&ecirc;̉m. Và đi&ecirc;̀u đặc bi&ecirc;̣t của dòng băng dán này là có khả năng chịu mài mòn t&ocirc;́t.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<h3 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"font-size:18.0pt\">Băng keo dán n&ecirc;̀n 764 </span></span></span></span></h3>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Băng keo d&aacute;n nền 48mmx25m </strong>thu&ocirc;̣c vào dòng 764. Với ưu đi&ecirc;̉m chủ đạo là khả năng chịu nhi&ecirc;̣t khá t&ocirc;́t với khoảng nhi&ecirc;̣t đ&ocirc;̣ dài. Với các dải màu được tung ra thị trường như Vàng , Đỏ , Cam, Xanh dương, Xanh lá c&acirc;y, Đen, Trong su&ocirc;́t, Tim, N&acirc;u. Đặc tính n&ocirc;̉i tr&ocirc;̣i của loại keo 764 là khả năng k&ecirc;́t dính tr&ecirc;n nhi&ecirc;̀u loại v&acirc;̣t li&ecirc;̣u. Và với bản ch&acirc;́t là dẻo, d&ecirc;̃ dàng gở bỏ sau khi xong vi&ecirc;̣c và tính năng m&ecirc;̀m khi ti&ecirc;́p xúc với chúng.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<h3 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"font-size:18.0pt\">Băng keo dán n&ecirc;̀n 766 </span></span></span></span></h3>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Cũng là 1 trong 3 dòng sản ph&acirc;̉m của keo dán n&ecirc;̀n 3M. Nhưng đi&ecirc;̉m khác nằm ở ch&ocirc;̃ những dòng sản ph&acirc;̉m tr&ecirc;n nhưng băng keo 766 có hai màu chính là vàng và đen. Với ưu đi&ecirc;̉m chủ đạo là khả năng chịu nhi&ecirc;̣t khá&nbsp; t&ocirc;́t từ 4 đ&ocirc;̣ l&ecirc;n 77 đ&ocirc;̣ C. Và tính năng &acirc;́n tượng của dòng này là linh hoạt, d&ecirc;̃ dàng tháo bỏ khi c&acirc;̀n.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><em><span style=\"font-size:16.0pt\"><span style=\"background-color:white\">C&ocirc;ng ty vitoen chuy&ecirc;n cung cấp c&aacute;c sản phẩm băng keo chất lượng cao, gi&aacute; th&agrave;nh cạnh tranh. Mọi thắc mắc xin vui l&ograve;ng li&ecirc;n hệ qua&nbsp;<span style=\"font-size:14pt\"><span style=\"color:black\"><em><span style=\"font-size:16.0pt\"><span style=\"background-color:white\">Hotline : <span style=\"color:red\">0974289224</span>.</span></span></em></span></span></span></span></em></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>', '<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>M&agrave;u sắc của băng keo</strong> : Nhi&ecirc;̀u màu</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Th&agrave;nh phần c&acirc;́u tạo keo</strong>: Acrylic + phụ gia khác</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Thành ph&acirc;̀n tạo màng</strong> : Polyester và Cotton</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Đ&ocirc;̣ k&ecirc;́t dính</strong> : 40Mic.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Chiều d&agrave;i của đoạn băng</strong>: 25m.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Chiều r&ocirc;̣ng của đoạn băng</strong>: 48mm.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Chịu nhiệt trong khoảng : </strong>4 &ndash; 80&deg;C Và <strong>Max</strong> :&nbsp; 150&deg;C.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Tỉ l&ecirc;̣ dàn h&ocirc;̀i</strong> : 14%.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Kh&ocirc;́i lượng m&ocirc;̃i cu&ocirc;̣n</strong> : &gt;0.3 Kg.</span></span></p>', '', 9, 40, 11, '2018-04-29 16:31:44', '2018-05-02 05:10:39');
INSERT INTO `product` (`id`, `code`, `fullname`, `meta_keyword`, `meta_description`, `alias`, `image`, `status`, `child_image`, `price`, `sale_price`, `intro`, `detail`, `technical_detail`, `video_id`, `count_view`, `category_id`, `sort_order`, `created_at`, `updated_at`) VALUES
(71, '378914625', 'Thang nhôm Poongsan PS-44', 'Thang nhôm Poongsan PS-46', 'Thang nhôm Poongsan PS-46  là sản phẩm được nhập khẩu và phân phối tại VITOEN. Mua thang có chất lượng, giá rẻ nhất hãy đến với chúng tôi để được phục vụ tốt nhất.', 'thang-nhom-poongsan-ps-44', '2m-thang-chu-a-pho-thong-ta20-1-akvq3iy8hdcz.jpg', 1, NULL, '3520000.00', '0.00', '', '<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><strong><span style=\"font-size:12.0pt\">Thang nh&ocirc;m Poongsan PS-46</span></strong><span style=\"font-size:12.0pt\"> đến từ H&agrave;n Quốc đ&atilde; xuất hiện tại thị trường Việt Nam khoảng 4 năm. Thang được sản xuất với c&ocirc;ng nghệ h&agrave;ng đầu, c&oacute; t&iacute;nh năng v&agrave; chất lượng đạt ti&ecirc;u chuẩn quốc tế. Thang nh&ocirc;m PoongSan đ&atilde; được nhiều người ti&ecirc;u d&ugrave;ng nước ta tin tưởng v&agrave; sử dụng trong gia đ&igrave;nh, văn ph&ograve;ng v&agrave; c&aacute;c c&ocirc;ng việc kh&aacute;c.&nbsp;</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">Bạn đang c&oacute; nhu cầu mua thang về sử dụng m&agrave; kh&ocirc;ng biết chọn loại n&agrave;o ph&ugrave; hợp. Bạn đang t&igrave;m một nơi b&aacute;n thang đảm bảo chất lượng, gi&aacute; tốt v&agrave; uy t&iacute;n khi b&aacute;n h&agrave;ng . Bạn h&atilde;y li&ecirc;n hệ ngay ch&uacute;ng t&ocirc;i <strong>VITOEN</strong> một trong những địa chỉ b&aacute;n thang nh&ocirc;m ch&iacute;nh h&atilde;ng. Ch&uacute;ng t&ocirc;i c&oacute; đầy đủ mẫu m&atilde;, c&oacute; nhiều thương hiệu để bạn lựa chọn.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><strong><span style=\"font-size:12.0pt\">Thang nh&ocirc;m Poongsan PS-46 </span></strong><span style=\"font-size:12.0pt\">l&agrave; một trong những sản phẩm thang nh&ocirc;m của h&atilde;ng Poongsan đang được ph&acirc;n phối tại ch&uacute;ng t&ocirc;i. Qu&yacute; kh&aacute;ch c&oacute; nhu cầu mua nhưng chưa biết được nhiều về đặc điểm, t&iacute;nh năng của thang. B&agrave;i viết n&agrave;y sẽ gi&uacute;p bạn t&igrave;m hiểu r&otilde; hơn để bạn chọn được thang ph&ugrave; hợp với nhu cầu sử dụng của bạn.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><img alt=\"Thang nhôm poongsan ps 46\" src=\"upload/thang-nhom-poong-san-ps-46.jpg/\" /></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\">&nbsp;</p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm\"><strong><span style=\"font-size:18pt\">Thang nh&ocirc;m Poongsan PS-46 c&oacute; đặc điểm nổi bật</span></strong></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<h3 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"color:#1f4d78\"><span style=\"color:black\">- <strong>Thang nh&ocirc;m Poongsan PS</strong> l&agrave; loại thang nh&ocirc;m r&uacute;t c&oacute; khả năng r&uacute;t gọn nhanh ch&oacute;ng v&agrave; đơn giản tiện lợi. </span></span></span></h3>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">- Thang được thiết kế linh hoạt, tiện lợi cho người trong qu&aacute; tr&igrave;nh sử dụng, di chuyển v&agrave; cất giữ.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">-&nbsp;<strong>Thang nh&ocirc;m&nbsp;Poongsan PS-46</strong> dễ d&agrave;ng chuyển đổi linh hoạt th&agrave;nh chữ A. Do đ&oacute; thang c&oacute; thể sử dụng ở cầu thang hoặc bệ đỡ gi&agrave;n gi&aacute;o.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">- Thang c&oacute; tải trọng tối đa 150 kg.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">-&nbsp;Thang được thiết kế l&yacute; tưởng cho c&aacute;c c&ocirc;ng việc trong nh&agrave; v&agrave; ngo&agrave;i trời. C&aacute;c t&iacute;nh năng như c&oacute; n&uacute;t kh&oacute;a bản lề tự động, từng bậc thang được cố định bởi hai đinh t&aacute;n. </span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">-&nbsp;Đặc biệt đế thang c&oacute; lượn s&oacute;ng được l&agrave;m bằng cao su cao cấp n&ecirc;n đảm bảo kh&ocirc;ng bị trơn trượt.&nbsp;Bạn dễ d&agrave;ng điều chỉnh được chiều cao một c&aacute;ch nhanh ch&oacute;ng nhờ m&oacute;c kh&oacute;a chữ J.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><img alt=\"sản phẩm thang nhôm poong san ps 46\" src=\"upload/san-pham-thang-nhom-poong-san-ps-46.jpg/\" /></p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</h2>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm\"><strong><span style=\"font-size:18pt\">Th&ocirc;ng số kỹ thuật của thang nh&ocirc;m Poongsan PS-46</span></strong></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<table border=\"1\" cellspacing=\"0\" class=\"MsoTableGridLight\" style=\"border-collapse:collapse; border:solid #bfbfbf 1.0pt\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"height:37.25pt; vertical-align:top; width:99.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">1</span></span></p>\r\n			</td>\r\n			<td style=\"height:37.25pt; vertical-align:top; width:193.6pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">H&atilde;ng sản xuất:</span></span></p>\r\n			</td>\r\n			<td style=\"height:37.25pt; vertical-align:top; width:104.05pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">Poongsan</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:34.6pt; vertical-align:top; width:99.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">2</span></span></p>\r\n			</td>\r\n			<td style=\"height:34.6pt; vertical-align:top; width:193.6pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">Xuất xứ</span></span></p>\r\n			</td>\r\n			<td style=\"height:34.6pt; vertical-align:top; width:104.05pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">H&agrave;n Quốc</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:28.0pt; vertical-align:top; width:99.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">3</span></span></p>\r\n			</td>\r\n			<td style=\"height:28.0pt; vertical-align:top; width:193.6pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">Bảo h&agrave;nh</span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"height:28.0pt; vertical-align:top; width:104.05pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">24 Th&aacute;ng Ch&iacute;nh H&atilde;ng</span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top; width:99.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">4</span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:193.6pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">Chiều cao chữ A thu gọn</span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:104.05pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">1,81 m</span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top; width:99.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">5</span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:193.6pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">Chiều cao chữ A k&eacute;o d&agrave;i</span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:104.05pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">3,22 m</span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top; width:99.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">6</span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:193.6pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">Chiều cao chữ I thu gọn</span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:104.05pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">k&eacute;o d&agrave;i 3,77 m</span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top; width:99.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">7</span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:193.6pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">Chiều cao chữ I k&eacute;o d&agrave;i</span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:104.05pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">6,76 m</span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top; width:99.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">8</span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:193.6pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">Số bậc chữ A thu gọn/ k&eacute;o d&agrave;i</span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:104.05pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">06 bậc / 11 bậc</span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top; width:99.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">9</span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:193.6pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">Trọng lượng</span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:104.05pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">16,9 kg</span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top; width:99.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">10</span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:193.6pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">Tải trọng</span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:104.05pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">120 kg</span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top; width:99.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">11</span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:193.6pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">Độ rộng ch&acirc;n thang</span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:104.05pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">0,688 m</span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm\"><strong><span style=\"font-size:18pt\">Những lưu &yacute; khi sử dụng Thang nh&ocirc;m Poongsan PS-46 an to&agrave;n</span></strong></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">- Trước khi l&ecirc;n thang bạn kiểm tra chắc chắn rằng c&aacute;c ổ kho&aacute; của &nbsp;thang. </span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">- Ch&acirc;n <strong>Thang nh&ocirc;m Poongsan PS-46</strong>&nbsp; phải c&oacute; đế cao su chống trơn trượt. Điểm k&ecirc; thang ph&iacute;a tr&ecirc;n v&agrave; dưới phải được k&ecirc; chắc chắn.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">- Kh&ocirc;ng leo thang khi bạn bị ch&oacute;ng mặt, đang sử dụng thuốc hoặc uống rượu bia.<br />\r\n- Kh&ocirc;ng được sử dụng qu&aacute; tải trọng đ&atilde; quy định của thang.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">- Đế gi&agrave;y phải sạch để kh&ocirc;ng bị trượt khỏi bậc thang nh&ocirc;m.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">- Kh&ocirc;ng l&ecirc;n mang gi&agrave;y c&oacute; đế bằng da v&igrave; dễ bị trơn trựơt khi leo thang.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">- D&acirc;y gi&agrave;y phải buộc gọn, ống quần kh&ocirc;ng lo&egrave; xo&egrave; tr&aacute;nh vướng giẫm phải n&oacute;.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">- Khi leo mặt lu&ocirc;n đối diện với bậc thang v&agrave; giữa hai th&agrave;nh thang.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">- Kh&ocirc;ng sử dụng thang khi c&oacute; gi&oacute; lớn.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">- Kh&ocirc;ng d&ugrave;ng thang khi bị vướng c&agrave;nh c&acirc;y, d&acirc;y điện.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:18pt\">Mua Thang nh&ocirc;m Poongsan PS-46 tại VITOEN c&oacute; những quyền lợi sau</span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">✓</span><span style=\"font-size:12.0pt\"> Ch&uacute;ng t&ocirc;i c&oacute; b&aacute;n thang nh&ocirc;m cũ đ&atilde; qua sử dụng.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">✓</span><span style=\"font-size:12.0pt\"> Cam kết thang nh&ocirc;m gi&aacute; rẻ nhất thị trường.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">✓</span><span style=\"font-size:12.0pt\"> Bảo h&agrave;nh đ&uacute;ng theo qui định của nh&agrave; sản xuất. Thủ tục b&aacute;n h&agrave;ng đơn giản, kh&ocirc;ng rườm r&agrave;. Trong thời gian bảo h&agrave;nh chỉ cần bị lỗi kĩ thuật mang tới ch&uacute;ng t&ocirc;i theo qui định của nh&agrave; sản xuất.</span><br />\r\n<span style=\"font-size:12.0pt\">✓</span><span style=\"font-size:12.0pt\"> Ch&uacute;ng t&ocirc;i ho&agrave;n tiền 100% nếu chất lượng thang kh&ocirc;ng đảm bảo như th&ocirc;ng số đ&atilde; đưa trong website n&agrave;y.</span><br />\r\n<span style=\"font-size:12.0pt\">✓</span><span style=\"font-size:12.0pt\"> Hỗ trợ giao thang si&ecirc;u nhanh v&agrave; miễn ph&iacute; tận nơi cho kh&aacute;ch h&agrave;ng.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">✓</span><span style=\"font-size:12.0pt\"> Phương thức thanh to&aacute;n an to&agrave;n, nhanh ch&oacute;ng, đa dạng. C&ocirc;ng t&aacute;c giao h&agrave;ng, lắp đặt v&agrave;&nbsp; vận h&agrave;nh thử mới phải thanh to&aacute;n.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">✓</span><span style=\"font-size:12.0pt\"> C&aacute;c ch&iacute;nh s&aacute;ch bảo h&agrave;nh, ch&iacute;nh s&aacute;ch hậu m&atilde;i chăm s&oacute;c sản phẩm chu đ&aacute;o nhất.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><em><span style=\"font-size:12.0pt\">Qua b&agrave;i viết </span></em><strong><span style=\"font-size:12.0pt\">Thang nh&ocirc;m</span></strong><strong><span style=\"font-size:12.0pt\"> Poongsan PS-46</span></strong> <em><span style=\"font-size:12.0pt\">m&agrave; </span></em><strong><span style=\"font-size:12.0pt\">VITOEN</span></strong><em><span style=\"font-size:12.0pt\"> giới thiệu ở tr&ecirc;n. Bạn đ&atilde; nắm được t&iacute;nh năng, c&aacute;ch sử dụng v&agrave; c&aacute;c chế độ b&aacute;n h&agrave;ng của ch&uacute;ng t&ocirc;i. Qu&yacute; kh&aacute;ch h&agrave;ng c&oacute; nhu cầu mua thang xin vui l&ograve;ng li&ecirc;n lạc với nh&acirc;n vi&ecirc;n chăm s&oacute;c kh&aacute;ch h&agrave;ng, nh&acirc;n vi&ecirc;n b&aacute;n h&agrave;ng để được tư vấn cụ thể</span></em><span style=\"font-size:12.0pt\">.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>', '<h2 style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:18pt\">Th&ocirc;ng số kỹ thuật của thang nh&ocirc;m Poongsan PS-46</span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<table cellspacing=\"0\" class=\"MsoTableGridLight\" style=\"border-collapse:collapse; border:undefined\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"height:37.25pt; vertical-align:top; width:99.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">1</span></span></p>\r\n			</td>\r\n			<td style=\"height:37.25pt; vertical-align:top; width:193.6pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">H&atilde;ng sản xuất:</span></span></p>\r\n			</td>\r\n			<td style=\"height:37.25pt; vertical-align:top; width:104.05pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">Poongsan</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:34.6pt; vertical-align:top; width:99.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">2</span></span></p>\r\n			</td>\r\n			<td style=\"height:34.6pt; vertical-align:top; width:193.6pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">Xuất xứ</span></span></p>\r\n			</td>\r\n			<td style=\"height:34.6pt; vertical-align:top; width:104.05pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">H&agrave;n Quốc</span></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:28.0pt; vertical-align:top; width:99.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">3</span></span></p>\r\n			</td>\r\n			<td style=\"height:28.0pt; vertical-align:top; width:193.6pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">Bảo h&agrave;nh</span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"height:28.0pt; vertical-align:top; width:104.05pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">24 Th&aacute;ng Ch&iacute;nh H&atilde;ng</span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top; width:99.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">4</span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:193.6pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">Chiều cao chữ A thu gọn</span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:104.05pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">1,81 m</span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top; width:99.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">5</span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:193.6pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">Chiều cao chữ A k&eacute;o d&agrave;i</span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:104.05pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">3,22 m</span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top; width:99.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">6</span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:193.6pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">Chiều cao chữ I thu gọn</span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:104.05pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">k&eacute;o d&agrave;i 3,77 m</span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top; width:99.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">7</span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:193.6pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">Chiều cao chữ I k&eacute;o d&agrave;i</span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:104.05pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">6,76 m</span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top; width:99.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">8</span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:193.6pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">Số bậc chữ A thu gọn/ k&eacute;o d&agrave;i</span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:104.05pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">06 bậc / 11 bậc</span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top; width:99.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">9</span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:193.6pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">Trọng lượng</span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:104.05pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">16,9 kg</span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top; width:99.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">10</span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:193.6pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">Tải trọng</span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:104.05pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">120 kg</span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"vertical-align:top; width:99.0pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">11</span></span></p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:193.6pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">Độ rộng ch&acirc;n thang</span></span></p>\r\n\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n			</td>\r\n			<td style=\"vertical-align:top; width:104.05pt\">\r\n			<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-size:12.0pt\">0,688 m</span></span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>', '', 11, 36, 12, '2018-05-02 04:51:38', '2018-05-03 02:08:46'),
(72, '964385172', '2m Thang chữ A phổ thông TA20', 'Thang nhôm bàn Poongsan PS-25160', 'Thang nhôm bàn Poongsan PS-25160 là loại thang nhôm này đã áp dụng công nghệ của Hàn Quốc nên chất lượng cao và tuổi thọ bền lâu sau quá trình hoạt động. Là mẫu thang khá ấn tượng hiện nay', '2m-thang-chu-a-pho-thong-ta20', 'thang-ghe-4-bac-sumo-ads-604-1-tcrg7ukvay35.jpg', 1, '[\"thang-nhom-ban-poongsan-ps-25160-2-duvcjykbs056.jpg\",\"thang-nhom-ban-poongsan-ps-25160-3-myjf7xq4a5li.jpg\"]', '2050000.00', '0.00', 'Thang nhôm bàn Poongsan PS-25160 là loại thang nhôm này đã áp dụng công nghệ của Hàn Quốc nên chất lượng cao và tuổi thọ bền lâu sau quá trình hoạt động. Là mẫu thang khá ấn tượng hiện nay', '<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Thang nh&ocirc;m b&agrave;n Poongsan PS-25160</strong> là m&ocirc;̣t dạng thang được sử dụng ph&ocirc;̉ bi&ecirc;́n trong các h&ocirc;̣ gia đình và m&ocirc;̣t s&ocirc;́ ít trong các c&ocirc;ng ty nhỏ. Loại thang nh&ocirc;m này đã áp dụng c&ocirc;ng ngh&ecirc;̣ của Hàn Qu&ocirc;́c n&ecirc;n ch&acirc;́t lượng cao và tu&ocirc;̉i thọ b&ecirc;̀n l&acirc;u sau quá trình hoạt đ&ocirc;̣ng. Hơn nữa thương hi&ecirc;̣u này lu&ocirc;n cải ti&ecirc;́n v&ecirc;̀ m&acirc;̃u mã và các tính năng đặc bi&ecirc;̣t của thang nh&ocirc;m này.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><img alt=\"thang nhôm bàn poongsan-ps-25160\" src=\"upload/thang-nhom-ban-poongsan-ps-25160.jpg/\" /></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:14pt\"><span style=\"color:black\"><em>Hình ảnh: Chi&ecirc;́c thang nh&ocirc;m b&agrave;n Poongsan PS-25160.</em></span></span></p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"font-size:18.0pt\">Đ&ocirc;i nét v&ecirc;̀ thang nh&ocirc;m b&agrave;n Poongsan PS-25160</span></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">M&ocirc;̣t khi nhắc đ&ecirc;́n loại thang nh&ocirc;m nay, chúng ta thường nhắc đ&ecirc;́n ch&acirc;́t ch&acirc;́t li&ecirc;̣u là thang nh&ocirc;m. Là m&ocirc;̣t hợp kim nh&ocirc;m cao c&acirc;́p được k&ecirc;́t hợp với tỉ l&ecirc;̣ thích hợp với các nguy&ecirc;n t&ocirc;́ khác như đ&ocirc;̀ng, magie, thi&ecirc;́c, manga. Là m&ocirc;̣t nhóm nguy&ecirc;n t&ocirc;́ có kh&ocirc;́i lượng nhỏ n&ecirc;n khi được tạo thành sản ph&acirc;̉m <strong>thang nh&ocirc;m b&agrave;n Poongsan PS-25160</strong> hoàn chỉnh sẽ có kh&ocirc;́i lượng tĩnh r&acirc;́t th&acirc;́p. Chỉ bẳng 1/3 kh&ocirc;́i lượng của thép tạo thành. Nhờ đó mà khi sử dụng và v&acirc;̣n chuy&ecirc;̣n m&ocirc;̣t các d&ecirc;̃ dàng m&ocirc;̣t cách thu&acirc;̣n ti&ecirc;̣n và t&ocirc;́i ưu cho mọi khách hàng sử dụng loại thang này.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Poongsan PS-25160</strong> là m&ocirc;̣t sản ph&acirc;̉m nh&acirc;̣p kh&acirc;̉u trực ti&ecirc;́p từ thị trường Hàn Qu&ocirc;́c và đạt được chứng nh&acirc;̣n C/O từ thị trường n&ocirc;̣i địa. N&ecirc;n quý khách hàng đang và sẽ&nbsp; sử dụng loại thang nh&ocirc;m này y&ecirc;n t&acirc;m hơn khi sử dụng Thang nh&ocirc;m b&agrave;n Poongsan&nbsp; của c&ocirc;ng ty<strong> Vitoen.</strong></span></span></p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"font-size:18.0pt\">Đặc tính của thang nh&ocirc;m b&agrave;n Poongsan PS-25160</span></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Với khả năng ch&ocirc;́ng ăn mòn cao trong kh&ocirc;ng khí dù bạn sử dụng thang nh&ocirc;m trong b&acirc;́t kỳ hoạt đ&ocirc;̣ng nào. Hoặc với thời ti&ecirc;́t khắc nhi&ecirc;̣t th&ecirc;́ nào đi chăng nữa thì bản ch&acirc;́t của thang nh&ocirc;m lu&ocirc;n tuy&ecirc;̣t với. Dù thang nh&ocirc;m kh&ocirc;ng c&acirc;̀n đ&ecirc;́n sơn lọt b&ecirc;n ngoài bảo v&ecirc;̣ thì thang nh&ocirc;m b&agrave;n Poongsan nguy&ecirc;n kh&ocirc;́i có đ&ocirc;̣ b&ecirc;̀n r&acirc;́t cao và th&acirc;̉m mỹ n&ecirc;n bạn y&ecirc;n t&acirc;m hơn v&ecirc;̀ v&acirc;́n đ&ecirc;̀ bị hao mòn theo thời gian sử dụng thang.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Ngoài ra thang nh&ocirc;m được tích hợp và tạo thành từ ch&acirc;́t li&ecirc;̣u hợp kim cao c&acirc;́p hứa hẹn sẽ mang đ&ecirc;́n cho bạn những trải nghi&ecirc;̣m và hưởng thụ sự hi&ecirc;̣u quả và t&ocirc;́i ưu.</span></span></p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"font-size:18.0pt\">C&acirc;́u trúc chung của thang nh&ocirc;m</span></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Thang nh&ocirc;m b&agrave;n Poongsan PS-25160</strong> được c&acirc;́u tạo khá chắc chắn với b&ecirc;̀ mặt bàn khá r&ocirc;̣ng 25 cm. Mang đ&ecirc;́n các giác cực kỳ an toàn cho bạn làm vi&ecirc;̣c cùng với ch&ecirc;́c thang nay. Đ&ecirc;̉ d&ecirc;̃ dàng v&acirc;̣n chuy&ecirc;̉n thì thang nh&ocirc;m có chi&ecirc;̀u dài mặt bàn l&ecirc;n đ&ecirc;́n 1.6m. và còn có th&ecirc;m 3 b&acirc;̣c thang giúp bạn hoặc người th&acirc;n leo l&ecirc;n mặt bàn an toàn và chắc chắn g&acirc;̀n như tuy&ecirc;̣t đ&ocirc;́i. Sức chịu đựng thang nh&ocirc;m l&ecirc;n tới 150kg, do đó r&acirc;́t thích hợp cho 1 hoặc 2 người có th&ecirc;̉ cùng làm vi&ecirc;̣c. Đ&ecirc;̉ bảo v&ecirc;̣ lớp nh&ocirc;m ch&ocirc;́ng mài mòn và ch&ocirc;́ng tr&acirc;̀y xướt thì thang nh&ocirc;m còn trang bị th&ecirc;m lớp nhựa &ocirc;m sát giúp ch&ocirc;́ng trơn trượt t&ocirc;́i đa khi đặt thang ở vị trí trơn trợt và &acirc;́n ướt.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Thang nh&ocirc;m b&agrave;n Poongsan</strong> c&acirc;́u tạo chi&ecirc;̀u cao r&acirc;́t linh đ&ocirc;̣ng và có th&ecirc;̉ đi&ecirc;̀u chỉnh th&acirc;́p nh&acirc;́t từ 580mm l&ecirc;n đ&ecirc;́n chi&ecirc;̀u cao t&ocirc;́i đa là 1140mm. Do đó bạn có th&ecirc;̉ thao tác ở các vị trị cao như sửa chữa các vị trí tr&ecirc;n tường, trang trí nhà cửa hay sơn lại nhà... Đi&ecirc;̀u đặc bi&ecirc;̣t mà bạn có th&ecirc;̉ cảm nh&acirc;̣n sẽ có chi&ecirc;́c thanh nh&ocirc;m này là kh&ocirc;ng chi&ecirc;́n di&ecirc;̣n tích cho ng&ocirc;i nhà bạn. Và di chuy&ecirc;̉n mang vác trong khi chuy&ecirc;̉n vị trị làm vi&ecirc;̣c khác nhau 1 các thu&acirc;n ti&ecirc;̣n mà kh&ocirc;ng c&ocirc;̀ng k&ecirc;̀nh.</span></span></p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"font-size:18.0pt\">K&ecirc;́t lu&acirc;̣n</span></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Tr&ecirc;n đ&acirc;y là m&ocirc;̣t s&ocirc;́ th&ocirc;ng tin v&ecirc;̀ chi ti&ecirc;́t v&ecirc;̀ thang nh&ocirc;m b&agrave;n Poongsan PS-25160 mà <em><span style=\"background-color:white\">C&ocirc;ng ty <strong>Vitoen</strong> chuy&ecirc;n cung cấp c&aacute;c sản phẩm băng keo chất lượng cao, gi&aacute; th&agrave;nh cạnh tranh. Mọi thắc mắc xin vui l&ograve;ng li&ecirc;n hệ qua&nbsp;Hotline :&nbsp;<span style=\"color:red\">0974289224</span>.</span></em></span></span></p>', '<p><strong>Model</strong> : PS-25160</p>\r\n\r\n<p><strong>Chi&ecirc;̀u r&ocirc;̣ng</strong>&nbsp;:&nbsp; 250 cm</p>\r\n\r\n<p><strong>Chi&ecirc;̀u dài </strong>:&nbsp;1,600 cm</p>\r\n\r\n<p><strong>Chi&ecirc;̀u cao&nbsp;min </strong>: 550 - 750 cm</p>\r\n\r\n<p><strong>Chi&ecirc;̀u cao&nbsp;max </strong>: 910 - 1110 cm</p>\r\n\r\n<p><strong>Trọng lượng :</strong> 6.4 Kg</p>\r\n\r\n<p><strong>Giá bán sỉ </strong>: 1,600,000 VNĐ</p>\r\n\r\n<p><strong>Giá bán lẻ&nbsp;:</strong> 2,050,000 VNĐ</p>', '', 5, 36, 13, '2018-05-02 06:43:50', '2018-05-03 02:08:54');
INSERT INTO `product` (`id`, `code`, `fullname`, `meta_keyword`, `meta_description`, `alias`, `image`, `status`, `child_image`, `price`, `sale_price`, `intro`, `detail`, `technical_detail`, `video_id`, `count_view`, `category_id`, `sort_order`, `created_at`, `updated_at`) VALUES
(73, '475891632', 'Thang nhôm Poongsan PS-45', 'Thang nhôm bàn Poongsan PS-40160', 'Thang nhôm bàn Poongsan PS-40160 là mẫu thang được nhiều người chờ đón nhất cuối năm 2017. Với công dụng khá tốt trong cuộc sống mà nhiều người đã săn lùng mẫu thang nhôm bàn mới này...', 'thang-nhom-poongsan-ps-45', 'thang-nhom-ban-poongsan-ps-40160-1522739739-olekhzfxci6d.jpg', 1, '[\"thang-nhom-ban-poongsan-ps-40120-1s6jiwpft7ca.jpg\",\"thang-nhom-ban-poongsan-ps-4012120-bze0763gomhk.jpg\"]', '2730000.00', '0.00', 'Thang nhôm bàn Poongsan PS-40160 là mẫu thang được nhiều người chờ đón nhất cuối năm 2017. Với công dụng khá tốt trong cuộc sống mà nhiều người đã săn lùng mẫu thang nhôm bàn mới này...', '<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Thang nh&ocirc;m b&agrave;n Poongsan PS-40160</strong> là m&ocirc;̣t m&acirc;̃u thang thu&ocirc;̣c th&ecirc;́ h&ecirc;̣ thứ 5 trong h&ecirc;̣ th&ocirc;́ng phát tri&ecirc;̉n của <strong>Poongsan PS</strong>. Với c&ocirc;ng ngh&ecirc;̣ sản xu&acirc;́t của Hàn Qu&ocirc;́c vào thị trường n&ocirc;̣i địa Vi&ecirc;̣t Nam. Đ&acirc;y là m&acirc;̃u thang được nhi&ecirc;̀u người chờ đón nh&acirc;́t cu&ocirc;́i năm 2017. Với c&ocirc;ng dụng khá t&ocirc;́t trong cu&ocirc;̣c s&ocirc;́ng mà nhi&ecirc;̀u người đã săn lùng m&acirc;̃u thang nh&ocirc;m bàn mới này m&ocirc;̣t cách gắt ngao ở thời đi&ecirc;̉m đó. Sau đ&acirc;y c&ocirc;ng ty <strong>Vitoen </strong>sẽ cung c&acirc;́p cho quý khách hàng các th&ocirc;ng tin v&ecirc;̀ m&acirc;̃u mới này.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><strong><img alt=\"thang nhôm bàn\" src=\"upload/thang-nhom-ban-poongsan-ps-4012120.jpg/\" /></strong></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:14pt\"><span style=\"color:black\"><em>Hình ảnh: Chi&ecirc;́c thang nh&ocirc;m b&agrave;n Poongsan PS-40160.</em></span></span></p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"font-size:18.0pt\">Th&ocirc;ng tin chi ti&ecirc;́t v&ecirc;̀ thang nh&ocirc;m b&agrave;n Poongsan PS-40160</span></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Đ&ocirc;́i với <strong>thang nh&ocirc;m b&agrave;n Poongsan PS-40160 </strong>được sử dụng trong gia đình với c&ocirc;ng vi&ecirc;̣c được thực hi&ecirc;̣n như lau dọn tr&ecirc;n cao trong ng&ocirc;i nhà, sơn tường, sửa chữa v&acirc;̣t dụng... Đặc bi&ecirc;̣t kh&ocirc;ng chỉ nam giới có th&ecirc;̉ là được mà phụ nữ còn làm được hơn đ&ocirc;́i với thang nh&ocirc;m b&agrave;n Poongsan đ&ocirc;́i với c&ocirc;ng vi&ecirc;̣c tr&ecirc;n cao.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Thang nh&ocirc;m bàn này được sử dụng ph&ocirc;̉ bi&ecirc;́n trong gia đình mà có th&ecirc;̉ được sử dụng trong và ngoài trời. Thang nh&ocirc;m bàn được trang bị các tính năng như có các nút khóa bản l&ecirc;̀ tự đ&ocirc;̣ng, đ&acirc;̀u thang được c&ocirc;́ định bằng vít tán và kh&ocirc;ng trơn.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Nhi&ecirc;̀u người dùng đặc bi&ecirc;̣t thích thú với m&acirc;̃u thang bàn này bởi tính linh đ&ocirc;̣ng, r&acirc;́t d&ecirc;̃ thao tác và ch&acirc;́t lượng sản ph&acirc;̉m t&ocirc;́t mà giá thành vừa ý.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Thang nh&ocirc;m bàn ngoài giúp bạn thi c&ocirc;ng m&ocirc;̣t cách thu&acirc;̣n ti&ecirc;̃n và d&ecirc;̃ dàng trong c&ocirc;ng vi&ecirc;̣c vì đ&acirc;y là m&acirc;̃u thang nh&ocirc;m hợp kim cao c&acirc;́p. Được sử dụng trong nhi&ecirc;̀u các c&ocirc;ng trình như thi c&ocirc;ng c&ocirc;ng trình x&acirc;y dụng, trong hoạt đ&ocirc;̣ng sản xu&acirc;́t của nhà máy... Với gam màu chủ đạo là nh&ocirc;m bạc tr&ecirc;n sản ph&acirc;̉m sang bóng đem đ&ecirc;́n tươi mới. Sau thời làm vi&ecirc;̣c bạn có th&ecirc;̉ lau chui 1 cách sách bóng nh&acirc;́t với thang nh&ocirc;m bàn.</span></span></p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"font-size:18.0pt\">Các tính năng và ưu đi&ecirc;̉m của Poongsan PS-40160</span></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Đ&ocirc;́i với dòng thang nh&ocirc;m này có th&ecirc;̉ sử dụng trong những vi&ecirc;̣c như tạo sàn giao thu nhỏ trong c&ocirc;ng trình, trang trí n&ocirc;̣i th&acirc;́t nhà cửa và sửa chữa các v&acirc;̣t dụng tr&ecirc;n cao. Với b&ecirc;̀ r&ocirc;̣ng thang khá lớn l&ecirc;n tới 30cm thì bạn hoàn toàn có th&ecirc;̉ đứng 2 ch&acirc;n tr&ecirc;n thang trong thời gian dài làm vi&ecirc;̣c.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Sử dụng c&ocirc;ng ngh&ecirc;̣ mới n&ecirc;n dòng sản ph&acirc;̉m thang nh&ocirc;m bàn có ki&ecirc;̉u dáng khá hi&ecirc;̣n đại, đ&ocirc;̣ b&ecirc;̀n, thao tác g&acirc;́p mở thang bàn d&ecirc;̃ dàng và ti&ecirc;̣n lợi trong c&ocirc;ng vi&ecirc;̣c.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Ngoài ra c&acirc;́u tạo của thang khá chắc chắn và khả năng chịu được rung khi leo khá &ocirc;̉n n&ecirc;n ph&acirc;n nào y&ecirc;n t&acirc;m hơn cho người kh&ocirc;ng ưu thích đ&ocirc;̣ cao. H&ecirc;̣ th&ocirc;́ng 4 ch&acirc;n thang nh&ocirc;m và bản l&ecirc;̀ được bọc bằng lớp nhựa ABS ch&acirc;́t lượng cao và chịu được thời ti&ecirc;́t khắc nhi&ecirc;̣t. Tạo n&ecirc;n cảm giác r&acirc;́t an toàn khi sử dụng. Thang nh&ocirc;m b&agrave;n Poongsan PS-40160 được thi&ecirc;́t k&ecirc;́ với h&ecirc;̣ th&ocirc;́ng b&acirc;̣c thang khá hợp lý n&ecirc;n giúp bạn có th&ecirc;̉ đứng l&acirc;u tr&ecirc;n thang nh&ocirc;m này. Nguy&ecirc;n li&ecirc;̣u là 100% nh&ocirc;m nguy&ecirc;n kh&ocirc;́i cao c&acirc;́p với kh&ocirc;́i lượng tĩnh của thang là 7,2 kg.</span></span></p>\r\n\r\n<h2 style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:13pt\"><span style=\"font-family:Cambria,serif\"><span style=\"color:#4f81bd\"><span style=\"font-size:18.0pt\">K&ecirc;́t lu&acirc;̣n</span></span></span></span></h2>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:14pt\"><span style=\"color:black\">Tr&ecirc;n đ&acirc;y là m&ocirc;̣t s&ocirc;́ th&ocirc;ng tin v&ecirc;̀ chi ti&ecirc;́t v&ecirc;̀ <strong>thang nh&ocirc;m b&agrave;n Poongsan PS-40160</strong> mà <em><span style=\"background-color:white\">C&ocirc;ng ty <strong>vitoen</strong> chuy&ecirc;n cung cấp c&aacute;c sản phẩm băng keo chất lượng cao, gi&aacute; th&agrave;nh cạnh tranh. Mọi thắc mắc xin vui l&ograve;ng li&ecirc;n hệ qua&nbsp;Hotline :&nbsp;<span style=\"color:red\">0974289224.</span></span></em></span></span></p>', '<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Model</strong> : PS-40160</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Chi&ecirc;̀u r&ocirc;̣ng&nbsp;:</strong>&nbsp; 400 cm</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Chi&ecirc;̀u dài :&nbsp;</strong>1,600 cm</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Chi&ecirc;̀u cao&nbsp;min :</strong> 550 - 750 cm</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Chi&ecirc;̀u cao&nbsp;max :</strong> 910 - 1110 cm</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Trọng lượng : </strong>8.3&nbsp;Kg</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Giá bán sỉ :</strong> 2,160,000 VNĐ</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:14pt\"><span style=\"color:black\"><strong>Giá bán lẻ&nbsp;: </strong>2,730,000 VNĐ</span></span></p>', '', 6, 36, 14, '2018-05-02 06:56:47', '2018-05-03 02:09:18'),
(74, '438719562', 'Thang nhôm Poongsan PS-43', '', '', 'thang-nhom-poongsan-ps-43', 'thang-nhom-dai-loan-pal-b6-205-aik0qrg5b92d.jpg', 1, NULL, '0.00', '0.00', '', '', '', '', NULL, 36, 15, '2018-05-02 10:05:17', '2018-05-03 02:09:37'),
(75, '316849527', 'Thang nhôm Poongsan Hàn Quốc PS-46', '', '', 'thang-nhom-poongsan-han-quoc-ps-46', 'thang-nhom-han-quoc-khoa-sap-tu-dong-poongsan-oa-7-2c8x7lwfv1gu.jpg', 1, NULL, '0.00', '0.00', '', '', '', '', NULL, 36, 16, '2018-05-02 10:06:02', '2018-05-03 02:09:46'),
(76, '589137624', 'Thang nhôm rút đơn đai nhựa Sumika SK 380 3.8m', '', '', 'thang-nhom-rut-don-dai-nhua-sumika-sk-380-38m', 'thang-nhom-han-quoc-khoa-sap-tu-dong-poongsan-oa-8-m458nizebd62.jpg', 1, NULL, '0.00', '0.00', '', '', '', '', NULL, 36, 17, '2018-05-02 10:06:30', '2018-05-03 02:10:13'),
(77, '539162487', 'Thang nhôm Poongsan Hàn Quốc PS-47', '', '', 'thang-nhom-poongsan-han-quoc-ps-47', 'thang-nhom-poongsan-han-quoc-ps-46-2zl1w0d7yk5p.jpg', 1, NULL, '0.00', '0.00', '', '', '', '', NULL, 36, 19, '2018-05-02 10:07:01', '2018-05-03 02:10:40'),
(78, '274136895', 'Thang nhôm rút gọn Hakachi HT-380CP', '', '', 'thang-nhom-rut-gon-hakachi-ht-380cp', 'thang-nhom-poongsan-ps-44-mkxwcybl2sru.jpg', 1, NULL, '0.00', '0.00', '', '', '', '', NULL, 36, 18, '2018-05-02 10:08:53', '2018-05-03 02:10:25'),
(79, '294138765', 'Thang nhôm Hàn Quốc khóa sập tự động Poongsan OA-7', '', '', 'thang-nhom-han-quoc-khoa-sap-tu-dong-poongsan-oa-7', 'thang-nhom-poongsan-ps-45-s0ribu1a895v.jpg', 1, NULL, '0.00', '0.00', '', '', '', '', NULL, 36, 20, '2018-05-02 10:09:14', '2018-05-03 02:10:50'),
(80, '296487531', 'Thang nhôm Đài Loan Pal B6-205', '', '', 'thang-nhom-dai-loan-pal-b6-205', 'thang-nhom-rut-doi-5m-sumo-adt808b-1-ydw5fpocknu4.jpg', 1, NULL, '0.00', '0.00', '', '', '', '', NULL, 36, 21, '2018-05-02 10:09:41', '2018-05-03 02:11:07'),
(81, '346985127', 'Thang nhôm rút Hakachi HT-410', '', '', 'thang-nhom-rut-hakachi-ht-410', 'thang-nhom-rut-gon-38m-xstep-xt-380-h2w3lng48va7.jpg', 1, NULL, '0.00', '0.00', '', '', '', '', NULL, 36, 22, '2018-05-02 10:10:12', '2018-05-03 02:11:21'),
(82, '238175469', 'Thang nhôm rút chữ A Nikita AI56 (5.6m)', '', '', 'thang-nhom-rut-chu-a-nikita-ai56-56m', '2m-thang-chu-a-pho-thong-ta20-1-gj5xel7w8as0.jpg', 1, NULL, '0.00', '0.00', '', '', '', '', NULL, 23, 23, '2018-05-02 10:35:40', '2018-05-03 02:04:59'),
(83, '412637589', 'Thang nhôm rút gọn 3.8m Xstep XT-380', '', '', 'thang-nhom-rut-gon-38m-xstep-xt-380', 'thang-ghe-4-bac-sumo-ads-604-1-cr807xwljmyu.jpg', 1, NULL, '0.00', '0.00', '', '', '', '', NULL, 23, 24, '2018-05-02 10:36:09', '2018-05-03 02:12:13'),
(84, '765314928', 'Thang ghế 4 bậc Sumo ADS-604', '', '', 'thang-ghe-4-bac-sumo-ads-604', 'thang-nhom-ban-poongsan-ps-40160-1522739739-pij3bzevt67x.jpg', 1, NULL, '0.00', '0.00', '', '', '', '', NULL, 23, 25, '2018-05-02 10:36:39', '2018-05-03 02:12:27'),
(85, '372164958', 'Thang nhôm rút gọn Xstep XT-380C', '', '', 'thang-nhom-rut-gon-xstep-xt-380c', 'thang-nhom-dai-loan-pal-b6-205-74khvng1lz0x.jpg', 1, NULL, '0.00', '0.00', '', '', '', '', NULL, 23, 26, '2018-05-02 10:37:05', '2018-05-03 02:13:03'),
(86, '596438712', 'Thang nhôm rút đôi 5m SUMO ADT808B', '', '', 'thang-nhom-rut-doi-5m-sumo-adt808b', 'thang-nhom-han-quoc-khoa-sap-tu-dong-poongsan-oa-7-r8toj53v6daq.jpg', 1, NULL, '0.00', '0.00', '', '', '', '', NULL, 23, 27, '2018-05-02 10:37:27', '2018-05-03 02:13:51'),
(87, '384756291', 'Thang nhôm Hàn Quốc khóa sập tự động Poongsan OA-8', '', '', 'thang-nhom-han-quoc-khoa-sap-tu-dong-poongsan-oa-8', 'thang-nhom-han-quoc-khoa-sap-tu-dong-poongsan-oa-8-u61azj3ft407.jpg', 1, NULL, '0.00', '0.00', '', '', '', '', NULL, 23, 28, '2018-05-02 10:38:11', '2018-05-03 02:14:41'),
(88, '418726359', 'Thang nhôm bàn Poongsan PS-40160', '', '', 'thang-nhom-ban-poongsan-ps-40160', 'thang-nhom-poongsan-han-quoc-ps-46-wdpj6c4snrtg.jpg', 1, NULL, '0.00', '0.00', '', '', '', '', NULL, 23, 29, '2018-05-02 10:38:37', '2018-05-03 02:16:20'),
(89, '634571982', 'Thang nhôm bàn Poongsan PS-30120', '', '', 'thang-nhom-ban-poongsan-ps-30120', 'thang-nhom-poongsan-ps-43-9ly45uprn37m.jpg', 1, NULL, '0.00', '0.00', '', '', '', '', NULL, 23, 30, '2018-05-02 10:39:22', '2018-05-03 02:16:51'),
(90, '832176459', 'Thang nhôm bàn Poongsan PS-40120', '', '', 'thang-nhom-ban-poongsan-ps-40120', 'thang-nhom-poongsan-ps-44-rg98z1lijobf.jpg', 1, NULL, '0.00', '0.00', '', '', '', '', NULL, 22, 23, '2018-05-02 10:39:47', '2018-05-03 02:11:42'),
(91, '298731465', 'Thang ghế 5 bậc Sumo ADS-605', '', '', 'thang-ghe-5-bac-sumo-ads-605', 'thang-nhom-poongsan-ps-45-48ne30tfbogu.jpg', 1, NULL, '0.00', '0.00', '', '', '', '', NULL, 23, 31, '2018-05-02 10:40:11', '2018-05-03 02:17:17'),
(92, '528641739', 'Thang nhôm rút đa năng Xstep XM-28', '', '', 'thang-nhom-rut-da-nang-xstep-xm-28', 'thang-nhom-rut-chu-a-nikita-ai56-56m-lt34q7kunm0i.jpg', 1, NULL, '0.00', '0.00', '', '', '', '', NULL, 23, 32, '2018-05-02 10:40:32', '2018-05-03 02:17:41'),
(93, '719532864', 'Thang nhôm ghế XSTEP XL-06', '', '', 'thang-nhom-ghe-xstep-xl-06', 'thang-nhom-rut-don-dai-nhua-sumika-sk-380-38m-1516605479-7dvf1mljc60s.jpg', 1, NULL, '0.00', '0.00', '', '', '', '', NULL, 23, 33, '2018-05-02 10:41:19', '2018-05-03 02:20:32'),
(94, '654312978', '4.9m Thang nhôm rút gọn Nikita KN-R49', '', '', '49m-thang-nhom-rut-gon-nikita-kn-r49', 'thang-nhom-rut-gon-38m-xstep-xt-380-y854kfqcwzjg.jpg', 1, NULL, '0.00', '0.00', '', '', '', '', NULL, 23, 34, '2018-05-02 10:42:28', '2018-05-03 02:21:09'),
(95, '827365914', 'Thang nhôm đôi chữ AI Nikita AI38', '', '', 'thang-nhom-doi-chu-ai-nikita-ai38', '2m-thang-chu-a-pho-thong-ta20-1-5c34xr9zlhny.jpg', 1, NULL, '0.00', '0.00', '', '', '', '', NULL, 27, 24, '2018-05-02 10:48:33', '2018-05-03 02:11:54'),
(96, '169725348', '2.5m Thang chữ A phổ thông TA25', '', '', '25m-thang-chu-a-pho-thong-ta25', 'thang-ghe-4-bac-sumo-ads-604-1-8kwteq7cxuj2.jpg', 1, NULL, '0.00', '0.00', '', '', '', '', NULL, 27, 25, '2018-05-02 10:48:58', '2018-05-03 02:12:47'),
(97, '175369284', 'Thang nhôm rút gọn Nikita KN-R38', '', '', 'thang-nhom-rut-gon-nikita-kn-r38', 'thang-nhom-ban-poongsan-ps-40160-1522739739-w0k3j5s2puc9.jpg', 1, NULL, '0.00', '0.00', '', '', '', '', NULL, 27, 26, '2018-05-02 10:49:25', '2018-05-03 02:13:13'),
(98, '417352986', 'Thang nhôm Hàn Quốc khóa sập tự động Poongsan OA-6', '', '', 'thang-nhom-han-quoc-khoa-sap-tu-dong-poongsan-oa-6', 'thang-nhom-dai-loan-pal-b6-205-g816c0zbo7xq.jpg', 1, NULL, '0.00', '0.00', '', '', '', '', NULL, 27, 27, '2018-05-02 10:49:43', '2018-05-03 02:14:09'),
(99, '968753142', '4.8m Thang nhôm rút gọn đơn Advindeq ADT214B', '', '', '48m-thang-nhom-rut-gon-don-advindeq-adt214b', 'thang-nhom-poongsan-ps-45-jkiy1nmda4ge.jpg', 1, NULL, '0.00', '0.00', '', '', '', '', NULL, 27, 28, '2018-05-02 10:50:04', '2018-05-03 02:15:08'),
(100, '172958364', 'Thang nhôm rút đôi 4.4m SUMO ADT807B', '', '', 'thang-nhom-rut-doi-44m-sumo-adt807b', 'thang-nhom-rut-chu-a-nikita-ai56-56m-ynljmq7bs9i3.jpg', 1, NULL, '0.00', '0.00', '', '', '', '', NULL, 27, 29, '2018-05-02 10:50:27', '2018-05-03 02:15:53'),
(101, '816549273', 'Thang nhôm rút gọn 4.4m SUMO ADT314B', '', '', 'thang-nhom-rut-gon-44m-sumo-adt314b', 'thang-nhom-han-quoc-khoa-sap-tu-dong-poongsan-oa-8-acvwl5z60hjk.jpg', 1, NULL, '0.00', '0.00', '', '', '', '', NULL, 27, 30, '2018-05-02 10:51:24', '2018-05-03 02:16:36'),
(102, '561892374', '4.1m Thang nhôm rút gọn KN-R41', '', '', '41m-thang-nhom-rut-gon-kn-r41', 'thang-nhom-poongsan-han-quoc-ps-47-xqzv43sifa9m.jpg', 1, NULL, '0.00', '0.00', '', '', '', '', NULL, 27, 31, '2018-05-02 10:51:53', '2018-05-03 02:17:04'),
(103, '612935748', 'Thang xếp đôi đa năng Ameca AMI-560', '', '', 'thang-xep-doi-da-nang-ameca-ami-560', '2m-thang-chu-a-pho-thong-ta20-1-5hpn430alytc.jpg', 1, NULL, '0.00', '0.00', '', '', '', '', NULL, 19, 32, '2018-05-02 10:54:28', '2018-05-03 02:20:18'),
(104, '318275469', 'Thang nhôm gấp khúc Nikita TGA37', '', '', 'thang-nhom-gap-khuc-nikita-tga37', 'thang-ghe-4-bac-sumo-ads-604-1-d7qpt0eig5hy.jpg', 1, NULL, '0.00', '0.00', '', '', '', '', NULL, 19, 33, '2018-05-02 10:54:48', '2018-05-03 02:20:52'),
(105, '897461325', 'Thang nhôm chữ M TW Đài Loan PAL B6-165', '', '', 'thang-nhom-chu-m-tw-dai-loan-pal-b6-165', 'thang-nhom-ban-poongsan-ps-40160-1522739739-duv94z8kxoe3.jpg', 1, NULL, '0.00', '0.00', '', '', '', '', NULL, 19, 34, '2018-05-02 10:55:10', '2018-05-03 02:07:47'),
(106, '347562918', '3m Thang chữ A phổ thông TA30', '', '', '3m-thang-chu-a-pho-thong-ta30', 'thang-nhom-dai-loan-pal-b6-205-5n1uegjdyfoa.jpg', 1, NULL, '0.00', '0.00', '', '', '', '', NULL, 19, 35, '2018-05-02 10:55:29', '2018-05-03 02:21:33'),
(107, '427816539', 'Thang nhôm gấp Nikita TG58', '', '', 'thang-nhom-gap-nikita-tg58', 'thang-nhom-han-quoc-khoa-sap-tu-dong-poongsan-oa-7-kqf9n20ypvsw.jpg', 1, NULL, '0.00', '0.00', '', '', '', '', NULL, 19, 36, '2018-05-02 10:55:51', '2018-05-03 02:22:05'),
(108, '897431265', 'Thang nhôm gấp khúc Nikita TGA47', '', '', 'thang-nhom-gap-khuc-nikita-tga47', 'thang-nhom-poongsan-han-quoc-ps-46-8q1y36eb0lpz.jpg', 1, NULL, '0.00', '0.00', '', '', '', '', NULL, 19, 37, '2018-05-02 10:56:12', '2018-05-03 02:22:15'),
(109, '896472351', 'Thang nhôm chữ A khóa sập Nika-20', '', '', 'thang-nhom-chu-a-khoa-sap-nika-20', 'thang-nhom-poongsan-ps-43-jtg1e4q7h52f.jpg', 1, NULL, '0.00', '0.00', '', '', '', '', NULL, 19, 38, '2018-05-02 10:56:32', '2018-05-03 02:22:23'),
(110, '426597183', '1.5m Thang chữ A phổ thông TA15', '', '', '15m-thang-chu-a-pho-thong-ta15', 'thang-nhom-rut-chu-a-nikita-ai56-56m-hi3u4nevgbl7.jpg', 1, NULL, '800000.00', '0.00', '', '', '', '', 9, 19, 39, '2018-05-02 10:56:53', '2018-05-03 04:44:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `project`
--

DROP TABLE IF EXISTS `project`;
CREATE TABLE `project` (
  `id` bigint(11) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `meta_description` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `count_view` int(11) DEFAULT NULL,
  `total_cost` int(11) DEFAULT NULL,
  `unit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `intro` text COLLATE utf8_unicode_ci,
  `overview` text COLLATE utf8_unicode_ci,
  `equipment` text COLLATE utf8_unicode_ci,
  `price_list` text COLLATE utf8_unicode_ci,
  `googlemap_url` text COLLATE utf8_unicode_ci,
  `province_id` int(11) DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL,
  `street` text COLLATE utf8_unicode_ci,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `project_article`
--

DROP TABLE IF EXISTS `project_article`;
CREATE TABLE `project_article` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `intro` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `meta_keyword` text COLLATE utf8_unicode_ci,
  `meta_description` text COLLATE utf8_unicode_ci,
  `count_view` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `project_member`
--

DROP TABLE IF EXISTS `project_member`;
CREATE TABLE `project_member` (
  `id` bigint(20) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `project_member`
--

INSERT INTO `project_member` (`id`, `project_id`, `member_id`, `created_at`, `updated_at`) VALUES
(1, 10, 4, '2018-01-07 14:09:20', '2018-01-07 14:09:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `province`
--

DROP TABLE IF EXISTS `province`;
CREATE TABLE `province` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `province`
--

INSERT INTO `province` (`id`, `fullname`, `alias`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Việt Nam', 'viet-nam', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:18:21'),
(2, 'An Giang', 'an-giang', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:16:34'),
(3, 'Bà Rịa Vũng Tàu', 'ba-ria-vung-tau', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:16:28'),
(4, 'Bình Dương', 'binh-duong', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:16:21'),
(5, 'Bình Phước', 'binh-phuoc', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:16:16'),
(6, 'Bình Thuận', 'binh-thuan', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:16:09'),
(7, 'Bình Định', 'binh-dinh', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:16:02'),
(8, 'Bắc Giang', 'bac-giang', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:15:55'),
(9, 'Bắc Kạn', 'bac-kan', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:15:49'),
(10, 'Bắc Ninh', 'bac-ninh', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:15:43'),
(11, 'Bến Tre', 'ben-tre', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:15:37'),
(12, 'Cao Bằng', 'cao-bang', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:15:28'),
(13, 'Cà Mau', 'ca-mau', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:15:22'),
(14, 'Cần Thơ', 'can-tho', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:15:15'),
(15, 'Gia Lai', 'gia-lai', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:16:40'),
(16, 'Hà Giang', 'ha-giang', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:16:47'),
(17, 'Hà Nam', 'ha-nam', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:16:54'),
(18, 'Hà Nội', 'ha-noi', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:18:14'),
(19, 'Hà Tĩnh', 'ha-tinh', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:18:08'),
(20, 'Hòa Bình', 'hoa-binh', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:18:02'),
(21, 'Hưng Yên', 'hung-yen', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:17:55'),
(22, 'Hải Dương', 'hai-duong', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:17:50'),
(23, 'Hải Phòng', 'hai-phong', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:17:43'),
(24, 'Hồ Chí Minh', 'ho-chi-minh', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:17:38'),
(25, 'Khánh Hòa', 'khanh-hoa', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:17:32'),
(26, 'Kiên Giang', 'kien-giang', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:17:26'),
(27, 'Kon Tum', 'kon-tum', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:17:21'),
(28, 'Lai Châu', 'lai-chau', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:17:14'),
(29, 'Long An', 'long-an', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:17:08'),
(30, 'Lào Cai', 'lao-cai', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:17:01'),
(31, 'Lâm Đồng', 'lam-dong', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:15:08'),
(32, 'Lạng Sơn', 'lang-son', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:15:01'),
(33, 'Nam Định', 'nam-dinh', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:14:54'),
(34, 'Nghệ An', 'nghe-an', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:12:41'),
(35, 'Ninh Bình', 'ninh-binh', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:12:33'),
(36, 'Ninh Thuận', 'ninh-thuan', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:12:27'),
(37, 'Phú Thọ', 'phu-tho', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:12:20'),
(38, 'Phú Yên', 'phu-yen', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:12:14'),
(39, 'Quảng Nam', 'quang-nam', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:12:09'),
(40, 'Quảng Ngãi', 'quang-ngai', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:12:03'),
(41, 'Quảng Ninh', 'quang-ninh', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:11:57'),
(42, 'Quảng Trị', 'quang-tri', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:11:52'),
(43, 'Sơn La', 'son-la', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:11:45'),
(44, 'Thanh Hóa', 'thanh-hoa', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:11:39'),
(45, 'Thái Bình', 'thai-binh', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:11:33'),
(46, 'Thái Nguyên', 'thai-nguyen', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:11:28'),
(47, 'Thừa Thiên Huế', 'thua-thien-hue', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:12:47'),
(48, 'Tiền Giang', 'tien-giang', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:12:52'),
(49, 'Trà Vinh', 'tra-vinh', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:12:58'),
(50, 'Tuyên Quang', 'tuyen-quang', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:14:49'),
(51, 'Tây Ninh', 'tay-ninh', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:14:34'),
(52, 'Vĩnh Long', 'vinh-long', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:14:25'),
(53, 'Vĩnh Phúc', 'vinh-phuc', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:14:20'),
(54, 'Yên Bái', 'yen-bai', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:14:11'),
(55, 'Đà Nẵng', 'da-nang', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:13:58'),
(56, 'Đắk Lắk', 'dak-lak', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:13:52'),
(57, 'Đồng Nai', 'dong-nai', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:13:46'),
(58, 'Đồng Tháp', 'dong-thap', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:13:40'),
(59, 'Bạc Liêu', 'bac-lieu', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:13:33'),
(60, 'Sóc Trăng', 'soc-trang', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:13:19'),
(61, 'Hậu Giang', 'hau-giang', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:13:11'),
(62, 'Đắk Nông', 'dak-nong', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:13:05'),
(63, 'Điện Biên', 'dien-bien', 1, 1, '2018-02-26 00:00:00', '2018-02-26 03:11:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reminders`
--

DROP TABLE IF EXISTS `reminders`;
CREATE TABLE `reminders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_users`
--

DROP TABLE IF EXISTS `role_users`;
CREATE TABLE `role_users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `setting_system`
--

DROP TABLE IF EXISTS `setting_system`;
CREATE TABLE `setting_system` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `title` text,
  `meta_keyword` text,
  `meta_description` text,
  `author` varchar(255) DEFAULT NULL,
  `copyright` text,
  `google_site_verification` text,
  `google_analytics` text,
  `logo_frontend` text,
  `favicon` varchar(255) DEFAULT NULL,
  `setting` text,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `setting_system`
--

INSERT INTO `setting_system` (`id`, `fullname`, `alias`, `title`, `meta_keyword`, `meta_description`, `author`, `copyright`, `google_site_verification`, `google_analytics`, `logo_frontend`, `favicon`, `setting`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'settingsystem', 'setting-system', 'Băng keo, Thang nhôm cao cấp, kệ trưng bày, dụng cụ cầm tay chất lượng | VITOEN', 'thang nhôm, Kệ trưng bày, dụng cụ cầm tay, băng keo', 'Vitoen là đơn vị chuyên cung cấp các sản phẩm về thang nhôm cao cấp, băng keo, kệ trưng bày, dụng cụ cầm tay với chất lượng tốt nhất.', '', '', 'KlLQ51IBlGdopyRBTBG-QMPgj7Il9xduiEBGFkgo4nQ', 'UA-118589003-1', 'logo-8hdcy57up93n.png', 'thang-nhom-jp9eszagf01l.jpg', '[{\"field_name\":\"Số bài viết trên 1 trang\",\"field_code\":\"article_perpage\",\"field_value\":\"10\"},{\"field_name\":\"Độ rộng hình bài viết\",\"field_code\":\"article_width\",\"field_value\":\"400\"},{\"field_name\":\"Độ cao hình bài viết\",\"field_code\":\"article_height\",\"field_value\":\"250\"},{\"field_name\":\"Số sản phẩm trên 1 trang\",\"field_code\":\"product_perpage\",\"field_value\":\"32\"},{\"field_name\":\"Độ rộng hình sản phẩm\",\"field_code\":\"product_width\",\"field_value\":\"400\"},{\"field_name\":\"Độ cao hình sản phẩm\",\"field_code\":\"product_height\",\"field_value\":\"400\"},{\"field_name\":\"Đơn vị tiền tệ\",\"field_code\":\"currency_unit\",\"field_value\":\"vi_VN\"},{\"field_name\":\"MERCHANT_ID\",\"field_code\":\"merchant_id\",\"field_value\":\"36680\"},{\"field_name\":\"MERCHANT_PASS\",\"field_code\":\"merchant_pass\",\"field_value\":\"matkhauketnoi\"},{\"field_name\":\"RECEIVER\",\"field_code\":\"receiver\",\"field_value\":\"demo@nganluong.vn\"},{\"field_name\":\"Smtp host\",\"field_code\":\"smtp_host\",\"field_value\":\"smtp.gmail.com\"},{\"field_name\":\"Smtp port\",\"field_code\":\"smtp_port\",\"field_value\":\"465\"},{\"field_name\":\"Smtp authication\",\"field_code\":\"authentication\",\"field_value\":\"1\"},{\"field_name\":\"Encription\",\"field_code\":\"encription\",\"field_value\":\"ssl\"},{\"field_name\":\"Smtp username\",\"field_code\":\"smtp_username\",\"field_value\":\"dien.toannang@gmail.com\"},{\"field_name\":\"Smtp password\",\"field_code\":\"smtp_password\",\"field_value\":\"bjsdgetadsutdono\"},{\"field_name\":\"Email to\",\"field_code\":\"email_to\",\"field_value\":\"tichtacso.com@gmail.com\"},{\"field_name\":\"Contact person\",\"field_code\":\"contacted_person\",\"field_value\":\"Huỳnh Thúc Vinh\"},{\"field_name\":\"Trụ sở\",\"field_code\":\"address\",\"field_value\":\"50/2/59 Dương Quảng Hàm, Phường 5, Quận Gò Vấp\"},{\"field_name\":\"Hotline\",\"field_code\":\"telephone\",\"field_value\":\"0974289224\"},{\"field_name\":\"Facebook\",\"field_code\":\"facebook_url\",\"field_value\":\"https://www.facebook.com/nguyenvan.laptrinh\"},{\"field_name\":\"Twitter\",\"field_code\":\"twitter_url\",\"field_value\":\"https://twitter.com/\"},{\"field_name\":\"Google Plus\",\"field_code\":\"google_plus\",\"field_value\":\"https://plus.google.com/u/0/?hl=vi\"},{\"field_name\":\"Youtube\",\"field_code\":\"youtube_url\",\"field_value\":\"https://www.youtube.com/watch?v=kAcV7S3sySU\"},{\"field_name\":\"Instagram\",\"field_code\":\"instagram_url\",\"field_value\":\"http://flickr.com\"},{\"field_name\":\"Pinterest\",\"field_code\":\"pinterest_url\",\"field_value\":\"http://daidung.vn/\"},{\"field_name\":\"Map\",\"field_code\":\"map_url\",\"field_value\":\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.7765505259867!2d106.68751671435092!3d10.828404792286284!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317528f0d3be7c47%3A0x3f95e11384c4817f!2zNTAgRMawxqFuZyBRdeG6o25nIEjDoG0sIHBoxrDhu51uZyA1LCBHw7IgVuG6pXAsIEjhu5MgQ2jDrSBNaW5oLCBWaWV0bmFt!5e0!3m2!1sen!2s!4v1515998374369\"},{\"field_name\":\"Giờ giao dịch\",\"field_code\":\"opened_time\",\"field_value\":\"7:00 - 22:30\"}]', 1, 1, '2017-12-03 07:45:35', '2018-05-02 09:26:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `supporter`
--

DROP TABLE IF EXISTS `supporter`;
CREATE TABLE `supporter` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number_money` decimal(11,0) DEFAULT NULL,
  `payment_method_id` int(11) DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `supporter`
--

INSERT INTO `supporter` (`id`, `fullname`, `number_money`, `payment_method_id`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Nguyễn Thị Thu Hằng', '1000000', 1, 1, 1, '2018-01-07 17:32:50', '2018-01-07 17:47:21'),
(7, 'Trần Gia Lạc', '2000000', 2, 2, 1, '2018-01-07 18:02:15', '2018-01-08 07:19:18'),
(8, 'Lê Văn Đại', '2000000', 1, 3, 1, '2018-01-08 02:38:56', '2018-01-08 09:29:07'),
(9, 'Nguyễn Mạnh Hùng', '3000000', 2, 4, 1, '2018-01-08 02:39:19', '2018-01-08 02:39:19'),
(10, 'Trần Tiến Dư', '3000000', 2, 5, 1, '2018-01-08 02:39:35', '2018-01-08 02:39:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `throttle`
--

DROP TABLE IF EXISTS `throttle`;
CREATE TABLE `throttle` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `throttle`
--

INSERT INTO `throttle` (`id`, `user_id`, `type`, `ip`, `created_at`, `updated_at`) VALUES
(1, NULL, 'global', NULL, '2017-11-12 07:00:10', '2017-11-12 07:00:10'),
(2, NULL, 'ip', '127.0.0.1', '2017-11-12 07:00:10', '2017-11-12 07:00:10'),
(3, NULL, 'global', NULL, '2017-11-12 07:00:22', '2017-11-12 07:00:22'),
(4, NULL, 'ip', '127.0.0.1', '2017-11-12 07:00:22', '2017-11-12 07:00:22'),
(5, NULL, 'global', NULL, '2017-11-12 07:00:36', '2017-11-12 07:00:36'),
(6, NULL, 'ip', '127.0.0.1', '2017-11-12 07:00:36', '2017-11-12 07:00:36'),
(7, NULL, 'global', NULL, '2017-11-12 07:05:02', '2017-11-12 07:05:02'),
(8, NULL, 'ip', '127.0.0.1', '2017-11-12 07:05:02', '2017-11-12 07:05:02'),
(9, NULL, 'global', NULL, '2017-11-12 07:30:11', '2017-11-12 07:30:11'),
(10, NULL, 'ip', '127.0.0.1', '2017-11-12 07:30:11', '2017-11-12 07:30:11'),
(11, NULL, 'global', NULL, '2017-11-12 07:32:49', '2017-11-12 07:32:49'),
(12, NULL, 'ip', '127.0.0.1', '2017-11-12 07:32:49', '2017-11-12 07:32:49'),
(13, NULL, 'global', NULL, '2017-11-12 07:39:23', '2017-11-12 07:39:23'),
(14, NULL, 'ip', '127.0.0.1', '2017-11-12 07:39:23', '2017-11-12 07:39:23'),
(15, NULL, 'global', NULL, '2017-11-12 07:55:42', '2017-11-12 07:55:42'),
(16, NULL, 'ip', '127.0.0.1', '2017-11-12 07:55:42', '2017-11-12 07:55:42'),
(17, NULL, 'global', NULL, '2017-11-12 07:59:33', '2017-11-12 07:59:33'),
(18, NULL, 'ip', '127.0.0.1', '2017-11-12 07:59:33', '2017-11-12 07:59:33'),
(19, NULL, 'global', NULL, '2017-11-12 08:01:13', '2017-11-12 08:01:13'),
(20, NULL, 'ip', '127.0.0.1', '2017-11-12 08:01:13', '2017-11-12 08:01:13'),
(21, NULL, 'global', NULL, '2017-11-12 08:01:34', '2017-11-12 08:01:34'),
(22, NULL, 'ip', '127.0.0.1', '2017-11-12 08:01:34', '2017-11-12 08:01:34'),
(23, NULL, 'global', NULL, '2017-11-12 08:01:41', '2017-11-12 08:01:41'),
(24, NULL, 'ip', '127.0.0.1', '2017-11-12 08:01:41', '2017-11-12 08:01:41'),
(25, NULL, 'global', NULL, '2017-11-12 08:02:05', '2017-11-12 08:02:05'),
(26, NULL, 'ip', '127.0.0.1', '2017-11-12 08:02:05', '2017-11-12 08:02:05'),
(27, NULL, 'global', NULL, '2017-11-12 08:12:23', '2017-11-12 08:12:23'),
(28, NULL, 'ip', '127.0.0.1', '2017-11-12 08:12:23', '2017-11-12 08:12:23'),
(29, NULL, 'global', NULL, '2017-11-12 08:18:51', '2017-11-12 08:18:51'),
(30, NULL, 'ip', '127.0.0.1', '2017-11-12 08:18:51', '2017-11-12 08:18:51'),
(31, NULL, 'global', NULL, '2017-11-12 08:19:22', '2017-11-12 08:19:22'),
(32, NULL, 'ip', '127.0.0.1', '2017-11-12 08:19:22', '2017-11-12 08:19:22'),
(33, NULL, 'global', NULL, '2017-11-12 08:34:38', '2017-11-12 08:34:38'),
(34, NULL, 'ip', '127.0.0.1', '2017-11-12 08:34:38', '2017-11-12 08:34:38'),
(35, NULL, 'global', NULL, '2017-11-12 10:21:38', '2017-11-12 10:21:38'),
(36, NULL, 'ip', '127.0.0.1', '2017-11-12 10:21:38', '2017-11-12 10:21:38'),
(37, NULL, 'global', NULL, '2017-11-12 10:38:16', '2017-11-12 10:38:16'),
(38, NULL, 'ip', '127.0.0.1', '2017-11-12 10:38:16', '2017-11-12 10:38:16'),
(39, 1, 'user', NULL, '2017-11-12 10:38:16', '2017-11-12 10:38:16'),
(40, NULL, 'global', NULL, '2017-11-12 10:39:37', '2017-11-12 10:39:37'),
(41, NULL, 'ip', '127.0.0.1', '2017-11-12 10:39:37', '2017-11-12 10:39:37'),
(42, 1, 'user', NULL, '2017-11-12 10:39:37', '2017-11-12 10:39:37'),
(43, NULL, 'global', NULL, '2017-11-12 10:58:13', '2017-11-12 10:58:13'),
(44, NULL, 'ip', '127.0.0.1', '2017-11-12 10:58:13', '2017-11-12 10:58:13'),
(45, NULL, 'global', NULL, '2017-11-12 10:59:19', '2017-11-12 10:59:19'),
(46, NULL, 'ip', '127.0.0.1', '2017-11-12 10:59:19', '2017-11-12 10:59:19'),
(47, 4, 'user', NULL, '2017-11-12 10:59:19', '2017-11-12 10:59:19'),
(48, NULL, 'global', NULL, '2017-11-12 11:00:10', '2017-11-12 11:00:10'),
(49, NULL, 'ip', '127.0.0.1', '2017-11-12 11:00:10', '2017-11-12 11:00:10'),
(50, 4, 'user', NULL, '2017-11-12 11:00:10', '2017-11-12 11:00:10'),
(51, NULL, 'global', NULL, '2017-11-12 11:04:27', '2017-11-12 11:04:27'),
(52, NULL, 'ip', '127.0.0.1', '2017-11-12 11:04:27', '2017-11-12 11:04:27'),
(53, 4, 'user', NULL, '2017-11-12 11:04:27', '2017-11-12 11:04:27'),
(54, NULL, 'global', NULL, '2017-11-12 11:05:04', '2017-11-12 11:05:04'),
(55, NULL, 'ip', '127.0.0.1', '2017-11-12 11:05:04', '2017-11-12 11:05:04'),
(56, 1, 'user', NULL, '2017-11-12 11:05:04', '2017-11-12 11:05:04'),
(57, NULL, 'global', NULL, '2017-11-12 11:08:43', '2017-11-12 11:08:43'),
(58, NULL, 'ip', '127.0.0.1', '2017-11-12 11:08:43', '2017-11-12 11:08:43'),
(59, 1, 'user', NULL, '2017-11-12 11:08:43', '2017-11-12 11:08:43'),
(60, NULL, 'global', NULL, '2017-11-12 11:14:37', '2017-11-12 11:14:37'),
(61, NULL, 'ip', '127.0.0.1', '2017-11-12 11:14:37', '2017-11-12 11:14:37'),
(62, 1, 'user', NULL, '2017-11-12 11:14:37', '2017-11-12 11:14:37'),
(63, NULL, 'global', NULL, '2017-11-12 11:18:13', '2017-11-12 11:18:13'),
(64, NULL, 'ip', '127.0.0.1', '2017-11-12 11:18:13', '2017-11-12 11:18:13'),
(65, 4, 'user', NULL, '2017-11-12 11:18:13', '2017-11-12 11:18:13'),
(66, NULL, 'global', NULL, '2017-11-12 11:19:22', '2017-11-12 11:19:22'),
(67, NULL, 'ip', '127.0.0.1', '2017-11-12 11:19:22', '2017-11-12 11:19:22'),
(68, 4, 'user', NULL, '2017-11-12 11:19:22', '2017-11-12 11:19:22'),
(69, NULL, 'global', NULL, '2017-11-12 12:21:15', '2017-11-12 12:21:15'),
(70, NULL, 'ip', '127.0.0.1', '2017-11-12 12:21:15', '2017-11-12 12:21:15'),
(71, 1, 'user', NULL, '2017-11-12 12:21:15', '2017-11-12 12:21:15'),
(72, NULL, 'global', NULL, '2017-11-12 12:30:54', '2017-11-12 12:30:54'),
(73, NULL, 'ip', '127.0.0.1', '2017-11-12 12:30:54', '2017-11-12 12:30:54'),
(74, 1, 'user', NULL, '2017-11-12 12:30:54', '2017-11-12 12:30:54'),
(75, NULL, 'global', NULL, '2017-11-12 12:31:09', '2017-11-12 12:31:09'),
(76, NULL, 'ip', '127.0.0.1', '2017-11-12 12:31:09', '2017-11-12 12:31:09'),
(77, 1, 'user', NULL, '2017-11-12 12:31:09', '2017-11-12 12:31:09'),
(78, NULL, 'global', NULL, '2017-11-12 19:20:51', '2017-11-12 19:20:51'),
(79, NULL, 'ip', '127.0.0.1', '2017-11-12 19:20:51', '2017-11-12 19:20:51'),
(80, NULL, 'global', NULL, '2017-11-12 19:20:51', '2017-11-12 19:20:51'),
(81, NULL, 'ip', '127.0.0.1', '2017-11-12 19:20:51', '2017-11-12 19:20:51'),
(82, NULL, 'global', NULL, '2017-11-12 19:20:52', '2017-11-12 19:20:52'),
(83, NULL, 'ip', '127.0.0.1', '2017-11-12 19:20:52', '2017-11-12 19:20:52'),
(84, NULL, 'global', NULL, '2017-11-12 19:20:52', '2017-11-12 19:20:52'),
(85, NULL, 'ip', '127.0.0.1', '2017-11-12 19:20:52', '2017-11-12 19:20:52'),
(86, NULL, 'global', NULL, '2017-11-12 19:20:52', '2017-11-12 19:20:52'),
(87, NULL, 'ip', '127.0.0.1', '2017-11-12 19:20:52', '2017-11-12 19:20:52'),
(88, NULL, 'global', NULL, '2017-11-12 19:20:52', '2017-11-12 19:20:52'),
(89, NULL, 'ip', '127.0.0.1', '2017-11-12 19:20:52', '2017-11-12 19:20:52'),
(90, NULL, 'global', NULL, '2017-11-12 19:24:30', '2017-11-12 19:24:30'),
(91, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:30', '2017-11-12 19:24:30'),
(92, NULL, 'global', NULL, '2017-11-12 19:24:31', '2017-11-12 19:24:31'),
(93, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:31', '2017-11-12 19:24:31'),
(94, NULL, 'global', NULL, '2017-11-12 19:24:31', '2017-11-12 19:24:31'),
(95, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:31', '2017-11-12 19:24:31'),
(96, NULL, 'global', NULL, '2017-11-12 19:24:31', '2017-11-12 19:24:31'),
(97, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:31', '2017-11-12 19:24:31'),
(98, NULL, 'global', NULL, '2017-11-12 19:24:31', '2017-11-12 19:24:31'),
(99, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:31', '2017-11-12 19:24:31'),
(100, NULL, 'global', NULL, '2017-11-12 19:24:31', '2017-11-12 19:24:31'),
(101, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:31', '2017-11-12 19:24:31'),
(102, NULL, 'global', NULL, '2017-11-12 19:24:32', '2017-11-12 19:24:32'),
(103, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:32', '2017-11-12 19:24:32'),
(104, NULL, 'global', NULL, '2017-11-12 19:24:32', '2017-11-12 19:24:32'),
(105, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:32', '2017-11-12 19:24:32'),
(106, NULL, 'global', NULL, '2017-11-12 19:24:32', '2017-11-12 19:24:32'),
(107, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:32', '2017-11-12 19:24:32'),
(108, NULL, 'global', NULL, '2017-11-12 19:24:33', '2017-11-12 19:24:33'),
(109, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:33', '2017-11-12 19:24:33'),
(110, NULL, 'global', NULL, '2017-11-12 19:24:33', '2017-11-12 19:24:33'),
(111, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:33', '2017-11-12 19:24:33'),
(112, NULL, 'global', NULL, '2017-11-12 19:24:33', '2017-11-12 19:24:33'),
(113, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:33', '2017-11-12 19:24:33'),
(114, NULL, 'global', NULL, '2017-11-12 19:24:33', '2017-11-12 19:24:33'),
(115, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:33', '2017-11-12 19:24:33'),
(116, NULL, 'global', NULL, '2017-11-12 19:24:34', '2017-11-12 19:24:34'),
(117, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:34', '2017-11-12 19:24:34'),
(118, NULL, 'global', NULL, '2017-11-12 19:24:34', '2017-11-12 19:24:34'),
(119, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:34', '2017-11-12 19:24:34'),
(120, NULL, 'global', NULL, '2017-11-12 19:24:34', '2017-11-12 19:24:34'),
(121, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:34', '2017-11-12 19:24:34'),
(122, NULL, 'global', NULL, '2017-11-12 19:24:35', '2017-11-12 19:24:35'),
(123, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:35', '2017-11-12 19:24:35'),
(124, NULL, 'global', NULL, '2017-11-12 19:24:35', '2017-11-12 19:24:35'),
(125, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:35', '2017-11-12 19:24:35'),
(126, NULL, 'global', NULL, '2017-11-12 19:24:35', '2017-11-12 19:24:35'),
(127, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:35', '2017-11-12 19:24:35'),
(128, NULL, 'global', NULL, '2017-11-12 19:24:35', '2017-11-12 19:24:35'),
(129, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:35', '2017-11-12 19:24:35'),
(130, NULL, 'global', NULL, '2017-11-12 19:24:39', '2017-11-12 19:24:39'),
(131, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:39', '2017-11-12 19:24:39'),
(132, NULL, 'global', NULL, '2017-11-12 19:24:40', '2017-11-12 19:24:40'),
(133, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:40', '2017-11-12 19:24:40'),
(134, NULL, 'global', NULL, '2017-11-12 19:24:40', '2017-11-12 19:24:40'),
(135, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:40', '2017-11-12 19:24:40'),
(136, NULL, 'global', NULL, '2017-11-12 19:24:40', '2017-11-12 19:24:40'),
(137, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:40', '2017-11-12 19:24:40'),
(138, NULL, 'global', NULL, '2017-11-12 19:24:40', '2017-11-12 19:24:40'),
(139, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:40', '2017-11-12 19:24:40'),
(140, NULL, 'global', NULL, '2017-11-12 19:24:41', '2017-11-12 19:24:41'),
(141, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:41', '2017-11-12 19:24:41'),
(142, NULL, 'global', NULL, '2017-11-12 19:24:41', '2017-11-12 19:24:41'),
(143, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:41', '2017-11-12 19:24:41'),
(144, NULL, 'global', NULL, '2017-11-12 19:24:41', '2017-11-12 19:24:41'),
(145, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:41', '2017-11-12 19:24:41'),
(146, NULL, 'global', NULL, '2017-11-12 19:24:41', '2017-11-12 19:24:41'),
(147, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:41', '2017-11-12 19:24:41'),
(148, NULL, 'global', NULL, '2017-11-12 19:24:42', '2017-11-12 19:24:42'),
(149, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:42', '2017-11-12 19:24:42'),
(150, NULL, 'global', NULL, '2017-11-12 19:24:42', '2017-11-12 19:24:42'),
(151, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:42', '2017-11-12 19:24:42'),
(152, NULL, 'global', NULL, '2017-11-12 19:24:42', '2017-11-12 19:24:42'),
(153, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:42', '2017-11-12 19:24:42'),
(154, NULL, 'global', NULL, '2017-11-12 19:24:42', '2017-11-12 19:24:42'),
(155, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:42', '2017-11-12 19:24:42'),
(156, NULL, 'global', NULL, '2017-11-12 19:24:43', '2017-11-12 19:24:43'),
(157, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:43', '2017-11-12 19:24:43'),
(158, NULL, 'global', NULL, '2017-11-12 19:24:43', '2017-11-12 19:24:43'),
(159, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:43', '2017-11-12 19:24:43'),
(160, NULL, 'global', NULL, '2017-11-12 19:24:43', '2017-11-12 19:24:43'),
(161, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:43', '2017-11-12 19:24:43'),
(162, NULL, 'global', NULL, '2017-11-12 19:24:44', '2017-11-12 19:24:44'),
(163, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:44', '2017-11-12 19:24:44'),
(164, NULL, 'global', NULL, '2017-11-12 19:24:44', '2017-11-12 19:24:44'),
(165, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:44', '2017-11-12 19:24:44'),
(166, NULL, 'global', NULL, '2017-11-12 19:24:44', '2017-11-12 19:24:44'),
(167, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:44', '2017-11-12 19:24:44'),
(168, NULL, 'global', NULL, '2017-11-12 19:24:44', '2017-11-12 19:24:44'),
(169, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:45', '2017-11-12 19:24:45'),
(170, NULL, 'global', NULL, '2017-11-12 19:24:45', '2017-11-12 19:24:45'),
(171, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:45', '2017-11-12 19:24:45'),
(172, NULL, 'global', NULL, '2017-11-12 19:24:45', '2017-11-12 19:24:45'),
(173, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:45', '2017-11-12 19:24:45'),
(174, NULL, 'global', NULL, '2017-11-12 19:24:45', '2017-11-12 19:24:45'),
(175, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:45', '2017-11-12 19:24:45'),
(176, NULL, 'global', NULL, '2017-11-12 19:24:45', '2017-11-12 19:24:45'),
(177, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:45', '2017-11-12 19:24:45'),
(178, NULL, 'global', NULL, '2017-11-12 19:24:46', '2017-11-12 19:24:46'),
(179, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:46', '2017-11-12 19:24:46'),
(180, NULL, 'global', NULL, '2017-11-12 19:24:46', '2017-11-12 19:24:46'),
(181, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:46', '2017-11-12 19:24:46'),
(182, NULL, 'global', NULL, '2017-11-12 19:24:46', '2017-11-12 19:24:46'),
(183, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:46', '2017-11-12 19:24:46'),
(184, NULL, 'global', NULL, '2017-11-12 19:24:46', '2017-11-12 19:24:46'),
(185, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:46', '2017-11-12 19:24:46'),
(186, NULL, 'global', NULL, '2017-11-12 19:24:47', '2017-11-12 19:24:47'),
(187, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:47', '2017-11-12 19:24:47'),
(188, NULL, 'global', NULL, '2017-11-12 19:24:47', '2017-11-12 19:24:47'),
(189, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:47', '2017-11-12 19:24:47'),
(190, NULL, 'global', NULL, '2017-11-12 19:24:47', '2017-11-12 19:24:47'),
(191, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:47', '2017-11-12 19:24:47'),
(192, NULL, 'global', NULL, '2017-11-12 19:24:48', '2017-11-12 19:24:48'),
(193, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:48', '2017-11-12 19:24:48'),
(194, NULL, 'global', NULL, '2017-11-12 19:24:48', '2017-11-12 19:24:48'),
(195, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:48', '2017-11-12 19:24:48'),
(196, NULL, 'global', NULL, '2017-11-12 19:24:48', '2017-11-12 19:24:48'),
(197, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:48', '2017-11-12 19:24:48'),
(198, NULL, 'global', NULL, '2017-11-12 19:24:49', '2017-11-12 19:24:49'),
(199, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:49', '2017-11-12 19:24:49'),
(200, NULL, 'global', NULL, '2017-11-12 19:24:49', '2017-11-12 19:24:49'),
(201, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:49', '2017-11-12 19:24:49'),
(202, NULL, 'global', NULL, '2017-11-12 19:24:49', '2017-11-12 19:24:49'),
(203, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:49', '2017-11-12 19:24:49'),
(204, NULL, 'global', NULL, '2017-11-12 19:24:50', '2017-11-12 19:24:50'),
(205, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:50', '2017-11-12 19:24:50'),
(206, NULL, 'global', NULL, '2017-11-12 19:24:50', '2017-11-12 19:24:50'),
(207, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:50', '2017-11-12 19:24:50'),
(208, NULL, 'global', NULL, '2017-11-12 19:24:50', '2017-11-12 19:24:50'),
(209, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:50', '2017-11-12 19:24:50'),
(210, NULL, 'global', NULL, '2017-11-12 19:24:51', '2017-11-12 19:24:51'),
(211, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:51', '2017-11-12 19:24:51'),
(212, NULL, 'global', NULL, '2017-11-12 19:24:51', '2017-11-12 19:24:51'),
(213, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:51', '2017-11-12 19:24:51'),
(214, NULL, 'global', NULL, '2017-11-12 19:24:57', '2017-11-12 19:24:57'),
(215, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:57', '2017-11-12 19:24:57'),
(216, NULL, 'global', NULL, '2017-11-12 19:24:57', '2017-11-12 19:24:57'),
(217, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:57', '2017-11-12 19:24:57'),
(218, NULL, 'global', NULL, '2017-11-12 19:24:57', '2017-11-12 19:24:57'),
(219, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:57', '2017-11-12 19:24:57'),
(220, NULL, 'global', NULL, '2017-11-12 19:24:57', '2017-11-12 19:24:57'),
(221, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:57', '2017-11-12 19:24:57'),
(222, NULL, 'global', NULL, '2017-11-12 19:24:58', '2017-11-12 19:24:58'),
(223, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:58', '2017-11-12 19:24:58'),
(224, NULL, 'global', NULL, '2017-11-12 19:24:58', '2017-11-12 19:24:58'),
(225, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:58', '2017-11-12 19:24:58'),
(226, NULL, 'global', NULL, '2017-11-12 19:24:58', '2017-11-12 19:24:58'),
(227, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:58', '2017-11-12 19:24:58'),
(228, NULL, 'global', NULL, '2017-11-12 19:24:58', '2017-11-12 19:24:58'),
(229, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:58', '2017-11-12 19:24:58'),
(230, NULL, 'global', NULL, '2017-11-12 19:24:58', '2017-11-12 19:24:58'),
(231, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:58', '2017-11-12 19:24:58'),
(232, NULL, 'global', NULL, '2017-11-12 19:24:59', '2017-11-12 19:24:59'),
(233, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:59', '2017-11-12 19:24:59'),
(234, NULL, 'global', NULL, '2017-11-12 19:24:59', '2017-11-12 19:24:59'),
(235, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:59', '2017-11-12 19:24:59'),
(236, NULL, 'global', NULL, '2017-11-12 19:24:59', '2017-11-12 19:24:59'),
(237, NULL, 'ip', '127.0.0.1', '2017-11-12 19:24:59', '2017-11-12 19:24:59'),
(238, NULL, 'global', NULL, '2017-11-12 19:25:00', '2017-11-12 19:25:00'),
(239, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:00', '2017-11-12 19:25:00'),
(240, NULL, 'global', NULL, '2017-11-12 19:25:00', '2017-11-12 19:25:00'),
(241, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:00', '2017-11-12 19:25:00'),
(242, NULL, 'global', NULL, '2017-11-12 19:25:00', '2017-11-12 19:25:00'),
(243, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:00', '2017-11-12 19:25:00'),
(244, NULL, 'global', NULL, '2017-11-12 19:25:00', '2017-11-12 19:25:00'),
(245, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:00', '2017-11-12 19:25:00'),
(246, NULL, 'global', NULL, '2017-11-12 19:25:00', '2017-11-12 19:25:00'),
(247, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:00', '2017-11-12 19:25:00'),
(248, NULL, 'global', NULL, '2017-11-12 19:25:01', '2017-11-12 19:25:01'),
(249, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:01', '2017-11-12 19:25:01'),
(250, NULL, 'global', NULL, '2017-11-12 19:25:01', '2017-11-12 19:25:01'),
(251, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:01', '2017-11-12 19:25:01'),
(252, NULL, 'global', NULL, '2017-11-12 19:25:01', '2017-11-12 19:25:01'),
(253, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:01', '2017-11-12 19:25:01'),
(254, NULL, 'global', NULL, '2017-11-12 19:25:02', '2017-11-12 19:25:02'),
(255, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:02', '2017-11-12 19:25:02'),
(256, NULL, 'global', NULL, '2017-11-12 19:25:32', '2017-11-12 19:25:32'),
(257, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:32', '2017-11-12 19:25:32'),
(258, NULL, 'global', NULL, '2017-11-12 19:25:32', '2017-11-12 19:25:32'),
(259, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:32', '2017-11-12 19:25:32'),
(260, NULL, 'global', NULL, '2017-11-12 19:25:32', '2017-11-12 19:25:32'),
(261, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:32', '2017-11-12 19:25:32'),
(262, NULL, 'global', NULL, '2017-11-12 19:25:33', '2017-11-12 19:25:33'),
(263, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:33', '2017-11-12 19:25:33'),
(264, NULL, 'global', NULL, '2017-11-12 19:25:33', '2017-11-12 19:25:33'),
(265, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:33', '2017-11-12 19:25:33'),
(266, NULL, 'global', NULL, '2017-11-12 19:25:33', '2017-11-12 19:25:33'),
(267, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:33', '2017-11-12 19:25:33'),
(268, NULL, 'global', NULL, '2017-11-12 19:25:34', '2017-11-12 19:25:34'),
(269, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:34', '2017-11-12 19:25:34'),
(270, NULL, 'global', NULL, '2017-11-12 19:25:34', '2017-11-12 19:25:34'),
(271, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:34', '2017-11-12 19:25:34'),
(272, NULL, 'global', NULL, '2017-11-12 19:25:34', '2017-11-12 19:25:34'),
(273, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:34', '2017-11-12 19:25:34'),
(274, NULL, 'global', NULL, '2017-11-12 19:25:34', '2017-11-12 19:25:34'),
(275, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:34', '2017-11-12 19:25:34'),
(276, NULL, 'global', NULL, '2017-11-12 19:25:35', '2017-11-12 19:25:35'),
(277, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:35', '2017-11-12 19:25:35'),
(278, NULL, 'global', NULL, '2017-11-12 19:25:35', '2017-11-12 19:25:35'),
(279, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:35', '2017-11-12 19:25:35'),
(280, NULL, 'global', NULL, '2017-11-12 19:25:35', '2017-11-12 19:25:35'),
(281, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:35', '2017-11-12 19:25:35'),
(282, NULL, 'global', NULL, '2017-11-12 19:25:35', '2017-11-12 19:25:35'),
(283, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:35', '2017-11-12 19:25:35'),
(284, NULL, 'global', NULL, '2017-11-12 19:25:36', '2017-11-12 19:25:36'),
(285, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:36', '2017-11-12 19:25:36'),
(286, NULL, 'global', NULL, '2017-11-12 19:25:36', '2017-11-12 19:25:36'),
(287, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:36', '2017-11-12 19:25:36'),
(288, NULL, 'global', NULL, '2017-11-12 19:25:36', '2017-11-12 19:25:36'),
(289, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:36', '2017-11-12 19:25:36'),
(290, NULL, 'global', NULL, '2017-11-12 19:25:37', '2017-11-12 19:25:37'),
(291, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:37', '2017-11-12 19:25:37'),
(292, NULL, 'global', NULL, '2017-11-12 19:25:37', '2017-11-12 19:25:37'),
(293, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:37', '2017-11-12 19:25:37'),
(294, NULL, 'global', NULL, '2017-11-12 19:25:37', '2017-11-12 19:25:37'),
(295, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:37', '2017-11-12 19:25:37'),
(296, NULL, 'global', NULL, '2017-11-12 19:25:37', '2017-11-12 19:25:37'),
(297, NULL, 'ip', '127.0.0.1', '2017-11-12 19:25:37', '2017-11-12 19:25:37'),
(298, NULL, 'global', NULL, '2017-11-12 19:36:41', '2017-11-12 19:36:41'),
(299, NULL, 'ip', '127.0.0.1', '2017-11-12 19:36:41', '2017-11-12 19:36:41'),
(300, 4, 'user', NULL, '2017-11-12 19:36:41', '2017-11-12 19:36:41'),
(301, NULL, 'global', NULL, '2017-11-12 19:44:35', '2017-11-12 19:44:35'),
(302, NULL, 'ip', '127.0.0.1', '2017-11-12 19:44:35', '2017-11-12 19:44:35'),
(303, 1, 'user', NULL, '2017-11-12 19:44:35', '2017-11-12 19:44:35'),
(304, NULL, 'global', NULL, '2017-11-13 12:12:10', '2017-11-13 12:12:10'),
(305, NULL, 'ip', '127.0.0.1', '2017-11-13 12:12:10', '2017-11-13 12:12:10'),
(306, 1, 'user', NULL, '2017-11-13 12:12:10', '2017-11-13 12:12:10'),
(307, NULL, 'global', NULL, '2017-11-15 04:15:14', '2017-11-15 04:15:14'),
(308, NULL, 'ip', '127.0.0.1', '2017-11-15 04:15:14', '2017-11-15 04:15:14'),
(309, NULL, 'global', NULL, '2017-11-25 05:02:29', '2017-11-25 05:02:29'),
(310, NULL, 'ip', '127.0.0.1', '2017-11-25 05:02:29', '2017-11-25 05:02:29'),
(311, 1, 'user', NULL, '2017-11-25 05:02:29', '2017-11-25 05:02:29'),
(312, NULL, 'global', NULL, '2017-11-25 21:57:16', '2017-11-25 21:57:16'),
(313, NULL, 'ip', '127.0.0.1', '2017-11-25 21:57:16', '2017-11-25 21:57:16'),
(314, 6, 'user', NULL, '2017-11-25 21:57:16', '2017-11-25 21:57:16'),
(315, NULL, 'global', NULL, '2017-11-25 21:57:22', '2017-11-25 21:57:22'),
(316, NULL, 'ip', '127.0.0.1', '2017-11-25 21:57:22', '2017-11-25 21:57:22'),
(317, 6, 'user', NULL, '2017-11-25 21:57:22', '2017-11-25 21:57:22'),
(318, NULL, 'global', NULL, '2017-11-26 20:07:31', '2017-11-26 20:07:31'),
(319, NULL, 'ip', '127.0.0.1', '2017-11-26 20:07:31', '2017-11-26 20:07:31'),
(320, 1, 'user', NULL, '2017-11-26 20:07:31', '2017-11-26 20:07:31'),
(321, NULL, 'global', NULL, '2017-11-27 00:24:45', '2017-11-27 00:24:45'),
(322, NULL, 'ip', '127.0.0.1', '2017-11-27 00:24:45', '2017-11-27 00:24:45'),
(323, 1, 'user', NULL, '2017-11-27 00:24:45', '2017-11-27 00:24:45'),
(324, NULL, 'global', NULL, '2017-11-27 00:24:45', '2017-11-27 00:24:45'),
(325, NULL, 'ip', '127.0.0.1', '2017-11-27 00:24:45', '2017-11-27 00:24:45'),
(326, 1, 'user', NULL, '2017-11-27 00:24:45', '2017-11-27 00:24:45'),
(327, NULL, 'global', NULL, '2017-11-30 08:03:16', '2017-11-30 08:03:16'),
(328, NULL, 'ip', '127.0.0.1', '2017-11-30 08:03:16', '2017-11-30 08:03:16'),
(329, 1, 'user', NULL, '2017-11-30 08:03:16', '2017-11-30 08:03:16'),
(330, NULL, 'global', NULL, '2017-12-03 07:41:47', '2017-12-03 07:41:47'),
(331, NULL, 'ip', '127.0.0.1', '2017-12-03 07:41:47', '2017-12-03 07:41:47'),
(332, 1, 'user', NULL, '2017-12-03 07:41:47', '2017-12-03 07:41:47'),
(333, NULL, 'global', NULL, '2017-12-03 11:49:24', '2017-12-03 11:49:24'),
(334, NULL, 'ip', '127.0.0.1', '2017-12-03 11:49:24', '2017-12-03 11:49:24'),
(335, NULL, 'global', NULL, '2017-12-03 11:49:31', '2017-12-03 11:49:31'),
(336, NULL, 'ip', '127.0.0.1', '2017-12-03 11:49:31', '2017-12-03 11:49:31'),
(337, NULL, 'global', NULL, '2017-12-03 11:49:49', '2017-12-03 11:49:49'),
(338, NULL, 'ip', '127.0.0.1', '2017-12-03 11:49:49', '2017-12-03 11:49:49'),
(339, NULL, 'global', NULL, '2017-12-03 11:50:32', '2017-12-03 11:50:32'),
(340, NULL, 'ip', '127.0.0.1', '2017-12-03 11:50:32', '2017-12-03 11:50:32'),
(341, NULL, 'global', NULL, '2017-12-03 11:54:18', '2017-12-03 11:54:18'),
(342, NULL, 'ip', '127.0.0.1', '2017-12-03 11:54:18', '2017-12-03 11:54:18'),
(343, NULL, 'global', NULL, '2017-12-04 11:12:12', '2017-12-04 11:12:12'),
(344, NULL, 'ip', '127.0.0.1', '2017-12-04 11:12:12', '2017-12-04 11:12:12'),
(345, 1, 'user', NULL, '2017-12-04 11:12:12', '2017-12-04 11:12:12'),
(346, NULL, 'global', NULL, '2017-12-05 09:04:13', '2017-12-05 09:04:13'),
(347, NULL, 'ip', '127.0.0.1', '2017-12-05 09:04:13', '2017-12-05 09:04:13'),
(348, 1, 'user', NULL, '2017-12-05 09:04:13', '2017-12-05 09:04:13'),
(349, NULL, 'global', NULL, '2017-12-08 11:51:32', '2017-12-08 11:51:32'),
(350, NULL, 'ip', '127.0.0.1', '2017-12-08 11:51:32', '2017-12-08 11:51:32'),
(351, 1, 'user', NULL, '2017-12-08 11:51:32', '2017-12-08 11:51:32'),
(352, NULL, 'global', NULL, '2017-12-08 11:51:37', '2017-12-08 11:51:37'),
(353, NULL, 'ip', '127.0.0.1', '2017-12-08 11:51:37', '2017-12-08 11:51:37'),
(354, 1, 'user', NULL, '2017-12-08 11:51:37', '2017-12-08 11:51:37'),
(355, NULL, 'global', NULL, '2017-12-13 11:11:12', '2017-12-13 11:11:12'),
(356, NULL, 'ip', '127.0.0.1', '2017-12-13 11:11:12', '2017-12-13 11:11:12'),
(357, 1, 'user', NULL, '2017-12-13 11:11:12', '2017-12-13 11:11:12'),
(358, NULL, 'global', NULL, '2017-12-13 11:11:19', '2017-12-13 11:11:19'),
(359, NULL, 'ip', '127.0.0.1', '2017-12-13 11:11:19', '2017-12-13 11:11:19'),
(360, 1, 'user', NULL, '2017-12-13 11:11:19', '2017-12-13 11:11:19'),
(361, NULL, 'global', NULL, '2017-12-13 11:11:21', '2017-12-13 11:11:21'),
(362, NULL, 'ip', '127.0.0.1', '2017-12-13 11:11:21', '2017-12-13 11:11:21'),
(363, 1, 'user', NULL, '2017-12-13 11:11:21', '2017-12-13 11:11:21'),
(364, NULL, 'global', NULL, '2017-12-13 19:46:17', '2017-12-13 19:46:17'),
(365, NULL, 'ip', '127.0.0.1', '2017-12-13 19:46:17', '2017-12-13 19:46:17'),
(366, 1, 'user', NULL, '2017-12-13 19:46:17', '2017-12-13 19:46:17'),
(367, NULL, 'global', NULL, '2017-12-13 19:46:22', '2017-12-13 19:46:22'),
(368, NULL, 'ip', '127.0.0.1', '2017-12-13 19:46:22', '2017-12-13 19:46:22'),
(369, 1, 'user', NULL, '2017-12-13 19:46:22', '2017-12-13 19:46:22'),
(370, NULL, 'global', NULL, '2017-12-16 00:21:37', '2017-12-16 00:21:37'),
(371, NULL, 'ip', '127.0.0.1', '2017-12-16 00:21:37', '2017-12-16 00:21:37'),
(372, 1, 'user', NULL, '2017-12-16 00:21:37', '2017-12-16 00:21:37'),
(373, NULL, 'global', NULL, '2017-12-17 18:07:51', '2017-12-17 18:07:51'),
(374, NULL, 'ip', '127.0.0.1', '2017-12-17 18:07:51', '2017-12-17 18:07:51'),
(375, 1, 'user', NULL, '2017-12-17 18:07:51', '2017-12-17 18:07:51'),
(376, NULL, 'global', NULL, '2017-12-29 02:09:21', '2017-12-29 02:09:21'),
(377, NULL, 'ip', '127.0.0.1', '2017-12-29 02:09:21', '2017-12-29 02:09:21'),
(378, 1, 'user', NULL, '2017-12-29 02:09:21', '2017-12-29 02:09:21'),
(379, NULL, 'global', NULL, '2017-12-29 02:09:27', '2017-12-29 02:09:27'),
(380, NULL, 'ip', '127.0.0.1', '2017-12-29 02:09:27', '2017-12-29 02:09:27'),
(381, 1, 'user', NULL, '2017-12-29 02:09:27', '2017-12-29 02:09:27'),
(382, NULL, 'global', NULL, '2017-12-29 05:40:34', '2017-12-29 05:40:34'),
(383, NULL, 'ip', '127.0.0.1', '2017-12-29 05:40:34', '2017-12-29 05:40:34'),
(384, 1, 'user', NULL, '2017-12-29 05:40:34', '2017-12-29 05:40:34'),
(385, NULL, 'global', NULL, '2017-12-29 05:40:39', '2017-12-29 05:40:39'),
(386, NULL, 'ip', '127.0.0.1', '2017-12-29 05:40:39', '2017-12-29 05:40:39'),
(387, 1, 'user', NULL, '2017-12-29 05:40:39', '2017-12-29 05:40:39'),
(388, NULL, 'global', NULL, '2018-01-01 19:20:37', '2018-01-01 19:20:37'),
(389, NULL, 'ip', '127.0.0.1', '2018-01-01 19:20:37', '2018-01-01 19:20:37'),
(390, 1, 'user', NULL, '2018-01-01 19:20:37', '2018-01-01 19:20:37'),
(391, NULL, 'global', NULL, '2018-01-05 05:03:06', '2018-01-05 05:03:06'),
(392, NULL, 'ip', '127.0.0.1', '2018-01-05 05:03:06', '2018-01-05 05:03:06'),
(393, 1, 'user', NULL, '2018-01-05 05:03:06', '2018-01-05 05:03:06'),
(394, NULL, 'global', NULL, '2018-01-07 02:06:01', '2018-01-07 02:06:01'),
(395, NULL, 'ip', '127.0.0.1', '2018-01-07 02:06:01', '2018-01-07 02:06:01'),
(396, NULL, 'global', NULL, '2018-01-08 23:12:58', '2018-01-08 23:12:58'),
(397, NULL, 'ip', '127.0.0.1', '2018-01-08 23:12:58', '2018-01-08 23:12:58'),
(398, NULL, 'global', NULL, '2018-01-08 23:13:07', '2018-01-08 23:13:07'),
(399, NULL, 'ip', '127.0.0.1', '2018-01-08 23:13:07', '2018-01-08 23:13:07'),
(400, NULL, 'global', NULL, '2018-01-08 23:13:09', '2018-01-08 23:13:09'),
(401, NULL, 'ip', '127.0.0.1', '2018-01-08 23:13:09', '2018-01-08 23:13:09'),
(402, NULL, 'global', NULL, '2018-01-15 01:13:23', '2018-01-15 01:13:23'),
(403, NULL, 'ip', '127.0.0.1', '2018-01-15 01:13:23', '2018-01-15 01:13:23'),
(404, NULL, 'global', NULL, '2018-01-15 11:12:12', '2018-01-15 11:12:12'),
(405, NULL, 'ip', '127.0.0.1', '2018-01-15 11:12:12', '2018-01-15 11:12:12'),
(406, NULL, 'global', NULL, '2018-01-18 09:25:07', '2018-01-18 09:25:07'),
(407, NULL, 'ip', '127.0.0.1', '2018-01-18 09:25:07', '2018-01-18 09:25:07'),
(408, 1, 'user', NULL, '2018-01-18 09:25:07', '2018-01-18 09:25:07'),
(409, NULL, 'global', NULL, '2018-01-18 21:48:18', '2018-01-18 21:48:18'),
(410, NULL, 'ip', '127.0.0.1', '2018-01-18 21:48:18', '2018-01-18 21:48:18'),
(411, 1, 'user', NULL, '2018-01-18 21:48:18', '2018-01-18 21:48:18'),
(412, NULL, 'global', NULL, '2018-01-19 00:25:45', '2018-01-19 00:25:45'),
(413, NULL, 'ip', '127.0.0.1', '2018-01-19 00:25:45', '2018-01-19 00:25:45'),
(414, 1, 'user', NULL, '2018-01-19 00:25:45', '2018-01-19 00:25:45'),
(415, NULL, 'global', NULL, '2018-01-26 01:05:07', '2018-01-26 01:05:07'),
(416, NULL, 'ip', '127.0.0.1', '2018-01-26 01:05:07', '2018-01-26 01:05:07'),
(417, 1, 'user', NULL, '2018-01-26 01:05:07', '2018-01-26 01:05:07'),
(418, NULL, 'global', NULL, '2018-01-26 01:43:54', '2018-01-26 01:43:54'),
(419, NULL, 'ip', '127.0.0.1', '2018-01-26 01:43:54', '2018-01-26 01:43:54'),
(420, 4, 'user', NULL, '2018-01-26 01:43:54', '2018-01-26 01:43:54'),
(421, NULL, 'global', NULL, '2018-01-26 01:44:01', '2018-01-26 01:44:01'),
(422, NULL, 'ip', '127.0.0.1', '2018-01-26 01:44:01', '2018-01-26 01:44:01'),
(423, 4, 'user', NULL, '2018-01-26 01:44:01', '2018-01-26 01:44:01'),
(424, NULL, 'global', NULL, '2018-01-26 01:59:32', '2018-01-26 01:59:32'),
(425, NULL, 'ip', '127.0.0.1', '2018-01-26 01:59:32', '2018-01-26 01:59:32'),
(426, 6, 'user', NULL, '2018-01-26 01:59:32', '2018-01-26 01:59:32'),
(427, NULL, 'global', NULL, '2018-01-26 02:01:55', '2018-01-26 02:01:55'),
(428, NULL, 'ip', '127.0.0.1', '2018-01-26 02:01:55', '2018-01-26 02:01:55'),
(429, 6, 'user', NULL, '2018-01-26 02:01:55', '2018-01-26 02:01:55'),
(430, NULL, 'global', NULL, '2018-01-26 02:02:14', '2018-01-26 02:02:14'),
(431, NULL, 'ip', '127.0.0.1', '2018-01-26 02:02:14', '2018-01-26 02:02:14'),
(432, 6, 'user', NULL, '2018-01-26 02:02:14', '2018-01-26 02:02:14'),
(433, NULL, 'global', NULL, '2018-01-26 02:30:24', '2018-01-26 02:30:24'),
(434, NULL, 'ip', '127.0.0.1', '2018-01-26 02:30:24', '2018-01-26 02:30:24'),
(435, 6, 'user', NULL, '2018-01-26 02:30:24', '2018-01-26 02:30:24'),
(436, NULL, 'global', NULL, '2018-01-26 02:37:37', '2018-01-26 02:37:37'),
(437, NULL, 'ip', '127.0.0.1', '2018-01-26 02:37:37', '2018-01-26 02:37:37'),
(438, 6, 'user', NULL, '2018-01-26 02:37:37', '2018-01-26 02:37:37'),
(439, NULL, 'global', NULL, '2018-01-26 03:16:56', '2018-01-26 03:16:56'),
(440, NULL, 'ip', '127.0.0.1', '2018-01-26 03:16:56', '2018-01-26 03:16:56'),
(441, 6, 'user', NULL, '2018-01-26 03:16:56', '2018-01-26 03:16:56'),
(442, NULL, 'global', NULL, '2018-01-26 03:35:32', '2018-01-26 03:35:32'),
(443, NULL, 'ip', '127.0.0.1', '2018-01-26 03:35:32', '2018-01-26 03:35:32'),
(444, 6, 'user', NULL, '2018-01-26 03:35:32', '2018-01-26 03:35:32'),
(445, NULL, 'global', NULL, '2018-01-28 09:40:43', '2018-01-28 09:40:43'),
(446, NULL, 'ip', '127.0.0.1', '2018-01-28 09:40:43', '2018-01-28 09:40:43'),
(447, 7, 'user', NULL, '2018-01-28 09:40:43', '2018-01-28 09:40:43'),
(448, NULL, 'global', NULL, '2018-01-29 18:33:51', '2018-01-29 18:33:51'),
(449, NULL, 'ip', '127.0.0.1', '2018-01-29 18:33:51', '2018-01-29 18:33:51'),
(450, 1, 'user', NULL, '2018-01-29 18:33:51', '2018-01-29 18:33:51'),
(451, NULL, 'global', NULL, '2018-01-31 00:07:37', '2018-01-31 00:07:37'),
(452, NULL, 'ip', '127.0.0.1', '2018-01-31 00:07:37', '2018-01-31 00:07:37'),
(453, 1, 'user', NULL, '2018-01-31 00:07:37', '2018-01-31 00:07:37'),
(454, NULL, 'global', NULL, '2018-01-31 00:07:43', '2018-01-31 00:07:43'),
(455, NULL, 'ip', '127.0.0.1', '2018-01-31 00:07:44', '2018-01-31 00:07:44'),
(456, 1, 'user', NULL, '2018-01-31 00:07:44', '2018-01-31 00:07:44'),
(457, NULL, 'global', NULL, '2018-01-31 10:50:07', '2018-01-31 10:50:07'),
(458, NULL, 'ip', '127.0.0.1', '2018-01-31 10:50:07', '2018-01-31 10:50:07'),
(459, 1, 'user', NULL, '2018-01-31 10:50:07', '2018-01-31 10:50:07'),
(460, NULL, 'global', NULL, '2018-01-31 20:44:30', '2018-01-31 20:44:30'),
(461, NULL, 'ip', '127.0.0.1', '2018-01-31 20:44:30', '2018-01-31 20:44:30'),
(462, 1, 'user', NULL, '2018-01-31 20:44:30', '2018-01-31 20:44:30'),
(463, NULL, 'global', NULL, '2018-02-01 01:50:34', '2018-02-01 01:50:34'),
(464, NULL, 'ip', '127.0.0.1', '2018-02-01 01:50:34', '2018-02-01 01:50:34'),
(465, 1, 'user', NULL, '2018-02-01 01:50:34', '2018-02-01 01:50:34'),
(466, NULL, 'global', NULL, '2018-02-01 02:10:55', '2018-02-01 02:10:55'),
(467, NULL, 'ip', '127.0.0.1', '2018-02-01 02:10:55', '2018-02-01 02:10:55'),
(468, 1, 'user', NULL, '2018-02-01 02:10:55', '2018-02-01 02:10:55'),
(469, NULL, 'global', NULL, '2018-02-01 02:28:57', '2018-02-01 02:28:57'),
(470, NULL, 'ip', '127.0.0.1', '2018-02-01 02:28:57', '2018-02-01 02:28:57'),
(471, 1, 'user', NULL, '2018-02-01 02:28:57', '2018-02-01 02:28:57'),
(472, NULL, 'global', NULL, '2018-02-01 02:54:48', '2018-02-01 02:54:48'),
(473, NULL, 'ip', '127.0.0.1', '2018-02-01 02:54:48', '2018-02-01 02:54:48'),
(474, 1, 'user', NULL, '2018-02-01 02:54:48', '2018-02-01 02:54:48'),
(475, NULL, 'global', NULL, '2018-02-01 02:56:25', '2018-02-01 02:56:25'),
(476, NULL, 'ip', '127.0.0.1', '2018-02-01 02:56:25', '2018-02-01 02:56:25'),
(477, 1, 'user', NULL, '2018-02-01 02:56:25', '2018-02-01 02:56:25'),
(478, NULL, 'global', NULL, '2018-02-02 19:05:12', '2018-02-02 19:05:12'),
(479, NULL, 'ip', '127.0.0.1', '2018-02-02 19:05:12', '2018-02-02 19:05:12'),
(480, 1, 'user', NULL, '2018-02-02 19:05:12', '2018-02-02 19:05:12'),
(481, NULL, 'global', NULL, '2018-02-04 06:13:43', '2018-02-04 06:13:43'),
(482, NULL, 'ip', '127.0.0.1', '2018-02-04 06:13:43', '2018-02-04 06:13:43'),
(483, 1, 'user', NULL, '2018-02-04 06:13:43', '2018-02-04 06:13:43'),
(484, NULL, 'global', NULL, '2018-02-04 06:32:59', '2018-02-04 06:32:59'),
(485, NULL, 'ip', '127.0.0.1', '2018-02-04 06:32:59', '2018-02-04 06:32:59'),
(486, NULL, 'global', NULL, '2018-02-04 06:33:40', '2018-02-04 06:33:40'),
(487, NULL, 'ip', '127.0.0.1', '2018-02-04 06:33:40', '2018-02-04 06:33:40'),
(488, 9, 'user', NULL, '2018-02-04 06:33:40', '2018-02-04 06:33:40'),
(489, NULL, 'global', NULL, '2018-02-04 08:07:49', '2018-02-04 08:07:49'),
(490, NULL, 'ip', '127.0.0.1', '2018-02-04 08:07:49', '2018-02-04 08:07:49'),
(491, 1, 'user', NULL, '2018-02-04 08:07:49', '2018-02-04 08:07:49'),
(492, NULL, 'global', NULL, '2018-02-05 03:16:48', '2018-02-05 03:16:48'),
(493, NULL, 'ip', '127.0.0.1', '2018-02-05 03:16:48', '2018-02-05 03:16:48'),
(494, 1, 'user', NULL, '2018-02-05 03:16:48', '2018-02-05 03:16:48'),
(495, NULL, 'global', NULL, '2018-02-05 20:05:07', '2018-02-05 20:05:07'),
(496, NULL, 'ip', '127.0.0.1', '2018-02-05 20:05:07', '2018-02-05 20:05:07'),
(497, 1, 'user', NULL, '2018-02-05 20:05:07', '2018-02-05 20:05:07'),
(498, NULL, 'global', NULL, '2018-02-06 01:01:38', '2018-02-06 01:01:38'),
(499, NULL, 'ip', '127.0.0.1', '2018-02-06 01:01:38', '2018-02-06 01:01:38'),
(500, 1, 'user', NULL, '2018-02-06 01:01:38', '2018-02-06 01:01:38'),
(501, NULL, 'global', NULL, '2018-02-06 21:31:19', '2018-02-06 21:31:19'),
(502, NULL, 'ip', '127.0.0.1', '2018-02-06 21:31:19', '2018-02-06 21:31:19'),
(503, 1, 'user', NULL, '2018-02-06 21:31:19', '2018-02-06 21:31:19'),
(504, NULL, 'global', NULL, '2018-02-07 03:29:51', '2018-02-07 03:29:51'),
(505, NULL, 'ip', '127.0.0.1', '2018-02-07 03:29:51', '2018-02-07 03:29:51'),
(506, 8, 'user', NULL, '2018-02-07 03:29:51', '2018-02-07 03:29:51'),
(507, NULL, 'global', NULL, '2018-02-07 21:17:30', '2018-02-07 21:17:30'),
(508, NULL, 'ip', '127.0.0.1', '2018-02-07 21:17:30', '2018-02-07 21:17:30'),
(509, 11, 'user', NULL, '2018-02-07 21:17:30', '2018-02-07 21:17:30'),
(510, NULL, 'global', NULL, '2018-02-08 01:52:59', '2018-02-08 01:52:59'),
(511, NULL, 'ip', '127.0.0.1', '2018-02-08 01:52:59', '2018-02-08 01:52:59'),
(512, 1, 'user', NULL, '2018-02-08 01:52:59', '2018-02-08 01:52:59'),
(513, NULL, 'global', NULL, '2018-02-27 10:23:13', '2018-02-27 10:23:13'),
(514, NULL, 'ip', '127.0.0.1', '2018-02-27 10:23:13', '2018-02-27 10:23:13'),
(515, 1, 'user', NULL, '2018-02-27 10:23:13', '2018-02-27 10:23:13'),
(516, NULL, 'global', NULL, '2018-02-27 10:23:20', '2018-02-27 10:23:20'),
(517, NULL, 'ip', '127.0.0.1', '2018-02-27 10:23:20', '2018-02-27 10:23:20'),
(518, 1, 'user', NULL, '2018-02-27 10:23:20', '2018-02-27 10:23:20'),
(519, NULL, 'global', NULL, '2018-02-27 10:23:27', '2018-02-27 10:23:27'),
(520, NULL, 'ip', '127.0.0.1', '2018-02-27 10:23:27', '2018-02-27 10:23:27'),
(521, 1, 'user', NULL, '2018-02-27 10:23:27', '2018-02-27 10:23:27'),
(522, NULL, 'global', NULL, '2018-02-27 10:23:35', '2018-02-27 10:23:35'),
(523, NULL, 'ip', '127.0.0.1', '2018-02-27 10:23:35', '2018-02-27 10:23:35'),
(524, 1, 'user', NULL, '2018-02-27 10:23:35', '2018-02-27 10:23:35'),
(525, NULL, 'global', NULL, '2018-03-13 20:44:30', '2018-03-13 20:44:30'),
(526, NULL, 'ip', '27.77.246.244', '2018-03-13 20:44:30', '2018-03-13 20:44:30'),
(527, 14, 'user', NULL, '2018-03-13 20:44:30', '2018-03-13 20:44:30'),
(528, NULL, 'global', NULL, '2018-03-13 21:42:58', '2018-03-13 21:42:58'),
(529, NULL, 'ip', '27.77.246.244', '2018-03-13 21:42:58', '2018-03-13 21:42:58'),
(530, 1, 'user', NULL, '2018-03-13 21:42:58', '2018-03-13 21:42:58'),
(531, NULL, 'global', NULL, '2018-03-29 21:41:23', '2018-03-29 21:41:23'),
(532, NULL, 'ip', '171.232.110.35', '2018-03-29 21:41:23', '2018-03-29 21:41:23'),
(533, 1, 'user', NULL, '2018-03-29 21:41:23', '2018-03-29 21:41:23'),
(534, NULL, 'global', NULL, '2018-04-04 19:47:59', '2018-04-04 19:47:59'),
(535, NULL, 'ip', '171.232.86.209', '2018-04-04 19:47:59', '2018-04-04 19:47:59'),
(536, 1, 'user', NULL, '2018-04-04 19:47:59', '2018-04-04 19:47:59'),
(537, NULL, 'global', NULL, '2018-04-15 23:49:43', '2018-04-15 23:49:43'),
(538, NULL, 'ip', '171.232.86.209', '2018-04-15 23:49:43', '2018-04-15 23:49:43'),
(539, 1, 'user', NULL, '2018-04-15 23:49:43', '2018-04-15 23:49:43'),
(540, NULL, 'global', NULL, '2018-04-15 23:50:01', '2018-04-15 23:50:01'),
(541, NULL, 'ip', '171.232.86.209', '2018-04-15 23:50:01', '2018-04-15 23:50:01'),
(542, 1, 'user', NULL, '2018-04-15 23:50:01', '2018-04-15 23:50:01'),
(543, NULL, 'global', NULL, '2018-04-29 00:34:57', '2018-04-29 00:34:57'),
(544, NULL, 'ip', '115.73.132.170', '2018-04-29 00:34:57', '2018-04-29 00:34:57'),
(545, 1, 'user', NULL, '2018-04-29 00:34:57', '2018-04-29 00:34:57');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  `fullname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `permissions`, `last_login`, `fullname`, `address`, `phone`, `image`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'diennk@dienkim.com', '$2y$10$nxBXFyAJNjPSLEI0RlPv8edQAw4ebTioV9JZaosCErs3VM/LYluuK', NULL, '2018-05-02 18:28:16', 'Nguyễn Kim Điền', NULL, NULL, 'logo-5-983456149.png', 6, 1, '2017-11-12 07:23:56', '2018-05-02 18:28:16'),
(8, 'tiennv', 'tiennv@dienkim.com', '$2y$10$9sq3u.mDu/Bk1vvpv4sU7.Ior67wjHR5n1slgsv/sz63zBQxAfZ4K', NULL, '2018-02-23 01:16:10', 'Nguyễn Văn Tiến', '14 Tân Canh', '0988152782', NULL, 5, 0, '2018-02-05 20:06:26', '2018-02-23 01:16:10'),
(9, 'vinhlt', 'vinhht@dienkim.com', '$2y$10$ib1fvlTyvQLoRQcVt.Qrt.VAZtN3lPSMWHwpoqYwx5OM/4/vSUE9q', NULL, '2018-02-04 11:57:07', 'Huỳnh Thúc Vinh', '23 Bùi Quang Là', '0988162722', NULL, 1, 0, '2018-02-04 05:35:55', '2018-02-04 11:57:07'),
(14, 'phamduy', 'truonghuychuong1994@gmail.com', '$2y$10$j4aFmIopHHaRVXUSwKFIiOm59nc80jQzqfzEN58zTe87wWcgZHfJa', NULL, '2018-03-13 20:44:48', 'Phạm duy', NULL, NULL, NULL, 1, 1, '2018-03-13 19:46:01', '2018-03-13 20:44:48'),
(15, 'lactg', 'lactg@dienkim.com', '$2y$10$RG5efsCgKSuPUF4aKS6mTe8n8A13xei6ZlJdxvRGyMG/KlwldnY5W', NULL, '2018-03-13 21:42:34', 'Trần Gia Lạc', NULL, NULL, NULL, 1, 1, '2018-03-13 19:50:57', '2018-03-13 21:42:34'),
(16, 'dinhphu', 'dinhphu.skv@gmail.com', '$2y$10$gCUWPvzdb49so54ihjXyPeHsPBMOb/eB3rHQ2b29T403.M8wAG.X.', NULL, '2018-03-19 03:53:17', 'Đình phú', NULL, NULL, NULL, 1, 1, '2018-03-18 18:55:37', '2018-03-19 03:53:17'),
(17, 'chuong', 'chuongit.th@gmail.com', '$2y$10$cygzDR9GWA4nqm7sc..H/.vKvrGPe7AP3WH.8A/elFUdMzmMRw0Ri', NULL, NULL, 'huychuongxp', NULL, '01298199884', NULL, 1, 1, '2018-05-02 01:58:12', '2018-05-02 01:58:12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_group_member`
--

DROP TABLE IF EXISTS `user_group_member`;
CREATE TABLE `user_group_member` (
  `id` bigint(20) NOT NULL,
  `group_member_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_group_member`
--

INSERT INTO `user_group_member` (`id`, `group_member_id`, `user_id`, `created_at`, `updated_at`) VALUES
(4, 1, 1, '2018-01-26 04:05:58', '2018-01-26 04:05:58'),
(25, 3, 8, '2018-01-29 02:40:24', '2018-01-29 02:40:24'),
(28, 3, 9, '2018-02-04 16:48:12', '2018-02-04 16:48:12'),
(31, 1, 15, '2018-03-14 02:50:57', '2018-03-14 02:50:57'),
(33, 1, 14, '2018-03-14 02:53:24', '2018-03-14 02:53:24'),
(34, 1, 16, '2018-03-19 01:55:37', '2018-03-19 01:55:37'),
(35, 1, 17, '2018-05-02 08:58:12', '2018-05-02 08:58:12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `video`
--

DROP TABLE IF EXISTS `video`;
CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `video_url` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Đang đổ dữ liệu cho bảng `video`
--

INSERT INTO `video` (`id`, `fullname`, `category_id`, `image`, `video_url`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Đi tham quan núi Bà Đen 2', 1, 'thuvienhinh-1.png', 'F5gQLpScOsI', 2, 1, '2018-01-09 11:01:55', '2018-01-09 11:49:30'),
(5, 'Đi tham quan núi Bà Đen', 1, 'thuvienhinh-2.png', 'BDBb1h-eLsY', 1, 1, '2018-01-09 11:04:06', '2018-01-09 11:49:08'),
(6, 'Đi tham quan núi Bà Đen 3', 1, 'thuvienhinh-3.png', 'rQt2EuoN6oo', 3, 1, '2018-01-09 11:04:29', '2018-01-09 11:49:42'),
(7, 'Đi tham quan núi Bà Đen 4', 1, 'thuvienhinh-4.png', 'jLzAqwCjPuU', 4, 1, '2018-01-09 11:04:54', '2018-01-09 11:49:49'),
(8, 'Đi tham quan núi Bà Đen 5', 1, 'thuvienhinh-5.png', 'koeu_AnZ0BQ', 5, 1, '2018-01-09 11:05:20', '2018-01-09 11:49:56'),
(9, 'Đi tham quan núi Bà Đen 6', 1, 'thuvienhinh-6.png', 'jM53ZU2MCzU', 6, 1, '2018-01-09 11:05:37', '2018-01-09 11:50:04'),
(10, 'Đi tham quan núi Bà Đen 7', 1, 'thuvienhinh-7.png', 'u7xIydku_Yw', 7, 1, '2018-01-09 11:05:53', '2018-01-09 11:50:11'),
(11, 'Đi tham quan núi Bà Đen 8', 1, 'thuvienhinh-8.png', 'yGvSEhQXu4g', 8, 1, '2018-01-09 11:06:08', '2018-01-09 11:50:20');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `article_category`
--
ALTER TABLE `article_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category_article`
--
ALTER TABLE `category_article`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category_banner`
--
ALTER TABLE `category_banner`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category_param`
--
ALTER TABLE `category_param`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category_video`
--
ALTER TABLE `category_video`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `group_member`
--
ALTER TABLE `group_member`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `group_privilege`
--
ALTER TABLE `group_privilege`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `invoice_detail`
--
ALTER TABLE `invoice_detail`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menu_type`
--
ALTER TABLE `menu_type`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `module_item`
--
ALTER TABLE `module_item`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `organization`
--
ALTER TABLE `organization`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `persistences`
--
ALTER TABLE `persistences`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `persistences_code_unique` (`code`);

--
-- Chỉ mục cho bảng `photo`
--
ALTER TABLE `photo`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `post_param`
--
ALTER TABLE `post_param`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `privilege`
--
ALTER TABLE `privilege`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `project_article`
--
ALTER TABLE `project_article`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `project_member`
--
ALTER TABLE `project_member`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`user_id`,`role_id`);

--
-- Chỉ mục cho bảng `setting_system`
--
ALTER TABLE `setting_system`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `supporter`
--
ALTER TABLE `supporter`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `throttle`
--
ALTER TABLE `throttle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `throttle_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Chỉ mục cho bảng `user_group_member`
--
ALTER TABLE `user_group_member`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `activations`
--
ALTER TABLE `activations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `album`
--
ALTER TABLE `album`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `article`
--
ALTER TABLE `article`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT cho bảng `article_category`
--
ALTER TABLE `article_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `category_article`
--
ALTER TABLE `category_article`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `category_banner`
--
ALTER TABLE `category_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `category_param`
--
ALTER TABLE `category_param`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT cho bảng `category_product`
--
ALTER TABLE `category_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `category_video`
--
ALTER TABLE `category_video`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `district`
--
ALTER TABLE `district`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `group_member`
--
ALTER TABLE `group_member`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `group_privilege`
--
ALTER TABLE `group_privilege`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3720;

--
-- AUTO_INCREMENT cho bảng `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `invoice_detail`
--
ALTER TABLE `invoice_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=467;

--
-- AUTO_INCREMENT cho bảng `menu_type`
--
ALTER TABLE `menu_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `module_item`
--
ALTER TABLE `module_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `page`
--
ALTER TABLE `page`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `payment_method`
--
ALTER TABLE `payment_method`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `persistences`
--
ALTER TABLE `persistences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=861;

--
-- AUTO_INCREMENT cho bảng `photo`
--
ALTER TABLE `photo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `post_param`
--
ALTER TABLE `post_param`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `privilege`
--
ALTER TABLE `privilege`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT cho bảng `project`
--
ALTER TABLE `project`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `project_article`
--
ALTER TABLE `project_article`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `project_member`
--
ALTER TABLE `project_member`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `province`
--
ALTER TABLE `province`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT cho bảng `reminders`
--
ALTER TABLE `reminders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `setting_system`
--
ALTER TABLE `setting_system`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `supporter`
--
ALTER TABLE `supporter`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `throttle`
--
ALTER TABLE `throttle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=546;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `user_group_member`
--
ALTER TABLE `user_group_member`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
