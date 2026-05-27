-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 27, 2026 lúc 06:55 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `du_lich_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Ẩm thực', 'am-thuc', 'Khám phá ẩm thực đặc sắc các vùng miền Việt Nam và thế giới', NULL, '2026-05-26 11:27:03', '2026-05-26 11:27:03'),
(2, 'Điểm đến', 'diem-den', 'Giới thiệu các địa điểm du lịch hấp dẫn trong và ngoài nước', NULL, '2026-05-26 11:27:03', '2026-05-26 11:27:03'),
(3, 'Checkin', 'checkin', 'Những địa điểm checkin sống ảo cực chất, góc chụp đẹp', NULL, '2026-05-26 11:27:03', '2026-05-26 11:27:03'),
(4, 'Kinh nghiệm', 'kinh-nghiem', 'Chia sẻ kinh nghiệm du lịch thực tế từ cộng đồng', NULL, '2026-05-26 11:27:03', '2026-05-26 11:27:03'),
(5, 'Khách sạn', 'khach-san', 'Review khách sạn, resort, homestay chất lượng', NULL, '2026-05-26 11:27:03', '2026-05-26 11:27:03'),
(6, 'Cẩm nang', 'cam-nang', 'Cẩm nang du lịch chi tiết từ A đến Z', NULL, '2026-05-26 11:27:03', '2026-05-26 11:27:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `is_approved` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `post_id`, `content`, `is_approved`, `created_at`, `updated_at`) VALUES
(1, 6, 1, 'Lần đầu đến đây mình cũng lo lắng lắm nhưng nhờ bài viết này mà mình tự tin hơn nhiều. Cảm ơn tác giả!', 1, '2026-05-13 21:27:03', '2026-05-25 11:27:03'),
(2, 7, 1, 'Mình đã đến đây 2 lần rồi và lần nào cũng không muốn về. Bài viết của bạn đã tóm tắt được hết những điểm hay nhất!', 1, '2026-05-09 13:27:03', '2026-05-26 11:27:03'),
(3, 3, 1, 'Lần đầu đến đây mình cũng lo lắng lắm nhưng nhờ bài viết này mà mình tự tin hơn nhiều. Cảm ơn tác giả!', 1, '2026-05-16 09:27:03', '2026-05-21 11:27:03'),
(4, 8, 1, 'Mình đã đến đây 2 lần rồi và lần nào cũng không muốn về. Bài viết của bạn đã tóm tắt được hết những điểm hay nhất!', 1, '2026-05-22 18:27:03', '2026-05-24 11:27:03'),
(5, 5, 1, 'Mình đã chia sẻ bài này cho cả nhóm bạn để cùng lên kế hoạch. Ai cũng thích và muốn đi ngay!', 1, '2026-05-09 10:27:03', '2026-05-22 11:27:03'),
(6, 4, 1, 'Lần đầu đến đây mình cũng lo lắng lắm nhưng nhờ bài viết này mà mình tự tin hơn nhiều. Cảm ơn tác giả!', 1, '2026-05-06 03:27:03', '2026-05-24 11:27:03'),
(7, 2, 1, 'Mình đã đến đây 2 lần rồi và lần nào cũng không muốn về. Bài viết của bạn đã tóm tắt được hết những điểm hay nhất!', 1, '2026-05-09 08:27:03', '2026-05-24 11:27:03'),
(8, 8, 2, 'Thông tin về giá cả rất cập nhật và chính xác. Mình đã check và đúng như bạn nói. Cảm ơn!', 1, '2026-05-25 11:27:03', '2026-05-24 11:27:03'),
(9, 5, 2, 'Đọc bài này mà thèm đi du lịch quá! Mình đang tiết kiệm tiền để thực hiện chuyến đi này. Cảm ơn bạn đã chia sẻ!', 1, '2026-05-08 07:27:03', '2026-05-26 11:27:03'),
(10, 7, 2, 'Tuyệt vời! Mình vừa đặt vé xong sau khi đọc bài này. Hy vọng chuyến đi sẽ đẹp như bạn mô tả.', 1, '2026-05-10 17:27:03', '2026-05-22 11:27:03'),
(11, 3, 2, 'Bài viết giúp mình tiết kiệm được rất nhiều thời gian research. Thông tin đầy đủ và cập nhật, rất đáng tin cậy.', 1, '2026-05-06 05:27:03', '2026-05-24 11:27:03'),
(12, 4, 2, 'Mình đã đến đây 2 lần rồi và lần nào cũng không muốn về. Bài viết của bạn đã tóm tắt được hết những điểm hay nhất!', 1, '2026-05-02 03:27:03', '2026-05-25 11:27:03'),
(13, 8, 3, 'Đọc bài này mà thèm đi du lịch quá! Mình đang tiết kiệm tiền để thực hiện chuyến đi này. Cảm ơn bạn đã chia sẻ!', 1, '2026-05-21 20:27:03', '2026-05-26 11:27:03'),
(14, 1, 3, 'Lần đầu đến đây mình cũng lo lắng lắm nhưng nhờ bài viết này mà mình tự tin hơn nhiều. Cảm ơn tác giả!', 1, '2026-05-07 06:27:03', '2026-05-21 11:27:03'),
(15, 5, 3, 'Bài viết giúp mình tiết kiệm được rất nhiều thời gian research. Thông tin đầy đủ và cập nhật, rất đáng tin cậy.', 1, '2026-05-21 04:27:03', '2026-05-21 11:27:03'),
(16, 2, 3, 'Cảm ơn bạn đã chia sẻ những mẹo tiết kiệm này! Mình áp dụng và tiết kiệm được khá nhiều so với dự kiến ban đầu.', 1, '2026-05-11 19:27:03', '2026-05-22 11:27:03'),
(17, 6, 3, 'Lần đầu đến đây mình cũng lo lắng lắm nhưng nhờ bài viết này mà mình tự tin hơn nhiều. Cảm ơn tác giả!', 1, '2026-04-25 15:27:03', '2026-05-23 11:27:03'),
(18, 7, 3, 'Bài viết rất chi tiết và dễ đọc. Mình thích cách bạn chia nhỏ thông tin theo từng mục, rất dễ theo dõi.', 1, '2026-05-10 05:27:03', '2026-05-21 11:27:03'),
(19, 4, 3, 'Bài viết rất hay và chi tiết! Mình vừa đi về và thấy đúng y chang những gì bạn mô tả. Cảm ơn bạn nhiều nhé!', 1, '2026-05-19 12:27:03', '2026-05-26 11:27:03'),
(20, 8, 4, 'Cảm ơn bạn đã chia sẻ kinh nghiệm thực tế. Mình thấy nhiều blog khác viết không đúng với thực tế, nhưng bài này rất chân thực.', 1, '2026-04-26 23:27:03', '2026-05-22 11:27:03'),
(21, 3, 4, 'Lần đầu đến đây mình cũng lo lắng lắm nhưng nhờ bài viết này mà mình tự tin hơn nhiều. Cảm ơn tác giả!', 1, '2026-05-09 11:27:03', '2026-05-24 11:27:03'),
(22, 6, 4, 'Thông tin rất hữu ích, mình đang lên kế hoạch cho chuyến đi tháng sau. Cho mình hỏi thêm về chi phí di chuyển nội địa được không?', 1, '2026-05-22 06:27:03', '2026-05-23 11:27:03'),
(23, 2, 4, 'Mình đã đến đây theo gợi ý của bài viết này và không hối hận chút nào. Mọi thứ đều đúng như mô tả!', 1, '2026-04-25 13:27:03', '2026-05-24 11:27:03'),
(24, 7, 4, 'Tuyệt vời! Mình vừa đặt vé xong sau khi đọc bài này. Hy vọng chuyến đi sẽ đẹp như bạn mô tả.', 1, '2026-05-06 08:27:03', '2026-05-22 11:27:03'),
(25, 5, 4, 'Bài viết bổ ích lắm! Mình bookmark lại để tham khảo khi đi. Bạn có thể chia sẻ thêm về thời tiết không?', 1, '2026-05-21 12:27:03', '2026-05-22 11:27:03'),
(26, 1, 4, 'Đọc bài này mà thèm đi du lịch quá! Mình đang tiết kiệm tiền để thực hiện chuyến đi này. Cảm ơn bạn đã chia sẻ!', 1, '2026-04-28 05:27:03', '2026-05-25 11:27:03'),
(27, 2, 5, 'Bài viết rất hay và chi tiết! Mình vừa đi về và thấy đúng y chang những gì bạn mô tả. Cảm ơn bạn nhiều nhé!', 1, '2026-05-21 12:27:03', '2026-05-25 11:27:03'),
(28, 1, 5, 'Lần đầu đến đây mình cũng lo lắng lắm nhưng nhờ bài viết này mà mình tự tin hơn nhiều. Cảm ơn tác giả!', 1, '2026-05-16 03:27:03', '2026-05-25 11:27:03'),
(29, 4, 5, 'Bài viết rất chi tiết và dễ đọc. Mình thích cách bạn chia nhỏ thông tin theo từng mục, rất dễ theo dõi.', 1, '2026-05-06 17:27:03', '2026-05-23 11:27:03'),
(30, 3, 5, 'Cảm ơn bạn đã chia sẻ những mẹo tiết kiệm này! Mình áp dụng và tiết kiệm được khá nhiều so với dự kiến ban đầu.', 1, '2026-05-16 11:27:03', '2026-05-23 11:27:03'),
(31, 6, 5, 'Thông tin về giá cả rất cập nhật và chính xác. Mình đã check và đúng như bạn nói. Cảm ơn!', 1, '2026-05-03 11:27:03', '2026-05-22 11:27:03'),
(32, 8, 5, 'Bài viết bổ ích lắm! Mình bookmark lại để tham khảo khi đi. Bạn có thể chia sẻ thêm về thời tiết không?', 1, '2026-04-27 22:27:03', '2026-05-24 11:27:03'),
(33, 8, 6, 'Ảnh đẹp quá! Bạn chụp bằng máy gì vậy? Mình cũng muốn có những bức ảnh đẹp như thế này.', 1, '2026-05-25 10:27:03', '2026-05-24 11:27:03'),
(34, 5, 6, 'Bài viết rất chi tiết và dễ đọc. Mình thích cách bạn chia nhỏ thông tin theo từng mục, rất dễ theo dõi.', 1, '2026-04-28 03:27:03', '2026-05-25 11:27:03'),
(35, 3, 6, 'Bài viết bổ ích lắm! Mình bookmark lại để tham khảo khi đi. Bạn có thể chia sẻ thêm về thời tiết không?', 1, '2026-04-30 08:27:03', '2026-05-25 11:27:03'),
(36, 1, 6, 'Ảnh đẹp quá! Bạn chụp bằng máy gì vậy? Mình cũng muốn có những bức ảnh đẹp như thế này.', 1, '2026-05-15 10:27:03', '2026-05-24 11:27:03'),
(37, 7, 6, 'Mình đã đọc nhiều bài về chủ đề này nhưng bài của bạn là đầy đủ và thực tế nhất. Rất đáng để bookmark!', 1, '2026-05-04 01:27:03', '2026-05-23 11:27:03'),
(38, 4, 7, 'Mình đã đến đây 2 lần rồi và lần nào cũng không muốn về. Bài viết của bạn đã tóm tắt được hết những điểm hay nhất!', 1, '2026-05-18 16:27:03', '2026-05-24 11:27:03'),
(39, 5, 7, 'Ảnh đẹp quá! Bạn chụp bằng máy gì vậy? Mình cũng muốn có những bức ảnh đẹp như thế này.', 1, '2026-05-13 07:27:03', '2026-05-24 11:27:03'),
(40, 3, 7, 'Cảm ơn bạn đã chia sẻ những mẹo tiết kiệm này! Mình áp dụng và tiết kiệm được khá nhiều so với dự kiến ban đầu.', 1, '2026-05-10 01:27:03', '2026-05-25 11:27:03'),
(41, 8, 7, 'Mình đã đọc nhiều bài về chủ đề này nhưng bài của bạn là đầy đủ và thực tế nhất. Rất đáng để bookmark!', 1, '2026-04-27 11:27:03', '2026-05-24 11:27:03'),
(42, 2, 7, 'Lần đầu đến đây mình cũng lo lắng lắm nhưng nhờ bài viết này mà mình tự tin hơn nhiều. Cảm ơn tác giả!', 1, '2026-05-20 13:27:03', '2026-05-25 11:27:03'),
(43, 8, 8, 'Hình ảnh trong bài đẹp quá, nhìn là muốn xách ba lô đi ngay. Bạn có thể chia sẻ thêm về mùa nào đẹp nhất không?', 1, '2026-05-23 03:27:03', '2026-05-26 11:27:03'),
(44, 5, 8, 'Cảm ơn bạn đã chia sẻ kinh nghiệm thực tế. Mình thấy nhiều blog khác viết không đúng với thực tế, nhưng bài này rất chân thực.', 1, '2026-05-22 20:27:03', '2026-05-23 11:27:03'),
(45, 4, 8, 'Bài viết bổ ích lắm! Mình bookmark lại để tham khảo khi đi. Bạn có thể chia sẻ thêm về thời tiết không?', 1, '2026-05-04 18:27:03', '2026-05-23 11:27:03'),
(46, 2, 8, 'Bài viết giúp mình tiết kiệm được rất nhiều thời gian research. Thông tin đầy đủ và cập nhật, rất đáng tin cậy.', 1, '2026-05-03 19:27:03', '2026-05-22 11:27:03'),
(47, 7, 8, 'Mình đã chia sẻ bài này cho cả nhóm bạn để cùng lên kế hoạch. Ai cũng thích và muốn đi ngay!', 1, '2026-05-24 17:27:03', '2026-05-24 11:27:03'),
(48, 3, 8, 'Mình đã đọc nhiều bài về chủ đề này nhưng bài của bạn là đầy đủ và thực tế nhất. Rất đáng để bookmark!', 1, '2026-05-19 20:27:03', '2026-05-21 11:27:03'),
(49, 6, 8, 'Cảm ơn bạn đã chia sẻ những mẹo tiết kiệm này! Mình áp dụng và tiết kiệm được khá nhiều so với dự kiến ban đầu.', 1, '2026-05-12 01:27:03', '2026-05-23 11:27:03'),
(50, 8, 9, 'Thông tin về giá cả rất cập nhật và chính xác. Mình đã check và đúng như bạn nói. Cảm ơn!', 1, '2026-05-14 19:27:03', '2026-05-25 11:27:03'),
(51, 1, 9, 'Mình đã chia sẻ bài này cho cả nhóm bạn để cùng lên kế hoạch. Ai cũng thích và muốn đi ngay!', 1, '2026-05-14 07:27:03', '2026-05-24 11:27:03'),
(52, 7, 9, 'Bài viết giúp mình tiết kiệm được rất nhiều thời gian research. Thông tin đầy đủ và cập nhật, rất đáng tin cậy.', 1, '2026-05-10 05:27:03', '2026-05-22 11:27:03'),
(53, 3, 9, 'Bài viết rất hay và chi tiết! Mình vừa đi về và thấy đúng y chang những gì bạn mô tả. Cảm ơn bạn nhiều nhé!', 1, '2026-04-29 08:27:03', '2026-05-23 11:27:03'),
(54, 5, 9, 'Thông tin về giá cả rất cập nhật và chính xác. Mình đã check và đúng như bạn nói. Cảm ơn!', 1, '2026-04-26 16:27:03', '2026-05-26 11:27:03'),
(55, 6, 9, 'Lần đầu đến đây mình cũng lo lắng lắm nhưng nhờ bài viết này mà mình tự tin hơn nhiều. Cảm ơn tác giả!', 1, '2026-05-22 13:27:03', '2026-05-26 11:27:03'),
(56, 4, 9, 'Lần đầu đến đây mình cũng lo lắng lắm nhưng nhờ bài viết này mà mình tự tin hơn nhiều. Cảm ơn tác giả!', 1, '2026-05-17 03:27:03', '2026-05-23 11:27:03'),
(57, 6, 10, 'Cảm ơn bạn đã chia sẻ kinh nghiệm thực tế. Mình thấy nhiều blog khác viết không đúng với thực tế, nhưng bài này rất chân thực.', 1, '2026-05-22 16:27:03', '2026-05-25 11:27:03'),
(58, 2, 10, 'Hình ảnh trong bài đẹp quá, nhìn là muốn xách ba lô đi ngay. Bạn có thể chia sẻ thêm về mùa nào đẹp nhất không?', 1, '2026-05-23 22:27:03', '2026-05-25 11:27:03'),
(59, 5, 10, 'Đọc bài này mà thèm đi du lịch quá! Mình đang tiết kiệm tiền để thực hiện chuyến đi này. Cảm ơn bạn đã chia sẻ!', 1, '2026-05-02 11:27:03', '2026-05-22 11:27:03'),
(60, 7, 10, 'Bài viết giúp mình tiết kiệm được rất nhiều thời gian research. Thông tin đầy đủ và cập nhật, rất đáng tin cậy.', 1, '2026-05-15 21:27:03', '2026-05-26 11:27:03'),
(61, 8, 10, 'Cảm ơn bạn đã chia sẻ kinh nghiệm thực tế. Mình thấy nhiều blog khác viết không đúng với thực tế, nhưng bài này rất chân thực.', 1, '2026-05-17 23:27:03', '2026-05-21 11:27:03'),
(62, 4, 10, 'Hình ảnh trong bài đẹp quá, nhìn là muốn xách ba lô đi ngay. Bạn có thể chia sẻ thêm về mùa nào đẹp nhất không?', 1, '2026-04-29 06:27:03', '2026-05-21 11:27:03'),
(63, 1, 10, 'Bài viết rất chi tiết và dễ đọc. Mình thích cách bạn chia nhỏ thông tin theo từng mục, rất dễ theo dõi.', 1, '2026-05-15 00:27:03', '2026-05-21 11:27:03'),
(64, 6, 11, 'Cảm ơn bạn đã chia sẻ những mẹo tiết kiệm này! Mình áp dụng và tiết kiệm được khá nhiều so với dự kiến ban đầu.', 1, '2026-05-01 12:27:03', '2026-05-26 11:27:03'),
(65, 2, 11, 'Mình đã đến đây theo gợi ý của bài viết này và không hối hận chút nào. Mọi thứ đều đúng như mô tả!', 1, '2026-05-01 15:27:03', '2026-05-24 11:27:03'),
(66, 7, 11, 'Cảm ơn bạn đã chia sẻ những mẹo tiết kiệm này! Mình áp dụng và tiết kiệm được khá nhiều so với dự kiến ban đầu.', 1, '2026-04-25 17:27:03', '2026-05-21 11:27:03'),
(67, 1, 11, 'Thông tin về giá cả rất cập nhật và chính xác. Mình đã check và đúng như bạn nói. Cảm ơn!', 1, '2026-05-06 07:27:03', '2026-05-25 11:27:03'),
(68, 4, 12, 'Đọc bài này mà thèm đi du lịch quá! Mình đang tiết kiệm tiền để thực hiện chuyến đi này. Cảm ơn bạn đã chia sẻ!', 1, '2026-05-10 12:27:03', '2026-05-26 11:27:03'),
(69, 6, 12, 'Thông tin về giá cả rất cập nhật và chính xác. Mình đã check và đúng như bạn nói. Cảm ơn!', 1, '2026-04-30 18:27:03', '2026-05-24 11:27:03'),
(70, 1, 12, 'Cảm ơn bạn đã chia sẻ kinh nghiệm thực tế. Mình thấy nhiều blog khác viết không đúng với thực tế, nhưng bài này rất chân thực.', 1, '2026-05-06 16:27:03', '2026-05-23 11:27:03'),
(71, 8, 12, 'Cảm ơn bạn đã chia sẻ những mẹo tiết kiệm này! Mình áp dụng và tiết kiệm được khá nhiều so với dự kiến ban đầu.', 1, '2026-05-16 06:27:03', '2026-05-25 11:27:03'),
(72, 2, 12, 'Bài viết giúp mình tiết kiệm được rất nhiều thời gian research. Thông tin đầy đủ và cập nhật, rất đáng tin cậy.', 1, '2026-05-23 09:27:03', '2026-05-24 11:27:03'),
(73, 4, 13, 'Đọc bài này mà thèm đi du lịch quá! Mình đang tiết kiệm tiền để thực hiện chuyến đi này. Cảm ơn bạn đã chia sẻ!', 1, '2026-05-21 21:27:03', '2026-05-25 11:27:03'),
(74, 3, 13, 'Ảnh đẹp quá! Bạn chụp bằng máy gì vậy? Mình cũng muốn có những bức ảnh đẹp như thế này.', 1, '2026-05-23 16:27:03', '2026-05-21 11:27:03'),
(75, 2, 13, 'Bài viết rất hay và chi tiết! Mình vừa đi về và thấy đúng y chang những gì bạn mô tả. Cảm ơn bạn nhiều nhé!', 1, '2026-05-23 19:27:03', '2026-05-22 11:27:03'),
(76, 1, 13, 'Tuyệt vời! Mình vừa đặt vé xong sau khi đọc bài này. Hy vọng chuyến đi sẽ đẹp như bạn mô tả.', 1, '2026-04-27 19:27:03', '2026-05-23 11:27:03'),
(77, 5, 13, 'Bài viết bổ ích lắm! Mình bookmark lại để tham khảo khi đi. Bạn có thể chia sẻ thêm về thời tiết không?', 1, '2026-05-17 21:27:03', '2026-05-21 11:27:03'),
(78, 7, 13, 'Đọc bài này mà thèm đi du lịch quá! Mình đang tiết kiệm tiền để thực hiện chuyến đi này. Cảm ơn bạn đã chia sẻ!', 1, '2026-04-29 00:27:03', '2026-05-22 11:27:03'),
(79, 8, 13, 'Mình đã đến đây 2 lần rồi và lần nào cũng không muốn về. Bài viết của bạn đã tóm tắt được hết những điểm hay nhất!', 1, '2026-04-27 06:27:03', '2026-05-25 11:27:03'),
(80, 8, 14, 'Bài viết bổ ích lắm! Mình bookmark lại để tham khảo khi đi. Bạn có thể chia sẻ thêm về thời tiết không?', 1, '2026-05-02 10:27:03', '2026-05-26 11:27:03'),
(81, 6, 14, 'Đọc bài này mà thèm đi du lịch quá! Mình đang tiết kiệm tiền để thực hiện chuyến đi này. Cảm ơn bạn đã chia sẻ!', 1, '2026-05-24 23:27:03', '2026-05-23 11:27:03'),
(82, 4, 14, 'Ảnh đẹp quá! Bạn chụp bằng máy gì vậy? Mình cũng muốn có những bức ảnh đẹp như thế này.', 1, '2026-05-06 06:27:03', '2026-05-25 11:27:03'),
(83, 3, 14, 'Hình ảnh trong bài đẹp quá, nhìn là muốn xách ba lô đi ngay. Bạn có thể chia sẻ thêm về mùa nào đẹp nhất không?', 1, '2026-04-30 23:27:03', '2026-05-24 11:27:03'),
(84, 2, 14, 'Thông tin rất hữu ích, mình đang lên kế hoạch cho chuyến đi tháng sau. Cho mình hỏi thêm về chi phí di chuyển nội địa được không?', 1, '2026-05-18 23:27:03', '2026-05-26 11:27:03'),
(85, 5, 14, 'Tuyệt vời! Mình vừa đặt vé xong sau khi đọc bài này. Hy vọng chuyến đi sẽ đẹp như bạn mô tả.', 1, '2026-05-13 14:27:03', '2026-05-22 11:27:03'),
(86, 2, 15, 'Ảnh đẹp quá! Bạn chụp bằng máy gì vậy? Mình cũng muốn có những bức ảnh đẹp như thế này.', 1, '2026-05-17 11:27:03', '2026-05-26 11:27:03'),
(87, 5, 15, 'Tuyệt vời! Mình vừa đặt vé xong sau khi đọc bài này. Hy vọng chuyến đi sẽ đẹp như bạn mô tả.', 1, '2026-05-19 00:27:03', '2026-05-22 11:27:03'),
(88, 4, 15, 'Hình ảnh trong bài đẹp quá, nhìn là muốn xách ba lô đi ngay. Bạn có thể chia sẻ thêm về mùa nào đẹp nhất không?', 1, '2026-05-10 15:27:03', '2026-05-23 11:27:03'),
(89, 7, 15, 'Bài viết hay nhưng mình nghĩ bạn nên thêm thông tin về phương tiện di chuyển công cộng nữa thì hoàn hảo hơn.', 1, '2026-05-06 18:27:03', '2026-05-25 11:27:03'),
(90, 6, 15, 'Hình ảnh trong bài đẹp quá, nhìn là muốn xách ba lô đi ngay. Bạn có thể chia sẻ thêm về mùa nào đẹp nhất không?', 1, '2026-05-15 21:27:03', '2026-05-25 11:27:03'),
(91, 8, 16, 'Bài viết bổ ích lắm! Mình bookmark lại để tham khảo khi đi. Bạn có thể chia sẻ thêm về thời tiết không?', 1, '2026-04-27 11:27:03', '2026-05-23 11:27:03'),
(92, 7, 16, 'Đọc bài này mà thèm đi du lịch quá! Mình đang tiết kiệm tiền để thực hiện chuyến đi này. Cảm ơn bạn đã chia sẻ!', 1, '2026-05-03 11:27:03', '2026-05-26 11:27:03'),
(93, 5, 16, 'Tuyệt vời! Mình vừa đặt vé xong sau khi đọc bài này. Hy vọng chuyến đi sẽ đẹp như bạn mô tả.', 1, '2026-04-28 19:27:03', '2026-05-25 11:27:03'),
(94, 3, 16, 'Mình đã đến đây theo gợi ý của bài viết này và không hối hận chút nào. Mọi thứ đều đúng như mô tả!', 1, '2026-05-21 07:27:03', '2026-05-24 11:27:03'),
(95, 4, 16, 'Bài viết giúp mình tiết kiệm được rất nhiều thời gian research. Thông tin đầy đủ và cập nhật, rất đáng tin cậy.', 1, '2026-04-29 17:27:03', '2026-05-25 11:27:03'),
(96, 6, 16, 'Bài viết hay nhưng mình nghĩ bạn nên thêm thông tin về phương tiện di chuyển công cộng nữa thì hoàn hảo hơn.', 1, '2026-05-14 11:27:03', '2026-05-25 11:27:03'),
(97, 2, 17, 'Bài viết hay nhưng mình nghĩ bạn nên thêm thông tin về phương tiện di chuyển công cộng nữa thì hoàn hảo hơn.', 1, '2026-05-17 00:27:03', '2026-05-24 11:27:03'),
(98, 8, 17, 'Ảnh đẹp quá! Bạn chụp bằng máy gì vậy? Mình cũng muốn có những bức ảnh đẹp như thế này.', 1, '2026-05-17 15:27:03', '2026-05-21 11:27:03'),
(99, 6, 17, 'Tuyệt vời! Mình vừa đặt vé xong sau khi đọc bài này. Hy vọng chuyến đi sẽ đẹp như bạn mô tả.', 1, '2026-05-17 01:27:03', '2026-05-24 11:27:03'),
(100, 5, 17, 'Bài viết rất hay và chi tiết! Mình vừa đi về và thấy đúng y chang những gì bạn mô tả. Cảm ơn bạn nhiều nhé!', 1, '2026-04-27 08:27:03', '2026-05-24 11:27:03'),
(101, 4, 17, 'Thông tin rất hữu ích, mình đang lên kế hoạch cho chuyến đi tháng sau. Cho mình hỏi thêm về chi phí di chuyển nội địa được không?', 1, '2026-05-13 18:27:03', '2026-05-24 11:27:03'),
(102, 7, 17, 'Thông tin rất hữu ích, mình đang lên kế hoạch cho chuyến đi tháng sau. Cho mình hỏi thêm về chi phí di chuyển nội địa được không?', 1, '2026-05-12 17:27:03', '2026-05-23 11:27:03'),
(103, 1, 17, 'Ảnh đẹp quá! Bạn chụp bằng máy gì vậy? Mình cũng muốn có những bức ảnh đẹp như thế này.', 1, '2026-05-09 04:27:03', '2026-05-22 11:27:03'),
(104, 8, 18, 'Bài viết giúp mình tiết kiệm được rất nhiều thời gian research. Thông tin đầy đủ và cập nhật, rất đáng tin cậy.', 1, '2026-05-19 09:27:03', '2026-05-26 11:27:03'),
(105, 5, 18, 'Lần đầu đến đây mình cũng lo lắng lắm nhưng nhờ bài viết này mà mình tự tin hơn nhiều. Cảm ơn tác giả!', 1, '2026-04-26 21:27:03', '2026-05-24 11:27:03'),
(106, 6, 18, 'Mình đã đến đây theo gợi ý của bài viết này và không hối hận chút nào. Mọi thứ đều đúng như mô tả!', 1, '2026-05-15 14:27:03', '2026-05-24 11:27:03'),
(107, 2, 18, 'Mình đã đọc nhiều bài về chủ đề này nhưng bài của bạn là đầy đủ và thực tế nhất. Rất đáng để bookmark!', 1, '2026-05-03 10:27:03', '2026-05-22 11:27:03'),
(108, 1, 18, 'Bài viết bổ ích lắm! Mình bookmark lại để tham khảo khi đi. Bạn có thể chia sẻ thêm về thời tiết không?', 1, '2026-04-25 16:27:03', '2026-05-22 11:27:03'),
(109, 3, 18, 'Bài viết rất hay và chi tiết! Mình vừa đi về và thấy đúng y chang những gì bạn mô tả. Cảm ơn bạn nhiều nhé!', 1, '2026-05-25 10:27:03', '2026-05-24 11:27:03'),
(110, 7, 18, 'Đọc bài này mà thèm đi du lịch quá! Mình đang tiết kiệm tiền để thực hiện chuyến đi này. Cảm ơn bạn đã chia sẻ!', 1, '2026-05-04 16:27:03', '2026-05-25 11:27:03'),
(111, 4, 19, 'Cảm ơn bạn đã chia sẻ kinh nghiệm thực tế. Mình thấy nhiều blog khác viết không đúng với thực tế, nhưng bài này rất chân thực.', 1, '2026-05-22 16:27:03', '2026-05-21 11:27:03'),
(112, 8, 19, 'Cảm ơn bạn đã chia sẻ những mẹo tiết kiệm này! Mình áp dụng và tiết kiệm được khá nhiều so với dự kiến ban đầu.', 1, '2026-05-09 11:27:03', '2026-05-26 11:27:03'),
(113, 7, 19, 'Đọc bài này mà thèm đi du lịch quá! Mình đang tiết kiệm tiền để thực hiện chuyến đi này. Cảm ơn bạn đã chia sẻ!', 1, '2026-04-26 13:27:03', '2026-05-26 11:27:03'),
(114, 2, 19, 'Mình đã đến đây theo gợi ý của bài viết này và không hối hận chút nào. Mọi thứ đều đúng như mô tả!', 1, '2026-05-01 12:27:03', '2026-05-25 11:27:03'),
(115, 1, 20, 'Tuyệt vời! Mình vừa đặt vé xong sau khi đọc bài này. Hy vọng chuyến đi sẽ đẹp như bạn mô tả.', 1, '2026-05-15 07:27:03', '2026-05-23 11:27:03'),
(116, 5, 20, 'Bài viết giúp mình tiết kiệm được rất nhiều thời gian research. Thông tin đầy đủ và cập nhật, rất đáng tin cậy.', 1, '2026-04-27 02:27:03', '2026-05-22 11:27:03'),
(117, 3, 20, 'Thông tin về giá cả rất cập nhật và chính xác. Mình đã check và đúng như bạn nói. Cảm ơn!', 1, '2026-05-11 16:27:03', '2026-05-23 11:27:03'),
(118, 4, 20, 'Ảnh đẹp quá! Bạn chụp bằng máy gì vậy? Mình cũng muốn có những bức ảnh đẹp như thế này.', 1, '2026-05-20 14:27:03', '2026-05-26 11:27:03'),
(119, 8, 20, 'Lần đầu đến đây mình cũng lo lắng lắm nhưng nhờ bài viết này mà mình tự tin hơn nhiều. Cảm ơn tác giả!', 1, '2026-04-28 04:27:03', '2026-05-23 11:27:03'),
(120, 8, 21, 'Bài viết rất chi tiết và dễ đọc. Mình thích cách bạn chia nhỏ thông tin theo từng mục, rất dễ theo dõi.', 1, '2026-04-26 14:27:03', '2026-05-21 11:27:03'),
(121, 2, 21, 'Mình đã đến đây 2 lần rồi và lần nào cũng không muốn về. Bài viết của bạn đã tóm tắt được hết những điểm hay nhất!', 1, '2026-04-27 06:27:03', '2026-05-26 11:27:03'),
(122, 5, 21, 'Đọc bài này mà thèm đi du lịch quá! Mình đang tiết kiệm tiền để thực hiện chuyến đi này. Cảm ơn bạn đã chia sẻ!', 1, '2026-05-01 22:27:03', '2026-05-26 11:27:03'),
(123, 3, 21, 'Bài viết bổ ích lắm! Mình bookmark lại để tham khảo khi đi. Bạn có thể chia sẻ thêm về thời tiết không?', 1, '2026-05-14 04:27:03', '2026-05-25 11:27:03'),
(124, 1, 21, 'Thông tin về giá cả rất cập nhật và chính xác. Mình đã check và đúng như bạn nói. Cảm ơn!', 1, '2026-05-15 18:27:03', '2026-05-24 11:27:03'),
(125, 6, 21, 'Lần đầu đến đây mình cũng lo lắng lắm nhưng nhờ bài viết này mà mình tự tin hơn nhiều. Cảm ơn tác giả!', 1, '2026-05-24 06:27:03', '2026-05-25 11:27:03'),
(126, 4, 21, 'Cảm ơn bạn đã chia sẻ kinh nghiệm thực tế. Mình thấy nhiều blog khác viết không đúng với thực tế, nhưng bài này rất chân thực.', 1, '2026-04-29 07:27:03', '2026-05-26 11:27:03'),
(127, 8, 1, 'Bài viết hay lắm! Mình muốn hỏi thêm về vấn đề đặt phòng trước bao lâu thì tốt nhất?', 0, '2026-05-25 17:27:03', '2026-05-26 03:27:03'),
(128, 8, 2, 'Mình vừa đi về hôm qua, thực tế có một số điểm khác với bài viết nhưng nhìn chung vẫn đúng. Cảm ơn tác giả!', 0, '2026-05-25 08:27:03', '2026-05-26 09:27:03'),
(129, 4, 3, 'Giá cả trong bài có vẻ hơi cũ rồi, hiện tại đã tăng khá nhiều so với những gì bạn đề cập.', 0, '2026-05-26 09:27:03', '2026-05-25 23:27:03'),
(130, 5, 7, 'Bài viết rất chi tiết! Nhưng mình thấy thiếu thông tin về chỗ đổi tiền và ATM ở khu vực này.', 0, '2026-05-24 20:27:03', '2026-05-26 07:27:03'),
(131, 3, 8, 'Mình đã chia sẻ bài này lên group du lịch và được rất nhiều người like. Cảm ơn bạn đã viết bài chất lượng!', 0, '2026-05-25 19:27:03', '2026-05-26 07:27:03'),
(132, 4, 9, 'Lần đầu đọc blog này, thấy nội dung rất hay và hữu ích. Mình sẽ theo dõi thêm các bài viết khác.', 0, '2026-05-25 19:27:03', '2026-05-26 04:27:03'),
(133, 3, 12, 'Bạn có thể cho mình biết thêm về cách di chuyển từ sân bay về trung tâm không? Bài chưa đề cập đến phần này.', 0, '2026-05-25 09:27:03', '2026-05-26 02:27:03'),
(134, 4, 13, 'Mình đã đặt tour theo gợi ý của bài viết và rất hài lòng. Hướng dẫn viên nhiệt tình, cảnh đẹp như mô tả!', 0, '2026-05-25 05:27:03', '2026-05-26 10:27:03'),
(135, 4, 16, 'Thông tin rất hữu ích nhưng mình nghĩ bạn nên cập nhật lại giá vé vì đã thay đổi từ đầu năm nay.', 0, '2026-05-26 08:27:03', '2026-05-26 02:27:03'),
(136, 7, 17, 'Cảm ơn bài viết! Mình có một câu hỏi: nếu đi vào mùa mưa thì có nên đi không hay chờ mùa khô?', 0, '2026-05-26 10:27:03', '2026-05-26 01:27:03'),
(137, 7, 18, 'Bài viết quá hay! Mình đã lưu lại để tham khảo cho chuyến đi sắp tới. Cảm ơn tác giả rất nhiều!', 0, '2026-05-24 12:27:03', '2026-05-26 08:27:03'),
(138, 4, 21, 'Mình thấy bài viết này rất thực tế, không phóng đại như nhiều blog khác. Đáng tin cậy!', 0, '2026-05-25 19:27:03', '2026-05-26 07:27:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `favorites`
--

CREATE TABLE `favorites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `favorites`
--

