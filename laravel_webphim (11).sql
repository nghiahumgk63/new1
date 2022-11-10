-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 27, 2022 lúc 05:29 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `laravel_webphim`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `access`
--

CREATE TABLE `access` (
  `id_access` int(11) NOT NULL,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date_access` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `count_access` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `access`
--

INSERT INTO `access` (`id_access`, `ip_address`, `date_access`, `count_access`) VALUES
(56, '196.12.32.431', '2022-09-15', 1),
(57, '192.12.32.432', '2022-09-15', 1),
(58, '196.12.32.431', '2022-09-15', 1),
(59, '192.12.32.432', '2022-09-15', 1),
(60, '196.12.32.431', '2022-09-15', 1),
(61, '192.12.32.432', '2022-09-15', 1),
(62, '196.12.32.431', '2022-09-15', 1),
(63, '192.12.32.432', '2022-09-16', 1),
(64, '196.12.32.431', '2022-09-16', 1),
(65, '192.12.32.432', '2022-09-16', 1),
(67, '182.37.29.132', '2022-09-23', 1),
(68, '182.37.29.132', '2022-09-23', 1),
(69, '182.37.29.132', '2022-09-23', 1),
(70, '182.37.29.132', '2022-09-23', 1),
(71, '182.37.29.132', '2022-09-23', 1),
(72, '182.37.29.132', '2022-09-23', 1),
(73, '182.37.29.132', '2022-09-23', 1),
(74, '182.37.29.132', '2022-09-23', 1),
(75, '123.36.94.245', '2022-09-30', 1),
(76, '123.36.94.245', '2022-09-30', 1),
(77, '123.36.94.245', '2022-09-30', 1),
(78, '123.36.94.245', '2022-09-30', 1),
(79, '123.36.94.245', '2022-09-30', 1),
(80, '123.36.94.245', '2022-09-30', 1),
(81, '123.36.94.245', '2022-09-30', 1),
(82, '123.36.94.245', '2022-09-30', 1),
(83, '123.36.94.245', '2022-09-30', 1),
(84, '123.36.94.245', '2022-09-30', 1),
(85, '123.36.94.245', '2022-09-30', 1),
(86, '123.36.94.245', '2022-09-30', 1),
(87, '123.36.94.245', '2022-09-30', 1),
(88, '123.36.94.245', '2022-09-30', 1),
(89, '123.36.94.245', '2022-09-30', 1),
(90, '123.36.94.245', '2022-09-30', 1),
(91, '123.36.94.245', '2022-09-30', 1),
(92, '123.36.94.245', '2022-09-30', 1),
(93, '123.36.94.245', '2022-09-30', 1),
(94, '123.36.94.245', '2022-09-30', 1),
(95, '196.23.68.68', '2022-10-07', 1),
(96, '196.23.68.68', '2022-10-07', 1),
(97, '196.23.68.68', '2022-10-07', 1),
(98, '196.23.68.68', '2022-10-07', 1),
(99, '196.23.68.68', '2022-10-07', 1),
(100, '196.23.68.68', '2022-10-07', 1),
(101, '192.37.35.123', '2022-10-22', 1),
(102, '192.37.35.123', '2022-10-22', 1),
(103, '192.37.35.123', '2022-10-22', 1),
(104, '127.0.0.1', '2022-10-22', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `access_day`
--

CREATE TABLE `access_day` (
  `id` int(11) NOT NULL,
  `day_access` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `total` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `position` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `title`, `description`, `status`, `slug`, `position`) VALUES
(5, 'Phim Hoạt Hình', 'Phim hoạt hình cập nhật nhanh nhất', 1, 'phim-hoat-hinh', 1),
(13, 'Phim Chiếu Rạp', 'Phim chiếu rạp mới nhất', 1, 'phim-chieu-rap', 0),
(14, 'Phim Bộ Mỹ', 'Phim Bộ Mỹ cập nhập mới nhất', 1, 'phim-bo-my', 5),
(15, 'Phim Bộ Trung Quốc', '<p>Phim Bộ Trung Quốc cập nhập mới nhất</p>', 0, 'phim-bo-trung-quoc', 4),
(16, 'Phim Bộ Hàn Quốc', 'Phim Bộ Hàn Quốc cập nhập nhanh nhất', 1, 'phim-bo-han-quoc', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `title_phim` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `comment_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id` int(255) NOT NULL,
  `slug_phim` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `movie_id` int(255) DEFAULT NULL,
  `comment_status` int(200) DEFAULT 0,
  `rep_comment` int(255) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`comment_id`, `title_phim`, `comment`, `comment_name`, `comment_date`, `id`, `slug_phim`, `movie_id`, `comment_status`, `rep_comment`) VALUES
(52, 'Liên Minh Siêu Thú DC – DC League of Super-Pets', 'xem mà buồn cười không nhậm đươc cười', 'chú bé 22 tuổi', '2022-10-04 08:31:57', 50, 'lien-minh-sieu-thu-dc-–-dc-league-of-super-pets', 55, 0, 0),
(53, 'Liên Minh Siêu Thú DC – DC League of Super-Pets', 'admin cập nhật nhiều phim như này đi', 'Việt Anh', '2022-10-05 09:27:13', 50, 'lien-minh-sieu-thu-dc-–-dc-league-of-super-pets', 55, 1, 0),
(55, 'Liên Minh Siêu Thú DC – DC League of Super-Pets', 'Văn học thành văn chịu ảnh hưởng của văn học dân gian về nhiều phương diện, từ nội dung tư tưởng đến hình thức nghệ thuật. Văn học viết cũng có tác động trở lại đối với văn học dân gian trên một số phương diện. Mối quan hệ giữa văn học dân gian với văn học viết cũng như vai trò, ảnh hưởng của văn học dân gian đối với văn học thể hiện trọn vẹn hơn cả ở lĩnh vực sáng tác và ở bộ phận thơ văn quốc âm', 'mê phim', '2022-10-06 06:19:07', 50, 'lien-minh-sieu-thu-dc-–-dc-league-of-super-pets', 55, 0, 0),
(56, 'Liên Minh Siêu Thú DC – DC League of Super-Pets', 'văn học', 'webphim366ngay', '2022-10-06 06:19:48', 50, 'lien-minh-sieu-thu-dc-–-dc-league-of-super-pets', 55, 0, 55);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `countries`
--

INSERT INTO `countries` (`id`, `title`, `description`, `status`, `slug`) VALUES
(1, 'Việt Nam', 'Phim Việt Nam cập nhật nhanh nhất', 1, 'viet-nam'),
(2, 'Mỹ', 'Phim Mỹ cập nhật hằng ngày', 1, 'my'),
(3, 'Anh', 'Phim Anh cập nhật nhanh nhất', 1, 'anh'),
(4, 'Nhật Bản', 'Phim Nhật Bản cập nhật nhanh nhất', 1, 'nhat-ban'),
(5, 'Hàn Quốc', 'Phim Hàn Quốc cập nhật nhanh nhất', 1, 'han-quoc'),
(6, 'Trung quốc', 'Phim Trung Quốc cập nhật nhanh nhất', 1, 'trung-quoc'),
(7, 'Thái Lan', 'Phim Thái Lan cập nhật nhanh nhất', 1, 'Thái Lan'),
(8, 'Đài Loan', 'Phim Đài Loan cập nhật nhanh nhất', 1, 'Đài Loan'),
(9, 'Singapo', 'phim singapo', 1, 'Singapo');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `episodes`
--

CREATE TABLE `episodes` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `linkphim` varchar(255) NOT NULL,
  `episode` varchar(11) NOT NULL,
  `position` int(11) DEFAULT 0,
  `created_at` varchar(20) NOT NULL,
  `updated_at` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `episodes`
--

INSERT INTO `episodes` (`id`, `movie_id`, `linkphim`, `episode`, `position`, `created_at`, `updated_at`) VALUES
(43, 51, '<p><iframe width=\"640\" height=\"360\" src=\"https://short.ink/59XhPSfYj\" frameborder=\"0\" scrolling=\"0\" allowfullscreen></iframe></p>', 'HD', 0, '2022-09-05 16:52:43', '2022-09-05 16:52:43'),
(44, 52, '<p><iframe width=\"640\" height=\"360\" src=\"https://short.ink/w-XofDI4C\" frameborder=\"0\" scrolling=\"0\" allowfullscreen></iframe></p>', 'HD', 0, '2022-09-05 16:55:10', '2022-09-05 16:55:10'),
(45, 53, '<p><iframe width=\"640\" height=\"360\" src=\"https://short.ink/jNHnxIW-S\" frameborder=\"0\" scrolling=\"0\" allowfullscreen></iframe></p>', 'HD', 0, '2022-09-05 16:58:13', '2022-09-05 16:58:13'),
(46, 54, '<p><iframe width=\"640\" height=\"360\" src=\"https://short.ink/ZIT3YJ9cK\" frameborder=\"0\" scrolling=\"0\" allowfullscreen></iframe></p>', '1', 0, '2022-09-05 17:00:51', '2022-09-05 17:00:51'),
(47, 54, '<p><iframe width=\"640\" height=\"360\" src=\"https://short.ink/qBKFykcHb\" frameborder=\"0\" scrolling=\"0\" allowfullscreen></iframe></p>', '2', 0, '2022-09-05 17:01:43', '2022-09-05 17:01:43'),
(48, 54, '<p><iframe width=\"640\" height=\"360\" src=\"https://short.ink/LuToMCz14\" frameborder=\"0\" scrolling=\"0\" allowfullscreen></iframe></p>', '3', 0, '2022-09-05 17:02:11', '2022-09-05 17:02:11'),
(50, 55, '<p><iframe width=\"640\" height=\"360\" src=\"https://short.ink/s66PEuUId\" frameborder=\"0\" scrolling=\"0\" allowfullscreen></iframe></p>', 'HD', 0, '2022-09-05 17:06:50', '2022-09-05 17:06:50'),
(51, 56, '<p><iframe width=\"640\" height=\"360\" src=\"https://short.ink/rsWll2RW1n\" frameborder=\"0\" scrolling=\"0\" allowfullscreen></iframe></p>', 'HD', 0, '2022-09-05 17:09:40', '2022-09-05 17:09:40'),
(52, 54, '<p><iframe allowfullscrenn frameborder=\"0\" height=\"360\" sorolling=\"0\" src=\"https://short.ink/AEgdB1WS4\" width=\"100%\"></iframe></p>', '4', 0, '2022-10-05 10:05:29', '2022-10-05 10:05:29'),
(53, 73, '<p><iframe allowfullscrenn frameborder=\"0\" height=\"360\" sorolling=\"0\" src=\"https://short.ink/AEgdB1WS4\" width=\"100%\"></iframe></p>', '1', 0, '2022-10-05 16:15:05', '2022-10-05 16:15:05'),
(54, 67, '<p><iframe allowfullscrenn frameborder=\"0\" height=\"360\" sorolling=\"0\" src=\"https://short.ink/AEgdB1WS4\" width=\"100%\"></iframe></p>', '1', 0, '2022-10-15 10:15:33', '2022-10-15 10:15:33'),
(55, 67, '<p><iframe allowfullscrenn frameborder=\"0\" height=\"360\" sorolling=\"0\" src=\"https://short.ink/TGJ87GUJZ\" width=\"100%\"></iframe></p>', '2', 0, '2022-10-15 10:15:43', '2022-10-15 10:15:43'),
(56, 67, '<p><iframe allowfullscrenn frameborder=\"0\" height=\"360\" sorolling=\"0\" src=\"https://drive.google.com/file/d/1PANYAIEkyCZ77yvhkGlGL1lAmq3to6KF/preview\" width=\"100%\"></iframe></p>', '3', 0, '2022-10-15 10:15:49', '2022-10-15 10:15:49'),
(57, 72, '<p><iframe allowfullscrenn frameborder=\"0\" height=\"360\" sorolling=\"0\" src=\"https://short.ink/b0-CMdFl4\" width=\"100%\"></iframe></p>', 'FullHD', 0, '2022-10-15 10:16:18', '2022-10-15 10:16:18'),
(58, 72, '<p><iframe allowfullscrenn frameborder=\"0\" height=\"360\" sorolling=\"0\" src=\"https://short.ink/AEgdB1WS4\" width=\"100%\"></iframe></p>', 'HD', 0, '2022-10-15 10:16:51', '2022-10-15 10:16:51'),
(59, 71, '<p><iframe allowfullscrenn frameborder=\"0\" height=\"360\" sorolling=\"0\" src=\"https://short.ink/AEgdB1WS4\" width=\"100%\"></iframe></p>', 'HD', 0, '2022-10-15 10:18:31', '2022-10-15 10:18:31'),
(60, 60, '<p><iframe allowfullscrenn frameborder=\"0\" height=\"360\" sorolling=\"0\" src=\"https://drive.google.com/file/d/1PANYAIEkyCZ77yvhkGlGL1lAmq3to6KF/preview\" width=\"100%\"></iframe></p>', 'HD', 0, '2022-10-15 11:36:37', '2022-10-15 11:36:37'),
(61, 79, '<p><iframe allowfullscrenn frameborder=\"0\" height=\"360\" sorolling=\"0\" src=\"https://drive.google.com/file/d/1PANYAIEkyCZ77yvhkGlGL1lAmq3to6KF/preview\" width=\"100%\"></iframe></p>', '1', 0, '2022-10-20 09:34:53', '2022-10-20 09:34:53'),
(62, 79, '<p><iframe allowfullscrenn frameborder=\"0\" height=\"360\" sorolling=\"0\" src=\"https://short.ink/AEgdB1WS4\" width=\"100%\"></iframe></p>', '2', 0, '2022-10-20 09:34:57', '2022-10-20 09:34:57'),
(63, 79, '<p><iframe allowfullscrenn frameborder=\"0\" height=\"360\" sorolling=\"0\" src=\"https://drive.google.com/file/d/1PANYAIEkyCZ77yvhkGlGL1lAmq3to6KF/preview\" width=\"100%\"></iframe></p>', '3', 0, '2022-10-20 09:35:03', '2022-10-20 09:35:03'),
(64, 79, '<p><iframe allowfullscrenn frameborder=\"0\" height=\"360\" sorolling=\"0\" src=\"https://short.ink/AEgdB1WS4\" width=\"100%\"></iframe></p>', '4', 0, '2022-10-20 09:35:09', '2022-10-20 09:35:09'),
(65, 79, '<p><iframe allowfullscrenn frameborder=\"0\" height=\"360\" sorolling=\"0\" src=\"https://drive.google.com/file/d/1PANYAIEkyCZ77yvhkGlGL1lAmq3to6KF/preview\" width=\"100%\"></iframe></p>', '5', 0, '2022-10-20 09:35:15', '2022-10-20 09:35:15'),
(66, 70, '<p><iframe allowfullscrenn frameborder=\"0\" height=\"360\" sorolling=\"0\" src=\"https://short.ink/AEgdB1WS4\" width=\"100%\"></iframe></p>', 'HD', 0, '2022-10-20 09:38:37', '2022-10-20 09:38:37'),
(68, 66, '<p><iframe allowfullscrenn frameborder=\"0\" height=\"360\" sorolling=\"0\" src=\"https://drive.google.com/file/d/1PANYAIEkyCZ77yvhkGlGL1lAmq3to6KF/preview\" width=\"100%\"></iframe></p>', '1', 0, '2022-10-20 09:38:57', '2022-10-20 09:38:57'),
(69, 69, '<p><iframe allowfullscrenn frameborder=\"0\" height=\"360\" sorolling=\"0\" src=\"https://drive.google.com/file/d/1PANYAIEkyCZ77yvhkGlGL1lAmq3to6KF/preview\" width=\"100%\"></iframe></p>', 'HD', 0, '2022-10-20 09:39:22', '2022-10-20 09:39:22'),
(70, 68, '<p><iframe allowfullscrenn frameborder=\"0\" height=\"360\" sorolling=\"0\" src=\"https://short.ink/AEgdB1WS4\" width=\"100%\"></iframe></p>', '1', 0, '2022-10-20 09:40:09', '2022-10-20 09:40:09'),
(71, 58, '<p><iframe allowfullscrenn frameborder=\"0\" height=\"360\" sorolling=\"0\" src=\"https://short.ink/AEgdB1WS4\" width=\"100%\"></iframe></p>', '1', 0, '2022-10-20 09:40:55', '2022-10-20 09:40:55'),
(72, 58, '<p><iframe allowfullscrenn frameborder=\"0\" height=\"360\" sorolling=\"0\" src=\"https://short.ink/AEgdB1WS4\" width=\"100%\"></iframe></p>', '2', 0, '2022-10-20 09:40:59', '2022-10-20 09:40:59'),
(73, 58, '<p><iframe allowfullscrenn frameborder=\"0\" height=\"360\" sorolling=\"0\" src=\"https://short.ink/AEgdB1WS4\" width=\"100%\"></iframe></p>', '3', 0, '2022-10-20 09:41:04', '2022-10-20 09:41:04'),
(74, 58, '<p><iframe allowfullscrenn frameborder=\"0\" height=\"360\" sorolling=\"0\" src=\"https://short.ink/AEgdB1WS4\" width=\"100%\"></iframe></p>', '4', 0, '2022-10-20 09:41:09', '2022-10-20 09:41:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `genres`
--

INSERT INTO `genres` (`id`, `title`, `description`, `status`, `slug`) VALUES
(1, 'Hành Động', 'Phim hành động cập nhật nhanh nhất', 1, 'hanh-dong'),
(3, 'Hài Hước', 'Phim hài hước cập nhật hằng ngày', 1, 'hai-huoc'),
(4, 'Lãng Mạn', 'Phim lãng mạn cập nhật nhanh nhất', 1, 'lang-man'),
(5, 'Viễn Tưởng', 'Phim viễn tưởng cập nhật nhanh nhất', 1, 'vien-tuong'),
(6, 'Võ Thuật', 'Phim võ thuật cập nhật nhanh nhất', 1, 'vo-thuat'),
(7, 'Kinh Dị', 'Phim kinh dị cập nhật nhanh nhất', 1, 'kinh-di'),
(8, 'Tâm Lý', 'Phim tâm lý cập nhật nhanh nhất', 0, 'tam-ly'),
(9, 'phim ngắn', 'phim ngắn hài', 1, 'phim-ngan');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_07_31_132102_create_permission_tables', 2),
(6, '2015_03_07_311070_create_tracker_paths_table', 3),
(7, '2015_03_07_311071_create_tracker_queries_table', 3),
(8, '2015_03_07_311072_create_tracker_queries_arguments_table', 3),
(9, '2015_03_07_311073_create_tracker_routes_table', 3),
(10, '2015_03_07_311074_create_tracker_routes_paths_table', 3),
(11, '2015_03_07_311075_create_tracker_route_path_parameters_table', 3),
(12, '2015_03_07_311076_create_tracker_agents_table', 3),
(13, '2015_03_07_311077_create_tracker_cookies_table', 3),
(14, '2015_03_07_311078_create_tracker_devices_table', 3),
(15, '2015_03_07_311079_create_tracker_domains_table', 3),
(16, '2015_03_07_311080_create_tracker_referers_table', 3),
(17, '2015_03_07_311081_create_tracker_geoip_table', 3),
(18, '2015_03_07_311082_create_tracker_sessions_table', 3),
(19, '2015_03_07_311083_create_tracker_errors_table', 3),
(20, '2015_03_07_311084_create_tracker_system_classes_table', 3),
(21, '2015_03_07_311085_create_tracker_log_table', 3),
(22, '2015_03_07_311086_create_tracker_events_table', 3),
(23, '2015_03_07_311087_create_tracker_events_log_table', 3),
(24, '2015_03_07_311088_create_tracker_sql_queries_table', 3),
(25, '2015_03_07_311089_create_tracker_sql_query_bindings_table', 3),
(26, '2015_03_07_311090_create_tracker_sql_query_bindings_parameters_table', 3),
(27, '2015_03_07_311091_create_tracker_sql_queries_log_table', 3),
(28, '2015_03_07_311092_create_tracker_connections_table', 3),
(29, '2015_03_07_311093_create_tracker_tables_relations', 3),
(30, '2015_03_13_311094_create_tracker_referer_search_term_table', 3),
(31, '2015_03_13_311095_add_tracker_referer_columns', 3),
(32, '2015_11_23_311096_add_tracker_referer_column_to_log', 3),
(33, '2015_11_23_311097_create_tracker_languages_table', 3),
(34, '2015_11_23_311098_add_language_id_column_to_sessions', 3),
(35, '2015_11_23_311099_add_tracker_language_foreign_key_to_sessions', 3),
(36, '2015_11_23_311100_add_nullable_to_tracker_error', 3),
(37, '2017_01_31_311101_fix_agent_name', 3),
(38, '2017_06_20_311102_add_agent_name_hash', 3),
(39, '2017_12_13_150000_fix_query_arguments', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 3),
(2, 'App\\Models\\User', 3),
(2, 'App\\Models\\User', 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `port_view` int(255) DEFAULT 0,
  `title` varchar(100) NOT NULL,
  `thoiluong` varchar(20) DEFAULT NULL,
  `description` longtext NOT NULL,
  `danhgia` text DEFAULT NULL,
  `tags` text DEFAULT NULL,
  `filmstudio` varchar(255) DEFAULT NULL,
  `director` varchar(255) DEFAULT NULL,
  `movieactor` varchar(255) DEFAULT NULL,
  `releasedate` date DEFAULT NULL,
  `status` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `thuocphim` varchar(10) NOT NULL,
  `genre_id` varchar(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `phim_hot` int(11) NOT NULL,
  `resolution` int(11) NOT NULL DEFAULT 0,
  `name_eng` varchar(255) NOT NULL,
  `trailer` varchar(255) DEFAULT NULL,
  `phude` int(11) NOT NULL DEFAULT 0,
  `ngaytao` varchar(255) DEFAULT NULL,
  `ngaycapnhat` varchar(255) DEFAULT NULL,
  `year` varchar(20) DEFAULT NULL,
  `topview` int(11) DEFAULT 3,
  `season` int(50) DEFAULT 0,
  `sotap` varchar(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `movies`
--

INSERT INTO `movies` (`id`, `port_view`, `title`, `thoiluong`, `description`, `danhgia`, `tags`, `filmstudio`, `director`, `movieactor`, `releasedate`, `status`, `image`, `slug`, `category_id`, `thuocphim`, `genre_id`, `country_id`, `phim_hot`, `resolution`, `name_eng`, `trailer`, `phude`, `ngaytao`, `ngaycapnhat`, `year`, `topview`, `season`, `sotap`) VALUES
(51, 2, 'Chú Vỏ Tí Hon Marcel – Marcel the Shell with Shoes On', '120 phút', 'Chú Vỏ Tí Hon Marcel - Marcel the Shell with Shoes On, Marcel the Shell with Shoes On 2022 Full\nMột bộ phim siêu đáng yêu, ấm lòng & cảm động từ nhà A24, kể về hành trình tìm gia đình của chú vỏ tí hon Marcel, cùng sự giúp đỡ của Dean – một nhà làm phim nghiệp dư vô tình chuyển vào căn hộ Airbnb nơi cậu đang ở', '<p>82% đ&atilde; th&iacute;ch phim n&agrave;y</p>\n\n<p>Người d&ugrave;ng Google</p>\n\n<h3>M&ocirc; tả</h3>\n\n<p>Được dịch từ tiếng Anh-Incantation l&agrave; bộ phim kinh dị si&ecirc;u nhi&ecirc;n c&oacute; cảnh quay năm 2022 của Đ&agrave;i Loan do Kevin Ko l&agrave;m đạo diễn, người cũng đồng viết kịch bản với Chang Che-wei. Bộ phim được ph&aacute;t h&agrave;nh tại Đ&agrave;i Loan v&agrave;o ng&agrave;y 18 th&aacute;ng 3 năm 2022 v&agrave; trở th&agrave;nh bộ phim kinh dị Đ&agrave;i Loan c&oacute; doanh thu cao nhất.&nbsp;<a href=\"https://en.wikipedia.org/wiki/Incantation_(film)\">Wikipedia (tiếng Anh)</a></p>\n\n<p>Ng&agrave;y ph&aacute;t h&agrave;nh:&nbsp;18 th&aacute;ng 3, 2022 (<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=%C4%90%C3%A0i+Loan&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-LQz9U3MEszNtIyz0620k_LzMkFE1YlGamJJUWZyYk5Csn5pXklRZUK-WkK-UWZ6Zl5CkWpOamJxakKKYklqYtYuY5MOLwgU8EnPzFvByvjLnYmDgYAXpvqi2kAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECFkQAg\">Đ&agrave;i Loan</a>)</p>\n\n<p>Đạo diễn:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=Kevin+Ko&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-IBcY2qLEzyKpKLtcSyk6300zJzcsGEVUpmUWpySX7RIlYO79SyzDwF7_wdrIy72Jk4GACVRE1USgAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECFwQAg\">Kevin Ko</a></p>\n\n<p>Ph&ograve;ng v&eacute;:&nbsp;5,7&nbsp;triệu USD</p>\n\n<p>Nh&agrave; ph&acirc;n phối:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=Netflix&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-LUz9U3MDQvSovXUsgot9JPzs_JSU0uyczP00_LzMkttkrJLC4pykwqLckvWsTK7pdakpaTWbGDlXEXOxMHAwB750EzUAAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECF4QAg\">Netflix</a></p>\n\n<p>Nh&agrave; sản xuất điều h&agrave;nh:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=Kevin+Ko&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-IBcY2qLEzyKpKLtRSyk6300zJzcsGEVWpFanJpSWZZqkJBUX5KaXJq0SJWDu_Ussw8Be_8HayMu9iZOBgASEZ6z1QAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECFoQAg\">Kevin Ko</a></p>\n\n<p>Quay phim:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=incantation+chen+ko-chin&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU4Jwk4sLy3MqzOK1ZLKTrfTTMnNywYRVcmZeam5iSX56UWJBRuUiVonMvOTEvJLEksz8PIXkjNQ8hex83eSMzLwdrIy72Jk4GAA8_GvjYQAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECF8QAg\">Chen Ko-chin</a></p>', 'Chú Vỏ Tí Hon Marcel,Marcel the Shell with Shoes On,phim366ngay,phim 366 ngày', 'DC', NULL, NULL, '2022-10-01', 1, '6315abd6d1402530.jpg', 'chu-vo-ti-hon-marcel-–-marcel-the-shell-with-shoes-on', 5, 'phimle', '9', 2, 1, 0, 'Marcel the Shell with Shoes On', NULL, 0, '2022-09-05 16:50:15', '2022-09-05 16:50:15', NULL, 2, 0, '1'),
(52, 3677, 'Cuộc Phiêu Lưu Của Pil – Pil’s Adventures', '120 phút', 'Cuộc Phiêu Lưu Của Pil - Pil\'s Adventures, Pil\'s Adventures 2022 Full\nMột cô gái trẻ lanh lợi cải trang thành công chúa để cứu vương quốc và người thừa kế ngai vàng.', '<p>82% đ&atilde; th&iacute;ch phim n&agrave;y</p>\n\n<p>Người d&ugrave;ng Google</p>\n\n<h3>M&ocirc; tả</h3>\n\n<p>Được dịch từ tiếng Anh-Incantation l&agrave; bộ phim kinh dị si&ecirc;u nhi&ecirc;n c&oacute; cảnh quay năm 2022 của Đ&agrave;i Loan do Kevin Ko l&agrave;m đạo diễn, người cũng đồng viết kịch bản với Chang Che-wei. Bộ phim được ph&aacute;t h&agrave;nh tại Đ&agrave;i Loan v&agrave;o ng&agrave;y 18 th&aacute;ng 3 năm 2022 v&agrave; trở th&agrave;nh bộ phim kinh dị Đ&agrave;i Loan c&oacute; doanh thu cao nhất.&nbsp;<a href=\"https://en.wikipedia.org/wiki/Incantation_(film)\">Wikipedia (tiếng Anh)</a></p>\n\n<p>Ng&agrave;y ph&aacute;t h&agrave;nh:&nbsp;18 th&aacute;ng 3, 2022 (<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=%C4%90%C3%A0i+Loan&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-LQz9U3MEszNtIyz0620k_LzMkFE1YlGamJJUWZyYk5Csn5pXklRZUK-WkK-UWZ6Zl5CkWpOamJxakKKYklqYtYuY5MOLwgU8EnPzFvByvjLnYmDgYAXpvqi2kAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECFkQAg\">Đ&agrave;i Loan</a>)</p>\n\n<p>Đạo diễn:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=Kevin+Ko&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-IBcY2qLEzyKpKLtcSyk6300zJzcsGEVUpmUWpySX7RIlYO79SyzDwF7_wdrIy72Jk4GACVRE1USgAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECFwQAg\">Kevin Ko</a></p>\n\n<p>Ph&ograve;ng v&eacute;:&nbsp;5,7&nbsp;triệu USD</p>\n\n<p>Nh&agrave; ph&acirc;n phối:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=Netflix&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-LUz9U3MDQvSovXUsgot9JPzs_JSU0uyczP00_LzMkttkrJLC4pykwqLckvWsTK7pdakpaTWbGDlXEXOxMHAwB750EzUAAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECF4QAg\">Netflix</a></p>\n\n<p>Nh&agrave; sản xuất điều h&agrave;nh:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=Kevin+Ko&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-IBcY2qLEzyKpKLtRSyk6300zJzcsGEVWpFanJpSWZZqkJBUX5KaXJq0SJWDu_Ussw8Be_8HayMu9iZOBgASEZ6z1QAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECFoQAg\">Kevin Ko</a></p>\n\n<p>Quay phim:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=incantation+chen+ko-chin&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU4Jwk4sLy3MqzOK1ZLKTrfTTMnNywYRVcmZeam5iSX56UWJBRuUiVonMvOTEvJLEksz8PIXkjNQ8hex83eSMzLwdrIy72Jk4GAA8_GvjYQAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECF8QAg\">Chen Ko-chin</a></p>', 'Cuộc Phiêu Lưu Của Pil,Pil’s Adventures,phim366ngay,phim 366 ngày', 'marvel', NULL, NULL, '2022-10-01', 1, '6312c7f2e6dba8749.jpg', 'cuoc-phieu-luu-cua-pil-–-pil’s-adventures', 5, 'phimle', '9', 2, 1, 0, 'Pil’s Adventures', NULL, 0, '2022-09-05 16:54:36', '2022-09-05 16:54:36', NULL, 3, 0, '1'),
(53, 7871, 'Vì Yêu Mà Đấu – Combat Wombat', '120 phút', 'Vì Yêu Mà Đấu - Combat Wombat, Combat Wombat 2021 Full\r\nMaggie Diggins, một con bụng mẹ hóa thành Wonder Woman, vô tình trở thành siêu anh hùng của thành phố sau khi cô bất đắc dĩ cứu một tàu lượn siêu anh hùng tân binh khỏi sự diệt vong nhất định.', '<p>82% đ&atilde; th&iacute;ch phim n&agrave;y</p>\n\n<p>Người d&ugrave;ng Google</p>\n\n<h3>M&ocirc; tả</h3>\n\n<p>Được dịch từ tiếng Anh-Incantation l&agrave; bộ phim kinh dị si&ecirc;u nhi&ecirc;n c&oacute; cảnh quay năm 2022 của Đ&agrave;i Loan do Kevin Ko l&agrave;m đạo diễn, người cũng đồng viết kịch bản với Chang Che-wei. Bộ phim được ph&aacute;t h&agrave;nh tại Đ&agrave;i Loan v&agrave;o ng&agrave;y 18 th&aacute;ng 3 năm 2022 v&agrave; trở th&agrave;nh bộ phim kinh dị Đ&agrave;i Loan c&oacute; doanh thu cao nhất.&nbsp;<a href=\"https://en.wikipedia.org/wiki/Incantation_(film)\">Wikipedia (tiếng Anh)</a></p>\n\n<p>Ng&agrave;y ph&aacute;t h&agrave;nh:&nbsp;18 th&aacute;ng 3, 2022 (<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=%C4%90%C3%A0i+Loan&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-LQz9U3MEszNtIyz0620k_LzMkFE1YlGamJJUWZyYk5Csn5pXklRZUK-WkK-UWZ6Zl5CkWpOamJxakKKYklqYtYuY5MOLwgU8EnPzFvByvjLnYmDgYAXpvqi2kAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECFkQAg\">Đ&agrave;i Loan</a>)</p>\n\n<p>Đạo diễn:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=Kevin+Ko&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-IBcY2qLEzyKpKLtcSyk6300zJzcsGEVUpmUWpySX7RIlYO79SyzDwF7_wdrIy72Jk4GACVRE1USgAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECFwQAg\">Kevin Ko</a></p>\n\n<p>Ph&ograve;ng v&eacute;:&nbsp;5,7&nbsp;triệu USD</p>\n\n<p>Nh&agrave; ph&acirc;n phối:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=Netflix&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-LUz9U3MDQvSovXUsgot9JPzs_JSU0uyczP00_LzMkttkrJLC4pykwqLckvWsTK7pdakpaTWbGDlXEXOxMHAwB750EzUAAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECF4QAg\">Netflix</a></p>\n\n<p>Nh&agrave; sản xuất điều h&agrave;nh:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=Kevin+Ko&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-IBcY2qLEzyKpKLtRSyk6300zJzcsGEVWpFanJpSWZZqkJBUX5KaXJq0SJWDu_Ussw8Be_8HayMu9iZOBgASEZ6z1QAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECFoQAg\">Kevin Ko</a></p>\n\n<p>Quay phim:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=incantation+chen+ko-chin&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU4Jwk4sLy3MqzOK1ZLKTrfTTMnNywYRVcmZeam5iSX56UWJBRuUiVonMvOTEvJLEksz8PIXkjNQ8hex83eSMzLwdrIy72Jk4GAA8_GvjYQAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECF8QAg\">Chen Ko-chin</a></p>', 'Vì Yêu Mà Đấu , Combat Wombat,phim366ngay,phimbomtan,phimchieurap,phimhoathinh', 'Nadine Bates, Kristen Souvlis', 'Ricard Cussó', 'Deborah Mailman, Ed Oxenbould, Frank Woodley, Judith Lucy, Kate Murphy', '2022-10-01', 1, '6312c51d1bb0c6981.jpg', 'vi-yeu-ma-dau-–-combat-wombat', 5, 'phimle', '9', 2, 1, 0, 'Combat Wombat', NULL, 0, '2022-09-05 16:57:19', '2022-09-05 16:57:19', NULL, 3, 0, '1'),
(54, 2, 'Ollie Lạc Lối (Phần 1) – Lost Ollie (Season 1)', '120 phút', 'Ollie Lạc Lối (Phần 1) - Lost Ollie (Season 1), Lost Ollie (Season 1) 2022 Full (4/4) Season 1\r\nChú thỏ chắp vá với đôi tai cụp và những ký ức mơ hồ bắt đầu chuyến phiêu lưu ly kỳ để tìm lại bạn thân của mình: một cậu bé mà chú vô cùng yêu mến.', '<p>82% đ&atilde; th&iacute;ch phim n&agrave;y</p>\n\n<p>Người d&ugrave;ng Google</p>\n\n<h3>M&ocirc; tả</h3>\n\n<p>Được dịch từ tiếng Anh-Incantation l&agrave; bộ phim kinh dị si&ecirc;u nhi&ecirc;n c&oacute; cảnh quay năm 2022 của Đ&agrave;i Loan do Kevin Ko l&agrave;m đạo diễn, người cũng đồng viết kịch bản với Chang Che-wei. Bộ phim được ph&aacute;t h&agrave;nh tại Đ&agrave;i Loan v&agrave;o ng&agrave;y 18 th&aacute;ng 3 năm 2022 v&agrave; trở th&agrave;nh bộ phim kinh dị Đ&agrave;i Loan c&oacute; doanh thu cao nhất.&nbsp;<a href=\"https://en.wikipedia.org/wiki/Incantation_(film)\">Wikipedia (tiếng Anh)</a></p>\n\n<p>Ng&agrave;y ph&aacute;t h&agrave;nh:&nbsp;18 th&aacute;ng 3, 2022 (<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=%C4%90%C3%A0i+Loan&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-LQz9U3MEszNtIyz0620k_LzMkFE1YlGamJJUWZyYk5Csn5pXklRZUK-WkK-UWZ6Zl5CkWpOamJxakKKYklqYtYuY5MOLwgU8EnPzFvByvjLnYmDgYAXpvqi2kAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECFkQAg\">Đ&agrave;i Loan</a>)</p>\n\n<p>Đạo diễn:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=Kevin+Ko&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-IBcY2qLEzyKpKLtcSyk6300zJzcsGEVUpmUWpySX7RIlYO79SyzDwF7_wdrIy72Jk4GACVRE1USgAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECFwQAg\">Kevin Ko</a></p>\n\n<p>Ph&ograve;ng v&eacute;:&nbsp;5,7&nbsp;triệu USD</p>\n\n<p>Nh&agrave; ph&acirc;n phối:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=Netflix&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-LUz9U3MDQvSovXUsgot9JPzs_JSU0uyczP00_LzMkttkrJLC4pykwqLckvWsTK7pdakpaTWbGDlXEXOxMHAwB750EzUAAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECF4QAg\">Netflix</a></p>\n\n<p>Nh&agrave; sản xuất điều h&agrave;nh:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=Kevin+Ko&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-IBcY2qLEzyKpKLtRSyk6300zJzcsGEVWpFanJpSWZZqkJBUX5KaXJq0SJWDu_Ussw8Be_8HayMu9iZOBgASEZ6z1QAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECFoQAg\">Kevin Ko</a></p>\n\n<p>Quay phim:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=incantation+chen+ko-chin&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU4Jwk4sLy3MqzOK1ZLKTrfTTMnNywYRVcmZeam5iSX56UWJBRuUiVonMvOTEvJLEksz8PIXkjNQ8hex83eSMzLwdrIy72Jk4GAA8_GvjYQAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECF8QAg\">Chen Ko-chin</a></p>', 'Ollie Lạc Lối (Phần 1) , Lost Ollie (Season 1),phim366bngay,phim 366 ngay', NULL, NULL, NULL, '2022-10-01', 1, '6306ecbe0b25d7017.jpg', 'ollie-lac-loi-phan-1-–-lost-ollie-season-1', 5, 'phimbo', '8', 2, 1, 0, 'Lost Ollie', NULL, 0, '2022-09-05 17:00:18', '2022-09-05 17:01:08', NULL, 0, 1, '4'),
(55, 3350, 'Liên Minh Siêu Thú DC – DC League of Super-Pets', '120 phút', '<p>Li&ecirc;n Minh Si&ecirc;u Th&uacute; DC - DC League of Super-Pets, DC League of Super-Pets 2022 Full Krypto the Super-Dog v&agrave; Superman l&agrave; những người bạn tốt nhất kh&ocirc;ng thể t&aacute;ch rời, c&oacute; chung si&ecirc;u năng lực v&agrave; c&ugrave;ng nhau chiến đấu chống tội phạm ở Metropolis. Tuy nhi&ecirc;n, Krypto phải l&agrave;m chủ sức mạnh của ch&iacute;nh m&igrave;nh cho một nhiệm vụ giải cứu khi Superman bị bắt c&oacute;c.</p>', '<p>82% đ&atilde; th&iacute;ch phim n&agrave;y</p>\r\n\r\n<p>Người d&ugrave;ng Google</p>\r\n\r\n<h3>M&ocirc; tả</h3>\r\n\r\n<p>Được dịch từ tiếng Anh-Incantation l&agrave; bộ phim kinh dị si&ecirc;u nhi&ecirc;n c&oacute; cảnh quay năm 2022 của Đ&agrave;i Loan do Kevin Ko l&agrave;m đạo diễn, người cũng đồng viết kịch bản với Chang Che-wei. Bộ phim được ph&aacute;t h&agrave;nh tại Đ&agrave;i Loan v&agrave;o ng&agrave;y 18 th&aacute;ng 3 năm 2022 v&agrave; trở th&agrave;nh bộ phim kinh dị Đ&agrave;i Loan c&oacute; doanh thu cao nhất.&nbsp;<a href=\"https://en.wikipedia.org/wiki/Incantation_(film)\">Wikipedia (tiếng Anh)</a></p>\r\n\r\n<p>Ng&agrave;y ph&aacute;t h&agrave;nh:&nbsp;18 th&aacute;ng 3, 2022 (<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=%C4%90%C3%A0i+Loan&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-LQz9U3MEszNtIyz0620k_LzMkFE1YlGamJJUWZyYk5Csn5pXklRZUK-WkK-UWZ6Zl5CkWpOamJxakKKYklqYtYuY5MOLwgU8EnPzFvByvjLnYmDgYAXpvqi2kAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECFkQAg\">Đ&agrave;i Loan</a>)</p>\r\n\r\n<p>Đạo diễn:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=Kevin+Ko&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-IBcY2qLEzyKpKLtcSyk6300zJzcsGEVUpmUWpySX7RIlYO79SyzDwF7_wdrIy72Jk4GACVRE1USgAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECFwQAg\">Kevin Ko</a></p>\r\n\r\n<p>Ph&ograve;ng v&eacute;:&nbsp;5,7&nbsp;triệu USD</p>\r\n\r\n<p>Nh&agrave; ph&acirc;n phối:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=Netflix&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-LUz9U3MDQvSovXUsgot9JPzs_JSU0uyczP00_LzMkttkrJLC4pykwqLckvWsTK7pdakpaTWbGDlXEXOxMHAwB750EzUAAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECF4QAg\">Netflix</a></p>\r\n\r\n<p>Nh&agrave; sản xuất điều h&agrave;nh:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=Kevin+Ko&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-IBcY2qLEzyKpKLtRSyk6300zJzcsGEVWpFanJpSWZZqkJBUX5KaXJq0SJWDu_Ussw8Be_8HayMu9iZOBgASEZ6z1QAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECFoQAg\">Kevin Ko</a></p>\r\n\r\n<p>Quay phim:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=incantation+chen+ko-chin&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU4Jwk4sLy3MqzOK1ZLKTrfTTMnNywYRVcmZeam5iSX56UWJBRuUiVonMvOTEvJLEksz8PIXkjNQ8hex83eSMzLwdrIy72Jk4GAA8_GvjYQAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECF8QAg\">Chen Ko-chin</a></p>', 'Liên Minh Siêu Thú DC , DC League of Super-Pets', 'DC', 'Jared Stern', 'Dwayne Johnson, Kevin Hart, Keanu Reeves, Vanessa Bayer, John Krasinski', '2022-07-29', 1, '62e6320e619757988.jpg', 'lien-minh-sieu-thu-dc-–-dc-league-of-super-pets', 5, 'phimle', '9', 2, 1, 0, 'DC League of Super-Pets', NULL, 0, '2022-09-05 17:06:03', '2022-10-20 12:22:41', NULL, 3, 0, '1'),
(56, 1, 'Quyền Năng Của Green Lantern – Green Lantern: Beware My Power', '120 phút', 'Quyền Năng Của Green Lantern - Green Lantern: Beware My Power, Green Lantern: Beware My Power 2022 Full\r\nJohn Stewart, lính bắn tỉa của Thủy quân lục chiến mới giải ngũ gần đây đang ở ngã rẽ trong cuộc đời mình, nơi chỉ phức tạp khi nhận được một chiếc nhẫn ngoài Trái đất, thứ trao cho anh sức mạnh của Green Lantern of Earth.', '<p>82% đ&atilde; th&iacute;ch phim n&agrave;y</p>\n\n<p>Người d&ugrave;ng Google</p>\n\n<h3>M&ocirc; tả</h3>\n\n<p>Được dịch từ tiếng Anh-Incantation l&agrave; bộ phim kinh dị si&ecirc;u nhi&ecirc;n c&oacute; cảnh quay năm 2022 của Đ&agrave;i Loan do Kevin Ko l&agrave;m đạo diễn, người cũng đồng viết kịch bản với Chang Che-wei. Bộ phim được ph&aacute;t h&agrave;nh tại Đ&agrave;i Loan v&agrave;o ng&agrave;y 18 th&aacute;ng 3 năm 2022 v&agrave; trở th&agrave;nh bộ phim kinh dị Đ&agrave;i Loan c&oacute; doanh thu cao nhất.&nbsp;<a href=\"https://en.wikipedia.org/wiki/Incantation_(film)\">Wikipedia (tiếng Anh)</a></p>\n\n<p>Ng&agrave;y ph&aacute;t h&agrave;nh:&nbsp;18 th&aacute;ng 3, 2022 (<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=%C4%90%C3%A0i+Loan&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-LQz9U3MEszNtIyz0620k_LzMkFE1YlGamJJUWZyYk5Csn5pXklRZUK-WkK-UWZ6Zl5CkWpOamJxakKKYklqYtYuY5MOLwgU8EnPzFvByvjLnYmDgYAXpvqi2kAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECFkQAg\">Đ&agrave;i Loan</a>)</p>\n\n<p>Đạo diễn:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=Kevin+Ko&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-IBcY2qLEzyKpKLtcSyk6300zJzcsGEVUpmUWpySX7RIlYO79SyzDwF7_wdrIy72Jk4GACVRE1USgAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECFwQAg\">Kevin Ko</a></p>\n\n<p>Ph&ograve;ng v&eacute;:&nbsp;5,7&nbsp;triệu USD</p>\n\n<p>Nh&agrave; ph&acirc;n phối:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=Netflix&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-LUz9U3MDQvSovXUsgot9JPzs_JSU0uyczP00_LzMkttkrJLC4pykwqLckvWsTK7pdakpaTWbGDlXEXOxMHAwB750EzUAAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECF4QAg\">Netflix</a></p>\n\n<p>Nh&agrave; sản xuất điều h&agrave;nh:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=Kevin+Ko&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-IBcY2qLEzyKpKLtRSyk6300zJzcsGEVWpFanJpSWZZqkJBUX5KaXJq0SJWDu_Ussw8Be_8HayMu9iZOBgASEZ6z1QAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECFoQAg\">Kevin Ko</a></p>\n\n<p>Quay phim:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=incantation+chen+ko-chin&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU4Jwk4sLy3MqzOK1ZLKTrfTTMnNywYRVcmZeam5iSX56UWJBRuUiVonMvOTEvJLEksz8PIXkjNQ8hex83eSMzLwdrIy72Jk4GAA8_GvjYQAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECF8QAg\">Chen Ko-chin</a></p>', 'Quyền Năng Của Green Lantern ,Green Lantern: Beware My Power', 'marvel', NULL, NULL, '2022-10-01', 1, '62d0e0bcf31037072.jpg', 'quyen-nang-cua-green-lantern-–-green-lantern-beware-my-power', 5, 'phimle', '9', 2, 1, 0, 'Green Lantern: Beware My Power', NULL, 0, '2022-09-05 17:09:07', '2022-09-05 17:09:07', NULL, 3, 0, 'HD'),
(57, 7767, 'Minions 2: Sự Trỗi Dậy Của Gru – Minions: The Rise of Gru', '120 phút', '<p>Minions 2: Sự Trỗi Dậy Của Gru - Minions: The Rise of Gru, Minions: The Rise of Gru 2022 Full C&acirc;u chuyện chưa kể về ước mơ trở th&agrave;nh si&ecirc;u nh&acirc;n vĩ đại nhất thế giới của một cậu b&eacute; mười hai tuổi.</p>', '<p>82% đ&atilde; th&iacute;ch phim n&agrave;y</p>\n\n<p>Người d&ugrave;ng Google</p>\n\n<h3>M&ocirc; tả</h3>\n\n<p>Được dịch từ tiếng Anh-Incantation l&agrave; bộ phim kinh dị si&ecirc;u nhi&ecirc;n c&oacute; cảnh quay năm 2022 của Đ&agrave;i Loan do Kevin Ko l&agrave;m đạo diễn, người cũng đồng viết kịch bản với Chang Che-wei. Bộ phim được ph&aacute;t h&agrave;nh tại Đ&agrave;i Loan v&agrave;o ng&agrave;y 18 th&aacute;ng 3 năm 2022 v&agrave; trở th&agrave;nh bộ phim kinh dị Đ&agrave;i Loan c&oacute; doanh thu cao nhất.&nbsp;<a href=\"https://en.wikipedia.org/wiki/Incantation_(film)\">Wikipedia (tiếng Anh)</a></p>\n\n<p>Ng&agrave;y ph&aacute;t h&agrave;nh:&nbsp;18 th&aacute;ng 3, 2022 (<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=%C4%90%C3%A0i+Loan&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-LQz9U3MEszNtIyz0620k_LzMkFE1YlGamJJUWZyYk5Csn5pXklRZUK-WkK-UWZ6Zl5CkWpOamJxakKKYklqYtYuY5MOLwgU8EnPzFvByvjLnYmDgYAXpvqi2kAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECFkQAg\">Đ&agrave;i Loan</a>)</p>\n\n<p>Đạo diễn:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=Kevin+Ko&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-IBcY2qLEzyKpKLtcSyk6300zJzcsGEVUpmUWpySX7RIlYO79SyzDwF7_wdrIy72Jk4GACVRE1USgAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECFwQAg\">Kevin Ko</a></p>\n\n<p>Ph&ograve;ng v&eacute;:&nbsp;5,7&nbsp;triệu USD</p>\n\n<p>Nh&agrave; ph&acirc;n phối:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=Netflix&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-LUz9U3MDQvSovXUsgot9JPzs_JSU0uyczP00_LzMkttkrJLC4pykwqLckvWsTK7pdakpaTWbGDlXEXOxMHAwB750EzUAAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECF4QAg\">Netflix</a></p>\n\n<p>Nh&agrave; sản xuất điều h&agrave;nh:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=Kevin+Ko&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-IBcY2qLEzyKpKLtRSyk6300zJzcsGEVWpFanJpSWZZqkJBUX5KaXJq0SJWDu_Ussw8Be_8HayMu9iZOBgASEZ6z1QAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECFoQAg\">Kevin Ko</a></p>\n\n<p>Quay phim:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=incantation+chen+ko-chin&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU4Jwk4sLy3MqzOK1ZLKTrfTTMnNywYRVcmZeam5iSX56UWJBRuUiVonMvOTEvJLEksz8PIXkjNQ8hex83eSMzLwdrIy72Jk4GAA8_GvjYQAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECF8QAg\">Chen Ko-chin</a></p>', 'Minions 2: Sự Trỗi Dậy Của Gru , Minions: The Rise of Gru', 'marvel', NULL, NULL, NULL, 1, '62c78bff81c688327.jpg', 'minions-2-su-troi-day-cua-gru-–-minions-the-rise-of-gru', 5, 'phimle', '9', 2, 1, 0, 'Minions: The Rise of Gru', NULL, 0, '2022-09-05 17:11:22', '2022-09-06 18:14:02', '2022', 3, 0, '1'),
(58, 3, 'Kiếm Đạo Đệ Nhất Tiên', '20 phút', '<p>Kiếm Đạo Đệ Nhất Ti&ecirc;n, 2022 Anime Ta l&agrave; vạn cổ nh&acirc;n gian một kiếm tu, tr&ecirc;n cả chư Thi&ecirc;n đệ nhất Ti&ecirc;n. Cường giả v&ocirc; địch Đại Hoang Cửu Ch&acirc;u, Ho&agrave;ng Cực Cảnh đỉnh phong Huyền Qu&acirc;n kiếm chủ T&ocirc; Huyền Qu&acirc;n v&igrave; muốn t&igrave;m kiếm cảnh giới cao hơn m&agrave; niết b&agrave;n tr&ugrave;ng tu. Mang theo Cửu Ngục Kiếm b&iacute; ẩn trốn qua lu&acirc;n hồi, trọng sinh đến Quảng Lăng th&agrave;nh, V&acirc;n H&agrave; quận, Đại Chu quốc, Thương Thanh Giới. Kiếp n&agrave;y mang theo một th&acirc;n phận kh&aacute;c l&agrave; người ở rể bất đắc dĩ T&ocirc; Dịch. T&ocirc; Dịch thi&ecirc;n ph&uacute; tuyệt lu&acirc;n, nhưng trong 1 đ&ecirc;m đột nhi&ecirc;n biến cố xảy ra. T&ocirc; Dịch tu vi mất hết, trở th&agrave;nh người thường. Ch&iacute;n tầng xiềng x&iacute;ch phong ấn của Cửu Ngục Kiếm vỡ ra một tầng. Nhưng biến cố n&agrave;y cũng l&agrave;m T&ocirc; Dịch nhớ lại kiếp trước của m&igrave;nh. Cảnh giới tu luyện: V&otilde; Đạo: &ndash; B&agrave;n Huyết (V&otilde; Đồ): Luyện B&igrave;, Luyện Nhục, Luyện C&acirc;n, Luyện Cốt. &ndash; Tụ Kh&iacute; (V&otilde; Sư): Th&ocirc;ng Khiếu (sơ kỳ), Khai Mạch (trung kỳ), H&oacute;a Cương (hậu kỳ). &ndash; Dưỡng L&ocirc; (T&ocirc;ng Sư): Kim (Phế cung), Mộc (Can cung), Thủy (Thận Cung), Hỏa (T&acirc;m cung), Thổ (Tỳ cung). &ndash; V&ocirc; Lậu (Đại T&ocirc;ng Sư): Đăng đường nhập thất, L&ocirc; hỏa thuần thanh, Đăng phong tạo cực. Nguy&ecirc;n Đạo (tu sĩ): &ndash; T&iacute;ch Cốc Cảnh (Lục Địa Thần Ti&ecirc;n) &ndash; Nguy&ecirc;n Phủ Cảnh &ndash; Tụ Tinh Cảnh Linh Đạo: &ndash; H&oacute;a Linh Cảnh &ndash; Linh Tướng Cảnh &ndash; Linh Lu&acirc;n Cảnh Huyền Đạo (Ho&agrave;ng giả, Ho&agrave;ng cảnh): &ndash; Huyền Chiếu Cảnh &ndash; Huyền U Cảnh &ndash; Huyền Hợp Cảnh (Ho&agrave;ng Cực Cảnh) Đăng Thi&ecirc;n Chi Lộ (Giới Vương): &ndash; Đồng Thọ &ndash; Quy Nhất &ndash; Động Vũ Vũ H&oacute;a Chi Lộ: &ndash; Vũ H&oacute;a Cảnh: Thần Anh (Dương Thần, H&oacute;a Ph&agrave;m), Hợp Đạo, H&oacute;a Ch&acirc;n. &ndash; Cử H&agrave; (Phi Thăng Cảnh) &ndash; H&oacute;a Kh&ocirc;ng Ti&ecirc;n Đạo Chi Lộ: &ndash; Vũ Cảnh (Ti&ecirc;n Thi&ecirc;n, Ti&ecirc;n Nh&acirc;n) &ndash; Hư Cảnh (Ch&acirc;n Ti&ecirc;n) &ndash; Th&aacute;nh Cảnh (Ti&ecirc;n Qu&acirc;n) &ndash; Diệu Cảnh (Ti&ecirc;n Vương) &ndash; Th&aacute;i Cảnh 3 cấp (Đế Qu&acirc;n) + Cấp thứ 1: Th&aacute;i Vũ + Cấp thứ 2: Th&aacute;i H&ograve;a + Cấp thứ 3: Th&aacute;i Huyền &ndash; Thần Cảnh (Thần vị c&oacute; hạn, phải tranh đoạt Thần vị). *Map: Thương Thanh Giới (1 trong 36 thế giới nhỏ xung quanh Huyền Ho&agrave;ng Tinh Giới, đoạn mất con đường th&agrave;nh Ho&agrave;ng, sức mạnh bị giới hạn trong Linh Đạo). Đại Hoang Cửu Ch&acirc;u (Huyền Ho&agrave;ng Tinh Giới bị vỡ n&aacute;t ph&aacute;p tắc, ph&acirc;n l&agrave;m U Minh Giới, Thương Huyền Giới,&hellip; đoạn mất Đăng Thi&ecirc;n Chi Lộ, sức mạnh bị giới hạn trong Huyền Đạo).</p>', '<p>82% đ&atilde; th&iacute;ch phim n&agrave;y</p>\n\n<p>Người d&ugrave;ng Google</p>\n\n<h3>M&ocirc; tả</h3>\n\n<p>Được dịch từ tiếng Anh-Incantation l&agrave; bộ phim kinh dị si&ecirc;u nhi&ecirc;n c&oacute; cảnh quay năm 2022 của Đ&agrave;i Loan do Kevin Ko l&agrave;m đạo diễn, người cũng đồng viết kịch bản với Chang Che-wei. Bộ phim được ph&aacute;t h&agrave;nh tại Đ&agrave;i Loan v&agrave;o ng&agrave;y 18 th&aacute;ng 3 năm 2022 v&agrave; trở th&agrave;nh bộ phim kinh dị Đ&agrave;i Loan c&oacute; doanh thu cao nhất.&nbsp;<a href=\"https://en.wikipedia.org/wiki/Incantation_(film)\">Wikipedia (tiếng Anh)</a></p>\n\n<p>Ng&agrave;y ph&aacute;t h&agrave;nh:&nbsp;18 th&aacute;ng 3, 2022 (<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=%C4%90%C3%A0i+Loan&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-LQz9U3MEszNtIyz0620k_LzMkFE1YlGamJJUWZyYk5Csn5pXklRZUK-WkK-UWZ6Zl5CkWpOamJxakKKYklqYtYuY5MOLwgU8EnPzFvByvjLnYmDgYAXpvqi2kAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECFkQAg\">Đ&agrave;i Loan</a>)</p>\n\n<p>Đạo diễn:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=Kevin+Ko&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-IBcY2qLEzyKpKLtcSyk6300zJzcsGEVUpmUWpySX7RIlYO79SyzDwF7_wdrIy72Jk4GACVRE1USgAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECFwQAg\">Kevin Ko</a></p>\n\n<p>Ph&ograve;ng v&eacute;:&nbsp;5,7&nbsp;triệu USD</p>\n\n<p>Nh&agrave; ph&acirc;n phối:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=Netflix&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-LUz9U3MDQvSovXUsgot9JPzs_JSU0uyczP00_LzMkttkrJLC4pykwqLckvWsTK7pdakpaTWbGDlXEXOxMHAwB750EzUAAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECF4QAg\">Netflix</a></p>\n\n<p>Nh&agrave; sản xuất điều h&agrave;nh:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=Kevin+Ko&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-IBcY2qLEzyKpKLtRSyk6300zJzcsGEVWpFanJpSWZZqkJBUX5KaXJq0SJWDu_Ussw8Be_8HayMu9iZOBgASEZ6z1QAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECFoQAg\">Kevin Ko</a></p>\n\n<p>Quay phim:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=incantation+chen+ko-chin&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU4Jwk4sLy3MqzOK1ZLKTrfTTMnNywYRVcmZeam5iSX56UWJBRuUiVonMvOTEvJLEksz8PIXkjNQ8hex83eSMzLwdrIy72Jk4GAA8_GvjYQAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECF8QAg\">Chen Ko-chin</a></p>', 'Kiếm Đạo Đệ Nhất Tiên', NULL, NULL, NULL, NULL, 1, '62b4087bdde135131.jpg', 'kiem-dao-de-nhat-tien', 5, 'phimbo', '9', 6, 0, 0, 'Kiếm Đạo Đệ Nhất Tiên', NULL, 0, '2022-09-05 17:14:38', '2022-10-15 15:32:00', '2020', 3, 0, '6'),
(59, 9969, 'Cú Rơi Tử Thần – Fall', '120 phút', '<p>C&uacute; Rơi Tử Thần - Fall, Fall 2022 Full Đ&ocirc;i bạn th&acirc;n Becky v&agrave; Hunter nhận ra m&igrave;nh đang ở tr&ecirc;n đỉnh của một th&aacute;p radio cao 2.000 foot.</p>', '<p>82% đ&atilde; th&iacute;ch phim n&agrave;y</p>\r\n\r\n<p>Người d&ugrave;ng Google</p>\r\n\r\n<h3>M&ocirc; tả</h3>\r\n\r\n<p>Được dịch từ tiếng Anh-Incantation l&agrave; bộ phim kinh dị si&ecirc;u nhi&ecirc;n c&oacute; cảnh quay năm 2022 của Đ&agrave;i Loan do Kevin Ko l&agrave;m đạo diễn, người cũng đồng viết kịch bản với Chang Che-wei. Bộ phim được ph&aacute;t h&agrave;nh tại Đ&agrave;i Loan v&agrave;o ng&agrave;y 18 th&aacute;ng 3 năm 2022 v&agrave; trở th&agrave;nh bộ phim kinh dị Đ&agrave;i Loan c&oacute; doanh thu cao nhất.&nbsp;<a href=\"https://en.wikipedia.org/wiki/Incantation_(film)\">Wikipedia (tiếng Anh)</a></p>\r\n\r\n<p>Ng&agrave;y ph&aacute;t h&agrave;nh:&nbsp;18 th&aacute;ng 3, 2022 (<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=%C4%90%C3%A0i+Loan&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-LQz9U3MEszNtIyz0620k_LzMkFE1YlGamJJUWZyYk5Csn5pXklRZUK-WkK-UWZ6Zl5CkWpOamJxakKKYklqYtYuY5MOLwgU8EnPzFvByvjLnYmDgYAXpvqi2kAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECFkQAg\">Đ&agrave;i Loan</a>)</p>\r\n\r\n<p>Đạo diễn:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=Kevin+Ko&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-IBcY2qLEzyKpKLtcSyk6300zJzcsGEVUpmUWpySX7RIlYO79SyzDwF7_wdrIy72Jk4GACVRE1USgAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECFwQAg\">Kevin Ko</a></p>\r\n\r\n<p>Ph&ograve;ng v&eacute;:&nbsp;5,7&nbsp;triệu USD</p>\r\n\r\n<p>Nh&agrave; ph&acirc;n phối:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=Netflix&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-LUz9U3MDQvSovXUsgot9JPzs_JSU0uyczP00_LzMkttkrJLC4pykwqLckvWsTK7pdakpaTWbGDlXEXOxMHAwB750EzUAAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECF4QAg\">Netflix</a></p>\r\n\r\n<p>Nh&agrave; sản xuất điều h&agrave;nh:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=Kevin+Ko&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-IBcY2qLEzyKpKLtRSyk6300zJzcsGEVWpFanJpSWZZqkJBUX5KaXJq0SJWDu_Ussw8Be_8HayMu9iZOBgASEZ6z1QAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECFoQAg\">Kevin Ko</a></p>\r\n\r\n<p>Quay phim:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=incantation+chen+ko-chin&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU4Jwk4sLy3MqzOK1ZLKTrfTTMnNywYRVcmZeam5iSX56UWJBRuUiVonMvOTEvJLEksz8PIXkjNQ8hex83eSMzLwdrIy72Jk4GAA8_GvjYQAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECF8QAg\">Chen Ko-chin</a></p>', 'Cú Rơi Tử Thần ,Fall', NULL, NULL, NULL, '2022-10-05', 1, '6315ab1919c537346.jpg', 'cu-roi-tu-than-–-fall', 13, 'phimle', '9', 2, 1, 0, 'Fall', NULL, 0, '2022-09-05 17:35:27', '2022-10-20 12:22:11', NULL, 3, 0, '1'),
(60, 7827, 'Sư Tử Đầm Lầy – Swamp Lion', '120 phút', '<p>Sư Tử Đầm Lầy - Swamp Lion, Swamp Lion 2022 Full Một người cha ở thị trấn bi&ecirc;n giới ph&iacute;a nam Texas bắt đầu bu&ocirc;n b&aacute;n ma t&uacute;y để trả tiền điều trị ung thư cho con trai m&igrave;nh.</p>', '<p>82% đ&atilde; th&iacute;ch phim n&agrave;y</p>\r\n\r\n<p>Người d&ugrave;ng Google</p>\r\n\r\n<h3>M&ocirc; tả</h3>\r\n\r\n<p>Được dịch từ tiếng Anh-Incantation l&agrave; bộ phim kinh dị si&ecirc;u nhi&ecirc;n c&oacute; cảnh quay năm 2022 của Đ&agrave;i Loan do Kevin Ko l&agrave;m đạo diễn, người cũng đồng viết kịch bản với Chang Che-wei. Bộ phim được ph&aacute;t h&agrave;nh tại Đ&agrave;i Loan v&agrave;o ng&agrave;y 18 th&aacute;ng 3 năm 2022 v&agrave; trở th&agrave;nh bộ phim kinh dị Đ&agrave;i Loan c&oacute; doanh thu cao nhất.&nbsp;<a href=\"https://en.wikipedia.org/wiki/Incantation_(film)\">Wikipedia (tiếng Anh)</a></p>\r\n\r\n<p>Ng&agrave;y ph&aacute;t h&agrave;nh:&nbsp;18 th&aacute;ng 3, 2022 (<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=%C4%90%C3%A0i+Loan&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-LQz9U3MEszNtIyz0620k_LzMkFE1YlGamJJUWZyYk5Csn5pXklRZUK-WkK-UWZ6Zl5CkWpOamJxakKKYklqYtYuY5MOLwgU8EnPzFvByvjLnYmDgYAXpvqi2kAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECFkQAg\">Đ&agrave;i Loan</a>)</p>\r\n\r\n<p>Đạo diễn:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=Kevin+Ko&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-IBcY2qLEzyKpKLtcSyk6300zJzcsGEVUpmUWpySX7RIlYO79SyzDwF7_wdrIy72Jk4GACVRE1USgAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECFwQAg\">Kevin Ko</a></p>\r\n\r\n<p>Ph&ograve;ng v&eacute;:&nbsp;5,7&nbsp;triệu USD</p>\r\n\r\n<p>Nh&agrave; ph&acirc;n phối:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=Netflix&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-LUz9U3MDQvSovXUsgot9JPzs_JSU0uyczP00_LzMkttkrJLC4pykwqLckvWsTK7pdakpaTWbGDlXEXOxMHAwB750EzUAAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECF4QAg\">Netflix</a></p>\r\n\r\n<p>Nh&agrave; sản xuất điều h&agrave;nh:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=Kevin+Ko&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-IBcY2qLEzyKpKLtRSyk6300zJzcsGEVWpFanJpSWZZqkJBUX5KaXJq0SJWDu_Ussw8Be_8HayMu9iZOBgASEZ6z1QAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECFoQAg\">Kevin Ko</a></p>\r\n\r\n<p>Quay phim:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=incantation+chen+ko-chin&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU4Jwk4sLy3MqzOK1ZLKTrfTTMnNywYRVcmZeam5iSX56UWJBRuUiVonMvOTEvJLEksz8PIXkjNQ8hex83eSMzLwdrIy72Jk4GAA8_GvjYQAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECF8QAg\">Chen Ko-chin</a></p>', 'Sư Tử Đầm Lầy , Swamp Lion', NULL, NULL, NULL, '2020-01-18', 1, '6312c957ba40c6060.jpg', 'su-tu-dam-lay-–-swamp-lion', 13, 'phimle', '9', 2, 1, 0, 'Swamp Lion', NULL, 0, '2022-09-05 17:37:27', '2022-10-20 12:21:54', NULL, 3, 0, '1'),
(61, 0, 'Cuộc Phiêu Lưu Của Pil – Pil’s Adventures', '120 phút', '<p>Cuộc Phi&ecirc;u Lưu Của Pil - Pil&#39;s Adventures, Pil&#39;s Adventures 2022 Full Một c&ocirc; g&aacute;i trẻ lanh lợi cải trang th&agrave;nh c&ocirc;ng ch&uacute;a để cứu vương quốc v&agrave; người thừa kế ngai v&agrave;ng.</p>', '<p>82% đ&atilde; th&iacute;ch phim n&agrave;y</p>\r\n\r\n<p>Người d&ugrave;ng Google</p>\r\n\r\n<h3>M&ocirc; tả</h3>\r\n\r\n<p>Được dịch từ tiếng Anh-Incantation l&agrave; bộ phim kinh dị si&ecirc;u nhi&ecirc;n c&oacute; cảnh quay năm 2022 của Đ&agrave;i Loan do Kevin Ko l&agrave;m đạo diễn, người cũng đồng viết kịch bản với Chang Che-wei. Bộ phim được ph&aacute;t h&agrave;nh tại Đ&agrave;i Loan v&agrave;o ng&agrave;y 18 th&aacute;ng 3 năm 2022 v&agrave; trở th&agrave;nh bộ phim kinh dị Đ&agrave;i Loan c&oacute; doanh thu cao nhất.&nbsp;<a href=\"https://en.wikipedia.org/wiki/Incantation_(film)\">Wikipedia (tiếng Anh)</a></p>\r\n\r\n<p>Ng&agrave;y ph&aacute;t h&agrave;nh:&nbsp;18 th&aacute;ng 3, 2022 (<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=%C4%90%C3%A0i+Loan&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-LQz9U3MEszNtIyz0620k_LzMkFE1YlGamJJUWZyYk5Csn5pXklRZUK-WkK-UWZ6Zl5CkWpOamJxakKKYklqYtYuY5MOLwgU8EnPzFvByvjLnYmDgYAXpvqi2kAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECFkQAg\">Đ&agrave;i Loan</a>)</p>\r\n\r\n<p>Đạo diễn:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=Kevin+Ko&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-IBcY2qLEzyKpKLtcSyk6300zJzcsGEVUpmUWpySX7RIlYO79SyzDwF7_wdrIy72Jk4GACVRE1USgAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECFwQAg\">Kevin Ko</a></p>\r\n\r\n<p>Ph&ograve;ng v&eacute;:&nbsp;5,7&nbsp;triệu USD</p>\r\n\r\n<p>Nh&agrave; ph&acirc;n phối:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=Netflix&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-LUz9U3MDQvSovXUsgot9JPzs_JSU0uyczP00_LzMkttkrJLC4pykwqLckvWsTK7pdakpaTWbGDlXEXOxMHAwB750EzUAAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECF4QAg\">Netflix</a></p>\r\n\r\n<p>Nh&agrave; sản xuất điều h&agrave;nh:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=Kevin+Ko&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-IBcY2qLEzyKpKLtRSyk6300zJzcsGEVWpFanJpSWZZqkJBUX5KaXJq0SJWDu_Ussw8Be_8HayMu9iZOBgASEZ6z1QAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECFoQAg\">Kevin Ko</a></p>\r\n\r\n<p>Quay phim:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=incantation+chen+ko-chin&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU4Jwk4sLy3MqzOK1ZLKTrfTTMnNywYRVcmZeam5iSX56UWJBRuUiVonMvOTEvJLEksz8PIXkjNQ8hex83eSMzLwdrIy72Jk4GAA8_GvjYQAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECF8QAg\">Chen Ko-chin</a></p>', 'Cuộc Phiêu Lưu Của Pil , Pil’s Adventures', NULL, NULL, NULL, NULL, 1, '6312c7f2e6dba (1)4562.jpg', 'cuoc-phieu-luu-cua-pil-–-pil’s-adventures', 13, 'phimle', '9', 2, 0, 0, 'Pil’s Adventures', NULL, 0, '2022-09-05 17:39:38', '2022-10-20 12:21:36', NULL, 3, 0, '1'),
(62, 8034, 'Ta Đã Đến – I Came By', '120 phút', '<p>Ta Đ&atilde; Đến - I Came By, I Came By 2022 Full Một nghệ sĩ graffiti nhắm v&agrave;o nh&agrave; của giới thượng lưu kh&aacute;m ph&aacute; ra một b&iacute; mật dị thường trong tầng hầm ngầm. Điều n&agrave;y l&agrave; nguồn cơn khiến người th&acirc;n của anh gặp nguy hiểm.</p>', '<p>82% đ&atilde; th&iacute;ch phim n&agrave;y</p>\r\n\r\n<p>Người d&ugrave;ng Google</p>\r\n\r\n<h3>M&ocirc; tả</h3>\r\n\r\n<p>Được dịch từ tiếng Anh-Incantation l&agrave; bộ phim kinh dị si&ecirc;u nhi&ecirc;n c&oacute; cảnh quay năm 2022 của Đ&agrave;i Loan do Kevin Ko l&agrave;m đạo diễn, người cũng đồng viết kịch bản với Chang Che-wei. Bộ phim được ph&aacute;t h&agrave;nh tại Đ&agrave;i Loan v&agrave;o ng&agrave;y 18 th&aacute;ng 3 năm 2022 v&agrave; trở th&agrave;nh bộ phim kinh dị Đ&agrave;i Loan c&oacute; doanh thu cao nhất.&nbsp;<a href=\"https://en.wikipedia.org/wiki/Incantation_(film)\">Wikipedia (tiếng Anh)</a></p>\r\n\r\n<p>Ng&agrave;y ph&aacute;t h&agrave;nh:&nbsp;18 th&aacute;ng 3, 2022 (<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=%C4%90%C3%A0i+Loan&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-LQz9U3MEszNtIyz0620k_LzMkFE1YlGamJJUWZyYk5Csn5pXklRZUK-WkK-UWZ6Zl5CkWpOamJxakKKYklqYtYuY5MOLwgU8EnPzFvByvjLnYmDgYAXpvqi2kAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECFkQAg\">Đ&agrave;i Loan</a>)</p>\r\n\r\n<p>Đạo diễn:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=Kevin+Ko&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-IBcY2qLEzyKpKLtcSyk6300zJzcsGEVUpmUWpySX7RIlYO79SyzDwF7_wdrIy72Jk4GACVRE1USgAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECFwQAg\">Kevin Ko</a></p>\r\n\r\n<p>Ph&ograve;ng v&eacute;:&nbsp;5,7&nbsp;triệu USD</p>\r\n\r\n<p>Nh&agrave; ph&acirc;n phối:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=Netflix&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-LUz9U3MDQvSovXUsgot9JPzs_JSU0uyczP00_LzMkttkrJLC4pykwqLckvWsTK7pdakpaTWbGDlXEXOxMHAwB750EzUAAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECF4QAg\">Netflix</a></p>\r\n\r\n<p>Nh&agrave; sản xuất điều h&agrave;nh:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=Kevin+Ko&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-IBcY2qLEzyKpKLtRSyk6300zJzcsGEVWpFanJpSWZZqkJBUX5KaXJq0SJWDu_Ussw8Be_8HayMu9iZOBgASEZ6z1QAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECFoQAg\">Kevin Ko</a></p>\r\n\r\n<p>Quay phim:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=incantation+chen+ko-chin&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU4Jwk4sLy3MqzOK1ZLKTrfTTMnNywYRVcmZeam5iSX56UWJBRuUiVonMvOTEvJLEksz8PIXkjNQ8hex83eSMzLwdrIy72Jk4GAA8_GvjYQAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECF8QAg\">Chen Ko-chin</a></p>', 'Ta Đã Đến ,I Came By', NULL, NULL, NULL, '2022-01-17', 1, '63102348022bb5479.jpg', 'ta-da-den-–-i-came-by', 5, 'phimle', '9', 1, 1, 0, 'I Came By', NULL, 0, '2022-09-05 17:42:12', '2022-10-20 12:21:15', NULL, 3, 0, '1'),
(63, 5896, 'Ba Chị Em – Little Women', '45 phút / 1 tập', 'Ba Chị Em - Little Women, Little Women 2022 HD\r\nChỉ biết nương tựa vào nhau và chẳng bao giờ có đủ tiền, ba chị em nọ vướng vào một âm mưu liên quan đến những người giàu có và quyền lực.', '<p>82% đ&atilde; th&iacute;ch phim n&agrave;y</p>\n\n<p>Người d&ugrave;ng Google</p>\n\n<h3>M&ocirc; tả</h3>\n\n<p>Được dịch từ tiếng Anh-Incantation l&agrave; bộ phim kinh dị si&ecirc;u nhi&ecirc;n c&oacute; cảnh quay năm 2022 của Đ&agrave;i Loan do Kevin Ko l&agrave;m đạo diễn, người cũng đồng viết kịch bản với Chang Che-wei. Bộ phim được ph&aacute;t h&agrave;nh tại Đ&agrave;i Loan v&agrave;o ng&agrave;y 18 th&aacute;ng 3 năm 2022 v&agrave; trở th&agrave;nh bộ phim kinh dị Đ&agrave;i Loan c&oacute; doanh thu cao nhất.&nbsp;<a href=\"https://en.wikipedia.org/wiki/Incantation_(film)\">Wikipedia (tiếng Anh)</a></p>\n\n<p>Ng&agrave;y ph&aacute;t h&agrave;nh:&nbsp;18 th&aacute;ng 3, 2022 (<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=%C4%90%C3%A0i+Loan&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-LQz9U3MEszNtIyz0620k_LzMkFE1YlGamJJUWZyYk5Csn5pXklRZUK-WkK-UWZ6Zl5CkWpOamJxakKKYklqYtYuY5MOLwgU8EnPzFvByvjLnYmDgYAXpvqi2kAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECFkQAg\">Đ&agrave;i Loan</a>)</p>\n\n<p>Đạo diễn:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=Kevin+Ko&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-IBcY2qLEzyKpKLtcSyk6300zJzcsGEVUpmUWpySX7RIlYO79SyzDwF7_wdrIy72Jk4GACVRE1USgAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECFwQAg\">Kevin Ko</a></p>\n\n<p>Ph&ograve;ng v&eacute;:&nbsp;5,7&nbsp;triệu USD</p>\n\n<p>Nh&agrave; ph&acirc;n phối:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=Netflix&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-LUz9U3MDQvSovXUsgot9JPzs_JSU0uyczP00_LzMkttkrJLC4pykwqLckvWsTK7pdakpaTWbGDlXEXOxMHAwB750EzUAAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECF4QAg\">Netflix</a></p>\n\n<p>Nh&agrave; sản xuất điều h&agrave;nh:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=Kevin+Ko&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-IBcY2qLEzyKpKLtRSyk6300zJzcsGEVWpFanJpSWZZqkJBUX5KaXJq0SJWDu_Ussw8Be_8HayMu9iZOBgASEZ6z1QAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECFoQAg\">Kevin Ko</a></p>\n\n<p>Quay phim:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=incantation+chen+ko-chin&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU4Jwk4sLy3MqzOK1ZLKTrfTTMnNywYRVcmZeam5iSX56UWJBRuUiVonMvOTEvJLEksz8PIXkjNQ8hex83eSMzLwdrIy72Jk4GAA8_GvjYQAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECF8QAg\">Chen Ko-chin</a></p>', 'Ba Chị Em , Little Women', NULL, NULL, NULL, NULL, 1, '631581fedbee43478.jpg', 'ba-chi-em-–-little-women', 16, 'phimbo', '1', 5, 1, 0, 'Little Women', NULL, 0, '2022-09-06 16:44:34', '2022-09-06 16:44:34', NULL, 3, 0, '5'),
(64, 5463, 'Cổ Phiếu Bị Mắc Kẹt – Stock Struck', '45 phút / 1 tập', 'Cổ Phiếu Bị Mắc Kẹt - Stock Struck, Stock Struck 2022 HD\r\nNăm người đầu tư vào thị trường chứng khoán tham gia vào một cuộc họp chứng khoán bí ẩn. Ở đó, họ tìm hiểu về cuộc sống, tình yêu và tình bạn thông qua việc đầu tư vào cổ phiếu. Yoo Mi Seo chuẩn bị kết hôn rất sớm. Cô ấy mới tham gia đầu tư và cho đến nay chỉ thua lỗ. Choi Sun Woo, 33 tuổi, là một người đàn ông bí ẩn. Khi ca làm việc tại một cửa hàng tiện lợi kết thúc, anh leo lên một chiếc ô tô nhập khẩu đắt tiền. Kang San chỉ tập trung vào hạnh phúc của mình, không quan tâm đến sự nghiệp hay tìm kiếm thành công. Anh ấy kiếm sống bằng công việc bán thời gian. Jung Haeng Ja sở hữu và điều hành một nhà hàng chân lợn. Sau khi nghỉ việc, Kim Jin Bae bắt đầu đầu tư vào thị trường chứng khoán.', '<p>82% đ&atilde; th&iacute;ch phim n&agrave;y</p>\n\n<p>Người d&ugrave;ng Google</p>\n\n<h3>M&ocirc; tả</h3>\n\n<p>Được dịch từ tiếng Anh-Incantation l&agrave; bộ phim kinh dị si&ecirc;u nhi&ecirc;n c&oacute; cảnh quay năm 2022 của Đ&agrave;i Loan do Kevin Ko l&agrave;m đạo diễn, người cũng đồng viết kịch bản với Chang Che-wei. Bộ phim được ph&aacute;t h&agrave;nh tại Đ&agrave;i Loan v&agrave;o ng&agrave;y 18 th&aacute;ng 3 năm 2022 v&agrave; trở th&agrave;nh bộ phim kinh dị Đ&agrave;i Loan c&oacute; doanh thu cao nhất.&nbsp;<a href=\"https://en.wikipedia.org/wiki/Incantation_(film)\">Wikipedia (tiếng Anh)</a></p>\n\n<p>Ng&agrave;y ph&aacute;t h&agrave;nh:&nbsp;18 th&aacute;ng 3, 2022 (<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=%C4%90%C3%A0i+Loan&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-LQz9U3MEszNtIyz0620k_LzMkFE1YlGamJJUWZyYk5Csn5pXklRZUK-WkK-UWZ6Zl5CkWpOamJxakKKYklqYtYuY5MOLwgU8EnPzFvByvjLnYmDgYAXpvqi2kAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECFkQAg\">Đ&agrave;i Loan</a>)</p>\n\n<p>Đạo diễn:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=Kevin+Ko&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-IBcY2qLEzyKpKLtcSyk6300zJzcsGEVUpmUWpySX7RIlYO79SyzDwF7_wdrIy72Jk4GACVRE1USgAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECFwQAg\">Kevin Ko</a></p>\n\n<p>Ph&ograve;ng v&eacute;:&nbsp;5,7&nbsp;triệu USD</p>\n\n<p>Nh&agrave; ph&acirc;n phối:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=Netflix&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-LUz9U3MDQvSovXUsgot9JPzs_JSU0uyczP00_LzMkttkrJLC4pykwqLckvWsTK7pdakpaTWbGDlXEXOxMHAwB750EzUAAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECF4QAg\">Netflix</a></p>\n\n<p>Nh&agrave; sản xuất điều h&agrave;nh:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=Kevin+Ko&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-IBcY2qLEzyKpKLtRSyk6300zJzcsGEVWpFanJpSWZZqkJBUX5KaXJq0SJWDu_Ussw8Be_8HayMu9iZOBgASEZ6z1QAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECFoQAg\">Kevin Ko</a></p>\n\n<p>Quay phim:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=incantation+chen+ko-chin&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU4Jwk4sLy3MqzOK1ZLKTrfTTMnNywYRVcmZeam5iSX56UWJBRuUiVonMvOTEvJLEksz8PIXkjNQ8hex83eSMzLwdrIy72Jk4GAA8_GvjYQAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECF8QAg\">Chen Ko-chin</a></p>', 'Cổ Phiếu Bị Mắc Kẹt ,Stock Struck', NULL, NULL, NULL, NULL, 1, '62f99c578b2ad7827.jpg', 'co-phieu-bi-mac-ket-–-stock-struck', 16, 'phimbo', '8', 5, 1, 0, 'Stock Struck', NULL, 0, '2022-09-06 16:54:22', '2022-09-06 16:54:22', '2022', 3, 0, '8');
INSERT INTO `movies` (`id`, `port_view`, `title`, `thoiluong`, `description`, `danhgia`, `tags`, `filmstudio`, `director`, `movieactor`, `releasedate`, `status`, `image`, `slug`, `category_id`, `thuocphim`, `genre_id`, `country_id`, `phim_hot`, `resolution`, `name_eng`, `trailer`, `phude`, `ngaytao`, `ngaycapnhat`, `year`, `topview`, `season`, `sotap`) VALUES
(65, 8178, 'Webtoon Đời Tôi – Today’s Webtoon', '45 phút / 1 tập', '<h2>Webtoon Đời T&ocirc;i - Today&#39;s Webtoon, Today&#39;s Webtoon 2022 HD</h2>\r\n\r\n<p dir=\"ltr\">C&acirc;u chuyện kể về một người phụ nữ đấu tranh với đồng nghiệp của m&igrave;nh để trưởng th&agrave;nh trở th&agrave;nh một bi&ecirc;n tập vi&ecirc;n webtoon thực thụ sau khi gia nhập bộ phận bi&ecirc;n tập webtoon. Tr&ecirc;n Ma Eum, người v&agrave;o ban bi&ecirc;n tập webtoon sau khi đ&aacute;nh bại mọi tỷ lệ cược. C&ocirc; ấy c&oacute; một sự th&egrave;m ăn lớn, khứu gi&aacute;c tuyệt vời v&agrave; đ&ocirc;i tai m&agrave;u s&uacute;p lơ điển h&igrave;nh của một v&otilde; sĩ với tư c&aacute;ch l&agrave; cựu th&agrave;nh vi&ecirc;n thường trực của đội tuyển judo quốc gia. V&agrave;o ng&agrave;y Ma Eum phải từ bỏ sự nghiệp thể thao của m&igrave;nh khi một tai nạn đ&aacute;ng tiếc trong một trận đấu l&agrave;m r&aacute;ch d&acirc;y chằng mắt c&aacute; ch&acirc;n của c&ocirc;, nhưng c&ocirc; bắt đầu mơ lại khi t&igrave;nh cờ giao đồ ăn cho bộ phận bi&ecirc;n tập webtoon.</p>', '<p>82% đ&atilde; th&iacute;ch phim n&agrave;y</p>\n\n<p>Người d&ugrave;ng Google</p>\n\n<h3>M&ocirc; tả</h3>\n\n<p>Được dịch từ tiếng Anh-Incantation l&agrave; bộ phim kinh dị si&ecirc;u nhi&ecirc;n c&oacute; cảnh quay năm 2022 của Đ&agrave;i Loan do Kevin Ko l&agrave;m đạo diễn, người cũng đồng viết kịch bản với Chang Che-wei. Bộ phim được ph&aacute;t h&agrave;nh tại Đ&agrave;i Loan v&agrave;o ng&agrave;y 18 th&aacute;ng 3 năm 2022 v&agrave; trở th&agrave;nh bộ phim kinh dị Đ&agrave;i Loan c&oacute; doanh thu cao nhất.&nbsp;<a href=\"https://en.wikipedia.org/wiki/Incantation_(film)\">Wikipedia (tiếng Anh)</a></p>\n\n<p>Ng&agrave;y ph&aacute;t h&agrave;nh:&nbsp;18 th&aacute;ng 3, 2022 (<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=%C4%90%C3%A0i+Loan&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-LQz9U3MEszNtIyz0620k_LzMkFE1YlGamJJUWZyYk5Csn5pXklRZUK-WkK-UWZ6Zl5CkWpOamJxakKKYklqYtYuY5MOLwgU8EnPzFvByvjLnYmDgYAXpvqi2kAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECFkQAg\">Đ&agrave;i Loan</a>)</p>\n\n<p>Đạo diễn:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=Kevin+Ko&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-IBcY2qLEzyKpKLtcSyk6300zJzcsGEVUpmUWpySX7RIlYO79SyzDwF7_wdrIy72Jk4GACVRE1USgAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECFwQAg\">Kevin Ko</a></p>\n\n<p>Ph&ograve;ng v&eacute;:&nbsp;5,7&nbsp;triệu USD</p>\n\n<p>Nh&agrave; ph&acirc;n phối:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=Netflix&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-LUz9U3MDQvSovXUsgot9JPzs_JSU0uyczP00_LzMkttkrJLC4pykwqLckvWsTK7pdakpaTWbGDlXEXOxMHAwB750EzUAAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECF4QAg\">Netflix</a></p>\n\n<p>Nh&agrave; sản xuất điều h&agrave;nh:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=Kevin+Ko&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-IBcY2qLEzyKpKLtRSyk6300zJzcsGEVWpFanJpSWZZqkJBUX5KaXJq0SJWDu_Ussw8Be_8HayMu9iZOBgASEZ6z1QAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECFoQAg\">Kevin Ko</a></p>\n\n<p>Quay phim:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=incantation+chen+ko-chin&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU4Jwk4sLy3MqzOK1ZLKTrfTTMnNywYRVcmZeam5iSX56UWJBRuUiVonMvOTEvJLEksz8PIXkjNQ8hex83eSMzLwdrIy72Jk4GAA8_GvjYQAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECF8QAg\">Chen Ko-chin</a></p>', 'Webtoon Đời Tôi ,Today’s Webtoon', NULL, NULL, NULL, '2021-01-02', 1, '62e62fbeab5845101.jpg', 'webtoon-doi-toi-–-today’s-webtoon', 16, 'phimbo', '8', 5, 1, 0, 'Webtoon Đời Tôi – Today’s Webtoon', NULL, 0, '2022-09-06 17:28:12', '2022-09-06 17:28:12', '2022', 1, 0, '8'),
(66, 1968, 'Gia Tộc Rồng (Phần 1) – House of the Dragon (Season 1)', '45 phút / 1 tập', '<h2><strong>Gia Tộc Rồng (Phần 1) - House of the Dragon (Season 1), House of the Dragon (Season 1) 2022 Season 1</strong></h2>\n\n<p>*Tập mới được cập nhật v&agrave;o thứ 2 h&agrave;ng tuần, mời c&aacute;c bạn theo d&otilde;i đ&oacute;n xem*</p>\n\n<p>Kịch bản lấy bối cảnh 200 năm trước c&aacute;c sự kiện của Game of Thrones, kể về c&acirc;u chuyện của d&ograve;ng họ Targaryen. Họ chinh phục v&agrave; thống trị lục địa Westeros trong thời gian d&agrave;i nhờ khả năng điều khiển lo&agrave;i rồng. Tuy nhi&ecirc;n, cuộc nội chiến đẫm m&aacute;u k&eacute;o d&agrave;i để tranh gi&agrave;nh Ng&ocirc;i B&aacute;u Sắt đ&atilde; khiến gia tộc n&agrave;y ng&agrave;y c&agrave;ng suy yếu v&agrave; đi đến bờ vực của sự diệt vong.</p>', '<p>82% đ&atilde; th&iacute;ch phim n&agrave;y</p>\n\n<p>Người d&ugrave;ng Google</p>\n\n<h3>M&ocirc; tả</h3>\n\n<p>Được dịch từ tiếng Anh-Incantation l&agrave; bộ phim kinh dị si&ecirc;u nhi&ecirc;n c&oacute; cảnh quay năm 2022 của Đ&agrave;i Loan do Kevin Ko l&agrave;m đạo diễn, người cũng đồng viết kịch bản với Chang Che-wei. Bộ phim được ph&aacute;t h&agrave;nh tại Đ&agrave;i Loan v&agrave;o ng&agrave;y 18 th&aacute;ng 3 năm 2022 v&agrave; trở th&agrave;nh bộ phim kinh dị Đ&agrave;i Loan c&oacute; doanh thu cao nhất.&nbsp;<a href=\"https://en.wikipedia.org/wiki/Incantation_(film)\">Wikipedia (tiếng Anh)</a></p>\n\n<p>Ng&agrave;y ph&aacute;t h&agrave;nh:&nbsp;18 th&aacute;ng 3, 2022 (<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=%C4%90%C3%A0i+Loan&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-LQz9U3MEszNtIyz0620k_LzMkFE1YlGamJJUWZyYk5Csn5pXklRZUK-WkK-UWZ6Zl5CkWpOamJxakKKYklqYtYuY5MOLwgU8EnPzFvByvjLnYmDgYAXpvqi2kAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECFkQAg\">Đ&agrave;i Loan</a>)</p>\n\n<p>Đạo diễn:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=Kevin+Ko&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-IBcY2qLEzyKpKLtcSyk6300zJzcsGEVUpmUWpySX7RIlYO79SyzDwF7_wdrIy72Jk4GACVRE1USgAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECFwQAg\">Kevin Ko</a></p>\n\n<p>Ph&ograve;ng v&eacute;:&nbsp;5,7&nbsp;triệu USD</p>\n\n<p>Nh&agrave; ph&acirc;n phối:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=Netflix&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-LUz9U3MDQvSovXUsgot9JPzs_JSU0uyczP00_LzMkttkrJLC4pykwqLckvWsTK7pdakpaTWbGDlXEXOxMHAwB750EzUAAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECF4QAg\">Netflix</a></p>\n\n<p>Nh&agrave; sản xuất điều h&agrave;nh:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=Kevin+Ko&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-IBcY2qLEzyKpKLtRSyk6300zJzcsGEVWpFanJpSWZZqkJBUX5KaXJq0SJWDu_Ussw8Be_8HayMu9iZOBgASEZ6z1QAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECFoQAg\">Kevin Ko</a></p>\n\n<p>Quay phim:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=incantation+chen+ko-chin&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU4Jwk4sLy3MqzOK1ZLKTrfTTMnNywYRVcmZeam5iSX56UWJBRuUiVonMvOTEvJLEksz8PIXkjNQ8hex83eSMzLwdrIy72Jk4GAA8_GvjYQAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECF8QAg\">Chen Ko-chin</a></p>', 'Gia Tộc Rồng (Phần 1) , House of the Dragon (Season 1)', NULL, NULL, NULL, NULL, 1, '6302e7507dac12813.jpg', 'gia-toc-rong-phan-1-–-house-of-the-dragon-season-1', 14, 'phimbo', '5', 2, 1, 0, 'House of the Dragon (Season 1)', NULL, 0, '2022-09-06 17:29:42', '2022-09-06 17:29:42', '2022', 1, 1, '3'),
(67, 5900, 'Détox (Phần 1) – Détox (Season 1)', '45 phút / 1 tập', '<h2><strong>D&eacute;tox (Phần 1) - D&eacute;tox (Season 1), D&eacute;tox (Season 1) 2022 Full (6/6) Season 1</strong></h2>\r\n\r\n<p>Nhận ra cả hai đều sử dụng Internet kh&ocirc;ng l&agrave;nh mạnh, đ&ocirc;i bạn c&ugrave;ng ph&ograve;ng L&eacute;a v&agrave; Manon quyết định l&agrave;m điều kh&ocirc;ng tưởng: kh&ocirc;ng d&ugrave;ng mọi loại thiết bị trong 30 ng&agrave;y.</p>', '<p>82% đ&atilde; th&iacute;ch phim n&agrave;y</p>\n\n<p>Người d&ugrave;ng Google</p>\n\n<h3>M&ocirc; tả</h3>\n\n<p>Được dịch từ tiếng Anh-Incantation l&agrave; bộ phim kinh dị si&ecirc;u nhi&ecirc;n c&oacute; cảnh quay năm 2022 của Đ&agrave;i Loan do Kevin Ko l&agrave;m đạo diễn, người cũng đồng viết kịch bản với Chang Che-wei. Bộ phim được ph&aacute;t h&agrave;nh tại Đ&agrave;i Loan v&agrave;o ng&agrave;y 18 th&aacute;ng 3 năm 2022 v&agrave; trở th&agrave;nh bộ phim kinh dị Đ&agrave;i Loan c&oacute; doanh thu cao nhất.&nbsp;<a href=\"https://en.wikipedia.org/wiki/Incantation_(film)\">Wikipedia (tiếng Anh)</a></p>\n\n<p>Ng&agrave;y ph&aacute;t h&agrave;nh:&nbsp;18 th&aacute;ng 3, 2022 (<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=%C4%90%C3%A0i+Loan&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-LQz9U3MEszNtIyz0620k_LzMkFE1YlGamJJUWZyYk5Csn5pXklRZUK-WkK-UWZ6Zl5CkWpOamJxakKKYklqYtYuY5MOLwgU8EnPzFvByvjLnYmDgYAXpvqi2kAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECFkQAg\">Đ&agrave;i Loan</a>)</p>\n\n<p>Đạo diễn:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=Kevin+Ko&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-IBcY2qLEzyKpKLtcSyk6300zJzcsGEVUpmUWpySX7RIlYO79SyzDwF7_wdrIy72Jk4GACVRE1USgAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECFwQAg\">Kevin Ko</a></p>\n\n<p>Ph&ograve;ng v&eacute;:&nbsp;5,7&nbsp;triệu USD</p>\n\n<p>Nh&agrave; ph&acirc;n phối:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=Netflix&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-LUz9U3MDQvSovXUsgot9JPzs_JSU0uyczP00_LzMkttkrJLC4pykwqLckvWsTK7pdakpaTWbGDlXEXOxMHAwB750EzUAAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECF4QAg\">Netflix</a></p>\n\n<p>Nh&agrave; sản xuất điều h&agrave;nh:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=Kevin+Ko&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-IBcY2qLEzyKpKLtRSyk6300zJzcsGEVWpFanJpSWZZqkJBUX5KaXJq0SJWDu_Ussw8Be_8HayMu9iZOBgASEZ6z1QAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECFoQAg\">Kevin Ko</a></p>\n\n<p>Quay phim:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=incantation+chen+ko-chin&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU4Jwk4sLy3MqzOK1ZLKTrfTTMnNywYRVcmZeam5iSX56UWJBRuUiVonMvOTEvJLEksz8PIXkjNQ8hex83eSMzLwdrIy72Jk4GAA8_GvjYQAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECF8QAg\">Chen Ko-chin</a></p>', 'Détox (Phần 1) , Détox (Season 1)', NULL, NULL, NULL, NULL, 1, '6315aae597231947.jpg', 'detox-phan-1-–-detox-season-1', 14, 'phimbo', '8', 2, 1, 0, 'Détox (Phần 1) – Détox (Season 1)', NULL, 0, '2022-09-06 17:31:08', '2022-09-06 18:11:54', '2022', 1, 1, '6'),
(68, 1224, 'Phi Công Siêu Đẳng Maverick – Top Gun: Maverick', '120 phút', '<h2>Phi C&ocirc;ng Si&ecirc;u Đẳng Maverick - Top Gun: Maverick, Top Gun: Maverick 2010</h2>\r\n\r\n<p>Joseph Kosinski kh&ocirc;ng chỉ v&ocirc; c&ugrave;ng xuất sắc với c&ocirc;ng việc ch&iacute;nh l&agrave; đồ họa v&agrave; tạo h&igrave;nh ảnh tr&ecirc;n m&aacute;y t&iacute;nh, &ocirc;ng c&ograve;n l&agrave; một đạo diễn đầy tiềm năng của điện ảnh &Acirc;u Mỹ. Tuy c&oacute; nhiều năm trong nghề nhưng đến nay &ocirc;ng mới chỉ đạo vẻn vẹn 4 thước phim điện ảnh nhưng n&oacute; đều để lại ấn tượng v&agrave; nhận được nhiều lời khen từ kh&aacute;n giả. Năm 2018, Joseph bắt tay v&agrave;o dự &aacute;n đ&igrave;nh đ&aacute;m Top Gun 2: Maverick, phim dự kiến sẽ được c&ocirc;ng chiếu tr&ecirc;n to&agrave;n thế giới v&agrave;o th&aacute;ng 6 năm 2020, được kỳ vọng sẽ l&agrave; b&agrave;n đạp đưa &ocirc;ng l&ecirc;n tầm đạo diễn h&agrave;ng đầu. Phim c&oacute; tựa đề Việt l&agrave; Phi C&ocirc;ng Si&ecirc;u Đẳng Maverick, thuộc thể loại h&agrave;nh động giật g&acirc;n, với sự tham gia của d&agrave;n diễn vi&ecirc;n rất chất lượng gồm nhiều gương mặt s&aacute;ng gi&aacute; như: Tom Cruise, Val Kilmer, Miles Teller, Jennifer Connelly, Glen Powell, Manny Jacinto, Charles Paell, Jay Ellis,&hellip;Trong đ&oacute;, đ&aacute;ng ch&uacute; &yacute; nhất chắc chắn l&agrave; sự trở lại của nam t&agrave;i tử Tom Cruise, phần đầu ch&iacute;nh l&agrave; một trong những thước phim đưa t&ecirc;n tuổi của anh l&ecirc;n cao v&agrave; phần 2 n&agrave;y giống như một sự chi &acirc;n của anh đến với nh&agrave; sản xuất. Tiếp nối c&acirc;u chuyện của phần 1 sau 34 năm, phần phim n&agrave;y được dựa tr&ecirc;n c&aacute;c sự kiện của bản gốc, xoay quanh cậu con trai t&agrave;i giỏi của Goose, anh ch&agrave;ng Bradley. Tuổi trẻ, nhiệt huyết v&agrave; kh&aacute;t khao muốn khẳng định m&igrave;nh, đ&oacute; ch&iacute;nh l&agrave; tiền đề để cậu c&oacute; thể trở th&agrave;nh một phi c&ocirc;ng vĩ đại giống như người cha. Dưới sự dẫn dắt của thuyền trưởng huyền thoại Maverick, Bradley tiến bộ vượt bậc v&agrave; bắt đầu những thử th&aacute;ch mới kh&oacute; khăn v&agrave; nguy hiểm hơn.</p>', '<p>82% đ&atilde; th&iacute;ch phim n&agrave;y</p>\r\n\r\n<p>Người d&ugrave;ng Google</p>\r\n\r\n<h3>M&ocirc; tả</h3>\r\n\r\n<p>Được dịch từ tiếng Anh-Incantation l&agrave; bộ phim kinh dị si&ecirc;u nhi&ecirc;n c&oacute; cảnh quay năm 2022 của Đ&agrave;i Loan do Kevin Ko l&agrave;m đạo diễn, người cũng đồng viết kịch bản với Chang Che-wei. Bộ phim được ph&aacute;t h&agrave;nh tại Đ&agrave;i Loan v&agrave;o ng&agrave;y 18 th&aacute;ng 3 năm 2022 v&agrave; trở th&agrave;nh bộ phim kinh dị Đ&agrave;i Loan c&oacute; doanh thu cao nhất.&nbsp;<a href=\"https://en.wikipedia.org/wiki/Incantation_(film)\">Wikipedia (tiếng Anh)</a></p>\r\n\r\n<p>Ng&agrave;y ph&aacute;t h&agrave;nh:&nbsp;18 th&aacute;ng 3, 2022 (<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=%C4%90%C3%A0i+Loan&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-LQz9U3MEszNtIyz0620k_LzMkFE1YlGamJJUWZyYk5Csn5pXklRZUK-WkK-UWZ6Zl5CkWpOamJxakKKYklqYtYuY5MOLwgU8EnPzFvByvjLnYmDgYAXpvqi2kAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECFkQAg\">Đ&agrave;i Loan</a>)</p>\r\n\r\n<p>Đạo diễn:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=Kevin+Ko&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-IBcY2qLEzyKpKLtcSyk6300zJzcsGEVUpmUWpySX7RIlYO79SyzDwF7_wdrIy72Jk4GACVRE1USgAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECFwQAg\">Kevin Ko</a></p>\r\n\r\n<p>Ph&ograve;ng v&eacute;:&nbsp;5,7&nbsp;triệu USD</p>\r\n\r\n<p>Nh&agrave; ph&acirc;n phối:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=Netflix&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-LUz9U3MDQvSovXUsgot9JPzs_JSU0uyczP00_LzMkttkrJLC4pykwqLckvWsTK7pdakpaTWbGDlXEXOxMHAwB750EzUAAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECF4QAg\">Netflix</a></p>\r\n\r\n<p>Nh&agrave; sản xuất điều h&agrave;nh:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=Kevin+Ko&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-IBcY2qLEzyKpKLtRSyk6300zJzcsGEVWpFanJpSWZZqkJBUX5KaXJq0SJWDu_Ussw8Be_8HayMu9iZOBgASEZ6z1QAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECFoQAg\">Kevin Ko</a></p>\r\n\r\n<p>Quay phim:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=incantation+chen+ko-chin&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU4Jwk4sLy3MqzOK1ZLKTrfTTMnNywYRVcmZeam5iSX56UWJBRuUiVonMvOTEvJLEksz8PIXkjNQ8hex83eSMzLwdrIy72Jk4GAA8_GvjYQAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECF8QAg\">Chen Ko-chin</a></p>', 'Phi Công Siêu Đẳng Maverick , Top Gun: Maverick', 'Jerry Bruckheimer, Tom Cruise, David Ellison', 'Joseph Kosinski', 'Tom Cruise, Val Kilmer, Miles Teller, Ed Harris, Jennifer Connelly', '2022-05-27', 1, 'phi-cong-sieu-dang-maverick-top-gun-maverick-56112-250x3509432.jpg', 'phi-cong-sieu-dang-maverick-–-top-gun-maverick', 14, 'phimbo', '9', 2, 0, 5, 'Top Gun: Maverick', NULL, 0, '2022-09-06 18:08:51', '2022-10-20 09:39:59', '2022', 2, 1, '1'),
(69, 8292, 'Hành Động Vượt Ngục 2 – Breakout Brothers 2', '120 phút', '<h2>H&agrave;nh Động Vượt Ngục 2 - Breakout Brothers 2, Breakout Brothers 2 2021 Full</h2>\r\n\r\n<p dir=\"ltr\">Ho Chun, một doanh nh&acirc;n trẻ, bị tống v&agrave;o t&ugrave;. Bằng c&aacute;ch thực hiện triết l&yacute; của m&igrave;nh trong thế giới kinh doanh rằng tiền c&oacute; thể giải quyết mọi vấn đề, Ho Chun cung cấp cho Big Roller, Kin-Tin, Scar v&agrave; Ho-Ching một số tiền đ&aacute;ng kể để hỗ trợ anh ta vượt ngục.</p>', '<p>82% đ&atilde; th&iacute;ch phim n&agrave;y</p>\n\n<p>Người d&ugrave;ng Google</p>\n\n<h3>M&ocirc; tả</h3>\n\n<p>Được dịch từ tiếng Anh-Incantation l&agrave; bộ phim kinh dị si&ecirc;u nhi&ecirc;n c&oacute; cảnh quay năm 2022 của Đ&agrave;i Loan do Kevin Ko l&agrave;m đạo diễn, người cũng đồng viết kịch bản với Chang Che-wei. Bộ phim được ph&aacute;t h&agrave;nh tại Đ&agrave;i Loan v&agrave;o ng&agrave;y 18 th&aacute;ng 3 năm 2022 v&agrave; trở th&agrave;nh bộ phim kinh dị Đ&agrave;i Loan c&oacute; doanh thu cao nhất.&nbsp;<a href=\"https://en.wikipedia.org/wiki/Incantation_(film)\">Wikipedia (tiếng Anh)</a></p>\n\n<p>Ng&agrave;y ph&aacute;t h&agrave;nh:&nbsp;18 th&aacute;ng 3, 2022 (<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=%C4%90%C3%A0i+Loan&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-LQz9U3MEszNtIyz0620k_LzMkFE1YlGamJJUWZyYk5Csn5pXklRZUK-WkK-UWZ6Zl5CkWpOamJxakKKYklqYtYuY5MOLwgU8EnPzFvByvjLnYmDgYAXpvqi2kAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECFkQAg\">Đ&agrave;i Loan</a>)</p>\n\n<p>Đạo diễn:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=Kevin+Ko&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-IBcY2qLEzyKpKLtcSyk6300zJzcsGEVUpmUWpySX7RIlYO79SyzDwF7_wdrIy72Jk4GACVRE1USgAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECFwQAg\">Kevin Ko</a></p>\n\n<p>Ph&ograve;ng v&eacute;:&nbsp;5,7&nbsp;triệu USD</p>\n\n<p>Nh&agrave; ph&acirc;n phối:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=Netflix&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-LUz9U3MDQvSovXUsgot9JPzs_JSU0uyczP00_LzMkttkrJLC4pykwqLckvWsTK7pdakpaTWbGDlXEXOxMHAwB750EzUAAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECF4QAg\">Netflix</a></p>\n\n<p>Nh&agrave; sản xuất điều h&agrave;nh:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=Kevin+Ko&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-IBcY2qLEzyKpKLtRSyk6300zJzcsGEVWpFanJpSWZZqkJBUX5KaXJq0SJWDu_Ussw8Be_8HayMu9iZOBgASEZ6z1QAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECFoQAg\">Kevin Ko</a></p>\n\n<p>Quay phim:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=incantation+chen+ko-chin&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU4Jwk4sLy3MqzOK1ZLKTrfTTMnNywYRVcmZeam5iSX56UWJBRuUiVonMvOTEvJLEksz8PIXkjNQ8hex83eSMzLwdrIy72Jk4GAA8_GvjYQAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECF8QAg\">Chen Ko-chin</a></p>', 'Hành Động Vượt Ngục 2 , Breakout Brothers 2', NULL, NULL, NULL, '2022-04-14', 1, '6310222de289a (1)3837.jpg', 'hanh-dong-vuot-nguc-2-–-breakout-brothers-2', 13, 'phimle', '9', 6, 1, 0, 'Breakout Brothers 2', NULL, 0, '2022-09-08 09:41:38', '2022-09-08 09:41:38', '2021', 2, 2, '1'),
(70, 8176, 'Hành Động Vượt Ngục 3 – Breakout Brothers 3', '120 phút', '<h2>H&agrave;nh Động Vượt Ngục 3 - Breakout Brothers 3, Breakout Brothers 3 2022 Full</h2>\r\n\r\n<p dir=\"ltr\">Cựu quản gi&aacute;o Tang bị bỏ t&ugrave; v&igrave; nhận hối lộ, trong khi Jun, người kh&ocirc;ng vượt ngục trở lại nh&agrave; t&ugrave; để tiếp tục thi h&agrave;nh &aacute;n. Cả hai đều nh&igrave;n thấy trong kế hoạch đột ph&aacute;.</p>', '<p>82% đ&atilde; th&iacute;ch phim n&agrave;y</p>\n\n<p>Người d&ugrave;ng Google</p>\n\n<h3>M&ocirc; tả</h3>\n\n<p>Được dịch từ tiếng Anh-Incantation l&agrave; bộ phim kinh dị si&ecirc;u nhi&ecirc;n c&oacute; cảnh quay năm 2022 của Đ&agrave;i Loan do Kevin Ko l&agrave;m đạo diễn, người cũng đồng viết kịch bản với Chang Che-wei. Bộ phim được ph&aacute;t h&agrave;nh tại Đ&agrave;i Loan v&agrave;o ng&agrave;y 18 th&aacute;ng 3 năm 2022 v&agrave; trở th&agrave;nh bộ phim kinh dị Đ&agrave;i Loan c&oacute; doanh thu cao nhất.&nbsp;<a href=\"https://en.wikipedia.org/wiki/Incantation_(film)\">Wikipedia (tiếng Anh)</a></p>\n\n<p>Ng&agrave;y ph&aacute;t h&agrave;nh:&nbsp;18 th&aacute;ng 3, 2022 (<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=%C4%90%C3%A0i+Loan&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-LQz9U3MEszNtIyz0620k_LzMkFE1YlGamJJUWZyYk5Csn5pXklRZUK-WkK-UWZ6Zl5CkWpOamJxakKKYklqYtYuY5MOLwgU8EnPzFvByvjLnYmDgYAXpvqi2kAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECFkQAg\">Đ&agrave;i Loan</a>)</p>\n\n<p>Đạo diễn:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=Kevin+Ko&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-IBcY2qLEzyKpKLtcSyk6300zJzcsGEVUpmUWpySX7RIlYO79SyzDwF7_wdrIy72Jk4GACVRE1USgAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECFwQAg\">Kevin Ko</a></p>\n\n<p>Ph&ograve;ng v&eacute;:&nbsp;5,7&nbsp;triệu USD</p>\n\n<p>Nh&agrave; ph&acirc;n phối:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=Netflix&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-LUz9U3MDQvSovXUsgot9JPzs_JSU0uyczP00_LzMkttkrJLC4pykwqLckvWsTK7pdakpaTWbGDlXEXOxMHAwB750EzUAAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECF4QAg\">Netflix</a></p>\n\n<p>Nh&agrave; sản xuất điều h&agrave;nh:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=Kevin+Ko&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-IBcY2qLEzyKpKLtRSyk6300zJzcsGEVWpFanJpSWZZqkJBUX5KaXJq0SJWDu_Ussw8Be_8HayMu9iZOBgASEZ6z1QAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECFoQAg\">Kevin Ko</a></p>\n\n<p>Quay phim:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=incantation+chen+ko-chin&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU4Jwk4sLy3MqzOK1ZLKTrfTTMnNywYRVcmZeam5iSX56UWJBRuUiVonMvOTEvJLEksz8PIXkjNQ8hex83eSMzLwdrIy72Jk4GAA8_GvjYQAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECF8QAg\">Chen Ko-chin</a></p>', 'Hành Động Vượt Ngục 3 , Breakout Brothers 3', NULL, NULL, NULL, '2022-01-16', 1, '6310222c618474352.jpg', 'hanh-dong-vuot-nguc-3-–-breakout-brothers-3', 13, 'phimle', '9', 6, 1, 0, 'Breakout Brothers 3', NULL, 0, '2022-09-08 09:42:49', '2022-09-08 09:42:49', '2021', 2, 3, '1');
INSERT INTO `movies` (`id`, `port_view`, `title`, `thoiluong`, `description`, `danhgia`, `tags`, `filmstudio`, `director`, `movieactor`, `releasedate`, `status`, `image`, `slug`, `category_id`, `thuocphim`, `genre_id`, `country_id`, `phim_hot`, `resolution`, `name_eng`, `trailer`, `phude`, `ngaytao`, `ngaycapnhat`, `year`, `topview`, `season`, `sotap`) VALUES
(71, 2983, 'Chú Nguyền – Incantation', '120 phút', '<h2><strong>Ch&uacute; Nguyền - Incantation, Incantation 2022 Full</strong></h2>\n\n<p dir=\"ltr\">CẢNH B&Aacute;O: Đ&acirc;y l&agrave; một video bị nguyền rủa, n&oacute; c&oacute; thể chứa một số</p>\n\n<figure class=\"easyimage easyimage-full\"><img alt=\"\" src=\"data:image/jpeg;base64,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\" width=\"282\" />\n<figcaption></figcaption>\n</figure>\n\n<p dir=\"ltr\">rủi ro nhất định khi xem; C&ograve;n những ai d&aacute;m l&agrave;m theo, h&atilde;y c&ugrave;ng t&ocirc;i giải c&acirc;u đố về lời nguyền của con g&aacute;i t&ocirc;i.</p>', '<p>82% đ&atilde; th&iacute;ch phim n&agrave;y</p>\n\n<p>Người d&ugrave;ng Google</p>\n\n<h3>M&ocirc; tả</h3>\n\n<p>Được dịch từ tiếng Anh-Incantation l&agrave; bộ phim kinh dị si&ecirc;u nhi&ecirc;n c&oacute; cảnh quay năm 2022 của Đ&agrave;i Loan do Kevin Ko l&agrave;m đạo diễn, người cũng đồng viết kịch bản với Chang Che-wei. Bộ phim được ph&aacute;t h&agrave;nh tại Đ&agrave;i Loan v&agrave;o ng&agrave;y 18 th&aacute;ng 3 năm 2022 v&agrave; trở th&agrave;nh bộ phim kinh dị Đ&agrave;i Loan c&oacute; doanh thu cao nhất.&nbsp;<a href=\"https://en.wikipedia.org/wiki/Incantation_(film)\">Wikipedia (tiếng Anh)</a></p>\n\n<p>Ng&agrave;y ph&aacute;t h&agrave;nh:&nbsp;18 th&aacute;ng 3, 2022 (<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=%C4%90%C3%A0i+Loan&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-LQz9U3MEszNtIyz0620k_LzMkFE1YlGamJJUWZyYk5Csn5pXklRZUK-WkK-UWZ6Zl5CkWpOamJxakKKYklqYtYuY5MOLwgU8EnPzFvByvjLnYmDgYAXpvqi2kAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECFkQAg\">Đ&agrave;i Loan</a>)</p>\n\n<p>Đạo diễn:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=Kevin+Ko&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-IBcY2qLEzyKpKLtcSyk6300zJzcsGEVUpmUWpySX7RIlYO79SyzDwF7_wdrIy72Jk4GACVRE1USgAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECFwQAg\">Kevin Ko</a></p>\n\n<p>Ph&ograve;ng v&eacute;:&nbsp;5,7&nbsp;triệu USD</p>\n\n<p>Nh&agrave; ph&acirc;n phối:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=Netflix&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-LUz9U3MDQvSovXUsgot9JPzs_JSU0uyczP00_LzMkttkrJLC4pykwqLckvWsTK7pdakpaTWbGDlXEXOxMHAwB750EzUAAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECF4QAg\">Netflix</a></p>\n\n<p>Nh&agrave; sản xuất điều h&agrave;nh:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=Kevin+Ko&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-IBcY2qLEzyKpKLtRSyk6300zJzcsGEVWpFanJpSWZZqkJBUX5KaXJq0SJWDu_Ussw8Be_8HayMu9iZOBgASEZ6z1QAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECFoQAg\">Kevin Ko</a></p>\n\n<p>Quay phim:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=incantation+chen+ko-chin&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU4Jwk4sLy3MqzOK1ZLKTrfTTMnNywYRVcmZeam5iSX56UWJBRuUiVonMvOTEvJLEksz8PIXkjNQ8hex83eSMzLwdrIy72Jk4GAA8_GvjYQAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECF8QAg\">Chen Ko-chin</a></p>', 'Chú Nguyền , Incantation', NULL, NULL, NULL, NULL, 1, '62c9797ef2d6e6134.jpg', 'chu-nguyen-–-incantation', 13, 'phimle', '9', 6, 1, 0, 'Incantation', NULL, 0, '2022-09-08 09:44:09', '2022-09-09 10:21:51', '2021', 0, 0, '1'),
(72, 9467, 'Tăng Tốc… Về Phía Em – Fast & Feel Love', '120 phút', '<h2>Tăng Tốc... Về Ph&iacute;a Em - Fast &amp; Feel Love, Fast &amp; Feel Love 2022 Full</h2>\r\n\r\n<p dir=\"ltr\">Khi một nh&agrave; v&ocirc; địch thế giới của m&ocirc;n thể thao xếp chồng bị bạn g&aacute;i l&acirc;u năm của m&igrave;nh n&eacute;m đ&aacute;, anh ta phải học những kỹ năng đ&aacute;nh đ&ograve;n cơ bản để c&oacute; thể sống một m&igrave;nh v&agrave; chăm s&oacute;c bản th&acirc;n.</p>', '<p>82% đ&atilde; th&iacute;ch phim n&agrave;y</p>\n\n<p>Người d&ugrave;ng Google</p>\n\n<h3>M&ocirc; tả</h3>\n\n<p>Được dịch từ tiếng Anh-Incantation l&agrave; bộ phim kinh dị si&ecirc;u nhi&ecirc;n c&oacute; cảnh quay năm 2022 của Đ&agrave;i Loan do Kevin Ko l&agrave;m đạo diễn, người cũng đồng viết kịch bản với Chang Che-wei. Bộ phim được ph&aacute;t h&agrave;nh tại Đ&agrave;i Loan v&agrave;o ng&agrave;y 18 th&aacute;ng 3 năm 2022 v&agrave; trở th&agrave;nh bộ phim kinh dị Đ&agrave;i Loan c&oacute; doanh thu cao nhất.&nbsp;<a href=\"https://en.wikipedia.org/wiki/Incantation_(film)\">Wikipedia (tiếng Anh)</a></p>\n\n<p>Ng&agrave;y ph&aacute;t h&agrave;nh:&nbsp;18 th&aacute;ng 3, 2022 (<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=%C4%90%C3%A0i+Loan&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-LQz9U3MEszNtIyz0620k_LzMkFE1YlGamJJUWZyYk5Csn5pXklRZUK-WkK-UWZ6Zl5CkWpOamJxakKKYklqYtYuY5MOLwgU8EnPzFvByvjLnYmDgYAXpvqi2kAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECFkQAg\">Đ&agrave;i Loan</a>)</p>\n\n<p>Đạo diễn:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=Kevin+Ko&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-IBcY2qLEzyKpKLtcSyk6300zJzcsGEVUpmUWpySX7RIlYO79SyzDwF7_wdrIy72Jk4GACVRE1USgAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECFwQAg\">Kevin Ko</a></p>\n\n<p>Ph&ograve;ng v&eacute;:&nbsp;5,7&nbsp;triệu USD</p>\n\n<p>Nh&agrave; ph&acirc;n phối:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=Netflix&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-LUz9U3MDQvSovXUsgot9JPzs_JSU0uyczP00_LzMkttkrJLC4pykwqLckvWsTK7pdakpaTWbGDlXEXOxMHAwB750EzUAAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECF4QAg\">Netflix</a></p>\n\n<p>Nh&agrave; sản xuất điều h&agrave;nh:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=Kevin+Ko&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-IBcY2qLEzyKpKLtRSyk6300zJzcsGEVWpFanJpSWZZqkJBUX5KaXJq0SJWDu_Ussw8Be_8HayMu9iZOBgASEZ6z1QAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECFoQAg\">Kevin Ko</a></p>\n\n<p>Quay phim:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=incantation+chen+ko-chin&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU4Jwk4sLy3MqzOK1ZLKTrfTTMnNywYRVcmZeam5iSX56UWJBRuUiVonMvOTEvJLEksz8PIXkjNQ8hex83eSMzLwdrIy72Jk4GAA8_GvjYQAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECF8QAg\">Chen Ko-chin</a></p>', 'Tăng Tốc… Về Phía Em , Fast & Feel Love', 'GDH 559', 'Nawapol Thamrongrattanarit', 'Urassaya Sperbund,Nat Kitcharit', '2022-04-06', 1, '62c5854fc19ab8243.jpg', 'tang-toc…-ve-phia-em-–-fast-feel-love', 13, 'phimle', '4', 6, 1, 0, 'Fast & Feel Love', NULL, 0, '2022-09-08 09:45:59', '2022-10-20 09:03:12', NULL, 0, 0, '1'),
(73, 6429, 'Siêu Chiến Binh 1 – Attack Part 1', '120 phút', '<h2>Si&ecirc;u Chiến Binh 1 - Attack Part 1, Attack Part 1 2022 Full</h2>\r\n\r\n<p dir=\"ltr\">Chứng kiến ​​sự trỗi dậy của một người l&iacute;nh qu&acirc;n đội khi anh ta nhận ra số phận của m&igrave;nh v&agrave; chuẩn bị trở th&agrave;nh si&ecirc;u chiến binh đầu ti&ecirc;n của Ấn Độ được tạo ra để chống lại những kẻ khủng bố khi anh ta chiến đấu với &aacute;c quỷ b&ecirc;n trong v&agrave; kẻ th&ugrave; b&ecirc;n ngo&agrave;i.</p>', '<p>82% đ&atilde; th&iacute;ch phim n&agrave;y</p>\n\n<p>Người d&ugrave;ng Google</p>\n\n<h3>M&ocirc; tả</h3>\n\n<p>Được dịch từ tiếng Anh-Incantation l&agrave; bộ phim kinh dị si&ecirc;u nhi&ecirc;n c&oacute; cảnh quay năm 2022 của Đ&agrave;i Loan do Kevin Ko l&agrave;m đạo diễn, người cũng đồng viết kịch bản với Chang Che-wei. Bộ phim được ph&aacute;t h&agrave;nh tại Đ&agrave;i Loan v&agrave;o ng&agrave;y 18 th&aacute;ng 3 năm 2022 v&agrave; trở th&agrave;nh bộ phim kinh dị Đ&agrave;i Loan c&oacute; doanh thu cao nhất.&nbsp;<a href=\"https://en.wikipedia.org/wiki/Incantation_(film)\">Wikipedia (tiếng Anh)</a></p>\n\n<p>Ng&agrave;y ph&aacute;t h&agrave;nh:&nbsp;18 th&aacute;ng 3, 2022 (<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=%C4%90%C3%A0i+Loan&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-LQz9U3MEszNtIyz0620k_LzMkFE1YlGamJJUWZyYk5Csn5pXklRZUK-WkK-UWZ6Zl5CkWpOamJxakKKYklqYtYuY5MOLwgU8EnPzFvByvjLnYmDgYAXpvqi2kAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECFkQAg\">Đ&agrave;i Loan</a>)</p>\n\n<p>Đạo diễn:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=Kevin+Ko&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-IBcY2qLEzyKpKLtcSyk6300zJzcsGEVUpmUWpySX7RIlYO79SyzDwF7_wdrIy72Jk4GACVRE1USgAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECFwQAg\">Kevin Ko</a></p>\n\n<p>Ph&ograve;ng v&eacute;:&nbsp;5,7&nbsp;triệu USD</p>\n\n<p>Nh&agrave; ph&acirc;n phối:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=Netflix&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-LUz9U3MDQvSovXUsgot9JPzs_JSU0uyczP00_LzMkttkrJLC4pykwqLckvWsTK7pdakpaTWbGDlXEXOxMHAwB750EzUAAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECF4QAg\">Netflix</a></p>\n\n<p>Nh&agrave; sản xuất điều h&agrave;nh:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=Kevin+Ko&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-IBcY2qLEzyKpKLtRSyk6300zJzcsGEVWpFanJpSWZZqkJBUX5KaXJq0SJWDu_Ussw8Be_8HayMu9iZOBgASEZ6z1QAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECFoQAg\">Kevin Ko</a></p>\n\n<p>Quay phim:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=incantation+chen+ko-chin&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU4Jwk4sLy3MqzOK1ZLKTrfTTMnNywYRVcmZeam5iSX56UWJBRuUiVonMvOTEvJLEksz8PIXkjNQ8hex83eSMzLwdrIy72Jk4GAA8_GvjYQAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECF8QAg\">Chen Ko-chin</a></p>', 'Siêu Chiến Binh 1 , Attack Part 1', 'Guardians', 'Sarik Andreasyan', 'Sebastien Sisak, Anton Pampushnyy, Sanzhar Madiyev, Alina Kiziyarova, Valeriya Shkirando', '2017-02-24', 1, '62b6f31bdbe3a289.jpg', 'sieu-chien-binh-1-–-attack-part-1', 13, 'phimle', '9', 2, 1, 0, 'Attack Part 1', 'Ma3Y-qekYos', 0, '2022-09-08 09:48:54', '2022-10-16 12:06:26', NULL, 0, 0, '1'),
(79, 2, 'Phòng Thủ: Bí Mật Hộ Tống – Defense: Secret Escort', '45 phút/1 tập', '<h2>Ph&ograve;ng Thủ: B&iacute; Mật Hộ Tống - Defense: Secret Escort, Defense: Secret Escort 2022 Full</h2>\r\n\r\n<p>Để đảm bảo nguy&ecirc;n liệu h&oacute;a chất độc hại kh&ocirc;ng tr&agrave;n v&agrave;o x&atilde; hội Đ&ocirc;ng Nam &Aacute;, Ch&acirc;u Khắc một cảnh s&aacute;t g&igrave;n giữ h&ograve;a b&igrave;nh Trung Quốc, được lệnh hộ tống T&ocirc;n T&ocirc; Hằng một chủ nh&agrave; m&aacute;y h&oacute;a chất người Hoa ở nước ngo&agrave;i. Trong qu&aacute; tr&igrave;nh n&agrave;y, anh đ&atilde; giải cứu gia đ&igrave;nh T&ocirc;n T&ocirc; Hằng bị bắt c&oacute;c v&agrave; cuối c&ugrave;ng đảm bảo sự an to&agrave;n của c&aacute;c nguy&ecirc;n liệu th&ocirc;.</p>', '<p>82% đ&atilde; th&iacute;ch phim n&agrave;y</p>\n\n<p>Người d&ugrave;ng Google</p>\n\n<h3>M&ocirc; tả</h3>\n\n<p>Được dịch từ tiếng Anh-Incantation l&agrave; bộ phim kinh dị si&ecirc;u nhi&ecirc;n c&oacute; cảnh quay năm 2022 của Đ&agrave;i Loan do Kevin Ko l&agrave;m đạo diễn, người cũng đồng viết kịch bản với Chang Che-wei. Bộ phim được ph&aacute;t h&agrave;nh tại Đ&agrave;i Loan v&agrave;o ng&agrave;y 18 th&aacute;ng 3 năm 2022 v&agrave; trở th&agrave;nh bộ phim kinh dị Đ&agrave;i Loan c&oacute; doanh thu cao nhất.&nbsp;<a href=\"https://en.wikipedia.org/wiki/Incantation_(film)\">Wikipedia (tiếng Anh)</a></p>\n\n<p>Ng&agrave;y ph&aacute;t h&agrave;nh:&nbsp;18 th&aacute;ng 3, 2022 (<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=%C4%90%C3%A0i+Loan&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-LQz9U3MEszNtIyz0620k_LzMkFE1YlGamJJUWZyYk5Csn5pXklRZUK-WkK-UWZ6Zl5CkWpOamJxakKKYklqYtYuY5MOLwgU8EnPzFvByvjLnYmDgYAXpvqi2kAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECFkQAg\">Đ&agrave;i Loan</a>)</p>\n\n<p>Đạo diễn:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=Kevin+Ko&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-IBcY2qLEzyKpKLtcSyk6300zJzcsGEVUpmUWpySX7RIlYO79SyzDwF7_wdrIy72Jk4GACVRE1USgAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECFwQAg\">Kevin Ko</a></p>\n\n<p>Ph&ograve;ng v&eacute;:&nbsp;5,7&nbsp;triệu USD</p>\n\n<p>Nh&agrave; ph&acirc;n phối:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=Netflix&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-LUz9U3MDQvSovXUsgot9JPzs_JSU0uyczP00_LzMkttkrJLC4pykwqLckvWsTK7pdakpaTWbGDlXEXOxMHAwB750EzUAAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECF4QAg\">Netflix</a></p>\n\n<p>Nh&agrave; sản xuất điều h&agrave;nh:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=Kevin+Ko&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU-IBcY2qLEzyKpKLtRSyk6300zJzcsGEVWpFanJpSWZZqkJBUX5KaXJq0SJWDu_Ussw8Be_8HayMu9iZOBgASEZ6z1QAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECFoQAg\">Kevin Ko</a></p>\n\n<p>Quay phim:&nbsp;<a href=\"https://www.google.com/search?sxsrf=ALiCzsbyTnGIfrWEEIisl_gWjTvYmuQRIQ:1665990120175&amp;q=incantation+chen+ko-chin&amp;stick=H4sIAAAAAAAAAOPgE-LVT9c3NCwuzzAyKIzPU4Jwk4sLy3MqzOK1ZLKTrfTTMnNywYRVcmZeam5iSX56UWJBRuUiVonMvOTEvJLEksz8PIXkjNQ8hex83eSMzLwdrIy72Jk4GAA8_GvjYQAAAA&amp;sa=X&amp;ved=2ahUKEwjis7_q2Ob6AhXgm1YBHfteC9IQmxMoAHoECF8QAg\">Chen Ko-chin</a></p>', 'phim hay,phim 366 ngày ,phim lẻ hay,phim kinh điển', 'china', 'Kevin Ko', 'Tsai\r\nLi Ronan\r\n\r\nCao Anh Hiên\r\nChih-Ming Hsieh\r\n\r\nSean Lin\r\nDom\r\n\r\nHuang Sin-ting\r\nDodo\r\n\r\nChing-Yu Wen\r\nA-Yuan\r\n\r\nHuang Hsin-Ting\r\nDuoduo\r\n\r\nAhmed Shawky Shaheen\r\n\r\nQueenie Chen\r\n\r\nYi Peng\r\n\r\nMohamed Elgendy', '2022-03-18', 1, '634cc2472fb886066.jpg', 'phong-thu-bi-mat-ho-tong-–-defense-secret-escort', 5, 'phimbo', '1', 6, 1, 0, 'Defense: Secret Escort', 'NprcHuYuP54', 0, '2022-10-17 14:05:02', '2022-10-20 08:43:32', '2022', 0, 0, '10'),
(80, 0, 'Black Adam', '120 phút', '<p><span style=\"font-size:18px\"><strong>Dwayne Johnson</strong> sẽ g&oacute;p mặt trong t&aacute;c phẩm h&agrave;nh động - phi&ecirc;u lưu mới của New Line Cinema, mang t&ecirc;n BLACK ADAM. Đ&acirc;y l&agrave; bộ phim đầu ti&ecirc;n tr&ecirc;n m&agrave;n ảnh rộng khai th&aacute;c c&acirc;u chuyện của si&ecirc;u anh h&ugrave;ng DC n&agrave;y, dưới sự s&aacute;ng tạo của đạo diễn Jaume Collet-Serra (đạo diễn của Jungle Cruise). Gần 5.000 năm sau khi bị cầm t&ugrave; với quyền năng tối thượng từ những vị thần cổ đại, Black Adam (Dwayne Johnson) sẽ được giải ph&oacute;ng khỏi nấm mồ chết ch&oacute;c của m&igrave;nh, mang tới thế giới hiện đại một kiểu nhận thức về c&ocirc;ng l&yacute; ho&agrave;n to&agrave;n mới.</span></p>', NULL, 'back admin,phim hay,phim mới', 'Worlds of DC', 'Jaume Collet-Serra', 'Dwayne Johnson, Djimon Hounsou, Noah Centineo, Aldis Hodge', '2022-10-21', 1, '6344d3d46477f8775287164521.jpeg', 'black-adam', 13, 'phimle', '1', 2, 1, 5, 'Black Adam', 'Fva_W_AF0IM', 0, '2022-10-20 09:14:55', '2022-10-20 10:07:58', '2022', 3, 1, '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `movie_genre`
--

CREATE TABLE `movie_genre` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `genre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `movie_genre`
--

INSERT INTO `movie_genre` (`id`, `movie_id`, `genre_id`) VALUES
(116, 51, 3),
(117, 51, 9),
(118, 52, 9),
(119, 53, 9),
(120, 54, 1),
(121, 54, 4),
(122, 54, 8),
(123, 55, 1),
(124, 55, 3),
(125, 55, 9),
(126, 56, 3),
(127, 56, 9),
(128, 57, 3),
(129, 57, 9),
(130, 58, 1),
(131, 58, 4),
(132, 58, 9),
(133, 59, 1),
(134, 59, 3),
(135, 59, 9),
(136, 60, 1),
(137, 60, 8),
(138, 60, 9),
(139, 61, 1),
(140, 61, 9),
(141, 62, 1),
(142, 62, 5),
(143, 62, 9),
(144, 63, 1),
(145, 64, 3),
(146, 64, 8),
(147, 65, 3),
(148, 65, 4),
(149, 65, 8),
(150, 66, 1),
(151, 66, 5),
(152, 67, 3),
(153, 67, 4),
(154, 67, 8),
(155, 68, 1),
(156, 68, 8),
(157, 68, 9),
(158, 69, 1),
(159, 69, 9),
(160, 70, 1),
(161, 70, 9),
(162, 71, 7),
(163, 71, 8),
(164, 71, 9),
(165, 72, 3),
(166, 72, 4),
(167, 73, 1),
(168, 73, 9),
(183, 79, 1),
(184, 80, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'edit admin', 'web', '2022-07-31 06:51:23', '2022-07-31 06:51:23'),
(2, 'view website', 'web', '2022-07-31 06:59:40', '2022-07-31 06:59:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `ip_address` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `rating`
--

INSERT INTO `rating` (`id`, `rating`, `movie_id`, `ip_address`) VALUES
(1, 4, 71, '127.0.0.1'),
(2, 5, 71, '127.0.0.2'),
(3, 5, 72, '127.0.0.1'),
(4, 4, 73, '127.0.0.1'),
(5, 4, 70, '127.0.0.1'),
(6, 4, 55, '127.0.0.1'),
(7, 5, 52, '127.0.0.1'),
(8, 4, 57, '127.0.0.1'),
(9, 4, 79, '127.0.0.1'),
(10, 4, 80, '127.0.0.1'),
(11, 3, 59, '127.0.0.1'),
(12, 4, 65, '127.0.0.1'),
(13, 4, 62, '127.0.0.1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2022-07-31 06:48:21', '2022-07-31 06:48:21'),
(2, 'Customer', 'web', '2022-07-31 06:51:23', '2022-07-31 06:51:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tracker_agents`
--

CREATE TABLE `tracker_agents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `browser` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `browser_version` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name_hash` varchar(65) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tracker_connections`
--

CREATE TABLE `tracker_connections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tracker_cookies`
--

CREATE TABLE `tracker_cookies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tracker_devices`
--

CREATE TABLE `tracker_devices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kind` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `platform` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `platform_version` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_mobile` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tracker_domains`
--

CREATE TABLE `tracker_domains` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tracker_errors`
--

CREATE TABLE `tracker_errors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tracker_events`
--

CREATE TABLE `tracker_events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tracker_events_log`
--

CREATE TABLE `tracker_events_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `event_id` bigint(20) UNSIGNED NOT NULL,
  `class_id` bigint(20) UNSIGNED DEFAULT NULL,
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tracker_geoip`
--

CREATE TABLE `tracker_geoip` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `country_code` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_code3` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_code` bigint(20) DEFAULT NULL,
  `dma_code` double DEFAULT NULL,
  `metro_code` double DEFAULT NULL,
  `continent_code` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tracker_languages`
--

CREATE TABLE `tracker_languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `preference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language-range` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tracker_log`
--

CREATE TABLE `tracker_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `path_id` bigint(20) UNSIGNED DEFAULT NULL,
  `query_id` bigint(20) UNSIGNED DEFAULT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `route_path_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_ajax` tinyint(1) NOT NULL,
  `is_secure` tinyint(1) NOT NULL,
  `is_json` tinyint(1) NOT NULL,
  `wants_json` tinyint(1) NOT NULL,
  `error_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `referer_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tracker_paths`
--

CREATE TABLE `tracker_paths` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tracker_queries`
--

CREATE TABLE `tracker_queries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `query` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tracker_query_arguments`
--

CREATE TABLE `tracker_query_arguments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `query_id` bigint(20) UNSIGNED NOT NULL,
  `argument` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tracker_referers`
--

CREATE TABLE `tracker_referers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `domain_id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `host` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `medium` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `search_terms_hash` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tracker_referers_search_terms`
--

CREATE TABLE `tracker_referers_search_terms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `referer_id` bigint(20) UNSIGNED NOT NULL,
  `search_term` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tracker_routes`
--

CREATE TABLE `tracker_routes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tracker_route_paths`
--

CREATE TABLE `tracker_route_paths` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `route_id` bigint(20) UNSIGNED NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tracker_route_path_parameters`
--

CREATE TABLE `tracker_route_path_parameters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `route_path_id` bigint(20) UNSIGNED NOT NULL,
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tracker_sessions`
--

CREATE TABLE `tracker_sessions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `device_id` bigint(20) UNSIGNED DEFAULT NULL,
  `agent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `referer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `cookie_id` bigint(20) UNSIGNED DEFAULT NULL,
  `geoip_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_robot` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `language_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tracker_sql_queries`
--

CREATE TABLE `tracker_sql_queries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sha1` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `statement` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` double NOT NULL,
  `connection_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tracker_sql_queries_log`
--

CREATE TABLE `tracker_sql_queries_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `sql_query_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tracker_sql_query_bindings`
--

CREATE TABLE `tracker_sql_query_bindings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sha1` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serialized` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tracker_sql_query_bindings_parameters`
--

CREATE TABLE `tracker_sql_query_bindings_parameters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sql_query_bindings_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tracker_system_classes`
--

CREATE TABLE `tracker_system_classes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `level` int(255) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `level`) VALUES
(3, 'Admin Nghia', 'nghia123@gmail.com', NULL, '$2y$10$k3ixBPGAAXLirZkjOt2YJO73Z0ONSjFinu0C7/ZGbwxUgE4gD051W', 'xgBVYQWN4aVZQENijcv4ErNxMh3jdwJsFNRkZRpQ8bdBdO4IpYV2QP1is8nl', '2022-07-05 00:16:45', '2022-07-05 00:16:45', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `access`
--
ALTER TABLE `access`
  ADD PRIMARY KEY (`id_access`);

--
-- Chỉ mục cho bảng `access_day`
--
ALTER TABLE `access_day`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `id` (`id`),
  ADD KEY `movie_id` (`movie_id`);

--
-- Chỉ mục cho bảng `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `episodes`
--
ALTER TABLE `episodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_id` (`movie_id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Chỉ mục cho bảng `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Chỉ mục cho bảng `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `movie_genre`
--
ALTER TABLE `movie_genre`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_id` (`movie_id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_id` (`movie_id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Chỉ mục cho bảng `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Chỉ mục cho bảng `tracker_agents`
--
ALTER TABLE `tracker_agents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tracker_agents_name_hash_unique` (`name_hash`),
  ADD KEY `tracker_agents_created_at_index` (`created_at`),
  ADD KEY `tracker_agents_updated_at_index` (`updated_at`),
  ADD KEY `tracker_agents_browser_index` (`browser`);

--
-- Chỉ mục cho bảng `tracker_connections`
--
ALTER TABLE `tracker_connections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_connections_created_at_index` (`created_at`),
  ADD KEY `tracker_connections_updated_at_index` (`updated_at`),
  ADD KEY `tracker_connections_name_index` (`name`);

--
-- Chỉ mục cho bảng `tracker_cookies`
--
ALTER TABLE `tracker_cookies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tracker_cookies_uuid_unique` (`uuid`),
  ADD KEY `tracker_cookies_created_at_index` (`created_at`),
  ADD KEY `tracker_cookies_updated_at_index` (`updated_at`);

--
-- Chỉ mục cho bảng `tracker_devices`
--
ALTER TABLE `tracker_devices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tracker_devices_kind_model_platform_platform_version_unique` (`kind`,`model`,`platform`,`platform_version`),
  ADD KEY `tracker_devices_created_at_index` (`created_at`),
  ADD KEY `tracker_devices_updated_at_index` (`updated_at`),
  ADD KEY `tracker_devices_kind_index` (`kind`),
  ADD KEY `tracker_devices_model_index` (`model`),
  ADD KEY `tracker_devices_platform_index` (`platform`),
  ADD KEY `tracker_devices_platform_version_index` (`platform_version`);

--
-- Chỉ mục cho bảng `tracker_domains`
--
ALTER TABLE `tracker_domains`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_domains_created_at_index` (`created_at`),
  ADD KEY `tracker_domains_updated_at_index` (`updated_at`),
  ADD KEY `tracker_domains_name_index` (`name`);

--
-- Chỉ mục cho bảng `tracker_errors`
--
ALTER TABLE `tracker_errors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_errors_created_at_index` (`created_at`),
  ADD KEY `tracker_errors_updated_at_index` (`updated_at`),
  ADD KEY `tracker_errors_code_index` (`code`),
  ADD KEY `tracker_errors_message_index` (`message`);

--
-- Chỉ mục cho bảng `tracker_events`
--
ALTER TABLE `tracker_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_events_created_at_index` (`created_at`),
  ADD KEY `tracker_events_updated_at_index` (`updated_at`),
  ADD KEY `tracker_events_name_index` (`name`);

--
-- Chỉ mục cho bảng `tracker_events_log`
--
ALTER TABLE `tracker_events_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_events_log_created_at_index` (`created_at`),
  ADD KEY `tracker_events_log_updated_at_index` (`updated_at`),
  ADD KEY `tracker_events_log_event_id_index` (`event_id`),
  ADD KEY `tracker_events_log_class_id_index` (`class_id`),
  ADD KEY `tracker_events_log_log_id_index` (`log_id`);

--
-- Chỉ mục cho bảng `tracker_geoip`
--
ALTER TABLE `tracker_geoip`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_geoip_created_at_index` (`created_at`),
  ADD KEY `tracker_geoip_updated_at_index` (`updated_at`),
  ADD KEY `tracker_geoip_latitude_index` (`latitude`),
  ADD KEY `tracker_geoip_longitude_index` (`longitude`),
  ADD KEY `tracker_geoip_country_code_index` (`country_code`),
  ADD KEY `tracker_geoip_country_code3_index` (`country_code3`),
  ADD KEY `tracker_geoip_country_name_index` (`country_name`),
  ADD KEY `tracker_geoip_city_index` (`city`);

--
-- Chỉ mục cho bảng `tracker_languages`
--
ALTER TABLE `tracker_languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tracker_languages_preference_language_range_unique` (`preference`,`language-range`),
  ADD KEY `tracker_languages_created_at_index` (`created_at`),
  ADD KEY `tracker_languages_updated_at_index` (`updated_at`),
  ADD KEY `tracker_languages_preference_index` (`preference`),
  ADD KEY `tracker_languages_language_range_index` (`language-range`);

--
-- Chỉ mục cho bảng `tracker_log`
--
ALTER TABLE `tracker_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_log_created_at_index` (`created_at`),
  ADD KEY `tracker_log_updated_at_index` (`updated_at`),
  ADD KEY `tracker_log_session_id_index` (`session_id`),
  ADD KEY `tracker_log_path_id_index` (`path_id`),
  ADD KEY `tracker_log_query_id_index` (`query_id`),
  ADD KEY `tracker_log_method_index` (`method`),
  ADD KEY `tracker_log_route_path_id_index` (`route_path_id`),
  ADD KEY `tracker_log_error_id_index` (`error_id`),
  ADD KEY `tracker_log_referer_id_index` (`referer_id`);

--
-- Chỉ mục cho bảng `tracker_paths`
--
ALTER TABLE `tracker_paths`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_paths_created_at_index` (`created_at`),
  ADD KEY `tracker_paths_updated_at_index` (`updated_at`),
  ADD KEY `tracker_paths_path_index` (`path`);

--
-- Chỉ mục cho bảng `tracker_queries`
--
ALTER TABLE `tracker_queries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_queries_created_at_index` (`created_at`),
  ADD KEY `tracker_queries_updated_at_index` (`updated_at`),
  ADD KEY `tracker_queries_query_index` (`query`);

--
-- Chỉ mục cho bảng `tracker_query_arguments`
--
ALTER TABLE `tracker_query_arguments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_query_arguments_created_at_index` (`created_at`),
  ADD KEY `tracker_query_arguments_updated_at_index` (`updated_at`),
  ADD KEY `tracker_query_arguments_query_id_index` (`query_id`),
  ADD KEY `tracker_query_arguments_argument_index` (`argument`),
  ADD KEY `tracker_query_arguments_value_index` (`value`);

--
-- Chỉ mục cho bảng `tracker_referers`
--
ALTER TABLE `tracker_referers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_referers_created_at_index` (`created_at`),
  ADD KEY `tracker_referers_updated_at_index` (`updated_at`),
  ADD KEY `tracker_referers_domain_id_index` (`domain_id`),
  ADD KEY `tracker_referers_url_index` (`url`),
  ADD KEY `tracker_referers_medium_index` (`medium`),
  ADD KEY `tracker_referers_source_index` (`source`),
  ADD KEY `tracker_referers_search_terms_hash_index` (`search_terms_hash`);

--
-- Chỉ mục cho bảng `tracker_referers_search_terms`
--
ALTER TABLE `tracker_referers_search_terms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_referers_search_terms_created_at_index` (`created_at`),
  ADD KEY `tracker_referers_search_terms_updated_at_index` (`updated_at`),
  ADD KEY `tracker_referers_search_terms_referer_id_index` (`referer_id`),
  ADD KEY `tracker_referers_search_terms_search_term_index` (`search_term`);

--
-- Chỉ mục cho bảng `tracker_routes`
--
ALTER TABLE `tracker_routes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_routes_created_at_index` (`created_at`),
  ADD KEY `tracker_routes_updated_at_index` (`updated_at`),
  ADD KEY `tracker_routes_name_index` (`name`),
  ADD KEY `tracker_routes_action_index` (`action`);

--
-- Chỉ mục cho bảng `tracker_route_paths`
--
ALTER TABLE `tracker_route_paths`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_route_paths_created_at_index` (`created_at`),
  ADD KEY `tracker_route_paths_updated_at_index` (`updated_at`),
  ADD KEY `tracker_route_paths_route_id_index` (`route_id`),
  ADD KEY `tracker_route_paths_path_index` (`path`);

--
-- Chỉ mục cho bảng `tracker_route_path_parameters`
--
ALTER TABLE `tracker_route_path_parameters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_route_path_parameters_created_at_index` (`created_at`),
  ADD KEY `tracker_route_path_parameters_updated_at_index` (`updated_at`),
  ADD KEY `tracker_route_path_parameters_route_path_id_index` (`route_path_id`),
  ADD KEY `tracker_route_path_parameters_parameter_index` (`parameter`),
  ADD KEY `tracker_route_path_parameters_value_index` (`value`);

--
-- Chỉ mục cho bảng `tracker_sessions`
--
ALTER TABLE `tracker_sessions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tracker_sessions_uuid_unique` (`uuid`),
  ADD KEY `tracker_sessions_created_at_index` (`created_at`),
  ADD KEY `tracker_sessions_updated_at_index` (`updated_at`),
  ADD KEY `tracker_sessions_user_id_index` (`user_id`),
  ADD KEY `tracker_sessions_device_id_index` (`device_id`),
  ADD KEY `tracker_sessions_agent_id_index` (`agent_id`),
  ADD KEY `tracker_sessions_client_ip_index` (`client_ip`),
  ADD KEY `tracker_sessions_referer_id_index` (`referer_id`),
  ADD KEY `tracker_sessions_cookie_id_index` (`cookie_id`),
  ADD KEY `tracker_sessions_geoip_id_index` (`geoip_id`),
  ADD KEY `tracker_sessions_language_id_index` (`language_id`);

--
-- Chỉ mục cho bảng `tracker_sql_queries`
--
ALTER TABLE `tracker_sql_queries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_sql_queries_created_at_index` (`created_at`),
  ADD KEY `tracker_sql_queries_updated_at_index` (`updated_at`),
  ADD KEY `tracker_sql_queries_sha1_index` (`sha1`),
  ADD KEY `tracker_sql_queries_time_index` (`time`);

--
-- Chỉ mục cho bảng `tracker_sql_queries_log`
--
ALTER TABLE `tracker_sql_queries_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_sql_queries_log_created_at_index` (`created_at`),
  ADD KEY `tracker_sql_queries_log_updated_at_index` (`updated_at`),
  ADD KEY `tracker_sql_queries_log_log_id_index` (`log_id`),
  ADD KEY `tracker_sql_queries_log_sql_query_id_index` (`sql_query_id`);

--
-- Chỉ mục cho bảng `tracker_sql_query_bindings`
--
ALTER TABLE `tracker_sql_query_bindings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_sql_query_bindings_created_at_index` (`created_at`),
  ADD KEY `tracker_sql_query_bindings_updated_at_index` (`updated_at`),
  ADD KEY `tracker_sql_query_bindings_sha1_index` (`sha1`);

--
-- Chỉ mục cho bảng `tracker_sql_query_bindings_parameters`
--
ALTER TABLE `tracker_sql_query_bindings_parameters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_sql_query_bindings_parameters_created_at_index` (`created_at`),
  ADD KEY `tracker_sql_query_bindings_parameters_updated_at_index` (`updated_at`),
  ADD KEY `tracker_sql_query_bindings_parameters_name_index` (`name`),
  ADD KEY `tracker_sqlqb_parameters` (`sql_query_bindings_id`);

--
-- Chỉ mục cho bảng `tracker_system_classes`
--
ALTER TABLE `tracker_system_classes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tracker_system_classes_created_at_index` (`created_at`),
  ADD KEY `tracker_system_classes_updated_at_index` (`updated_at`),
  ADD KEY `tracker_system_classes_name_index` (`name`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `access`
--
ALTER TABLE `access`
  MODIFY `id_access` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT cho bảng `access_day`
--
ALTER TABLE `access_day`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT cho bảng `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `episodes`
--
ALTER TABLE `episodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT cho bảng `movie_genre`
--
ALTER TABLE `movie_genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tracker_agents`
--
ALTER TABLE `tracker_agents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tracker_connections`
--
ALTER TABLE `tracker_connections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tracker_cookies`
--
ALTER TABLE `tracker_cookies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tracker_devices`
--
ALTER TABLE `tracker_devices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tracker_domains`
--
ALTER TABLE `tracker_domains`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tracker_errors`
--
ALTER TABLE `tracker_errors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tracker_events`
--
ALTER TABLE `tracker_events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tracker_events_log`
--
ALTER TABLE `tracker_events_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tracker_geoip`
--
ALTER TABLE `tracker_geoip`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tracker_languages`
--
ALTER TABLE `tracker_languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tracker_log`
--
ALTER TABLE `tracker_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tracker_paths`
--
ALTER TABLE `tracker_paths`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tracker_queries`
--
ALTER TABLE `tracker_queries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tracker_query_arguments`
--
ALTER TABLE `tracker_query_arguments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tracker_referers`
--
ALTER TABLE `tracker_referers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tracker_referers_search_terms`
--
ALTER TABLE `tracker_referers_search_terms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tracker_routes`
--
ALTER TABLE `tracker_routes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tracker_route_paths`
--
ALTER TABLE `tracker_route_paths`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tracker_route_path_parameters`
--
ALTER TABLE `tracker_route_path_parameters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tracker_sessions`
--
ALTER TABLE `tracker_sessions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tracker_sql_queries`
--
ALTER TABLE `tracker_sql_queries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tracker_sql_queries_log`
--
ALTER TABLE `tracker_sql_queries_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tracker_sql_query_bindings`
--
ALTER TABLE `tracker_sql_query_bindings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tracker_sql_query_bindings_parameters`
--
ALTER TABLE `tracker_sql_query_bindings_parameters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tracker_system_classes`
--
ALTER TABLE `tracker_system_classes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`id`) REFERENCES `episodes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `episodes`
--
ALTER TABLE `episodes`
  ADD CONSTRAINT `episodes_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `movie_genre`
--
ALTER TABLE `movie_genre`
  ADD CONSTRAINT `movie_genre_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `rating_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `tracker_events_log`
--
ALTER TABLE `tracker_events_log`
  ADD CONSTRAINT `tracker_events_log_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `tracker_system_classes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tracker_events_log_event_id_foreign` FOREIGN KEY (`event_id`) REFERENCES `tracker_events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tracker_events_log_log_id_foreign` FOREIGN KEY (`log_id`) REFERENCES `tracker_log` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `tracker_log`
--
ALTER TABLE `tracker_log`
  ADD CONSTRAINT `tracker_log_error_id_foreign` FOREIGN KEY (`error_id`) REFERENCES `tracker_errors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tracker_log_path_id_foreign` FOREIGN KEY (`path_id`) REFERENCES `tracker_paths` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tracker_log_query_id_foreign` FOREIGN KEY (`query_id`) REFERENCES `tracker_queries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tracker_log_route_path_id_foreign` FOREIGN KEY (`route_path_id`) REFERENCES `tracker_route_paths` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tracker_log_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `tracker_sessions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `tracker_query_arguments`
--
ALTER TABLE `tracker_query_arguments`
  ADD CONSTRAINT `tracker_query_arguments_query_id_foreign` FOREIGN KEY (`query_id`) REFERENCES `tracker_queries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `tracker_referers`
--
ALTER TABLE `tracker_referers`
  ADD CONSTRAINT `tracker_referers_domain_id_foreign` FOREIGN KEY (`domain_id`) REFERENCES `tracker_domains` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `tracker_referers_search_terms`
--
ALTER TABLE `tracker_referers_search_terms`
  ADD CONSTRAINT `tracker_referers_referer_id_fk` FOREIGN KEY (`referer_id`) REFERENCES `tracker_referers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `tracker_route_paths`
--
ALTER TABLE `tracker_route_paths`
  ADD CONSTRAINT `tracker_route_paths_route_id_foreign` FOREIGN KEY (`route_id`) REFERENCES `tracker_routes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `tracker_route_path_parameters`
--
ALTER TABLE `tracker_route_path_parameters`
  ADD CONSTRAINT `tracker_route_path_parameters_route_path_id_foreign` FOREIGN KEY (`route_path_id`) REFERENCES `tracker_route_paths` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `tracker_sessions`
--
ALTER TABLE `tracker_sessions`
  ADD CONSTRAINT `tracker_sessions_agent_id_foreign` FOREIGN KEY (`agent_id`) REFERENCES `tracker_agents` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tracker_sessions_cookie_id_foreign` FOREIGN KEY (`cookie_id`) REFERENCES `tracker_cookies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tracker_sessions_device_id_foreign` FOREIGN KEY (`device_id`) REFERENCES `tracker_devices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tracker_sessions_geoip_id_foreign` FOREIGN KEY (`geoip_id`) REFERENCES `tracker_geoip` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tracker_sessions_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `tracker_languages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tracker_sessions_referer_id_foreign` FOREIGN KEY (`referer_id`) REFERENCES `tracker_referers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `tracker_sql_queries_log`
--
ALTER TABLE `tracker_sql_queries_log`
  ADD CONSTRAINT `tracker_sql_queries_log_log_id_foreign` FOREIGN KEY (`log_id`) REFERENCES `tracker_log` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tracker_sql_queries_log_sql_query_id_foreign` FOREIGN KEY (`sql_query_id`) REFERENCES `tracker_sql_queries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `tracker_sql_query_bindings_parameters`
--
ALTER TABLE `tracker_sql_query_bindings_parameters`
  ADD CONSTRAINT `tracker_sqlqb_parameters` FOREIGN KEY (`sql_query_bindings_id`) REFERENCES `tracker_sql_query_bindings` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
