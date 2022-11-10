-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 15, 2022 lúc 04:27 PM
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
(4, 'Phim Bộ', 'Phim bộ cập nhật hằng ngày', 1, 'phim-bo', 4),
(5, 'Phim Hoạt Hình', 'Phim hoạt hình cập nhật nhanh nhất', 1, 'phim-hoat-hinh', 5),
(6, 'Phim Mới', 'Phim mới cập nhật nhanh nhất', 1, 'phim-moi', 6),
(13, 'Phim Chiếu Rạp', 'Phim chiếu rạp mới nhất', 1, 'phim-chieu-rap', 0),
(14, 'Phim Bộ Mỹ', 'Phim Bộ Mỹ cập nhập mới nhất', 1, 'phim-bo-my', 1),
(15, 'Phim Bộ Trung Quốc', 'Phim Bộ Trung Quốc cập nhập mới nhất', 1, 'phim-bo-trung-quoc', 2),
(16, 'Phim Bộ Hàn Quốc', 'Phim Bộ Hàn Quốc cập nhập nhanh nhất', 1, 'phim-bo-han-quoc', 3);

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
  `created_at` varchar(20) NOT NULL,
  `updated_at` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `episodes`
--

INSERT INTO `episodes` (`id`, `movie_id`, `linkphim`, `episode`, `created_at`, `updated_at`) VALUES
(13, 27, '<p><iframe allowfullscrenn frameborder=\"0\" height=\"360\" sorolling=\"0\" src=\"https://short.ink/b0-CMdFl4\" width=\"100%\"></iframe></p>', 'FullHD', '2022-07-15 15:40:22', '2022-07-15 15:40:22'),
(14, 28, '<p><iframe allowfullscrenn frameborder=\"0\" height=\"360\" sorolling=\"0\" src=\"https://short.ink/zyJym-B-J\" width=\"100%\"></iframe></p>', 'FullHD', '2022-07-15 20:22:32', '2022-07-15 20:22:32'),
(15, 33, '<p><iframe allowfullscrenn frameborder=\"0\" height=\"360\" sorolling=\"0\" src=\"https://short.ink/yn-BfhJr9\" width=\"100%\"></iframe></p>', 'FullHD', '2022-07-15 20:34:09', '2022-07-15 20:34:09'),
(16, 34, '<p><iframe allowfullscrenn frameborder=\"0\" height=\"360\" sorolling=\"0\" src=\"https://short.ink/eFlLvWOUk\" width=\"100%\"></iframe></p>', 'FullHD', '2022-07-15 20:38:05', '2022-07-15 20:38:05');

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `thoiluong` varchar(20) DEFAULT NULL,
  `description` longtext NOT NULL,
  `tags` text DEFAULT NULL,
  `status` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `thuocphim` varchar(10) NOT NULL,
  `genre_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `phim_hot` int(11) NOT NULL,
  `resolution` int(11) NOT NULL DEFAULT 0,
  `name_eng` varchar(255) NOT NULL,
  `trailer` varchar(255) DEFAULT NULL,
  `phude` int(11) NOT NULL DEFAULT 0,
  `ngaytao` varchar(255) DEFAULT NULL,
  `ngaycapnhat` varchar(255) DEFAULT NULL,
  `year` varchar(20) DEFAULT NULL,
  `topview` int(11) DEFAULT NULL,
  `season` int(50) DEFAULT 0,
  `sotap` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `movies`
--

INSERT INTO `movies` (`id`, `title`, `thoiluong`, `description`, `tags`, `status`, `image`, `slug`, `category_id`, `thuocphim`, `genre_id`, `country_id`, `phim_hot`, `resolution`, `name_eng`, `trailer`, `phude`, `ngaytao`, `ngaycapnhat`, `year`, `topview`, `season`, `sotap`) VALUES
(27, 'KUNG FU PANDA: HIỆP SĨ RỒNG (PHẦN 1)', '120 phút', 'Kung Fu Panda: Hiệp Sĩ Rồng (Phần 1) - Kung Fu Panda: The Dragon Knight (Season 1), Kung Fu Panda: The Dragon Knight (Season 1) 2022 Full (11/11) Season 1\r\nChiến binh huyền thoại Po bắt tay với một hiệp sĩ Anh ưu tú trong nhiệm vụ có quy mô toàn cầu để giành lại các vũ khí ma thuật, rửa sạch thanh danh và cứu thế giới!', '18+ PHIM BOM TẤN - CHIẾU RẠP Phim Bí Ẩn-Siêu Nhiên Phim Bộ Phim Bộ Anh Phim Bộ Hàn Quốc Phim Bộ Mới Phim Bộ Mỹ Phim Bộ Nhật Bản Phim Bộ Thái Lan Phim Bộ Trung Quốc Phim Bộ Úc Phim Chiến Tranh Phim Chiếu Rạp Phim Châu Tinh Trì Phim Chính Kịch - Drama Phim Cổ Trang Phimgi.net Phim Gia Đình Phim Hentai Phim HOT Phim Hoạt Hình Phim Hài Hước Phim Hành Động Phim Hình Sự Phim Hồi Hộp-Gây Cấn Phim Kinh Dị Phim Kinh Điển Phim Lẻ Phim Lẻ Mới Phim Netflix Phim Người Lớn Phim Phiêu Lưu Phim Phụ Đề Anh Ngữ Phim Siêu Anh Hùng Phim Thuyết Minh Phim Thần Thoại Phim Thể Thao-Âm Nhạc Phim Tài Liệu Phim Tâm Lý Phim Tình Cảm-Lãng Mạn Phim Viễn Tưởng Phim Việt Nam Phim Võ Thuật', 1, '62d0e0728024b203.jpg', 'kung-fu-panda-hiep-si-rong-phan-1', 2, 'phimle', 9, 6, 1, 4, 'KUNG FU PANDA: THE DRAGON KNIG', 'PXi3Mv6KMzY', 0, '2022-07-15 15:39:51', '2022-07-15 15:39:51', NULL, NULL, 0, 0),
(28, 'Sát Thủ Nhân Tạo 2: Mẫu Vật Còn Lại', '120 phút', 'Sát Thủ Nhân Tạo 2: Mẫu Vật Còn Lại - The Witch Part 2: The Other One, The Witch Part 2: The Other One 2022 HD\r\nMột cô gái tỉnh dậy trong một phòng thí nghiệm bí mật và gặp Kyung-hee, người đang cố gắng bảo vệ cô khỏi một băng nhóm. Cuối cùng khi cả nhóm tìm thấy cô gái, họ bị áp đảo bởi một sức mạnh bất ngờ.', '18+ PHIM BOM TẤN - CHIẾU RẠP Phim Bí Ẩn-Siêu Nhiên Phim Bộ Phim Bộ Anh Phim Bộ Hàn Quốc Phim Bộ Mới Phim Bộ Mỹ Phim Bộ Nhật Bản Phim Bộ Thái Lan Phim Bộ Trung Quốc Phim Bộ Úc Phim Chiến Tranh Phim Chiếu Rạp Phim Châu Tinh Trì Phim Chính Kịch - Drama Phim Cổ Trang Phimgi.net Phim Gia Đình Phim Hentai Phim HOT Phim Hoạt Hình Phim Hài Hước Phim Hành Động Phim Hình Sự Phim Hồi Hộp-Gây Cấn Phim Kinh Dị Phim Kinh Điển Phim Lẻ Phim Lẻ Mới Phim Netflix Phim Người Lớn Phim Phiêu Lưu Phim Phụ Đề Anh Ngữ Phim Siêu Anh Hùng Phim Thuyết Minh Phim Thần Thoại Phim Thể Thao-Âm Nhạc Phim Tài Liệu Phim Tâm Lý Phim Tình Cảm-Lãng Mạn Phim Viễn Tưởng Phim Việt Nam Phim Võ Thuật', 1, '62d0e10f6e93f1890.jpg', 'sat-thu-nhan-tao-2-mau-vat-con-lai', 13, 'phimle', 8, 2, 1, 4, 'The Witch Part 2: The Other One', 'NprcHuYuP54', 0, '2022-07-15 20:14:40', '2022-07-15 20:14:40', NULL, NULL, 0, 0),
(33, 'Thế Giới Khủng Long: Lãnh Địa', '120 phút', 'Thế Giới Khủng Long: Lãnh Địa - Jurassic World Dominion, Jurassic World Dominion 2022 Full\r\nBốn năm sau sự hủy diệt của Isla Nublar, loài khủng long hiện đang sống – và săn – cùng với con người trên khắp thế giới. Sự cân bằng mong manh này sẽ định hình lại tương lai và xác định, một lần và mãi mãi, liệu con người có tiếp tục là kẻ săn mồi đỉnh cao trên hành tinh mà họ đang chia sẻ với những sinh vật đáng sợ nhất lịch sử trong một Kỷ nguyên mới hay không.', '18+ PHIM BOM TẤN - CHIẾU RẠP Phim Bí Ẩn-Siêu Nhiên Phim Bộ Phim Bộ Anh Phim Bộ Hàn Quốc Phim Bộ Mới Phim Bộ Mỹ Phim Bộ Nhật Bản Phim Bộ Thái Lan Phim Bộ Trung Quốc Phim Bộ Úc Phim Chiến Tranh Phim Chiếu Rạp Phim Châu Tinh Trì Phim Chính Kịch - Drama Phim Cổ Trang Phimgi.net Phim Gia Đình Phim Hentai Phim HOT Phim Hoạt Hình Phim Hài Hước Phim Hành Động Phim Hình Sự Phim Hồi Hộp-Gây Cấn Phim Kinh Dị Phim Kinh Điển Phim Lẻ Phim Lẻ Mới Phim Netflix Phim Người Lớn Phim Phiêu Lưu Phim Phụ Đề Anh Ngữ Phim Siêu Anh Hùng Phim Thuyết Minh Phim Thần Thoại Phim Thể Thao-Âm Nhạc Phim Tài Liệu Phim Tâm Lý Phim Tình Cảm-Lãng Mạn Phim Viễn Tưởng Phim Việt Nam Phim Võ Thuật', 1, '62a2cbe1d7f678006.jpg', 'the-gioi-khung-long-lanh-dia', 13, 'phimle', 9, 2, 1, 4, 'Jurassic World Dominion', '3y0KM5jUnmk', 0, '2022-07-15 20:30:11', '2022-07-15 20:34:36', NULL, NULL, 0, 0),
(34, 'Người Môi Giới – Broker', '120 phút', 'Một người đàn ông làm công việc \"trung chuyển\" các em bé bị bỏ rơi đang phải đối mặt với sự điều tra từ phía cảnh sát. Kết quả sẽ ra sao?', '18+ PHIM BOM TẤN - CHIẾU RẠP Phim Bí Ẩn-Siêu Nhiên Phim Bộ Phim Bộ Anh Phim Bộ Hàn Quốc Phim Bộ Mới Phim Bộ Mỹ Phim Bộ Nhật Bản Phim Bộ Thái Lan Phim Bộ Trung Quốc Phim Bộ Úc Phim Chiến Tranh Phim Chiếu Rạp Phim Châu Tinh Trì Phim Chính Kịch - Drama Phim Cổ Trang Phimgi.net Phim Gia Đình Phim Hentai Phim HOT Phim Hoạt Hình Phim Hài Hước Phim Hành Động Phim Hình Sự Phim Hồi Hộp-Gây Cấn Phim Kinh Dị Phim Kinh Điển Phim Lẻ Phim Lẻ Mới Phim Netflix Phim Người Lớn Phim Phiêu Lưu Phim Phụ Đề Anh Ngữ Phim Siêu Anh Hùng Phim Thuyết Minh Phim Thần Thoại Phim Thể Thao-Âm Nhạc Phim Tài Liệu Phim Tâm Lý Phim Tình Cảm-Lãng Mạn Phim Viễn Tưởng Phim Việt Nam Phim Võ Thuật', 1, '62ce4dc1282fc7886.jpg', 'nguoi-moi-gioi-–-broker', 13, 'phimle', 9, 1, 1, 4, 'Broker', 'AU5KLnOZQVY', 0, '2022-07-15 20:37:02', '2022-07-15 20:37:02', NULL, NULL, 0, 0);

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
(50, 27, 1),
(51, 27, 3),
(52, 27, 6),
(53, 27, 8),
(54, 27, 9),
(55, 28, 1),
(56, 28, 6),
(57, 28, 7),
(58, 28, 8),
(77, 33, 5),
(78, 33, 8),
(79, 33, 9),
(80, 34, 8),
(81, 34, 9);

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'Admin Nghia', 'ssgarenss@gmail.com', NULL, '$2y$10$k3ixBPGAAXLirZkjOt2YJO73Z0ONSjFinu0C7/ZGbwxUgE4gD051W', 'WJOwtJ8FuzuqDzHE5g473CPBX9vwbaUtZNwjMXX43supBANGeODqFzpbU6f3', '2022-07-05 00:16:45', '2022-07-05 00:16:45');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

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
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `episodes`
--
ALTER TABLE `episodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `movie_genre`
--
ALTER TABLE `movie_genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `episodes`
--
ALTER TABLE `episodes`
  ADD CONSTRAINT `episodes_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `movie_genre`
--
ALTER TABLE `movie_genre`
  ADD CONSTRAINT `movie_genre_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