INSERT INTO `favorites` (`id`, `user_id`, `post_id`, `created_at`, `updated_at`) VALUES
(1, 7, 1, '2026-05-19 11:27:03', '2026-05-26 11:27:03'),
(2, 8, 1, '2026-05-22 11:27:03', '2026-05-23 11:27:03'),
(3, 2, 1, '2026-05-12 11:27:03', '2026-05-26 11:27:03'),
(4, 4, 1, '2026-05-15 11:27:03', '2026-05-26 11:27:03'),
(5, 6, 1, '2026-05-13 11:27:03', '2026-05-24 11:27:03'),
(6, 3, 1, '2026-05-18 11:27:03', '2026-05-24 11:27:03'),
(7, 6, 2, '2026-05-16 11:27:03', '2026-05-26 11:27:03'),
(8, 4, 2, '2026-05-14 11:27:03', '2026-05-24 11:27:03'),
(9, 8, 2, '2026-05-11 11:27:03', '2026-05-25 11:27:03'),
(10, 7, 2, '2026-05-11 11:27:03', '2026-05-25 11:27:03'),
(11, 1, 3, '2026-05-19 11:27:03', '2026-05-23 11:27:03'),
(12, 2, 3, '2026-05-24 11:27:03', '2026-05-24 11:27:03'),
(13, 8, 3, '2026-05-25 11:27:03', '2026-05-24 11:27:03'),
(14, 4, 3, '2026-05-13 11:27:03', '2026-05-26 11:27:03'),
(15, 6, 3, '2026-05-19 11:27:03', '2026-05-25 11:27:03'),
(16, 3, 4, '2026-05-11 11:27:03', '2026-05-26 11:27:03'),
(17, 8, 4, '2026-05-23 11:27:03', '2026-05-23 11:27:03'),
(18, 6, 4, '2026-05-23 11:27:03', '2026-05-26 11:27:03'),
(19, 5, 4, '2026-05-12 11:27:03', '2026-05-26 11:27:03'),
(20, 7, 4, '2026-05-16 11:27:03', '2026-05-26 11:27:03'),
(21, 8, 5, '2026-05-24 11:27:03', '2026-05-25 11:27:03'),
(22, 6, 5, '2026-05-25 11:27:03', '2026-05-24 11:27:03'),
(23, 4, 5, '2026-05-24 11:27:03', '2026-05-24 11:27:03'),
(24, 3, 5, '2026-05-25 11:27:03', '2026-05-23 11:27:03'),
(25, 7, 5, '2026-05-17 11:27:03', '2026-05-23 11:27:03'),
(26, 2, 5, '2026-05-13 11:27:03', '2026-05-25 11:27:03'),
(27, 5, 6, '2026-05-17 11:27:03', '2026-05-25 11:27:03'),
(28, 3, 6, '2026-05-24 11:27:03', '2026-05-24 11:27:03'),
(29, 7, 6, '2026-05-11 11:27:03', '2026-05-23 11:27:03'),
(30, 8, 6, '2026-05-16 11:27:03', '2026-05-25 11:27:03'),
(31, 2, 6, '2026-05-16 11:27:03', '2026-05-26 11:27:03'),
(32, 1, 6, '2026-05-13 11:27:03', '2026-05-25 11:27:03'),
(33, 5, 7, '2026-05-12 11:27:03', '2026-05-23 11:27:03'),
(34, 6, 7, '2026-05-22 11:27:03', '2026-05-23 11:27:03'),
(35, 8, 7, '2026-05-22 11:27:03', '2026-05-25 11:27:03'),
(36, 6, 8, '2026-05-20 11:27:03', '2026-05-24 11:27:03'),
(37, 8, 8, '2026-05-24 11:27:03', '2026-05-26 11:27:03'),
(38, 7, 8, '2026-05-21 11:27:03', '2026-05-25 11:27:03'),
(39, 4, 8, '2026-05-24 11:27:03', '2026-05-23 11:27:03'),
(40, 3, 8, '2026-05-12 11:27:03', '2026-05-23 11:27:03'),
(41, 8, 9, '2026-05-16 11:27:03', '2026-05-23 11:27:03'),
(42, 6, 9, '2026-05-16 11:27:03', '2026-05-25 11:27:03'),
(43, 3, 9, '2026-05-25 11:27:03', '2026-05-26 11:27:03'),
(44, 4, 9, '2026-05-24 11:27:03', '2026-05-25 11:27:03'),
(45, 1, 10, '2026-05-17 11:27:03', '2026-05-25 11:27:03'),
(46, 2, 10, '2026-05-19 11:27:03', '2026-05-26 11:27:03'),
(47, 7, 10, '2026-05-23 11:27:03', '2026-05-25 11:27:03'),
(48, 5, 10, '2026-05-20 11:27:03', '2026-05-26 11:27:03'),
(49, 3, 11, '2026-05-15 11:27:03', '2026-05-24 11:27:03'),
(50, 8, 11, '2026-05-14 11:27:03', '2026-05-26 11:27:03'),
(51, 1, 11, '2026-05-17 11:27:03', '2026-05-26 11:27:03'),
(52, 2, 11, '2026-05-25 11:27:03', '2026-05-24 11:27:03'),
(53, 5, 11, '2026-05-21 11:27:03', '2026-05-24 11:27:03'),
(54, 6, 11, '2026-05-16 11:27:03', '2026-05-23 11:27:03'),
(55, 2, 12, '2026-05-16 11:27:03', '2026-05-24 11:27:03'),
(56, 6, 12, '2026-05-22 11:27:03', '2026-05-25 11:27:03'),
(57, 7, 12, '2026-05-13 11:27:03', '2026-05-25 11:27:03'),
(58, 3, 12, '2026-05-15 11:27:03', '2026-05-23 11:27:03'),
(59, 1, 13, '2026-05-15 11:27:03', '2026-05-25 11:27:03'),
(60, 2, 13, '2026-05-23 11:27:03', '2026-05-23 11:27:03'),
(61, 4, 13, '2026-05-16 11:27:03', '2026-05-26 11:27:03'),
(62, 3, 14, '2026-05-11 11:27:03', '2026-05-26 11:27:03'),
(63, 8, 14, '2026-05-22 11:27:03', '2026-05-26 11:27:03'),
(64, 1, 14, '2026-05-22 11:27:03', '2026-05-25 11:27:03'),
(65, 4, 14, '2026-05-13 11:27:03', '2026-05-24 11:27:03'),
(66, 6, 14, '2026-05-21 11:27:03', '2026-05-24 11:27:03'),
(67, 3, 15, '2026-05-21 11:27:03', '2026-05-26 11:27:03'),
(68, 8, 15, '2026-05-20 11:27:03', '2026-05-24 11:27:03'),
(69, 4, 15, '2026-05-15 11:27:03', '2026-05-23 11:27:03'),
(70, 5, 15, '2026-05-16 11:27:03', '2026-05-26 11:27:03'),
(71, 7, 15, '2026-05-12 11:27:03', '2026-05-23 11:27:03'),
(72, 4, 16, '2026-05-25 11:27:03', '2026-05-26 11:27:03'),
(73, 6, 16, '2026-05-18 11:27:03', '2026-05-24 11:27:03'),
(74, 3, 16, '2026-05-14 11:27:03', '2026-05-26 11:27:03'),
(75, 7, 16, '2026-05-24 11:27:03', '2026-05-25 11:27:03'),
(76, 5, 16, '2026-05-12 11:27:03', '2026-05-26 11:27:03'),
(77, 1, 16, '2026-05-20 11:27:03', '2026-05-25 11:27:03'),
(78, 5, 17, '2026-05-12 11:27:03', '2026-05-25 11:27:03'),
(79, 7, 17, '2026-05-13 11:27:03', '2026-05-23 11:27:03'),
(80, 4, 17, '2026-05-15 11:27:03', '2026-05-26 11:27:03'),
(81, 6, 17, '2026-05-11 11:27:03', '2026-05-26 11:27:03'),
(82, 8, 17, '2026-05-23 11:27:03', '2026-05-26 11:27:03'),
(83, 2, 17, '2026-05-21 11:27:03', '2026-05-25 11:27:03'),
(84, 8, 18, '2026-05-19 11:27:03', '2026-05-23 11:27:03'),
(85, 6, 18, '2026-05-13 11:27:03', '2026-05-23 11:27:03'),
(86, 7, 18, '2026-05-20 11:27:03', '2026-05-26 11:27:03'),
(87, 2, 19, '2026-05-17 11:27:03', '2026-05-26 11:27:03'),
(88, 7, 19, '2026-05-13 11:27:03', '2026-05-24 11:27:03'),
(89, 6, 19, '2026-05-18 11:27:03', '2026-05-23 11:27:03'),
(90, 8, 19, '2026-05-17 11:27:03', '2026-05-24 11:27:03'),
(91, 1, 19, '2026-05-18 11:27:03', '2026-05-26 11:27:03'),
(92, 3, 19, '2026-05-25 11:27:03', '2026-05-25 11:27:03'),
(93, 7, 20, '2026-05-18 11:27:03', '2026-05-23 11:27:03'),
(94, 5, 20, '2026-05-17 11:27:03', '2026-05-25 11:27:03'),
(95, 4, 20, '2026-05-15 11:27:03', '2026-05-23 11:27:03'),
(96, 3, 20, '2026-05-19 11:27:03', '2026-05-26 11:27:03'),
(97, 8, 20, '2026-05-24 11:27:03', '2026-05-24 11:27:03'),
(98, 1, 20, '2026-05-25 11:27:03', '2026-05-25 11:27:03'),
(99, 6, 21, '2026-05-11 11:27:03', '2026-05-24 11:27:03'),
(100, 3, 21, '2026-05-14 11:27:03', '2026-05-23 11:27:03'),
(101, 4, 21, '2026-05-18 11:27:03', '2026-05-26 11:27:03'),
(102, 1, 21, '2026-05-12 11:27:03', '2026-05-24 11:27:03'),
(103, 2, 21, '2026-05-12 11:27:03', '2026-05-26 11:27:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_01_01_000001_add_role_avatar_to_users_table', 1),
(5, '2024_01_01_000002_create_categories_table', 1),
(6, '2024_01_01_000003_create_posts_table', 1),
(7, '2024_01_01_000004_create_comments_table', 1),
(8, '2024_01_01_000005_create_favorites_table', 1),
(9, '2024_01_01_000006_create_ratings_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `excerpt` text DEFAULT NULL,
  `content` longtext NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `views_count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `status` enum('draft','published') NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `category_id`, `title`, `slug`, `excerpt`, `content`, `image`, `location`, `views_count`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Top 10 điểm đến không thể bỏ qua tại Đà Nẵng', 'top-10-diem-den-khong-the-bo-qua-tai-da-nang-T3BFp', 'Khám phá 10 địa điểm du lịch tuyệt vời nhất tại thành phố đáng sống Đà Nẵng, từ Bà Nà Hills đến bãi biển Mỹ Khê.', '\n<h2>Đà Nẵng – Thành phố đáng sống nhất Việt Nam</h2>\n<p>Đà Nẵng không chỉ nổi tiếng với những bãi biển xanh trong vắt mà còn sở hữu hàng loạt điểm tham quan độc đáo, ẩm thực phong phú và con người thân thiện. Dưới đây là 10 địa điểm bạn nhất định phải ghé khi đến thành phố biển này.</p>\n\n<h3>1. Bà Nà Hills – Cầu Vàng huyền thoại</h3>\n<p>Nằm ở độ cao 1.487m so với mực nước biển, Bà Nà Hills là khu du lịch phức hợp nổi tiếng nhất miền Trung. Cầu Vàng với hai bàn tay khổng lồ đỡ cây cầu đã trở thành biểu tượng du lịch Việt Nam, thu hút hàng triệu lượt khách mỗi năm.</p>\n<img src=\"https://images.unsplash.com/photo-1583417319070-4a69db38a482?w=900&q=80\" alt=\"Cầu Vàng Bà Nà Hills\" style=\"width:100%;border-radius:12px;margin:1.5rem 0;object-fit:cover;max-height:420px;\">\n<p><strong>Giờ mở cửa:</strong> 7:00 – 22:00 hàng ngày. <strong>Giá vé:</strong> 750.000đ/người (bao gồm cáp treo)</p>\n\n<h3>2. Bãi biển Mỹ Khê – Top 6 bãi biển đẹp nhất hành tinh</h3>\n<p>Được tạp chí Forbes bình chọn là một trong 6 bãi biển quyến rũ nhất hành tinh, Mỹ Khê trải dài hơn 30km với cát trắng mịn, nước biển trong xanh. Đây là thiên đường cho các hoạt động lướt sóng, dù lượn và tắm biển.</p>\n<img src=\"https://images.unsplash.com/photo-1507525428034-b723cf961d3e?w=900&q=80\" alt=\"Bãi biển Mỹ Khê\" style=\"width:100%;border-radius:12px;margin:1.5rem 0;object-fit:cover;max-height:420px;\">\n\n<h3>3. Ngũ Hành Sơn – Núi đá huyền bí</h3>\n<p>Quần thể 5 ngọn núi đá cẩm thạch mang tên Kim, Mộc, Thủy, Hỏa, Thổ ẩn chứa nhiều hang động, chùa chiền linh thiêng. Đặc biệt, làng nghề điêu khắc đá Non Nước ngay dưới chân núi là nơi bạn có thể mua những món quà lưu niệm độc đáo.</p>\n\n<h3>4. Bán đảo Sơn Trà – Lá phổi xanh của thành phố</h3>\n<p>Rừng nguyên sinh Sơn Trà là nơi sinh sống của loài voọc chà vá chân nâu quý hiếm. Từ đỉnh Bàn Cờ, bạn có thể ngắm toàn cảnh thành phố Đà Nẵng và vịnh Đà Nẵng tuyệt đẹp.</p>\n<img src=\"https://images.unsplash.com/photo-1528127269322-539801943592?w=900&q=80\" alt=\"Sơn Trà Đà Nẵng\" style=\"width:100%;border-radius:12px;margin:1.5rem 0;object-fit:cover;max-height:420px;\">\n\n<h3>5. Cầu Rồng – Biểu tượng của thành phố</h3>\n<p>Cây cầu hình rồng dài 666m bắc qua sông Hàn là công trình kiến trúc độc đáo nhất Đà Nẵng. Vào tối thứ 7 và Chủ nhật, rồng phun lửa và nước tạo nên màn trình diễn ngoạn mục.</p>\n\n<h2>Lưu ý khi du lịch Đà Nẵng</h2>\n<ul>\n<li>Thời điểm đẹp nhất: tháng 2 – 8 (mùa khô, ít mưa)</li>\n<li>Di chuyển: thuê xe máy hoặc xe đạp điện để tự do khám phá</li>\n<li>Ăn uống: thử mì Quảng, bánh mì Đà Nẵng, bún chả cá</li>\n<li>Lưu trú: khu vực biển Mỹ Khê có nhiều lựa chọn từ bình dân đến cao cấp</li>\n</ul>', 'https://images.unsplash.com/photo-1559592413-7cec4d0cae2b?w=1200&q=85', 'Đà Nẵng', 3420, 'published', '2026-05-26 11:27:03', '2026-05-26 11:27:03'),
(2, 2, 2, 'Hướng dẫn du lịch Phú Quốc tự túc 4 ngày 3 đêm', 'huong-dan-du-lich-phu-quoc-tu-tuc-4-ngay-3-dem-vzb43', 'Lịch trình chi tiết du lịch Phú Quốc 4N3Đ với chi phí tiết kiệm, bao gồm ăn uống, đi lại và các hoạt động vui chơi.', '\n<h2>Phú Quốc – Đảo Ngọc của Việt Nam</h2>\n<p>Phú Quốc là hòn đảo lớn nhất Việt Nam với diện tích 574km², nổi tiếng với những bãi biển hoang sơ, rừng nguyên sinh và hải sản tươi ngon. Đây là điểm đến lý tưởng cho cả gia đình, cặp đôi và nhóm bạn.</p>\n<img src=\"https://images.unsplash.com/photo-1559592413-7cec4d0cae2b?w=900&q=80\" alt=\"Phú Quốc nhìn từ trên cao\" style=\"width:100%;border-radius:12px;margin:1.5rem 0;object-fit:cover;max-height:420px;\">\n\n<h2>Lịch trình 4 ngày 3 đêm</h2>\n\n<h3>Ngày 1: Khám phá Nam đảo</h3>\n<p><strong>Sáng:</strong> Đến sân bay Phú Quốc, nhận phòng khách sạn. Ăn sáng với bánh mì trứng và cà phê Phú Quốc thơm ngon.</p>\n<p><strong>Trưa:</strong> Ghé thăm Dinh Cậu – ngôi đền linh thiêng nhìn ra biển. Ăn trưa tại chợ đêm Phú Quốc với bún quậy, gỏi cá trích.</p>\n<p><strong>Chiều:</strong> Tắm biển tại Bãi Sao – một trong những bãi biển đẹp nhất Đông Nam Á với cát trắng mịn như bột và nước biển xanh ngọc.</p>\n<img src=\"https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=900&q=80\" alt=\"Bãi Sao Phú Quốc\" style=\"width:100%;border-radius:12px;margin:1.5rem 0;object-fit:cover;max-height:420px;\">\n\n<h3>Ngày 2: Khám phá Bắc đảo</h3>\n<p>Thuê xe máy (120.000đ/ngày) khám phá Bắc đảo. Ghé thăm Vườn Quốc gia Phú Quốc – khu rừng nguyên sinh với hệ sinh thái đa dạng. Ăn trưa tại làng chài Rạch Vẹm, thưởng thức nhum biển và cầu gai nướng.</p>\n\n<h3>Ngày 3: Tour 3 đảo</h3>\n<p>Tham gia tour 3 đảo (Hòn Thơm, Hòn Dừa, Hòn Mây Rút) với giá khoảng 350.000đ/người. Lặn ngắm san hô, câu cá, tắm biển và thưởng thức bữa trưa hải sản trên thuyền.</p>\n<img src=\"https://images.unsplash.com/photo-1544551763-46a013bb70d5?w=900&q=80\" alt=\"Lặn ngắm san hô Phú Quốc\" style=\"width:100%;border-radius:12px;margin:1.5rem 0;object-fit:cover;max-height:420px;\">\n\n<h3>Ngày 4: Vinpearl Land và về</h3>\n<p>Vui chơi tại Vinpearl Land Phú Quốc – công viên giải trí lớn nhất Việt Nam với hơn 100 trò chơi, công viên nước và thủy cung. Chiều mua sắm đặc sản rồi ra sân bay.</p>\n\n<h2>Chi phí tham khảo (1 người)</h2>\n<ul>\n<li>Vé máy bay khứ hồi: 2.000.000 – 4.000.000đ</li>\n<li>Khách sạn 3 sao: 600.000 – 1.200.000đ/đêm</li>\n<li>Ăn uống: 300.000 – 500.000đ/ngày</li>\n<li>Tour 3 đảo: 350.000đ</li>\n<li><strong>Tổng ước tính: 8 – 15 triệu đồng</strong></li>\n</ul>', 'https://images.unsplash.com/photo-1537956965359-7573183d1f57?w=1200&q=85', 'Phú Quốc', 2891, 'published', '2026-05-26 11:27:03', '2026-05-26 11:30:05'),
(3, 3, 2, 'Khám phá Hội An – Phố cổ đèn lồng lung linh nhất Việt Nam', 'kham-pha-hoi-an-pho-co-den-long-lung-linh-nhat-viet-nam-eH1yq', 'Hội An – Di sản văn hóa thế giới với những con phố cổ rêu phong, đèn lồng rực rỡ và ẩm thực đặc sắc không nơi nào có được.', '\n<h2>Hội An – Viên ngọc của miền Trung</h2>\n<p>Hội An được UNESCO công nhận là Di sản Văn hóa Thế giới năm 1999. Phố cổ với những ngôi nhà gỗ hàng trăm năm tuổi, đèn lồng rực rỡ và dòng sông Thu Bồn thơ mộng tạo nên một không gian như bước ra từ trang sách cổ tích.</p>\n<img src=\"https://images.unsplash.com/photo-1528360983277-13d401cdc186?w=900&q=80\" alt=\"Phố cổ Hội An về đêm\" style=\"width:100%;border-radius:12px;margin:1.5rem 0;object-fit:cover;max-height:420px;\">\n\n<h3>Những điểm không thể bỏ qua</h3>\n<p><strong>Chùa Cầu Nhật Bản:</strong> Biểu tượng của Hội An, cây cầu gỗ 400 năm tuổi bắc qua con lạch nhỏ. Đây là hình ảnh xuất hiện trên tờ tiền 20.000đ của Việt Nam.</p>\n<p><strong>Phố đèn lồng:</strong> Mỗi tối, hàng nghìn chiếc đèn lồng đủ màu sắc thắp sáng phố cổ, tạo nên khung cảnh huyền ảo như trong truyện cổ tích.</p>\n<img src=\"https://images.unsplash.com/photo-1555400038-63f5ba517a47?w=900&q=80\" alt=\"Đèn lồng Hội An\" style=\"width:100%;border-radius:12px;margin:1.5rem 0;object-fit:cover;max-height:420px;\">\n\n<h3>Ẩm thực Hội An</h3>\n<p>Cao lầu – món mì đặc trưng chỉ có ở Hội An, sợi mì vàng dai ăn với thịt xá xíu và rau sống. Bánh mì Phượng – được Anthony Bourdain gọi là \"bánh mì ngon nhất thế giới\". Cơm gà Hội An – cơm trắng dẻo ăn với gà xé phay và nước dùng thơm ngon.</p>\n<img src=\"https://images.unsplash.com/photo-1504674900247-0877df9cc836?w=900&q=80\" alt=\"Ẩm thực Hội An\" style=\"width:100%;border-radius:12px;margin:1.5rem 0;object-fit:cover;max-height:420px;\">\n\n<h3>Kinh nghiệm tham quan</h3>\n<ul>\n<li>Mua vé tham quan phố cổ: 120.000đ/người (vào 5 điểm)</li>\n<li>Thuê xe đạp để dạo quanh: 50.000đ/ngày</li>\n<li>Đêm rằm hàng tháng: phố cổ tắt điện, thắp đèn lồng – đẹp nhất</li>\n<li>Mua đèn lồng làm quà: 30.000 – 100.000đ/chiếc</li>\n</ul>', 'https://images.unsplash.com/photo-1559592413-7cec4d0cae2b?w=1200&q=85', 'Hội An, Quảng Nam', 2100, 'published', '2026-05-26 11:27:03', '2026-05-26 11:27:03'),
(4, 4, 2, 'Cẩm nang du lịch Hạ Long: Tất cả những gì bạn cần biết từ A đến Z', 'cam-nang-du-lich-ha-long-tat-ca-nhung-gi-ban-can-biet-tu-a-den-z-L21m5', 'Hướng dẫn du lịch Hạ Long chi tiết từ A-Z, bao gồm cách đi, chỗ ở, ăn gì, chơi gì, chi phí bao nhiêu.', '\n<h2>Vịnh Hạ Long – Kỳ quan thiên nhiên thế giới</h2>\n<p>Vịnh Hạ Long được UNESCO công nhận là Di sản Thiên nhiên Thế giới hai lần (1994 và 2000), với hơn 1.600 hòn đảo đá vôi nhô lên từ mặt biển xanh ngọc. Đây là một trong những điểm đến không thể bỏ qua khi đến Việt Nam.</p>\n<img src=\"https://images.unsplash.com/photo-1528360983277-13d401cdc186?w=900&q=80\" alt=\"Vịnh Hạ Long\" style=\"width:100%;border-radius:12px;margin:1.5rem 0;object-fit:cover;max-height:420px;\">\n\n<h2>Cách di chuyển đến Hạ Long</h2>\n<ul>\n<li><strong>Xe khách từ Hà Nội:</strong> 150.000 – 250.000đ, 3-4 tiếng</li>\n<li><strong>Xe limousine:</strong> 250.000 – 350.000đ, 2.5-3 tiếng, thoải mái hơn</li>\n<li><strong>Tự lái xe:</strong> Cao tốc Hà Nội – Hạ Long mới, chỉ 2.5 tiếng</li>\n<li><strong>Thủy phi cơ:</strong> 2.400.000đ/chiều, 45 phút, trải nghiệm độc đáo</li>\n</ul>\n\n<h2>Các tour du thuyền</h2>\n<p><strong>Tour 2 ngày 1 đêm:</strong> Giá 1.500.000 – 5.000.000đ/người. Ngủ đêm trên du thuyền, thăm nhiều điểm hơn, có bữa tối và bữa sáng. Đây là lựa chọn phổ biến nhất.</p>\n<img src=\"https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=900&q=80\" alt=\"Du thuyền Hạ Long\" style=\"width:100%;border-radius:12px;margin:1.5rem 0;object-fit:cover;max-height:420px;\">\n\n<h2>Top điểm tham quan</h2>\n<ul>\n<li><strong>Hang Sửng Sốt:</strong> Hang động lớn nhất vịnh Hạ Long, nhũ đá kỳ ảo</li>\n<li><strong>Đảo Ti Tốp:</strong> Leo 400 bậc thang lên đỉnh ngắm toàn cảnh vịnh</li>\n<li><strong>Làng chài Cửa Vạn:</strong> Làng chài nổi trên biển, cuộc sống ngư dân độc đáo</li>\n<li><strong>Hang Đầu Gỗ:</strong> Hang động đẹp nhất vịnh với nhiều nhũ đá hình thù kỳ lạ</li>\n</ul>\n\n<h2>Lưu ý quan trọng</h2>\n<ul>\n<li>Tránh mùa bão (tháng 7-9), thời điểm đẹp nhất là tháng 10-4</li>\n<li>Chọn du thuyền có giấy phép hoạt động hợp lệ</li>\n<li>Mặc áo phao khi chèo kayak</li>\n<li>Không xả rác xuống biển – bảo vệ kỳ quan thiên nhiên</li>\n</ul>', 'https://images.unsplash.com/photo-1583417319070-4a69db38a482?w=1200&q=85', 'Hạ Long, Quảng Ninh', 3560, 'published', '2026-05-26 11:27:03', '2026-05-26 11:27:03'),
(5, 5, 1, 'Đặc sản Huế: 15 món ăn bạn nhất định phải thử một lần trong đời', 'dac-san-hue-15-mon-an-ban-nhat-dinh-phai-thu-mot-lan-trong-doi-PkJy7', 'Tổng hợp 15 món ăn đặc sản Huế nổi tiếng nhất, từ bún bò Huế đến bánh bèo, bánh nậm, cơm hến.', '\n<h2>Ẩm thực Huế – Tinh hoa ẩm thực cung đình</h2>\n<p>Huế không chỉ nổi tiếng với những cung điện, lăng tẩm cổ kính mà còn được biết đến là kinh đô ẩm thực của Việt Nam. Ẩm thực Huế mang đậm dấu ấn cung đình với sự tinh tế trong chế biến, trình bày và hương vị đặc trưng cay nồng, đậm đà.</p>\n<img src=\"https://images.unsplash.com/photo-1555939594-58d7cb561ad1?w=900&q=80\" alt=\"Ẩm thực Huế\" style=\"width:100%;border-radius:12px;margin:1.5rem 0;object-fit:cover;max-height:420px;\">\n\n<h3>1. Bún bò Huế – Linh hồn ẩm thực xứ Huế</h3>\n<p>Khác với phở Hà Nội hay bún bò Nam Bộ, bún bò Huế có nước dùng đậm đà từ xương bò hầm lâu với sả, mắm ruốc và ớt. Tô bún đầy đủ với bắp bò, giò heo, chả cua và rau sống. Giá chỉ từ 30.000 – 50.000đ/tô.</p>\n<p><em>Địa chỉ ngon: Bún bò Mụ Rớt (2 Nguyễn Bỉnh Khiêm), Bún bò O Xuân (Nguyễn Công Trứ)</em></p>\n\n<h3>2. Bánh bèo – Tinh tế và thanh tao</h3>\n<p>Những chiếc bánh bèo trắng mịn đựng trong chén nhỏ, phủ tôm chấy, mỡ hành và nước mắm chua ngọt. Ăn một lần là nhớ mãi. Một đĩa 10 chén chỉ khoảng 20.000đ.</p>\n<img src=\"https://images.unsplash.com/photo-1567620905732-2d1ec7ab7445?w=900&q=80\" alt=\"Bánh bèo Huế\" style=\"width:100%;border-radius:12px;margin:1.5rem 0;object-fit:cover;max-height:420px;\">\n\n<h3>3. Bánh nậm – Mỏng manh như lụa</h3>\n<p>Bánh nậm được gói trong lá chuối, làm từ bột gạo mỏng với nhân tôm thịt. Khi ăn, bánh tan ngay trong miệng, để lại vị ngọt thanh khó quên.</p>\n\n<h3>4. Cơm hến – Bữa sáng bình dân mà ngon</h3>\n<p>Cơm nguội trộn với hến xào, rau sống, đậu phộng rang, bánh tráng nướng và nước hến. Món ăn dân dã nhưng đầy đủ hương vị, chỉ 15.000 – 25.000đ/bát.</p>\n\n<h3>5. Bánh khoái – Giòn tan hấp dẫn</h3>\n<p>Bánh khoái Huế giòn rụm với nhân tôm, thịt, giá đỗ và trứng, ăn kèm rau sống và nước chấm đặc biệt từ gan heo. Khác hoàn toàn với bánh xèo miền Nam.</p>\n\n<h3>6. Chè Huế – Ngọt ngào đa dạng</h3>\n<p>Huế có hơn 30 loại chè khác nhau: chè đậu ván, chè bắp, chè hạt sen, chè khoai tía... Phố chè Trịnh Công Sơn là thiên đường cho những ai mê ngọt.</p>\n<img src=\"https://images.unsplash.com/photo-1563805042-7684c019e1cb?w=900&q=80\" alt=\"Chè Huế\" style=\"width:100%;border-radius:12px;margin:1.5rem 0;object-fit:cover;max-height:420px;\">\n\n<h2>Kinh nghiệm ăn uống tại Huế</h2>\n<ul>\n<li>Ăn sáng sớm (6-8h) để thưởng thức đồ ăn tươi ngon nhất</li>\n<li>Ghé chợ Đông Ba để tìm đủ loại đặc sản</li>\n<li>Đừng ngại thử các quán vỉa hè – thường ngon hơn nhà hàng</li>\n<li>Mang về: mè xửng, bánh in, mứt gừng Huế</li>\n</ul>', 'https://images.unsplash.com/photo-1504674900247-0877df9cc836?w=1200&q=85', 'Huế', 2157, 'published', '2026-05-26 11:27:03', '2026-05-26 11:27:33'),
(6, 6, 1, 'Ẩm thực đường phố Sài Gòn: 20 quán ăn vỉa hè ngon nhất không thể bỏ qua', 'am-thuc-duong-pho-sai-gon-20-quan-an-via-he-ngon-nhat-khong-the-bo-qua-EYcQk', 'Tổng hợp những quán ăn vỉa hè nổi tiếng nhất Sài Gòn mà bất kỳ food tour nào cũng phải ghé.', '\n<h2>Sài Gòn – Thiên đường ẩm thực đường phố</h2>\n<p>Sài Gòn là thành phố không bao giờ ngủ, và ẩm thực đường phố chính là linh hồn của nơi này. Từ những tô phở bốc khói lúc 5 giờ sáng đến những xe bánh mì giòn rụm lúc nửa đêm, Sài Gòn luôn có thứ gì đó để ăn.</p>\n<img src=\"https://images.unsplash.com/photo-1504674900247-0877df9cc836?w=900&q=80\" alt=\"Ẩm thực đường phố Sài Gòn\" style=\"width:100%;border-radius:12px;margin:1.5rem 0;object-fit:cover;max-height:420px;\">\n\n<h3>1. Phở Hòa Pasteur – Huyền thoại 70 năm</h3>\n<p>Quán phở lâu đời nhất Sài Gòn tại 260C Pasteur, Q3. Nước dùng trong vắt, ngọt thanh từ xương bò hầm 12 tiếng. Mở từ 6h sáng, thường xuyên có hàng dài chờ đợi. Giá: 80.000 – 120.000đ/tô.</p>\n\n<h3>2. Bánh mì Huỳnh Hoa – Bánh mì ngon nhất Sài Gòn</h3>\n<p>Tại 26 Lê Thị Riêng, Q1. Ổ bánh mì to đùng nhồi đầy thịt nguội, pate, chả lụa và rau. Luôn có hàng dài từ sáng đến tối. Giá: 45.000đ/ổ.</p>\n<img src=\"https://images.unsplash.com/photo-1567620905732-2d1ec7ab7445?w=900&q=80\" alt=\"Bánh mì Sài Gòn\" style=\"width:100%;border-radius:12px;margin:1.5rem 0;object-fit:cover;max-height:420px;\">\n\n<h3>3. Hủ tiếu Nam Vang – Đặc sản gốc Hoa</h3>\n<p>Sợi hủ tiếu dai, nước dùng ngọt từ xương heo và tôm khô, ăn kèm thịt bằm, tôm, gan heo. Quán Hồng Phát (Nguyễn Trãi, Q5) là địa chỉ quen thuộc của dân Sài Gòn.</p>\n\n<h3>4. Cơm tấm Thuận Kiều</h3>\n<p>Cơm tấm Sài Gòn với sườn nướng thơm lừng, bì, chả trứng và nước mắm chua ngọt. Ăn lúc nào cũng ngon, đặc biệt là bữa sáng sớm.</p>\n\n<h3>5. Bánh tráng trộn – Snack đường phố hot nhất</h3>\n<p>Bánh tráng cắt nhỏ trộn với xoài xanh, tôm khô, trứng cút, sa tế và tương. Món ăn vặt không thể thiếu khi dạo phố Sài Gòn, giá chỉ 15.000 – 25.000đ.</p>\n<img src=\"https://images.unsplash.com/photo-1563805042-7684c019e1cb?w=900&q=80\" alt=\"Ăn vặt Sài Gòn\" style=\"width:100%;border-radius:12px;margin:1.5rem 0;object-fit:cover;max-height:420px;\">\n\n<h2>Bản đồ ẩm thực theo quận</h2>\n<ul>\n<li><strong>Quận 1:</strong> Phở, bánh mì, cà phê sân thượng</li>\n<li><strong>Quận 3:</strong> Bún bò, bánh cuốn, chè</li>\n<li><strong>Quận 5 (Chợ Lớn):</strong> Dimsum, hủ tiếu, bánh bao</li>\n<li><strong>Quận 10:</strong> Chè, bánh tráng trộn, ốc</li>\n<li><strong>Bình Thạnh:</strong> Lẩu, nướng, hải sản</li>\n</ul>', 'https://images.unsplash.com/photo-1555939594-58d7cb561ad1?w=1200&q=85', 'TP. Hồ Chí Minh', 3100, 'published', '2026-05-26 11:27:03', '2026-05-26 11:27:03'),
(7, 7, 1, 'Khám phá ẩm thực Hà Nội: Những món ăn sáng không thể bỏ qua', 'kham-pha-am-thuc-ha-noi-nhung-mon-an-sang-khong-the-bo-qua-M7irQ', 'Hà Nội có nền ẩm thực sáng phong phú bậc nhất Việt Nam. Từ phở, bún chả đến bánh cuốn, mỗi món đều mang hương vị riêng không thể nhầm lẫn.', '\n<h2>Ẩm thực sáng Hà Nội – Bắt đầu ngày mới thật ngon</h2>\n<p>Người Hà Nội rất coi trọng bữa sáng. Họ sẵn sàng dậy sớm, xếp hàng chờ đợi để được thưởng thức tô phở nóng hổi hay đĩa bánh cuốn mỏng tang. Đây là nét văn hóa ẩm thực đặc trưng của thủ đô ngàn năm văn hiến.</p>\n<img src=\"https://images.unsplash.com/photo-1504674900247-0877df9cc836?w=900&q=80\" alt=\"Phở Hà Nội\" style=\"width:100%;border-radius:12px;margin:1.5rem 0;object-fit:cover;max-height:420px;\">\n\n<h3>1. Phở Hà Nội – Quốc hồn quốc túy</h3>\n<p>Phở Hà Nội khác phở Sài Gòn ở chỗ nước dùng trong hơn, ít ngọt hơn và không ăn kèm giá đỗ. Bánh phở mỏng, mềm. Phở Thìn (13 Lò Đúc) và Phở Bát Đàn là hai địa chỉ huyền thoại không thể bỏ qua.</p>\n\n<h3>2. Bún chả – Đặc sản được Obama thưởng thức</h3>\n<p>Bún chả Hà Nội với chả viên và chả miếng nướng than hoa, ăn kèm bún tươi, rau sống và nước chấm chua ngọt. Quán Hương Liên (24 Lê Văn Hưu) nổi tiếng sau khi cố Tổng thống Obama ghé thăm năm 2016.</p>\n<img src=\"https://images.unsplash.com/photo-1555939594-58d7cb561ad1?w=900&q=80\" alt=\"Bún chả Hà Nội\" style=\"width:100%;border-radius:12px;margin:1.5rem 0;object-fit:cover;max-height:420px;\">\n\n<h3>3. Bánh cuốn Thanh Trì</h3>\n<p>Bánh cuốn Hà Nội mỏng như tờ giấy, trong suốt, ăn kèm chả quế và nước mắm pha. Bánh cuốn Thanh Trì (làng Thanh Trì) là ngon nhất, nhưng trong phố có thể tìm ở Bánh cuốn Bà Hoành (66 Tô Hiến Thành).</p>\n\n<h3>4. Xôi Yến – Xôi ngon nhất Hà Nội</h3>\n<p>Xôi Yến (35B Nguyễn Hữu Huân) nổi tiếng với xôi xéo, xôi gấc, xôi lạc... Mỗi sáng có hàng dài người xếp hàng từ 6h. Giá 20.000 – 40.000đ/suất.</p>\n\n<h3>5. Bánh mì trứng vỉa hè</h3>\n<p>Những xe bánh mì trứng vỉa hè Hà Nội với ổ bánh mì nóng giòn, trứng ốp la và pate. Bữa sáng nhanh gọn, ngon miệng chỉ 15.000 – 20.000đ.</p>\n<img src=\"https://images.unsplash.com/photo-1567620905732-2d1ec7ab7445?w=900&q=80\" alt=\"Ẩm thực sáng Hà Nội\" style=\"width:100%;border-radius:12px;margin:1.5rem 0;object-fit:cover;max-height:420px;\">\n\n<h2>Địa chỉ ăn sáng theo khu vực</h2>\n<ul>\n<li><strong>Phố cổ (Hoàn Kiếm):</strong> Phở, bún chả, bánh cuốn, cà phê trứng</li>\n<li><strong>Hai Bà Trưng:</strong> Bún chả, phở, xôi</li>\n<li><strong>Đống Đa:</strong> Bánh mì, bún riêu, miến lươn</li>\n<li><strong>Tây Hồ:</strong> Bánh tôm Hồ Tây, bún ốc, chả cá Lã Vọng</li>\n</ul>', 'https://images.unsplash.com/photo-1569050467447-ce54b3bbc37d?w=1200&q=85', 'Hà Nội', 1890, 'published', '2026-05-26 11:27:03', '2026-05-26 11:27:03'),
(8, 1, 1, 'Review nhà hàng hải sản tươi sống tại Nha Trang – Ăn ngon không lo về giá', 'review-nha-hang-hai-san-tuoi-song-tai-nha-trang-an-ngon-khong-lo-ve-gia-HVosD', 'Nha Trang là thiên đường hải sản tươi sống với giá cả phải chăng. Tổng hợp những nhà hàng ngon nhất và kinh nghiệm ăn hải sản không bị chặt chém.', '\n<h2>Nha Trang – Thiên đường hải sản miền Trung</h2>\n<p>Nha Trang nổi tiếng không chỉ với những bãi biển đẹp mà còn là thiên đường hải sản tươi sống. Tôm hùm, cua, mực, ốc... tất cả đều được đánh bắt trực tiếp từ biển, đảm bảo độ tươi ngon tuyệt đối.</p>\n<img src=\"https://images.unsplash.com/photo-1559339352-11d035aa65de?w=900&q=80\" alt=\"Hải sản Nha Trang\" style=\"width:100%;border-radius:12px;margin:1.5rem 0;object-fit:cover;max-height:420px;\">\n\n<h3>Top nhà hàng hải sản ngon tại Nha Trang</h3>\n\n<h4>1. Nhà hàng Trúc Linh – Hải sản tươi sống số 1</h4>\n<p>Địa chỉ: 11 Bến Chợ, Nha Trang. Nổi tiếng với tôm hùm nướng phô mai, cua rang muối và mực một nắng. Giá tầm trung, phục vụ nhanh. Nên đặt bàn trước vào buổi tối.</p>\n\n<h4>2. Nhà hàng Hải Sản Phú Quý</h4>\n<p>Địa chỉ: 79 Trần Phú. View biển đẹp, hải sản tươi sống chọn trực tiếp từ bể. Đặc biệt là món ghẹ hấp bia và tôm sú nướng muối ớt.</p>\n<img src=\"https://images.unsplash.com/photo-1544551763-46a013bb70d5?w=900&q=80\" alt=\"Nhà hàng hải sản Nha Trang\" style=\"width:100%;border-radius:12px;margin:1.5rem 0;object-fit:cover;max-height:420px;\">\n\n<h3>Kinh nghiệm ăn hải sản không bị chặt chém</h3>\n<ul>\n<li>Hỏi giá trước khi gọi món, đặc biệt với tôm hùm và cua</li>\n<li>Chọn hải sản sống trực tiếp từ bể, cân trước mặt</li>\n<li>Tránh các nhà hàng ngay mặt tiền biển – thường đắt hơn 30-50%</li>\n<li>Ăn tại chợ Đầm hoặc chợ Xóm Mới để có giá tốt nhất</li>\n<li>Thời điểm ngon nhất: 17h-20h khi hải sản vừa được đưa vào bờ</li>\n</ul>\n\n<h3>Giá tham khảo (2026)</h3>\n<ul>\n<li>Tôm hùm: 800.000 – 1.500.000đ/kg</li>\n<li>Cua biển: 300.000 – 500.000đ/kg</li>\n<li>Mực ống: 150.000 – 250.000đ/kg</li>\n<li>Ốc hương: 200.000 – 350.000đ/kg</li>\n<li>Ghẹ: 200.000 – 400.000đ/kg</li>\n</ul>', 'https://images.unsplash.com/photo-1559339352-11d035aa65de?w=1200&q=85', 'Nha Trang, Khánh Hòa', 1650, 'published', '2026-05-26 11:27:03', '2026-05-26 11:27:03'),
(9, 2, 3, 'Khám phá Sapa mùa lúa chín – Khi nào đi và góc chụp đẹp nhất', 'kham-pha-sapa-mua-lua-chin-khi-nao-di-va-goc-chup-dep-nhat-vDdUm', 'Hướng dẫn thời điểm lý tưởng ngắm ruộng bậc thang mùa lúa chín vàng ở Sapa và những góc chụp ảnh đẹp nhất.', '\n<h2>Sapa mùa lúa chín – Bức tranh vàng của núi rừng Tây Bắc</h2>\n<p>Mỗi năm một lần, vào khoảng tháng 9 đến đầu tháng 10, những thửa ruộng bậc thang ở Sapa khoác lên mình tấm áo vàng óng ả, tạo nên khung cảnh đẹp đến nghẹt thở. Đây là thời điểm Sapa đẹp nhất trong năm.</p>\n<img src=\"https://images.unsplash.com/photo-1528127269322-539801943592?w=900&q=80\" alt=\"Ruộng bậc thang Sapa mùa lúa chín\" style=\"width:100%;border-radius:12px;margin:1.5rem 0;object-fit:cover;max-height:420px;\">\n\n<h2>Thời điểm lúa chín đẹp nhất</h2>\n<ul>\n<li><strong>Cuối tháng 9 – đầu tháng 10:</strong> Lúa chín vàng rực, đẹp nhất năm</li>\n<li><strong>Tháng 5 – 6:</strong> Mùa nước đổ, ruộng bậc thang phản chiếu bầu trời</li>\n<li><strong>Tháng 12 – 2:</strong> Mùa đông, có thể có tuyết rơi trên đỉnh Fansipan</li>\n</ul>\n\n<h3>1. Mù Cang Chải – Vựa lúa vàng huyền thoại</h3>\n<p>Cách Sapa 100km, Mù Cang Chải (Yên Bái) có những thửa ruộng bậc thang đẹp nhất Việt Nam. Đèo Khau Phạ – một trong tứ đại đỉnh đèo – là điểm dừng chân không thể bỏ qua.</p>\n<img src=\"https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=900&q=80\" alt=\"Mù Cang Chải\" style=\"width:100%;border-radius:12px;margin:1.5rem 0;object-fit:cover;max-height:420px;\">\n\n<h3>2. Bản Lao Chải – Tả Van</h3>\n<p>Con đường trekking từ Sapa xuống Lao Chải – Tả Van dài 10km đi qua những thửa ruộng bậc thang tuyệt đẹp. Dọc đường gặp người H\'Mông, Dao đỏ trong trang phục truyền thống rực rỡ.</p>\n\n<h3>3. Đỉnh Fansipan – Nóc nhà Đông Dương</h3>\n<p>Ở độ cao 3.143m, Fansipan cho bạn cảm giác đứng trên mây. Cáp treo Fansipan dài nhất thế giới đưa bạn lên đỉnh chỉ trong 15 phút. Giá vé: 800.000đ/người.</p>\n\n<h2>Kinh nghiệm chụp ảnh đẹp tại Sapa</h2>\n<ul>\n<li><strong>Giờ vàng:</strong> 6-8h sáng và 16-18h chiều – ánh sáng đẹp nhất</li>\n<li><strong>Thiết bị:</strong> Ống kính góc rộng để chụp toàn cảnh ruộng bậc thang</li>\n<li><strong>Trang phục:</strong> Mặc màu sắc nổi bật để tạo điểm nhấn trong ảnh</li>\n<li><strong>Thời tiết:</strong> Kiểm tra dự báo thời tiết, tránh ngày mưa và sương mù dày</li>\n</ul>', 'https://images.unsplash.com/photo-1528127269322-539801943592?w=1200&q=85', 'Sapa, Lào Cai', 2750, 'published', '2026-05-26 11:27:03', '2026-05-26 11:27:03'),
(10, 3, 3, 'Review top 5 homestay view đẹp nhất Đà Lạt – Sống ảo cực chất', 'review-top-5-homestay-view-dep-nhat-da-lat-song-ao-cuc-chat-0QXHD', 'Review chi tiết 5 homestay view đẹp, giá hợp lý tại Đà Lạt dành cho các cặp đôi và nhóm bạn.', '\n<h2>Đà Lạt – Thành phố ngàn hoa và những homestay đẹp như mơ</h2>\n<p>Đà Lạt không chỉ nổi tiếng với khí hậu mát mẻ quanh năm mà còn là thiên đường của những homestay độc đáo, view đẹp và giá cả phải chăng. Dưới đây là 5 homestay được giới trẻ check-in nhiều nhất.</p>\n<img src=\"https://images.unsplash.com/photo-1464822759023-fed622ff2c3b?w=900&q=80\" alt=\"Homestay Đà Lạt\" style=\"width:100%;border-radius:12px;margin:1.5rem 0;object-fit:cover;max-height:420px;\">\n\n<h3>1. The Dreamy House – Nhà trong rừng thông</h3>\n<p><strong>Giá:</strong> 800.000 – 1.500.000đ/đêm | <strong>Vị trí:</strong> Đường Vạn Thành, cách trung tâm 5km</p>\n<p>Ngôi nhà gỗ nằm giữa rừng thông xanh mát, có bếp lửa ấm cúng và ban công nhìn ra thung lũng. Buổi sáng thức dậy trong tiếng chim hót và sương mù bảng lảng – cảm giác như đang ở châu Âu.</p>\n\n<h3>2. Mây Trên Đồi – Sống trên mây</h3>\n<p><strong>Giá:</strong> 600.000 – 1.200.000đ/đêm | <strong>Vị trí:</strong> Gần hồ Tuyền Lâm</p>\n<p>Homestay nằm trên đồi cao, view nhìn ra hồ Tuyền Lâm và rừng thông bạt ngàn. Có bể bơi ngoài trời và khu vườn hoa đẹp như tranh vẽ.</p>\n<img src=\"https://images.unsplash.com/photo-1571896349842-33c89424de2d?w=900&q=80\" alt=\"Homestay view đẹp Đà Lạt\" style=\"width:100%;border-radius:12px;margin:1.5rem 0;object-fit:cover;max-height:420px;\">\n\n<h3>3. Pine Forest Homestay – Giữa rừng thông nguyên sinh</h3>\n<p><strong>Giá:</strong> 1.000.000 – 2.000.000đ/đêm | <strong>Vị trí:</strong> Đường Khe Sanh</p>\n<p>Các cabin gỗ riêng biệt nằm rải rác trong rừng thông, có bếp nướng BBQ và khu vực cắm trại. Đêm ngủ nghe tiếng gió thổi qua rừng thông – trải nghiệm khó quên.</p>\n\n<h3>4. Flower Garden Homestay – Vườn hoa bốn mùa</h3>\n<p><strong>Giá:</strong> 500.000 – 900.000đ/đêm | <strong>Vị trí:</strong> Đường Nguyên Tử Lực</p>\n<p>Khuôn viên rộng với hàng trăm loài hoa đua nở quanh năm. Chủ nhà thân thiện, bữa sáng ngon với bánh mì và cà phê Đà Lạt.</p>\n\n<h3>5. Chill House Dalat – Boho Chic</h3>\n<p><strong>Giá:</strong> 400.000 – 800.000đ/đêm | <strong>Vị trí:</strong> Trung tâm thành phố</p>\n<p>Phong cách Boho với nhiều góc chụp ảnh đẹp, cây xanh và hoa tươi khắp nơi. Có phòng tập yoga và khu vực đọc sách yên tĩnh.</p>\n\n<h2>Lưu ý khi đặt homestay Đà Lạt</h2>\n<ul>\n<li>Đặt trước ít nhất 2 tuần vào mùa cao điểm (lễ, Tết, hè)</li>\n<li>Kiểm tra kỹ ảnh thực tế và đánh giá trên Booking/Airbnb</li>\n<li>Mang áo ấm vì Đà Lạt lạnh về đêm, đặc biệt mùa đông</li>\n</ul>', 'https://images.unsplash.com/photo-1464822759023-fed622ff2c3b?w=1200&q=85', 'Đà Lạt', 1980, 'published', '2026-05-26 11:27:03', '2026-05-26 11:27:03'),
(11, 4, 3, 'Những góc check-in đẹp nhất tại Hà Giang – Thiên đường của dân phượt', 'nhung-goc-check-in-dep-nhat-tai-ha-giang-thien-duong-cua-dan-phuot-pKh38', 'Hà Giang với cao nguyên đá Đồng Văn, đèo Mã Pí Lèng hùng vĩ và những bản làng dân tộc thiểu số là điểm đến trong mơ của mọi tín đồ du lịch.', '\n<h2>Hà Giang – Cực Bắc hùng vĩ của Tổ quốc</h2>\n<p>Hà Giang là tỉnh địa đầu Tổ quốc với địa hình núi non hùng vĩ, cao nguyên đá Đồng Văn được UNESCO công nhận là Công viên Địa chất Toàn cầu. Đây là điểm đến không thể bỏ qua cho những ai yêu thích khám phá và chụp ảnh phong cảnh.</p>\n<img src=\"https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=900&q=80\" alt=\"Cao nguyên đá Hà Giang\" style=\"width:100%;border-radius:12px;margin:1.5rem 0;object-fit:cover;max-height:420px;\">\n\n<h3>1. Đèo Mã Pí Lèng – Vua của các đèo</h3>\n<p>Đèo Mã Pí Lèng dài 20km, nằm ở độ cao 1.200-2.000m, là một trong tứ đại đỉnh đèo của Việt Nam. Từ đỉnh đèo nhìn xuống hẻm vực Tu Sản và dòng sông Nho Quế xanh biếc – khung cảnh đẹp đến nghẹt thở.</p>\n<p><strong>Góc chụp đẹp nhất:</strong> Điểm dừng chân giữa đèo, chụp vào buổi sáng sớm khi sương mù còn bảng lảng.</p>\n\n<h3>2. Cột cờ Lũng Cú – Điểm cực Bắc Tổ quốc</h3>\n<p>Leo 389 bậc thang lên đỉnh núi Rồng để đến cột cờ Lũng Cú – điểm cực Bắc của Việt Nam. Từ đây có thể nhìn sang đất Trung Quốc và ngắm toàn cảnh cao nguyên đá hùng vĩ.</p>\n<img src=\"https://images.unsplash.com/photo-1528127269322-539801943592?w=900&q=80\" alt=\"Cột cờ Lũng Cú\" style=\"width:100%;border-radius:12px;margin:1.5rem 0;object-fit:cover;max-height:420px;\">\n\n<h3>3. Phố cổ Đồng Văn</h3>\n<p>Phố cổ Đồng Văn với những ngôi nhà trình tường đất cổ kính, chợ phiên họp vào Chủ nhật với người dân tộc H\'Mông, Lô Lô, Giáy trong trang phục truyền thống rực rỡ.</p>\n\n<h3>4. Ruộng bậc thang Hoàng Su Phì</h3>\n<p>Ít người biết đến hơn Sapa nhưng ruộng bậc thang Hoàng Su Phì không kém phần đẹp. Mùa lúa chín (tháng 9-10) là thời điểm đẹp nhất để ghé thăm.</p>\n\n<h2>Lịch trình loop Hà Giang 4 ngày</h2>\n<p><strong>Ngày 1:</strong> Hà Nội → Hà Giang (xe khách đêm)<br>\n<strong>Ngày 2:</strong> Hà Giang → Đồng Văn (qua Quản Bạ, Yên Minh)<br>\n<strong>Ngày 3:</strong> Đồng Văn → Mèo Vạc (đèo Mã Pí Lèng)<br>\n<strong>Ngày 4:</strong> Mèo Vạc → Hà Giang → Hà Nội</p>', 'https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=1200&q=85', 'Hà Giang', 2200, 'published', '2026-05-26 11:27:03', '2026-05-26 11:27:03'),
(12, 5, 3, 'Cung đường ven biển Ninh Thuận – Bình Thuận: Đẹp như trời Tây', 'cung-duong-ven-bien-ninh-thuan-binh-thuan-dep-nhu-troi-tay-MJ3w7', 'Cung đường ven biển từ Ninh Thuận đến Bình Thuận với đồi cát đỏ, biển xanh và những ngôi làng chài bình yên là thiên đường check-in ít người biết.', '\n<h2>Ninh Thuận – Bình Thuận: Vùng đất nắng gió và biển xanh</h2>\n<p>Nếu bạn đang tìm kiếm một cung đường ven biển đẹp như trời Tây mà không cần bay ra nước ngoài, thì Ninh Thuận – Bình Thuận chính là câu trả lời. Đồi cát đỏ, biển xanh ngọc, làng chài bình yên và những cánh đồng nho xanh mướt.</p>\n<img src=\"https://images.unsplash.com/photo-1507525428034-b723cf961d3e?w=900&q=80\" alt=\"Biển Ninh Thuận\" style=\"width:100%;border-radius:12px;margin:1.5rem 0;object-fit:cover;max-height:420px;\">\n\n<h3>1. Đồi cát Mũi Né – Sa mạc giữa lòng Việt Nam</h3>\n<p>Đồi cát đỏ và đồi cát trắng Mũi Né là điểm check-in nổi tiếng nhất Bình Thuận. Chụp ảnh đẹp nhất vào lúc bình minh (5-7h) hoặc hoàng hôn (17-19h) khi ánh sáng vàng óng chiếu lên những đụn cát.</p>\n\n<h3>2. Vườn nho Ninh Thuận</h3>\n<p>Ninh Thuận là vùng trồng nho lớn nhất Việt Nam. Tham quan vườn nho xanh mướt, chụp ảnh giữa những giàn nho trĩu quả và thưởng thức rượu vang nho địa phương.</p>\n<img src=\"https://images.unsplash.com/photo-1464822759023-fed622ff2c3b?w=900&q=80\" alt=\"Vườn nho Ninh Thuận\" style=\"width:100%;border-radius:12px;margin:1.5rem 0;object-fit:cover;max-height:420px;\">\n\n<h3>3. Bãi biển Bình Tiên – Hoang sơ và trong vắt</h3>\n<p>Bãi biển Bình Tiên (Ninh Thuận) là một trong những bãi biển hoang sơ đẹp nhất Việt Nam, ít người biết đến. Nước biển trong xanh như pha lê, cát trắng mịn và không có hàng quán chen chúc.</p>\n\n<h3>4. Tháp Chăm Pô Klong Garai</h3>\n<p>Quần thể tháp Chăm hơn 700 năm tuổi, là di tích kiến trúc Chăm Pa đẹp nhất còn lại ở Việt Nam. Đặc biệt đẹp vào buổi chiều khi ánh nắng vàng chiếu lên những viên gạch đỏ cổ kính.</p>\n\n<h2>Lịch trình 3 ngày khám phá</h2>\n<p><strong>Ngày 1:</strong> Phan Rang – Tháp Chàm, vườn nho, biển Ninh Chữ<br>\n<strong>Ngày 2:</strong> Bình Tiên, Vĩnh Hy, Mũi Dinh<br>\n<strong>Ngày 3:</strong> Mũi Né, đồi cát, làng chài Mũi Né</p>', 'https://images.unsplash.com/photo-1507525428034-b723cf961d3e?w=1200&q=85', 'Ninh Thuận – Bình Thuận', 1560, 'published', '2026-05-26 11:27:03', '2026-05-26 11:27:03'),
(13, 6, 4, '10 mẹo tiết kiệm chi phí khi đi du lịch mà dân phượt nào cũng biết', '10-meo-tiet-kiem-chi-phi-khi-di-du-lich-ma-dan-phuot-nao-cung-biet-aM1FW', 'Bí kíp du lịch tiết kiệm nhưng vẫn trải nghiệm đầy đủ, từ đặt vé máy bay rẻ đến chọn chỗ ăn ngon giá tốt.', '\n<h2>Du lịch tiết kiệm – Đi nhiều hơn với chi phí ít hơn</h2>\n<p>Nhiều người nghĩ du lịch tốn kém, nhưng thực ra với những mẹo đúng đắn, bạn hoàn toàn có thể khám phá nhiều nơi mà không cần phải \"đốt\" hết tiền tiết kiệm. Dưới đây là 10 bí kíp từ những người đã đi hàng chục chuyến.</p>\n<img src=\"https://images.unsplash.com/photo-1436491865332-7a61a109cc05?w=900&q=80\" alt=\"Du lịch tiết kiệm\" style=\"width:100%;border-radius:12px;margin:1.5rem 0;object-fit:cover;max-height:420px;\">\n\n<h3>1. Đặt vé máy bay trước 2-3 tháng</h3>\n<p>Giá vé máy bay thường rẻ nhất khi đặt trước 6-8 tuần. Theo dõi giá trên Google Flights, Skyscanner hoặc đăng ký nhận thông báo giảm giá. Bay vào thứ 3, thứ 4 thường rẻ hơn thứ 6, thứ 7 đến 30%.</p>\n\n<h3>2. Chọn thời điểm du lịch thấp điểm</h3>\n<p>Tránh các dịp lễ lớn (30/4, 2/9, Tết) khi giá tăng gấp đôi. Du lịch vào tháng 3, tháng 10-11 thường có giá tốt nhất và ít đông đúc hơn.</p>\n\n<h3>3. Ở hostel hoặc homestay thay vì khách sạn</h3>\n<p>Hostel giường tầng chỉ 100.000 – 200.000đ/đêm, trong khi homestay gia đình thường rẻ hơn khách sạn 30-50% và cho trải nghiệm văn hóa địa phương thú vị hơn.</p>\n<img src=\"https://images.unsplash.com/photo-1571896349842-33c89424de2d?w=900&q=80\" alt=\"Hostel du lịch\" style=\"width:100%;border-radius:12px;margin:1.5rem 0;object-fit:cover;max-height:420px;\">\n\n<h3>4. Ăn tại chợ và quán địa phương</h3>\n<p>Một bữa ăn tại chợ hoặc quán vỉa hè chỉ 30.000 – 50.000đ, trong khi nhà hàng du lịch có thể tốn 200.000 – 500.000đ cho cùng một món. Hỏi người dân địa phương về quán ngon thay vì tin vào biển quảng cáo.</p>\n\n<h3>5. Thuê xe máy thay vì taxi</h3>\n<p>Thuê xe máy 100.000 – 150.000đ/ngày, trong khi taxi có thể tốn 500.000đ chỉ cho một chuyến đi. Xe máy còn cho bạn tự do khám phá những con đường nhỏ mà taxi không vào được.</p>\n\n<h3>6. Sử dụng ứng dụng du lịch thông minh</h3>\n<p>Google Maps (offline), Grab (di chuyển), Agoda/Booking (khách sạn), Foody (ăn uống). Những app này giúp bạn tiết kiệm đáng kể.</p>\n\n<h3>7. Đi theo nhóm để chia sẻ chi phí</h3>\n<p>Thuê xe, phòng khách sạn, tour... đều rẻ hơn khi đi nhóm. Một phòng 4 người chia ra chỉ bằng 1/4 so với đặt phòng đơn.</p>\n\n<h2>Bảng chi phí tham khảo cho chuyến đi 3 ngày</h2>\n<ul>\n<li>Lưu trú tiết kiệm: 300.000đ/đêm | Trung bình: 800.000đ/đêm</li>\n<li>Ăn uống tiết kiệm: 200.000đ/ngày | Trung bình: 500.000đ/ngày</li>\n<li>Di chuyển tiết kiệm: 150.000đ/ngày | Trung bình: 400.000đ/ngày</li>\n<li><strong>Tổng tiết kiệm: ~750.000đ/ngày | Trung bình: ~2.000.000đ/ngày</strong></li>\n</ul>', 'https://images.unsplash.com/photo-1436491865332-7a61a109cc05?w=1200&q=85', 'Việt Nam', 4200, 'published', '2026-05-26 11:27:03', '2026-05-26 11:27:03'),
(14, 7, 4, 'Kinh nghiệm leo Tà Năng – Phan Dũng: Cung đường trekking đẹp nhất Việt Nam', 'kinh-nghiem-leo-ta-nang-phan-dung-cung-duong-trekking-dep-nhat-viet-nam-K9o1P', 'Chia sẻ kinh nghiệm chinh phục cung trekking Tà Năng – Phan Dũng, lưu ý an toàn và chuẩn bị hành lý.', '\n<h2>Tà Năng – Phan Dũng: Cung đường trekking huyền thoại</h2>\n<p>Tà Năng – Phan Dũng là cung đường trekking dài nhất và đẹp nhất Việt Nam, trải dài 60km qua 3 tỉnh Lâm Đồng, Ninh Thuận và Bình Thuận. Đây là thử thách dành cho những người yêu thiên nhiên và muốn trải nghiệm vẻ đẹp hoang sơ của núi rừng Tây Nguyên.</p>\n<img src=\"https://images.unsplash.com/photo-1551632811-561732d1e306?w=900&q=80\" alt=\"Trekking Tà Năng Phan Dũng\" style=\"width:100%;border-radius:12px;margin:1.5rem 0;object-fit:cover;max-height:420px;\">\n\n<h2>Thông tin cơ bản</h2>\n<ul>\n<li><strong>Độ dài:</strong> 60km, đi trong 3 ngày 2 đêm</li>\n<li><strong>Độ khó:</strong> Trung bình – Khó (cần thể lực tốt)</li>\n<li><strong>Thời điểm đẹp nhất:</strong> Tháng 11 – 4 (mùa khô)</li>\n<li><strong>Chi phí:</strong> 1.500.000 – 2.500.000đ/người (tự túc)</li>\n</ul>\n\n<h3>Ngày 1: Tà Năng – Suối Vàng (20km)</h3>\n<p>Xuất phát từ thị trấn Tà Năng (Lâm Đồng) lúc 7h sáng. Đường đi qua những đồng cỏ xanh mướt, rừng thông và suối trong vắt. Điểm cắm trại đêm đầu tại Suối Vàng.</p>\n<img src=\"https://images.unsplash.com/photo-1464822759023-fed622ff2c3b?w=900&q=80\" alt=\"Cắm trại trekking\" style=\"width:100%;border-radius:12px;margin:1.5rem 0;object-fit:cover;max-height:420px;\">\n\n<h3>Ngày 2: Suối Vàng – Bàu Cạn (25km)</h3>\n<p>Ngày khó nhất của hành trình. Đường đi qua nhiều dốc cao, rừng rậm và suối cần lội qua. Phong cảnh thay đổi từ rừng thông sang rừng lá rộng nhiệt đới.</p>\n\n<h3>Ngày 3: Bàu Cạn – Phan Dũng (15km)</h3>\n<p>Đoạn cuối đi qua những đồng cỏ tranh vàng óng và rừng cây thưa. Kết thúc hành trình tại thôn Phan Dũng (Bình Thuận).</p>\n\n<h2>Lưu ý an toàn quan trọng</h2>\n<ul>\n<li>Không đi một mình, tối thiểu 4-5 người</li>\n<li>Thuê porter địa phương nếu lần đầu đi</li>\n<li>Báo cáo với kiểm lâm trước khi vào rừng</li>\n<li>Tuyệt đối không đi vào mùa mưa (tháng 5-10)</li>\n</ul>', 'https://images.unsplash.com/photo-1551632811-561732d1e306?w=1200&q=85', 'Lâm Đồng – Bình Thuận', 1870, 'published', '2026-05-26 11:27:03', '2026-05-26 11:27:03'),
(15, 1, 4, 'Kinh nghiệm du lịch một mình lần đầu – Những điều cần biết trước khi đi', 'kinh-nghiem-du-lich-mot-minh-lan-dau-nhung-dieu-can-biet-truoc-khi-di-T7eGX', 'Du lịch một mình (solo travel) đang ngày càng phổ biến. Đây là những kinh nghiệm thực tế giúp bạn tự tin bước ra khỏi vùng an toàn.', '\n<h2>Solo Travel – Hành trình khám phá bản thân</h2>\n<p>Du lịch một mình không chỉ là đi du lịch – đó là hành trình khám phá bản thân, vượt qua giới hạn và tạo ra những kỷ niệm không thể chia sẻ với ai khác. Nếu bạn đang do dự, bài viết này sẽ giúp bạn tự tin hơn.</p>\n<img src=\"https://images.unsplash.com/photo-1469854523086-cc02fe5d8800?w=900&q=80\" alt=\"Du lịch một mình\" style=\"width:100%;border-radius:12px;margin:1.5rem 0;object-fit:cover;max-height:420px;\">\n\n<h3>Tại sao nên thử du lịch một mình?</h3>\n<p>Bạn hoàn toàn tự do quyết định lịch trình, không cần thỏa hiệp với ai. Bạn sẽ gặp gỡ nhiều người thú vị hơn khi đi một mình. Bạn sẽ tự tin và độc lập hơn sau mỗi chuyến đi.</p>\n\n<h3>Chuẩn bị trước khi đi</h3>\n<p><strong>Nghiên cứu kỹ điểm đến:</strong> Đọc review, xem bản đồ, biết các điểm tham quan chính và cách di chuyển giữa chúng.</p>\n<p><strong>Đặt chỗ ở trước:</strong> Ít nhất đêm đầu tiên, để không bị lúng túng khi vừa đến nơi lạ.</p>\n<p><strong>Thông báo cho người thân:</strong> Chia sẻ lịch trình và địa chỉ lưu trú với ít nhất một người thân.</p>\n<img src=\"https://images.unsplash.com/photo-1436491865332-7a61a109cc05?w=900&q=80\" alt=\"Chuẩn bị hành lý\" style=\"width:100%;border-radius:12px;margin:1.5rem 0;object-fit:cover;max-height:420px;\">\n\n<h3>An toàn khi đi một mình</h3>\n<ul>\n<li>Luôn giữ điện thoại đầy pin và có internet</li>\n<li>Không chia sẻ thông tin phòng khách sạn với người lạ</li>\n<li>Tin vào trực giác – nếu cảm thấy không an toàn, hãy rời đi</li>\n<li>Giữ bản sao hộ chiếu và thẻ ngân hàng ở nơi khác</li>\n<li>Mua bảo hiểm du lịch trước khi đi</li>\n</ul>\n\n<h3>Điểm đến phù hợp cho solo traveler lần đầu</h3>\n<ul>\n<li><strong>Đà Lạt:</strong> An toàn, nhiều hostel, cộng đồng du lịch sôi động</li>\n<li><strong>Hội An:</strong> Thân thiện, dễ đi bộ, nhiều hoạt động</li>\n<li><strong>Đà Nẵng:</strong> Cơ sở hạ tầng tốt, nhiều lựa chọn ăn uống</li>\n<li><strong>Phú Quốc:</strong> Bãi biển đẹp, nhiều resort và hostel</li>\n</ul>', 'https://images.unsplash.com/photo-1469854523086-cc02fe5d8800?w=1200&q=85', 'Việt Nam', 2450, 'published', '2026-05-26 11:27:03', '2026-05-26 11:27:03'),
(16, 2, 5, 'Review 5 resort Phú Quốc sang chảnh nhất – Xứng đáng từng đồng', 'review-5-resort-phu-quoc-sang-chanh-nhat-xung-dang-tung-dong-9zzSN', 'Review chi tiết 5 resort 5 sao tại Phú Quốc với hồ bơi vô cực, bãi biển riêng và dịch vụ đẳng cấp quốc tế.', '\n<h2>Phú Quốc – Thiên đường resort của Đông Nam Á</h2>\n<p>Phú Quốc đang nhanh chóng trở thành điểm đến resort hàng đầu Đông Nam Á với hàng loạt khu nghỉ dưỡng 5 sao đẳng cấp quốc tế. Dưới đây là review chi tiết 5 resort tốt nhất mà tôi đã trực tiếp trải nghiệm.</p>\n<img src=\"https://images.unsplash.com/photo-1571896349842-33c89424de2d?w=900&q=80\" alt=\"Resort Phú Quốc\" style=\"width:100%;border-radius:12px;margin:1.5rem 0;object-fit:cover;max-height:420px;\">\n\n<h3>1. JW Marriott Phú Quốc Emerald Bay ⭐⭐⭐⭐⭐</h3>\n<p><strong>Giá:</strong> từ 8.000.000đ/đêm | <strong>Vị trí:</strong> Bãi Khem, Nam đảo</p>\n<p>Được thiết kế theo phong cách đại học cổ điển châu Âu, JW Marriott là resort đẹp nhất Phú Quốc. Hồ bơi vô cực nhìn ra biển, bãi biển riêng dài 1km, 8 nhà hàng và bar, spa đẳng cấp thế giới.</p>\n<p><strong>Điểm nổi bật:</strong> Bữa sáng buffet với hơn 100 món, butler service 24/7, khu vui chơi trẻ em rộng lớn.</p>\n\n<h3>2. Vinpearl Resort & Spa Phú Quốc ⭐⭐⭐⭐⭐</h3>\n<p><strong>Giá:</strong> từ 4.500.000đ/đêm | <strong>Vị trí:</strong> Bãi Dài, Bắc đảo</p>\n<p>Khu resort rộng lớn với 750 phòng và villa, 5 hồ bơi, bãi biển riêng và kết nối trực tiếp với Vinpearl Land. Lý tưởng cho gia đình có trẻ em.</p>\n<img src=\"https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=900&q=80\" alt=\"Hồ bơi resort Phú Quốc\" style=\"width:100%;border-radius:12px;margin:1.5rem 0;object-fit:cover;max-height:420px;\">\n\n<h3>3. Premier Village Phú Quốc Resort ⭐⭐⭐⭐⭐</h3>\n<p><strong>Giá:</strong> từ 6.000.000đ/đêm | <strong>Vị trí:</strong> Mũi Ông Đội, Nam đảo</p>\n<p>Resort villa độc đáo nằm trên mũi đất nhô ra biển, mỗi villa đều có hồ bơi riêng và tầm nhìn 180 độ ra biển. Đây là lựa chọn hoàn hảo cho tuần trăng mật.</p>\n\n<h3>4. Fusion Resort Phú Quốc ⭐⭐⭐⭐⭐</h3>\n<p><strong>Giá:</strong> từ 5.000.000đ/đêm | <strong>Vị trí:</strong> Vũng Bầu, Bắc đảo</p>\n<p>Điểm đặc biệt: tất cả các gói đều bao gồm spa không giới hạn. Kiến trúc độc đáo kết hợp giữa hiện đại và truyền thống, nằm trên bãi biển hoang sơ ít người biết đến.</p>\n\n<h3>5. Salinda Resort Phú Quốc ⭐⭐⭐⭐⭐</h3>\n<p><strong>Giá:</strong> từ 3.500.000đ/đêm | <strong>Vị trí:</strong> Bãi Trường</p>\n<p>Resort boutique với 62 phòng và villa, không khí yên tĩnh và riêng tư. Nhà hàng Ombra với đầu bếp người Ý phục vụ những món ăn tuyệt vời.</p>', 'https://images.unsplash.com/photo-1571896349842-33c89424de2d?w=1200&q=85', 'Phú Quốc', 2340, 'published', '2026-05-26 11:27:03', '2026-05-26 11:27:03'),
(17, 3, 5, 'Top 5 khách sạn boutique Hà Nội – Sang trọng giữa lòng phố cổ', 'top-5-khach-san-boutique-ha-noi-sang-trong-giua-long-pho-co-iVNkS', 'Những khách sạn boutique Hà Nội kết hợp hoàn hảo giữa kiến trúc Đông Dương cổ điển và tiện nghi hiện đại, mang đến trải nghiệm lưu trú độc đáo.', '\n<h2>Khách sạn boutique Hà Nội – Nơi lịch sử gặp gỡ hiện đại</h2>\n<p>Hà Nội có một nét đặc biệt mà ít thành phố nào có được: những khách sạn boutique nằm trong các biệt thự Pháp cổ hoặc nhà ống phố cổ được cải tạo tinh tế, mang đến trải nghiệm lưu trú vừa sang trọng vừa đậm chất văn hóa.</p>\n<img src=\"https://images.unsplash.com/photo-1566073771259-6a8506099945?w=900&q=80\" alt=\"Khách sạn boutique Hà Nội\" style=\"width:100%;border-radius:12px;margin:1.5rem 0;object-fit:cover;max-height:420px;\">\n\n<h3>1. Sofitel Legend Metropole Hanoi ⭐⭐⭐⭐⭐</h3>\n<p><strong>Giá:</strong> từ 6.000.000đ/đêm | <strong>Vị trí:</strong> 15 Ngô Quyền, Hoàn Kiếm</p>\n<p>Khách sạn lịch sử nhất Hà Nội, xây dựng từ năm 1901. Nơi đây từng đón tiếp Charlie Chaplin, Graham Greene và nhiều nguyên thủ quốc gia. Kiến trúc Pháp cổ điển, dịch vụ đẳng cấp thế giới.</p>\n\n<h3>2. La Siesta Premium Hang Be ⭐⭐⭐⭐</h3>\n<p><strong>Giá:</strong> từ 1.800.000đ/đêm | <strong>Vị trí:</strong> Phố cổ Hà Nội</p>\n<p>Khách sạn boutique 4 sao nằm ngay trong lòng phố cổ. Phòng ốc thiết kế tinh tế với đồ nội thất gỗ thủ công, nhân viên phục vụ chu đáo. Bữa sáng ngon với view nhìn ra phố cổ.</p>\n<img src=\"https://images.unsplash.com/photo-1571896349842-33c89424de2d?w=900&q=80\" alt=\"Phòng khách sạn boutique\" style=\"width:100%;border-radius:12px;margin:1.5rem 0;object-fit:cover;max-height:420px;\">\n\n<h3>3. Hanoi La Castela Hotel ⭐⭐⭐⭐</h3>\n<p><strong>Giá:</strong> từ 1.200.000đ/đêm | <strong>Vị trí:</strong> Hoàn Kiếm</p>\n<p>Khách sạn nhỏ xinh với 20 phòng, thiết kế theo phong cách Đông Dương. Rooftop bar với view nhìn ra Hồ Hoàn Kiếm là điểm cộng lớn.</p>\n\n<h3>4. Essence Palace Hotel ⭐⭐⭐⭐</h3>\n<p><strong>Giá:</strong> từ 900.000đ/đêm | <strong>Vị trí:</strong> Phố cổ</p>\n<p>Tỷ lệ giá/chất lượng tốt nhất trong danh sách. Phòng rộng rãi, sạch sẽ, nhân viên thân thiện và vị trí đắc địa ngay trung tâm phố cổ.</p>\n\n<h2>Lưu ý khi đặt khách sạn Hà Nội</h2>\n<ul>\n<li>Đặt phòng trực tiếp qua website khách sạn thường rẻ hơn OTA 10-15%</li>\n<li>Khu phố cổ (Hoàn Kiếm) là vị trí tốt nhất để đi bộ khám phá</li>\n<li>Tránh đặt phòng gần phố Tạ Hiện vào cuối tuần nếu bạn cần yên tĩnh</li>\n<li>Kiểm tra chính sách hủy phòng – nên chọn loại miễn phí hủy</li>\n</ul>', 'https://images.unsplash.com/photo-1566073771259-6a8506099945?w=1200&q=85', 'Hà Nội', 1780, 'published', '2026-05-26 11:27:03', '2026-05-26 11:27:03'),
(18, 4, 5, 'Review homestay Đà Lạt dưới 500k – Rẻ mà vẫn đẹp, vẫn chất', 'review-homestay-da-lat-duoi-500k-re-ma-van-dep-van-chat-hiJSf', 'Không cần chi nhiều tiền vẫn có thể tìm được homestay đẹp ở Đà Lạt. Tổng hợp những homestay dưới 500k/đêm nhưng view đẹp, sạch sẽ và tiện nghi.', '\n<h2>Homestay Đà Lạt dưới 500k – Có thật không?</h2>\n<p>Nhiều người nghĩ homestay đẹp ở Đà Lạt phải tốn cả triệu đồng mỗi đêm. Nhưng thực tế, nếu biết tìm đúng chỗ và đặt đúng thời điểm, bạn hoàn toàn có thể tìm được những nơi lưu trú tuyệt vời với giá dưới 500.000đ/đêm.</p>\n<img src=\"https://images.unsplash.com/photo-1520250497591-112f2f40a3f4?w=900&q=80\" alt=\"Homestay Đà Lạt\" style=\"width:100%;border-radius:12px;margin:1.5rem 0;object-fit:cover;max-height:420px;\">\n\n<h3>1. Cozy Nest Dalat – 280.000đ/đêm</h3>\n<p>Phòng đôi nhỏ xinh với cửa sổ nhìn ra vườn hoa. Chủ nhà thân thiện, có bếp chung để tự nấu ăn. Vị trí gần chợ Đà Lạt, đi bộ 5 phút.</p>\n\n<h3>2. The Little House – 350.000đ/đêm</h3>\n<p>Ngôi nhà nhỏ ấm cúng với nội thất gỗ vintage. Có ban công nhỏ nhìn ra đường phố yên tĩnh. Bữa sáng đơn giản được bao gồm trong giá phòng.</p>\n<img src=\"https://images.unsplash.com/photo-1464822759023-fed622ff2c3b?w=900&q=80\" alt=\"Phòng homestay Đà Lạt\" style=\"width:100%;border-radius:12px;margin:1.5rem 0;object-fit:cover;max-height:420px;\">\n\n<h3>3. Green Hill Homestay – 420.000đ/đêm</h3>\n<p>Nằm trên đồi nhỏ, view nhìn ra thung lũng xanh mướt. Phòng rộng rãi với giường đôi lớn và phòng tắm riêng. Có bãi đỗ xe miễn phí.</p>\n\n<h3>4. Dalat Backpacker Hostel – 120.000đ/giường</h3>\n<p>Hostel dành cho solo traveler với giường tầng sạch sẽ, tủ khóa riêng và khu vực sinh hoạt chung rộng rãi. Nơi tuyệt vời để gặp gỡ bạn đồng hành.</p>\n\n<h2>Mẹo tìm homestay rẻ đẹp ở Đà Lạt</h2>\n<ul>\n<li>Đặt qua Airbnb hoặc Booking vào ngày thường (thứ 2-5) – rẻ hơn 20-30%</li>\n<li>Tránh đặt vào dịp lễ, Tết, hè – giá tăng gấp đôi</li>\n<li>Đọc kỹ đánh giá, đặc biệt chú ý đến sự sạch sẽ và thái độ chủ nhà</li>\n<li>Hỏi về chính sách check-in sớm/check-out muộn</li>\n<li>Khu vực Trần Hưng Đạo và Nguyên Tử Lực có nhiều homestay đẹp giá tốt</li>\n</ul>', 'https://images.unsplash.com/photo-1520250497591-112f2f40a3f4?w=1200&q=85', 'Đà Lạt', 1920, 'published', '2026-05-26 11:27:03', '2026-05-26 11:27:03'),
(19, 5, 6, 'Cẩm nang du lịch Đà Lạt từ A đến Z – Tất cả những gì bạn cần biết', 'cam-nang-du-lich-da-lat-tu-a-den-z-tat-ca-nhung-gi-ban-can-biet-JLnB7', 'Hướng dẫn du lịch Đà Lạt toàn diện: cách đi, chỗ ở, ăn gì, chơi gì, mua gì và những lưu ý quan trọng cho chuyến đi hoàn hảo.', '\n<h2>Đà Lạt – Thành phố ngàn hoa bốn mùa</h2>\n<p>Đà Lạt nằm ở độ cao 1.500m so với mực nước biển, có khí hậu mát mẻ quanh năm với nhiệt độ trung bình 18-22°C. Thành phố hoa này là điểm đến yêu thích của người Việt Nam và du khách quốc tế với phong cảnh thiên nhiên tuyệt đẹp, ẩm thực đặc sắc và không khí lãng mạn.</p>\n<img src=\"https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=900&q=80\" alt=\"Đà Lạt toàn cảnh\" style=\"width:100%;border-radius:12px;margin:1.5rem 0;object-fit:cover;max-height:420px;\">\n\n<h2>Cách di chuyển đến Đà Lạt</h2>\n<ul>\n<li><strong>Máy bay:</strong> Sân bay Liên Khương cách trung tâm 30km. Bay từ Hà Nội/TP.HCM: 45-90 phút</li>\n<li><strong>Xe khách từ TP.HCM:</strong> 7-8 tiếng, giá 150.000 – 250.000đ</li>\n<li><strong>Xe khách từ Nha Trang:</strong> 4-5 tiếng, giá 120.000 – 180.000đ</li>\n<li><strong>Tự lái xe:</strong> Từ TP.HCM theo QL20, khoảng 300km</li>\n</ul>\n\n<h2>Điểm tham quan nổi bật</h2>\n<p><strong>Hồ Xuân Hương:</strong> Hồ nhân tạo nằm giữa lòng thành phố, lý tưởng để đi dạo buổi sáng sớm hoặc chiều tối.</p>\n<p><strong>Thung lũng Tình Yêu:</strong> Khu du lịch sinh thái với hồ nước xanh, vườn hoa và nhiều hoạt động vui chơi.</p>\n<p><strong>Đồi Mộng Mơ:</strong> Khu vườn hoa rộng lớn với nhiều loài hoa đặc trưng của Đà Lạt.</p>\n<img src=\"https://images.unsplash.com/photo-1464822759023-fed622ff2c3b?w=900&q=80\" alt=\"Hoa Đà Lạt\" style=\"width:100%;border-radius:12px;margin:1.5rem 0;object-fit:cover;max-height:420px;\">\n\n<h2>Ẩm thực Đà Lạt</h2>\n<ul>\n<li><strong>Bánh mì xíu mại:</strong> Đặc sản không thể bỏ qua, giá 15.000đ/ổ</li>\n<li><strong>Bánh tráng nướng:</strong> Ăn vặt phổ biến nhất Đà Lạt</li>\n<li><strong>Sữa đậu nành nóng:</strong> Uống buổi sáng sớm khi trời lạnh</li>\n<li><strong>Lẩu bò Đà Lạt:</strong> Ăn tối ấm bụng trong tiết trời se lạnh</li>\n<li><strong>Dâu tây tươi:</strong> Mua tại vườn hoặc chợ Đà Lạt</li>\n</ul>\n\n<h2>Mua gì về làm quà</h2>\n<ul>\n<li>Mứt dâu tây, mứt atiso</li>\n<li>Cà phê Đà Lạt (Arabica)</li>\n<li>Rượu vang Đà Lạt</li>\n<li>Hoa tươi (hồng, cúc, ly)</li>\n<li>Áo len thổ cẩm</li>\n</ul>\n\n<h2>Thời điểm đẹp nhất để đến Đà Lạt</h2>\n<p>Đà Lạt đẹp quanh năm, nhưng đẹp nhất vào tháng 11-12 khi hoa dã quỳ nở vàng rực khắp nơi, và tháng 1-3 khi hoa anh đào nở. Tránh tháng 7-9 vì mưa nhiều.</p>', 'https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=1200&q=85', 'Đà Lạt', 3200, 'published', '2026-05-26 11:27:03', '2026-05-26 11:27:03');
INSERT INTO `posts` (`id`, `user_id`, `category_id`, `title`, `slug`, `excerpt`, `content`, `image`, `location`, `views_count`, `status`, `created_at`, `updated_at`) VALUES
(20, 6, 6, 'Cẩm nang du lịch Nha Trang: Biển xanh, nắng vàng và hải sản tươi ngon', 'cam-nang-du-lich-nha-trang-bien-xanh-nang-vang-va-hai-san-tuoi-ngon-lvbTi', 'Nha Trang – thành phố biển đẹp nhất Việt Nam với bãi biển dài 6km, hải sản tươi ngon và hàng loạt hoạt động giải trí hấp dẫn.', '\n<h2>Nha Trang – Viên ngọc biển của Việt Nam</h2>\n<p>Nha Trang sở hữu bãi biển dài 6km ngay trung tâm thành phố, nước biển trong xanh và khí hậu nắng ấm quanh năm. Đây là điểm đến lý tưởng cho những ai muốn nghỉ dưỡng biển kết hợp với ẩm thực hải sản tươi ngon.</p>\n<img src=\"https://images.unsplash.com/photo-1507525428034-b723cf961d3e?w=900&q=80\" alt=\"Bãi biển Nha Trang\" style=\"width:100%;border-radius:12px;margin:1.5rem 0;object-fit:cover;max-height:420px;\">\n\n<h2>Cách di chuyển đến Nha Trang</h2>\n<ul>\n<li><strong>Máy bay:</strong> Sân bay Cam Ranh cách trung tâm 35km. Bay từ Hà Nội/TP.HCM: 1.5-2 tiếng</li>\n<li><strong>Tàu hỏa:</strong> Từ Hà Nội: 24-26 tiếng | Từ TP.HCM: 7-8 tiếng</li>\n<li><strong>Xe khách từ TP.HCM:</strong> 9-10 tiếng, giá 200.000 – 350.000đ</li>\n</ul>\n\n<h2>Hoạt động không thể bỏ qua</h2>\n<p><strong>Tour 4 đảo:</strong> Hòn Mun, Hòn Tằm, Hòn Miễu, Hòn Một – lặn ngắm san hô, tắm biển và ăn hải sản. Giá: 200.000 – 350.000đ/người.</p>\n<p><strong>Vinpearl Land:</strong> Công viên giải trí trên đảo, đi cáp treo qua biển. Giá: 900.000đ/người.</p>\n<p><strong>Tắm bùn khoáng:</strong> Trải nghiệm độc đáo tại I-Resort hoặc Tháp Bà. Giá: 200.000 – 400.000đ/người.</p>\n<img src=\"https://images.unsplash.com/photo-1544551763-46a013bb70d5?w=900&q=80\" alt=\"Lặn biển Nha Trang\" style=\"width:100%;border-radius:12px;margin:1.5rem 0;object-fit:cover;max-height:420px;\">\n\n<h2>Điểm tham quan văn hóa</h2>\n<ul>\n<li><strong>Tháp Bà Ponagar:</strong> Quần thể tháp Chăm hơn 1.000 năm tuổi</li>\n<li><strong>Chùa Long Sơn:</strong> Chùa lớn nhất Nha Trang với tượng Phật trắng khổng lồ</li>\n<li><strong>Viện Hải dương học:</strong> Bảo tàng sinh vật biển thú vị cho cả gia đình</li>\n</ul>\n\n<h2>Thời điểm đẹp nhất</h2>\n<p>Tháng 1-8 là mùa khô, biển đẹp và ít mưa. Tháng 9-12 là mùa mưa bão, nên tránh. Đẹp nhất là tháng 3-6 khi nước biển trong nhất.</p>', 'https://images.unsplash.com/photo-1507525428034-b723cf961d3e?w=1200&q=85', 'Nha Trang, Khánh Hòa', 2680, 'published', '2026-05-26 11:27:03', '2026-05-26 11:27:03'),
(21, 7, 6, 'Cẩm nang du lịch Hội An: Phố cổ, làng quê và biển An Bàng', 'cam-nang-du-lich-hoi-an-pho-co-lang-que-va-bien-an-bang-hD33N', 'Hội An không chỉ có phố cổ – còn có làng rau Trà Quế, làng gốm Thanh Hà, bãi biển An Bàng và ẩm thực đặc sắc không nơi nào có được.', '\n<h2>Hội An – Nhiều hơn một phố cổ</h2>\n<p>Hội An được nhiều du khách quốc tế bình chọn là thành phố đẹp nhất châu Á. Nhưng Hội An không chỉ có phố cổ – đây còn là nơi có những làng nghề truyền thống, bãi biển hoang sơ và ẩm thực đặc sắc nhất miền Trung.</p>\n<img src=\"https://images.unsplash.com/photo-1528360983277-13d401cdc186?w=900&q=80\" alt=\"Phố cổ Hội An\" style=\"width:100%;border-radius:12px;margin:1.5rem 0;object-fit:cover;max-height:420px;\">\n\n<h2>Cách di chuyển đến Hội An</h2>\n<ul>\n<li><strong>Từ Đà Nẵng:</strong> Taxi/Grab 30km, khoảng 200.000 – 300.000đ | Xe buýt: 30.000đ</li>\n<li><strong>Từ Huế:</strong> Xe khách 120km, khoảng 3 tiếng</li>\n<li><strong>Sân bay gần nhất:</strong> Đà Nẵng (30km)</li>\n</ul>\n\n<h2>Phố cổ Hội An</h2>\n<p>Vé tham quan phố cổ: 120.000đ/người (vào 5 điểm tham quan). Nên đi bộ hoặc thuê xe đạp (50.000đ/ngày) để khám phá. Đẹp nhất vào buổi tối khi đèn lồng thắp sáng.</p>\n<img src=\"https://images.unsplash.com/photo-1555400038-63f5ba517a47?w=900&q=80\" alt=\"Đèn lồng Hội An\" style=\"width:100%;border-radius:12px;margin:1.5rem 0;object-fit:cover;max-height:420px;\">\n\n<h2>Những trải nghiệm độc đáo</h2>\n<p><strong>Làng rau Trà Quế:</strong> Tham gia trồng rau cùng nông dân, học nấu ăn với rau tươi hái từ vườn. Tour nửa ngày: 200.000 – 350.000đ.</p>\n<p><strong>Làng gốm Thanh Hà:</strong> Tự tay nặn gốm trên bàn xoay, mang về sản phẩm tự làm. Giá: 50.000đ/người.</p>\n<p><strong>Bãi biển An Bàng:</strong> Cách phố cổ 4km, bãi biển đẹp và ít đông hơn Cửa Đại. Nhiều quán cà phê view biển đẹp.</p>\n\n<h2>Ẩm thực Hội An</h2>\n<ul>\n<li><strong>Cao lầu:</strong> Đặc sản chỉ có ở Hội An, 40.000 – 60.000đ/tô</li>\n<li><strong>Bánh mì Phượng:</strong> Nổi tiếng thế giới, 25.000đ/ổ</li>\n<li><strong>Cơm gà Hội An:</strong> Cơm trắng dẻo với gà xé phay, 40.000đ/suất</li>\n<li><strong>Hoành thánh chiên:</strong> Bánh chiên giòn ăn với nước sốt cà chua</li>\n</ul>', 'https://images.unsplash.com/photo-1528360983277-13d401cdc186?w=1200&q=85', 'Hội An, Quảng Nam', 2890, 'published', '2026-05-26 11:27:03', '2026-05-26 11:27:03'),
(22, 3, 2, '[NHÁP] Khám phá Côn Đảo – Hòn đảo thiêng liêng và hoang sơ nhất Việt Nam', 'nhap-kham-pha-con-dao-hon-dao-thieng-lieng-va-hoang-so-nhat-viet-nam-draft-ydAVl', 'Côn Đảo – nơi lịch sử bi hùng gặp gỡ thiên nhiên hoang sơ tuyệt đẹp. Bài viết đang được hoàn thiện.', '\n<h2>Côn Đảo – Viên ngọc ẩn của Việt Nam</h2>\n<p>Côn Đảo là quần đảo gồm 16 hòn đảo lớn nhỏ nằm ngoài khơi tỉnh Bà Rịa – Vũng Tàu. Nơi đây nổi tiếng với lịch sử bi hùng của nhà tù Côn Đảo thời thực dân Pháp và đế quốc Mỹ, đồng thời sở hữu thiên nhiên hoang sơ tuyệt đẹp với những bãi biển trong vắt và rừng nguyên sinh.</p>\n<img src=\"https://images.unsplash.com/photo-1537956965359-7573183d1f57?w=900&q=80\" alt=\"Côn Đảo\" style=\"width:100%;border-radius:12px;margin:1.5rem 0;object-fit:cover;max-height:420px;\">\n<p><em>[Bài viết đang được hoàn thiện – sẽ cập nhật thêm thông tin về lịch trình, chi phí và kinh nghiệm di chuyển...]</em></p>\n<h3>Những điểm không thể bỏ qua</h3>\n<ul>\n<li>Nhà tù Côn Đảo – Di tích lịch sử quốc gia đặc biệt</li>\n<li>Nghĩa trang Hàng Dương – Nơi an nghỉ của hàng nghìn liệt sĩ</li>\n<li>Bãi Đầm Trầu – Bãi biển đẹp nhất Côn Đảo</li>\n<li>Vườn Quốc gia Côn Đảo – Rùa biển đẻ trứng</li>\n</ul>', 'https://images.unsplash.com/photo-1537956965359-7573183d1f57?w=1200&q=85', 'Côn Đảo, Bà Rịa – Vũng Tàu', 0, 'draft', '2026-05-26 11:27:03', '2026-05-26 11:27:03'),
(23, 5, 1, '[NHÁP] Ẩm thực Tây Nguyên: Những món ăn độc đáo của đồng bào dân tộc', 'nhap-am-thuc-tay-nguyen-nhung-mon-an-doc-dao-cua-dong-bao-dan-toc-draft-OMPqB', 'Ẩm thực Tây Nguyên mang đậm bản sắc văn hóa của các dân tộc Ê Đê, Ba Na, Gia Rai với những nguyên liệu độc đáo từ rừng núi.', '\n<h2>Ẩm thực Tây Nguyên – Hương vị của đại ngàn</h2>\n<p>Tây Nguyên không chỉ nổi tiếng với cà phê và cao nguyên đất đỏ mà còn có nền ẩm thực phong phú, độc đáo của các dân tộc thiểu số. Mỗi món ăn đều gắn liền với văn hóa, tín ngưỡng và cuộc sống của người dân bản địa.</p>\n<img src=\"https://images.unsplash.com/photo-1504674900247-0877df9cc836?w=900&q=80\" alt=\"Ẩm thực Tây Nguyên\" style=\"width:100%;border-radius:12px;margin:1.5rem 0;object-fit:cover;max-height:420px;\">\n<p><em>[Đang bổ sung thêm nội dung về các món ăn đặc trưng và địa chỉ thưởng thức...]</em></p>\n<h3>Các món ăn đặc trưng</h3>\n<ul>\n<li>Cơm lam – Cơm nấu trong ống tre</li>\n<li>Gà nướng đất sét</li>\n<li>Rượu cần – Thức uống truyền thống</li>\n<li>Canh thụt – Đặc sản của người Ê Đê</li>\n</ul>', 'https://images.unsplash.com/photo-1504674900247-0877df9cc836?w=1200&q=85', 'Tây Nguyên', 0, 'draft', '2026-05-26 11:27:03', '2026-05-26 11:27:03'),
(24, 1, 6, '[NHÁP] Kinh nghiệm xin visa và du lịch Nhật Bản tự túc', 'nhap-kinh-nghiem-xin-visa-va-du-lich-nhat-ban-tu-tuc-draft-nKNno', 'Hướng dẫn xin visa Nhật Bản và kinh nghiệm du lịch tự túc tại xứ sở hoa anh đào. Bài viết đang được hoàn thiện.', '\n<h2>Du lịch Nhật Bản tự túc – Giấc mơ trong tầm tay</h2>\n<p>Nhật Bản từ lâu đã là điểm đến mơ ước của nhiều người Việt Nam. Với hệ thống giao thông công cộng hiện đại, an toàn tuyệt đối và văn hóa độc đáo, Nhật Bản là điểm đến hoàn hảo cho chuyến du lịch tự túc.</p>\n<img src=\"https://images.unsplash.com/photo-1528360983277-13d401cdc186?w=900&q=80\" alt=\"Nhật Bản\" style=\"width:100%;border-radius:12px;margin:1.5rem 0;object-fit:cover;max-height:420px;\">\n<p><em>[Đang hoàn thiện phần hướng dẫn xin visa và lịch trình chi tiết...]</em></p>\n<h3>Thủ tục xin visa Nhật Bản</h3>\n<ul>\n<li>Hồ sơ cần chuẩn bị: hộ chiếu, ảnh, giấy tờ tài chính</li>\n<li>Nộp hồ sơ tại Đại sứ quán Nhật Bản hoặc trung tâm visa</li>\n<li>Thời gian xử lý: 5-7 ngày làm việc</li>\n<li>Lệ phí: miễn phí (visa du lịch)</li>\n</ul>', 'https://images.unsplash.com/photo-1528360983277-13d401cdc186?w=1200&q=85', 'Nhật Bản', 0, 'draft', '2026-05-26 11:27:03', '2026-05-26 11:27:03'),
(25, 4, 5, '[NHÁP] Review khách sạn capsule Hà Nội – Trải nghiệm ngủ kiểu Nhật giữa lòng thủ đô', 'nhap-review-khach-san-capsule-ha-noi-trai-nghiem-ngu-kieu-nhat-giua-long-thu-do-draft-xWgIW', 'Khách sạn capsule – xu hướng lưu trú mới tại Hà Nội với giá rẻ, tiện nghi và trải nghiệm độc đáo kiểu Nhật Bản.', '\n<h2>Khách sạn Capsule – Xu hướng lưu trú mới tại Hà Nội</h2>\n<p>Capsule hotel – loại hình khách sạn với những \"khoang ngủ\" nhỏ gọn kiểu Nhật Bản đang dần xuất hiện tại Hà Nội. Đây là lựa chọn lý tưởng cho solo traveler muốn tiết kiệm chi phí nhưng vẫn có không gian riêng tư.</p>\n<img src=\"https://images.unsplash.com/photo-1566073771259-6a8506099945?w=900&q=80\" alt=\"Capsule hotel\" style=\"width:100%;border-radius:12px;margin:1.5rem 0;object-fit:cover;max-height:420px;\">\n<p><em>[Đang bổ sung thêm review chi tiết và so sánh các capsule hotel tại Hà Nội...]</em></p>\n<h3>Ưu điểm của capsule hotel</h3>\n<ul>\n<li>Giá rẻ: 200.000 – 400.000đ/đêm</li>\n<li>Có không gian riêng tư với rèm che</li>\n<li>Tiện nghi đầy đủ: ổ cắm, đèn đọc sách, wifi</li>\n<li>Khu vực sinh hoạt chung rộng rãi</li>\n</ul>', 'https://images.unsplash.com/photo-1566073771259-6a8506099945?w=1200&q=85', 'Hà Nội', 0, 'draft', '2026-05-26 11:27:03', '2026-05-26 11:27:03'),
(26, 6, 3, '[NHÁP] Checkin mùa hoa tam giác mạch Hà Giang – Tím ngắt cả trời', 'nhap-checkin-mua-hoa-tam-giac-mach-ha-giang-tim-ngat-ca-troi-draft-PGJ3g', 'Mùa hoa tam giác mạch Hà Giang (tháng 10-12) là thời điểm đẹp nhất để check-in với những cánh đồng hoa tím ngắt trải dài.', '\n<h2>Hoa tam giác mạch Hà Giang – Mùa hoa đẹp nhất năm</h2>\n<p>Mỗi năm vào khoảng tháng 10 đến tháng 12, cao nguyên đá Đồng Văn lại khoác lên mình tấm áo tím hồng của hoa tam giác mạch. Đây là thời điểm Hà Giang đẹp nhất và thu hút đông đảo du khách nhất trong năm.</p>\n<img src=\"https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=900&q=80\" alt=\"Hoa tam giác mạch Hà Giang\" style=\"width:100%;border-radius:12px;margin:1.5rem 0;object-fit:cover;max-height:420px;\">\n<p><em>[Đang bổ sung thêm thông tin về địa điểm ngắm hoa đẹp nhất và kinh nghiệm di chuyển...]</em></p>\n<h3>Thời điểm hoa nở đẹp nhất</h3>\n<ul>\n<li>Đầu tháng 10: Hoa bắt đầu nở ở vùng thấp</li>\n<li>Giữa tháng 10 – đầu tháng 11: Đẹp nhất, hoa nở rộ khắp nơi</li>\n<li>Tháng 11 – 12: Hoa tàn dần nhưng vẫn còn đẹp</li>\n</ul>', 'https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=1200&q=85', 'Hà Giang', 0, 'draft', '2026-05-26 11:27:03', '2026-05-26 11:27:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `score` tinyint(3) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ratings`
--

INSERT INTO `ratings` (`id`, `user_id`, `post_id`, `score`, `created_at`, `updated_at`) VALUES
(1, 6, 1, 5, '2026-05-08 11:27:03', '2026-05-25 11:27:03'),
(2, 7, 1, 4, '2026-05-21 11:27:03', '2026-05-23 11:27:03'),
(3, 4, 1, 5, '2026-05-22 11:27:03', '2026-05-23 11:27:03'),
(4, 3, 1, 4, '2026-05-19 11:27:03', '2026-05-21 11:27:03'),
(5, 2, 1, 5, '2026-05-19 11:27:03', '2026-05-21 11:27:03'),
(6, 7, 2, 4, '2026-05-24 11:27:03', '2026-05-23 11:27:03'),
(7, 1, 2, 4, '2026-05-09 11:27:03', '2026-05-25 11:27:03'),
(8, 8, 2, 4, '2026-05-15 11:27:03', '2026-05-21 11:27:03'),
(9, 6, 2, 4, '2026-05-09 11:27:03', '2026-05-21 11:27:03'),
(10, 5, 2, 5, '2026-05-11 11:27:03', '2026-05-23 11:27:03'),
(11, 3, 2, 4, '2026-05-12 11:27:03', '2026-05-21 11:27:03'),
(12, 4, 2, 5, '2026-05-21 11:27:03', '2026-05-25 11:27:03'),
(13, 7, 3, 5, '2026-05-09 11:27:03', '2026-05-21 11:27:03'),
(14, 1, 3, 5, '2026-05-23 11:27:03', '2026-05-26 11:27:03'),
(15, 8, 3, 5, '2026-05-21 11:27:03', '2026-05-22 11:27:03'),
(16, 2, 3, 3, '2026-05-17 11:27:03', '2026-05-22 11:27:03'),
(17, 4, 3, 5, '2026-05-07 11:27:03', '2026-05-23 11:27:03'),
(18, 5, 3, 5, '2026-05-17 11:27:03', '2026-05-24 11:27:03'),
(19, 6, 3, 5, '2026-05-08 11:27:03', '2026-05-22 11:27:03'),
(20, 6, 4, 5, '2026-05-16 11:27:03', '2026-05-24 11:27:03'),
(21, 3, 4, 5, '2026-05-07 11:27:03', '2026-05-25 11:27:03'),
(22, 8, 4, 4, '2026-05-17 11:27:03', '2026-05-24 11:27:03'),
(23, 1, 4, 4, '2026-05-17 11:27:03', '2026-05-22 11:27:03'),
(24, 5, 4, 4, '2026-05-23 11:27:03', '2026-05-21 11:27:03'),
(25, 7, 4, 3, '2026-05-09 11:27:03', '2026-05-26 11:27:03'),
(26, 2, 4, 4, '2026-05-09 11:27:03', '2026-05-21 11:27:03'),
(27, 7, 5, 3, '2026-05-18 11:27:03', '2026-05-25 11:27:03'),
(28, 6, 5, 4, '2026-05-12 11:27:03', '2026-05-21 11:27:03'),
(29, 4, 5, 4, '2026-05-12 11:27:03', '2026-05-24 11:27:03'),
(30, 2, 5, 4, '2026-05-12 11:27:03', '2026-05-25 11:27:03'),
(31, 8, 5, 4, '2026-05-20 11:27:03', '2026-05-24 11:27:03'),
(32, 1, 6, 5, '2026-05-13 11:27:03', '2026-05-21 11:27:03'),
(33, 5, 6, 3, '2026-05-07 11:27:03', '2026-05-25 11:27:03'),
(34, 2, 6, 4, '2026-05-14 11:27:03', '2026-05-24 11:27:03'),
(35, 4, 6, 5, '2026-05-17 11:27:03', '2026-05-25 11:27:03'),
(36, 8, 6, 5, '2026-05-24 11:27:03', '2026-05-26 11:27:03'),
(37, 2, 7, 4, '2026-05-15 11:27:03', '2026-05-24 11:27:03'),
(38, 3, 7, 4, '2026-05-13 11:27:03', '2026-05-21 11:27:03'),
(39, 8, 7, 4, '2026-05-13 11:27:03', '2026-05-26 11:27:03'),
(40, 1, 7, 4, '2026-05-06 11:27:03', '2026-05-26 11:27:03'),
(41, 4, 7, 5, '2026-05-11 11:27:03', '2026-05-26 11:27:03'),
(42, 6, 7, 5, '2026-05-19 11:27:03', '2026-05-24 11:27:03'),
(43, 5, 7, 5, '2026-05-13 11:27:03', '2026-05-24 11:27:03'),
(44, 4, 8, 3, '2026-05-17 11:27:03', '2026-05-26 11:27:03'),
(45, 5, 8, 5, '2026-05-19 11:27:03', '2026-05-23 11:27:03'),
(46, 7, 8, 5, '2026-05-21 11:27:03', '2026-05-26 11:27:03'),
(47, 6, 8, 5, '2026-05-18 11:27:03', '2026-05-22 11:27:03'),
(48, 2, 8, 4, '2026-05-19 11:27:03', '2026-05-23 11:27:03'),
(49, 3, 8, 5, '2026-05-24 11:27:03', '2026-05-23 11:27:03'),
(50, 6, 9, 5, '2026-05-08 11:27:03', '2026-05-21 11:27:03'),
(51, 7, 9, 4, '2026-05-19 11:27:03', '2026-05-26 11:27:03'),
(52, 4, 9, 4, '2026-05-14 11:27:03', '2026-05-25 11:27:03'),
(53, 8, 9, 4, '2026-05-17 11:27:03', '2026-05-21 11:27:03'),
(54, 3, 9, 5, '2026-05-14 11:27:03', '2026-05-25 11:27:03'),
(55, 1, 9, 5, '2026-05-20 11:27:03', '2026-05-22 11:27:03'),
(56, 5, 9, 5, '2026-05-17 11:27:03', '2026-05-23 11:27:03'),
(57, 4, 10, 3, '2026-05-25 11:27:03', '2026-05-21 11:27:03'),
(58, 5, 10, 5, '2026-05-25 11:27:03', '2026-05-22 11:27:03'),
(59, 8, 10, 4, '2026-05-09 11:27:03', '2026-05-26 11:27:03'),
(60, 1, 10, 4, '2026-05-11 11:27:03', '2026-05-24 11:27:03'),
(61, 6, 10, 4, '2026-05-12 11:27:03', '2026-05-22 11:27:03'),
(62, 7, 10, 4, '2026-05-11 11:27:03', '2026-05-26 11:27:03'),
(63, 2, 10, 4, '2026-05-06 11:27:03', '2026-05-25 11:27:03'),
(64, 3, 11, 5, '2026-05-08 11:27:03', '2026-05-23 11:27:03'),
(65, 6, 11, 4, '2026-05-06 11:27:03', '2026-05-26 11:27:03'),
(66, 5, 11, 5, '2026-05-16 11:27:03', '2026-05-25 11:27:03'),
(67, 7, 11, 5, '2026-05-07 11:27:03', '2026-05-23 11:27:03'),
(68, 2, 11, 5, '2026-05-09 11:27:03', '2026-05-26 11:27:03'),
(69, 7, 12, 5, '2026-05-21 11:27:03', '2026-05-26 11:27:03'),
(70, 3, 12, 5, '2026-05-10 11:27:03', '2026-05-26 11:27:03'),
(71, 1, 12, 4, '2026-05-14 11:27:03', '2026-05-26 11:27:03'),
(72, 4, 12, 5, '2026-05-17 11:27:03', '2026-05-22 11:27:03'),
(73, 8, 12, 5, '2026-05-22 11:27:03', '2026-05-26 11:27:03'),
(74, 2, 12, 5, '2026-05-22 11:27:03', '2026-05-26 11:27:03'),
(75, 6, 12, 4, '2026-05-25 11:27:03', '2026-05-25 11:27:03'),
(76, 1, 13, 4, '2026-05-17 11:27:03', '2026-05-23 11:27:03'),
(77, 8, 13, 5, '2026-05-15 11:27:03', '2026-05-25 11:27:03'),
(78, 4, 13, 4, '2026-05-21 11:27:03', '2026-05-21 11:27:03'),
(79, 5, 13, 5, '2026-05-07 11:27:03', '2026-05-23 11:27:03'),
(80, 7, 13, 4, '2026-05-20 11:27:03', '2026-05-23 11:27:03'),
(81, 2, 13, 4, '2026-05-13 11:27:03', '2026-05-25 11:27:03'),
(82, 2, 14, 4, '2026-05-10 11:27:03', '2026-05-23 11:27:03'),
(83, 1, 14, 5, '2026-05-12 11:27:03', '2026-05-23 11:27:03'),
(84, 4, 14, 5, '2026-05-10 11:27:03', '2026-05-21 11:27:03'),
(85, 6, 14, 4, '2026-05-18 11:27:03', '2026-05-25 11:27:03'),
(86, 5, 14, 4, '2026-05-15 11:27:03', '2026-05-21 11:27:03'),
(87, 8, 14, 5, '2026-05-08 11:27:03', '2026-05-23 11:27:03'),
(88, 3, 14, 3, '2026-05-10 11:27:03', '2026-05-26 11:27:03'),
(89, 2, 15, 3, '2026-05-09 11:27:03', '2026-05-24 11:27:03'),
(90, 3, 15, 4, '2026-05-11 11:27:03', '2026-05-23 11:27:03'),
(91, 8, 15, 4, '2026-05-20 11:27:03', '2026-05-21 11:27:03'),
(92, 4, 15, 4, '2026-05-09 11:27:03', '2026-05-25 11:27:03'),
(93, 7, 15, 5, '2026-05-12 11:27:03', '2026-05-25 11:27:03'),
(94, 5, 15, 5, '2026-05-25 11:27:03', '2026-05-24 11:27:03'),
(95, 6, 15, 4, '2026-05-14 11:27:03', '2026-05-22 11:27:03'),
(96, 7, 16, 5, '2026-05-14 11:27:03', '2026-05-25 11:27:03'),
(97, 6, 16, 4, '2026-05-22 11:27:03', '2026-05-21 11:27:03'),
(98, 4, 16, 5, '2026-05-18 11:27:03', '2026-05-25 11:27:03'),
(99, 1, 16, 5, '2026-05-13 11:27:03', '2026-05-21 11:27:03'),
(100, 3, 16, 4, '2026-05-13 11:27:03', '2026-05-26 11:27:03'),
(101, 5, 16, 4, '2026-05-10 11:27:03', '2026-05-26 11:27:03'),
(102, 8, 16, 4, '2026-05-06 11:27:03', '2026-05-21 11:27:03'),
(103, 1, 17, 5, '2026-05-09 11:27:03', '2026-05-23 11:27:03'),
(104, 7, 17, 4, '2026-05-18 11:27:03', '2026-05-24 11:27:03'),
(105, 2, 17, 5, '2026-05-17 11:27:03', '2026-05-24 11:27:03'),
(106, 8, 17, 4, '2026-05-14 11:27:03', '2026-05-22 11:27:03'),
(107, 4, 17, 5, '2026-05-17 11:27:03', '2026-05-26 11:27:03'),
(108, 5, 17, 4, '2026-05-24 11:27:03', '2026-05-25 11:27:03'),
(109, 6, 17, 5, '2026-05-10 11:27:03', '2026-05-23 11:27:03'),
(110, 1, 18, 4, '2026-05-12 11:27:03', '2026-05-24 11:27:03'),
(111, 3, 18, 5, '2026-05-22 11:27:03', '2026-05-21 11:27:03'),
(112, 2, 18, 5, '2026-05-08 11:27:03', '2026-05-26 11:27:03'),
(113, 7, 18, 4, '2026-05-10 11:27:03', '2026-05-23 11:27:03'),
(114, 6, 18, 5, '2026-05-09 11:27:03', '2026-05-22 11:27:03'),
(115, 2, 19, 4, '2026-05-11 11:27:03', '2026-05-26 11:27:03'),
(116, 3, 19, 3, '2026-05-11 11:27:03', '2026-05-21 11:27:03'),
(117, 1, 19, 4, '2026-05-17 11:27:03', '2026-05-22 11:27:03'),
(118, 6, 19, 3, '2026-05-07 11:27:03', '2026-05-22 11:27:03'),
(119, 7, 19, 5, '2026-05-16 11:27:03', '2026-05-26 11:27:03'),
(120, 8, 20, 5, '2026-05-19 11:27:03', '2026-05-24 11:27:03'),
(121, 3, 20, 4, '2026-05-18 11:27:03', '2026-05-24 11:27:03'),
(122, 7, 20, 3, '2026-05-07 11:27:03', '2026-05-22 11:27:03'),
(123, 1, 20, 5, '2026-05-11 11:27:03', '2026-05-24 11:27:03'),
(124, 4, 20, 4, '2026-05-19 11:27:03', '2026-05-25 11:27:03'),
(125, 5, 20, 5, '2026-05-24 11:27:03', '2026-05-23 11:27:03'),
(126, 2, 20, 4, '2026-05-23 11:27:03', '2026-05-26 11:27:03'),
(127, 2, 21, 5, '2026-05-17 11:27:03', '2026-05-25 11:27:03'),
(128, 1, 21, 3, '2026-05-15 11:27:03', '2026-05-23 11:27:03'),
(129, 6, 21, 4, '2026-05-07 11:27:03', '2026-05-25 11:27:03'),
(130, 3, 21, 4, '2026-05-22 11:27:03', '2026-05-23 11:27:03'),
(131, 8, 21, 5, '2026-05-07 11:27:03', '2026-05-25 11:27:03'),
(132, 4, 21, 3, '2026-05-25 11:27:03', '2026-05-23 11:27:03'),
(133, 5, 21, 3, '2026-05-10 11:27:03', '2026-05-21 11:27:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('RsCZUPbsvov1emFYFA9czJr4KVwZAl91Upjxm1sY', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiU0VOM1dKaGlKSDJFeXJGS0JpSlU0dmFJM3ZuTHR1c2E0NW1QTHBBUCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7czo1OiJyb3V0ZSI7czo0OiJob21lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1779820308);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` enum('admin','user') NOT NULL DEFAULT 'user',
  `avatar` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `avatar`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@dulich.com', 'admin', NULL, NULL, '$2y$12$3Tn4qOgYHGWumPlcN3eAcOhR3e9gbW7khAd8Qd8vfY6gEZ3MONDie', NULL, '2026-05-26 11:27:01', '2026-05-26 11:27:01'),
(2, 'Nguyễn Văn An', 'user1@dulich.com', 'user', NULL, NULL, '$2y$12$wFJ/wODKfywfIuc4ZNUSIu35mltbfcumh0BUnTC3mNofDJ0b17iLO', NULL, '2026-05-26 11:27:01', '2026-05-26 11:27:01'),
(3, 'Trần Thị Bình', 'user2@dulich.com', 'user', NULL, NULL, '$2y$12$1hGUT3EobMtPO6UJsv5ASuwCbxKn.3qXDNmtanJT0FLVn0u1aGYLa', NULL, '2026-05-26 11:27:02', '2026-05-26 11:27:02'),
(4, 'Lê Hoàng Cường', 'user3@dulich.com', 'user', NULL, NULL, '$2y$12$b5P4re0kp5sBVpjxg01j6OwDI7WRubyRyO9xNy7Jr2ix2nfE4BbCO', NULL, '2026-05-26 11:27:02', '2026-05-26 11:27:02'),
(5, 'Phạm Minh Duy', 'user4@dulich.com', 'user', NULL, NULL, '$2y$12$6Z1CfrwaZEF47xliMhANG.Wl38VvCXgLqC71LJ6PAhm4pEOJaA0ai', NULL, '2026-05-26 11:27:02', '2026-05-26 11:27:02'),
(6, 'Hoàng Thu Hà', 'user5@dulich.com', 'user', NULL, NULL, '$2y$12$i6TrzhXy2B5Ftp.Tz8Ryp.WaENicWQL8PgJVIy7gBIrEWYc1vre.O', NULL, '2026-05-26 11:27:02', '2026-05-26 11:27:02'),
(7, 'Vũ Thị Lan', 'user6@dulich.com', 'user', NULL, NULL, '$2y$12$lg0tDzDOuPSQ2yBkWynSDeXY9CYGyr9nVJjBTy6PmexQwVUKzWFw.', NULL, '2026-05-26 11:27:03', '2026-05-26 11:27:03'),
(8, 'Đặng Quốc Tuấn', 'user7@dulich.com', 'user', NULL, NULL, '$2y$12$d.2NUmg5/rg889cI5I7MbOZpOIsp3e8VwbXRVmGEyu1BhlGOwhQVS', NULL, '2026-05-26 11:27:03', '2026-05-26 11:27:03');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Chỉ mục cho bảng `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_post_id_foreign` (`post_id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `favorites_user_id_post_id_unique` (`user_id`,`post_id`),
  ADD KEY `favorites_post_id_foreign` (`post_id`);

--
-- Chỉ mục cho bảng `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Chỉ mục cho bảng `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_user_id_foreign` (`user_id`),
  ADD KEY `posts_category_id_foreign` (`category_id`);

--
-- Chỉ mục cho bảng `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ratings_user_id_post_id_unique` (`user_id`,`post_id`),
  ADD KEY `ratings_post_id_foreign` (`post_id`);

--
-- Chỉ mục cho bảng `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT cho bảng `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `favorites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ratings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
