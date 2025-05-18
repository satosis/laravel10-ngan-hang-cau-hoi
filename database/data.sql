-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 18, 2025 lúc 01:05 PM
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
-- Cơ sở dữ liệu: `qlns`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bangcap`
--

CREATE TABLE `bangcap` (
  `id` int(10) UNSIGNED NOT NULL,
  `tenbc` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bangcap`
--

INSERT INTO `bangcap` (`id`, `tenbc`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Tiến Sĩ', '2025-05-17 00:52:58', '2025-05-17 00:52:58', NULL),
(2, 'Thạc Sĩ', '2025-05-17 00:52:58', '2025-05-17 00:52:58', NULL),
(3, 'Cử Nhân', '2025-05-17 00:52:58', '2025-05-17 00:52:58', NULL),
(4, 'Đại Học', '2025-05-17 00:52:58', '2025-05-17 00:52:58', NULL),
(5, 'Cao Đẳng', '2025-05-17 00:52:58', '2025-05-17 00:52:58', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baohiem`
--

CREATE TABLE `baohiem` (
  `id` int(10) UNSIGNED NOT NULL,
  `nhanvien_id` int(10) UNSIGNED NOT NULL,
  `loaibaohiem_id` int(10) UNSIGNED NOT NULL,
  `maso` varchar(255) NOT NULL,
  `noicap` varchar(255) NOT NULL,
  `ngaycap` date NOT NULL,
  `ngayhethan` date NOT NULL,
  `mucdong` double(5,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chamcong`
--

CREATE TABLE `chamcong` (
  `id` int(10) UNSIGNED NOT NULL,
  `nhanvien_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chucvu`
--

CREATE TABLE `chucvu` (
  `id` int(10) UNSIGNED NOT NULL,
  `tencv` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chucvu`
--

INSERT INTO `chucvu` (`id`, `tencv`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Trưởng Phòng', '2025-05-17 00:52:57', '2025-05-17 00:52:57', NULL),
(2, 'Trưởng Phòng', '2025-05-17 00:52:57', '2025-05-17 00:52:57', NULL),
(3, 'Phó Phòng', '2025-05-17 00:52:57', '2025-05-17 00:52:57', NULL),
(4, 'Marketing', '2025-05-17 00:52:57', '2025-05-17 00:52:57', NULL),
(5, 'Nhân Viên', '2025-05-17 00:52:57', '2025-05-17 00:52:57', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chuyenmon`
--

CREATE TABLE `chuyenmon` (
  `id` int(10) UNSIGNED NOT NULL,
  `tencm` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chuyenmon`
--

INSERT INTO `chuyenmon` (`id`, `tencm`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Programmer', '2025-05-17 00:52:57', '2025-05-17 00:52:57', NULL),
(2, 'Tester', '2025-05-17 00:52:57', '2025-05-17 00:52:57', NULL),
(3, 'Front-end', '2025-05-17 00:52:57', '2025-05-17 00:52:57', NULL),
(4, 'Back-end', '2025-05-17 00:52:57', '2025-05-17 00:52:57', NULL),
(5, 'Full-Stack', '2025-05-17 00:52:57', '2025-05-17 00:52:57', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dantoc`
--

CREATE TABLE `dantoc` (
  `id` int(10) UNSIGNED NOT NULL,
  `tendt` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dantoc`
--

INSERT INTO `dantoc` (`id`, `tendt`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Kinh', '2025-05-17 00:52:58', '2025-05-17 00:52:58', NULL),
(2, 'Thái', '2025-05-17 00:52:58', '2025-05-17 00:52:58', NULL),
(3, 'Mường', '2025-05-17 00:52:58', '2025-05-17 00:52:58', NULL),
(4, 'Khmer', '2025-05-17 00:52:58', '2025-05-17 00:52:58', NULL),
(5, 'Hoa', '2025-05-17 00:52:58', '2025-05-17 00:52:58', NULL),
(6, 'Nùng', '2025-05-17 00:52:58', '2025-05-17 00:52:58', NULL),
(7, 'H\'Mông', '2025-05-17 00:52:58', '2025-05-17 00:52:58', NULL);

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
-- Cấu trúc bảng cho bảng `heso`
--

CREATE TABLE `heso` (
  `id` int(10) UNSIGNED NOT NULL,
  `luongcb` bigint(20) NOT NULL,
  `bac1` double(5,2) NOT NULL,
  `bac2` double(5,2) NOT NULL,
  `bac3` double(5,2) NOT NULL,
  `bac4` double(5,2) NOT NULL,
  `bac5` double(5,2) NOT NULL,
  `bac6` double(5,2) NOT NULL,
  `bac7` double(5,2) NOT NULL,
  `bac8` double(5,2) NOT NULL,
  `bac9` double(5,2) NOT NULL,
  `bac10` double(5,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `heso`
--

INSERT INTO `heso` (`id`, `luongcb`, `bac1`, `bac2`, `bac3`, `bac4`, `bac5`, `bac6`, `bac7`, `bac8`, `bac9`, `bac10`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1500000, 1.00, 1.20, 1.40, 1.60, 1.80, 1.90, 2.00, 2.20, 2.40, 2.60, '2025-05-17 00:52:58', '2025-05-17 00:52:58', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hopdong`
--

CREATE TABLE `hopdong` (
  `id` int(10) UNSIGNED NOT NULL,
  `nhanvien_id` int(10) UNSIGNED NOT NULL,
  `ngaybd` date NOT NULL,
  `ngaykt` date DEFAULT NULL,
  `loaihopdong` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khautru`
--

CREATE TABLE `khautru` (
  `id` int(10) UNSIGNED NOT NULL,
  `nhanvien_id` int(10) UNSIGNED NOT NULL,
  `loaibaohiem_id` int(10) UNSIGNED NOT NULL,
  `mucdong` double(5,2) NOT NULL,
  `thang` int(11) NOT NULL,
  `nam` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaibaohiem`
--

CREATE TABLE `loaibaohiem` (
  `id` int(10) UNSIGNED NOT NULL,
  `tenbh` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loaibaohiem`
--

INSERT INTO `loaibaohiem` (`id`, `tenbh`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Bảo Hiểm Xã Hội', '2025-05-17 00:52:58', '2025-05-17 00:52:58', NULL),
(2, 'Bảo Hiểm Y Tế', '2025-05-17 00:52:58', '2025-05-17 00:52:58', NULL),
(3, 'Bảo Hiểm Tai Nạn', '2025-05-17 00:52:58', '2025-05-17 00:52:58', NULL),
(4, 'Bảo Hiểm Thất Nghiệp', '2025-05-17 00:52:58', '2025-05-17 00:52:58', NULL);

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
(1, '2020_01_01_000001_create_password_resets_table', 1),
(2, '2020_01_01_000002_create_failed_jobs_table', 1),
(3, '2021_09_16_110111_create_sessions_table', 1),
(4, '2021_09_25_115514_create_chucvu_table', 1),
(5, '2021_09_25_115518_create_phongban_table', 1),
(6, '2021_09_25_115522_create_bangcap_table', 1),
(7, '2021_09_25_115526_create_chuyenmon_table', 1),
(8, '2021_09_25_125819_create_phucap_table', 1),
(9, '2021_09_25_135933_create_dantoc_table', 1),
(10, '2021_09_25_135933_create_tongiao_table', 1),
(11, '2021_09_25_135934_create_ngoaingu_table', 1),
(12, '2021_09_25_145217_create_nhanvien_table', 1),
(13, '2021_09_25_145218_create_users_table', 1),
(14, '2021_09_25_145248_create_thuongphat_table', 1),
(15, '2021_09_25_145259_create_chamcong_table', 1),
(16, '2021_09_25_154734_create_ungluong_table', 1),
(17, '2021_09_27_023923_create_hopdong_table', 1),
(18, '2021_10_03_040135_create_nghiviec_table', 1),
(19, '2021_10_07_122524_create_loaibaohiem_table', 1),
(20, '2021_10_07_122913_create_baohiem_table', 1),
(21, '2021_10_07_122932_create_nhanluong_table', 1),
(22, '2021_10_15_085345_create_khautru_table', 1),
(23, '2021_10_25_122809_create_heso_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nghiviec`
--

CREATE TABLE `nghiviec` (
  `id` int(10) UNSIGNED NOT NULL,
  `nhanvien_id` int(10) UNSIGNED NOT NULL,
  `ngaybd` date NOT NULL,
  `ngaykt` date NOT NULL,
  `lydo` varchar(255) NOT NULL,
  `huongluong` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ngoaingu`
--

CREATE TABLE `ngoaingu` (
  `id` int(10) UNSIGNED NOT NULL,
  `tenng` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ngoaingu`
--

INSERT INTO `ngoaingu` (`id`, `tenng`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Sơ cấp - Bậc 1 (A1)', '2025-05-17 00:52:58', '2025-05-17 00:52:58', NULL),
(2, 'Sơ cấp - Bậc 2 (A2)', '2025-05-17 00:52:58', '2025-05-17 00:52:58', NULL),
(3, 'Trung cấp - Bậc 1 (B1)', '2025-05-17 00:52:58', '2025-05-17 00:52:58', NULL),
(4, 'Trung cấp - Bậc 2 (B2)', '2025-05-17 00:52:58', '2025-05-17 00:52:58', NULL),
(5, 'Cao cấp - Bậc 1 (C1)', '2025-05-17 00:52:58', '2025-05-17 00:52:58', NULL),
(6, 'Cao cấp - Bậc 2 (C2)', '2025-05-17 00:52:58', '2025-05-17 00:52:58', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanluong`
--

CREATE TABLE `nhanluong` (
  `id` int(10) UNSIGNED NOT NULL,
  `nhanvien_id` int(10) UNSIGNED NOT NULL,
  `heso` double(5,2) NOT NULL,
  `hsphucap` double(5,2) NOT NULL,
  `khautru` bigint(20) NOT NULL,
  `luongcb` bigint(20) NOT NULL,
  `mucluong` bigint(20) NOT NULL,
  `phucap` bigint(20) NOT NULL,
  `ngaycongchuan` int(11) NOT NULL,
  `ngaycong` int(11) NOT NULL,
  `nghihl` int(11) NOT NULL,
  `nghikhl` int(11) NOT NULL,
  `thuong` bigint(20) NOT NULL,
  `phat` bigint(20) NOT NULL,
  `tamung` bigint(20) NOT NULL,
  `thuclinh` bigint(20) NOT NULL,
  `thang` int(11) NOT NULL,
  `nam` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `id` int(10) UNSIGNED NOT NULL,
  `phucap_id` int(10) UNSIGNED NOT NULL,
  `bangcap_id` int(10) UNSIGNED NOT NULL,
  `chuyenmon_id` int(10) UNSIGNED NOT NULL,
  `ngoaingu_id` int(10) UNSIGNED NOT NULL,
  `dantoc_id` int(10) UNSIGNED NOT NULL,
  `tongiao_id` int(10) UNSIGNED NOT NULL,
  `hovaten` varchar(100) NOT NULL,
  `gioitinh` tinyint(1) NOT NULL DEFAULT 0,
  `ngaysinh` date NOT NULL,
  `cmnd` varchar(50) NOT NULL,
  `sdt` varchar(15) NOT NULL,
  `diachi` varchar(255) DEFAULT NULL,
  `quequan` varchar(255) DEFAULT NULL,
  `trangthai` tinyint(1) NOT NULL DEFAULT 0,
  `ngaynghilam` date DEFAULT NULL,
  `bacluong` tinyint(4) NOT NULL,
  `hesoluong` double(5,2) NOT NULL,
  `photo_path` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`id`, `phucap_id`, `bangcap_id`, `chuyenmon_id`, `ngoaingu_id`, `dantoc_id`, `tongiao_id`, `hovaten`, `gioitinh`, `ngaysinh`, `cmnd`, `sdt`, `diachi`, `quequan`, `trangthai`, `ngaynghilam`, `bacluong`, `hesoluong`, `photo_path`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 8, 4, 5, 4, 4, 1, 'Đặng Tiến Sĩ', 0, '1990-11-07', '790235649', '0944430146', '66011 Grimes Plaza', 'North Amandachester', 1, NULL, 3, 1.00, NULL, '2025-05-17 00:52:59', '2025-05-17 00:52:59', NULL),
(2, 15, 4, 1, 3, 3, 5, 'Mai Tấn Lộc', 0, '1992-06-26', '969314917', '0934343444', '2475 Bradtke Pass', 'Oberbrunnerhaven', 1, NULL, 10, 1.00, NULL, '2025-05-17 00:53:00', '2025-05-17 00:53:00', NULL),
(3, 1, 1, 1, 2, 5, 5, 'Lê Quang Vinh', 0, '1993-03-19', '870988310', '09343430156', '77359 Jerde Tunnel', 'West Rosario', 1, NULL, 1, 1.00, NULL, '2025-05-17 00:53:00', '2025-05-17 00:53:00', NULL),
(4, 17, 3, 4, 3, 6, 1, 'Hilario McGlynn', 0, '1995-08-22', '214369386', '888.338.4565', '4164 Krystina Prairie', 'East Mireya', 1, NULL, 10, 1.00, NULL, '2025-05-17 00:53:00', '2025-05-17 00:53:00', NULL),
(5, 1, 2, 2, 6, 4, 5, 'Myrtle Gutkowski', 0, '1988-07-18', '791038621', '866-964-6713', '7469 Heaney Divide', 'New Bret', 1, NULL, 8, 1.00, NULL, '2025-05-17 00:53:00', '2025-05-17 00:53:00', NULL),
(6, 8, 2, 3, 1, 1, 2, 'Edyth Funk', 1, '1986-03-30', '317605048', '1-877-922-7923', '97765 Corkery Curve', 'Olgafurt', 1, NULL, 3, 1.00, NULL, '2025-05-17 00:53:00', '2025-05-17 00:53:00', NULL),
(7, 9, 5, 1, 4, 7, 6, 'Jany Barton', 0, '1989-11-15', '774016079', '1-844-216-4619', '68595 Quentin Valley Suite 750', 'Kennethstad', 1, NULL, 6, 1.00, NULL, '2025-05-17 00:53:00', '2025-05-17 00:53:00', NULL),
(8, 7, 4, 3, 2, 7, 1, 'Sylvan Wehner', 0, '1987-02-04', '363006838', '888.362.8222', '8589 Cremin Burgs Suite 618', 'New Otismouth', 1, NULL, 4, 1.00, NULL, '2025-05-17 00:53:00', '2025-05-17 00:53:00', NULL),
(9, 2, 5, 1, 2, 6, 4, 'Oliver Ernser', 1, '1994-06-10', '557373658', '888-591-1013', '343 Sadye Drives', 'Grimesberg', 1, NULL, 6, 1.00, NULL, '2025-05-17 00:53:00', '2025-05-17 00:53:00', NULL),
(10, 6, 2, 3, 1, 5, 1, 'Vesta Torphy', 0, '1985-04-27', '124859080', '800-497-4490', '457 Zieme Club', 'North Hunterport', 1, NULL, 9, 1.00, NULL, '2025-05-17 00:53:01', '2025-05-17 00:53:01', NULL),
(11, 6, 1, 4, 4, 7, 1, 'Antwon Hoppe', 1, '1985-10-12', '997107239', '888-556-9334', '110 Mueller Via Apt. 504', 'Reggieside', 1, NULL, 9, 1.00, NULL, '2025-05-17 00:53:01', '2025-05-17 00:53:01', NULL),
(12, 16, 2, 2, 3, 2, 3, 'Lucious Grimes', 0, '1987-03-05', '482090141', '800.770.0841', '5247 Shirley Brooks Suite 828', 'Brentport', 1, NULL, 5, 1.00, NULL, '2025-05-17 00:53:01', '2025-05-17 00:53:01', NULL),
(13, 9, 2, 5, 1, 5, 4, 'Liam Hettinger', 1, '1986-04-01', '825495896', '1-855-674-7209', '3373 Bernard Plaza Suite 747', 'Deckowview', 1, NULL, 7, 1.00, NULL, '2025-05-17 00:53:01', '2025-05-17 00:53:01', NULL),
(14, 8, 4, 1, 1, 2, 4, 'Iliana Nader', 0, '1987-06-21', '554268717', '866.364.8743', '573 Carey Mews', 'Greenholtberg', 1, NULL, 1, 1.00, NULL, '2025-05-17 00:53:01', '2025-05-17 00:53:01', NULL),
(15, 15, 3, 1, 2, 7, 6, 'Julian Littel', 1, '1989-01-27', '328142714', '844-493-3534', '6452 Doyle Bridge', 'Quitzonburgh', 1, NULL, 4, 1.00, NULL, '2025-05-17 00:53:01', '2025-05-17 00:53:01', NULL),
(16, 3, 1, 2, 1, 7, 4, 'Taurean Emmerich', 1, '1990-12-26', '666113205', '(844) 785-8526', '307 Strosin Bypass Suite 038', 'Ritchieview', 1, NULL, 8, 1.00, NULL, '2025-05-17 00:53:01', '2025-05-17 00:53:01', NULL),
(17, 4, 3, 2, 2, 6, 5, 'Quinton O\'Hara', 0, '1995-09-13', '789705244', '855-752-2368', '6783 Homenick Lane', 'Quentinland', 1, NULL, 8, 1.00, NULL, '2025-05-17 00:53:01', '2025-05-17 00:53:01', NULL),
(18, 3, 5, 2, 2, 4, 4, 'Hope Franecki', 0, '1991-06-16', '658804356', '1-866-407-1695', '7464 Reynolds Mount Apt. 142', 'Raufort', 1, NULL, 5, 1.00, NULL, '2025-05-17 00:53:01', '2025-05-17 00:53:01', NULL),
(19, 9, 5, 2, 6, 5, 1, 'Paige Abbott', 1, '1987-02-20', '780068258', '1-877-415-9271', '80102 Sarah Port', 'Moorefort', 1, NULL, 2, 1.00, NULL, '2025-05-17 00:53:01', '2025-05-17 00:53:01', NULL),
(20, 10, 5, 1, 6, 3, 3, 'Maudie Vandervort', 0, '1990-06-22', '349829763', '1-866-631-4449', '24109 Holly Park Apt. 599', 'North Claudine', 1, NULL, 4, 1.00, NULL, '2025-05-17 00:53:02', '2025-05-17 00:53:02', NULL),
(21, 14, 4, 5, 6, 7, 1, 'Akeem Little', 1, '1992-11-07', '628772059', '1-800-490-5600', '5099 Johns Motorway Apt. 765', 'Wizachester', 1, NULL, 9, 1.00, NULL, '2025-05-17 00:53:02', '2025-05-17 00:53:02', NULL),
(22, 14, 1, 3, 4, 4, 2, 'Dana McClure', 0, '1993-08-31', '433838596', '(888) 784-3142', '631 Magnus Dale Suite 480', 'Port Hester', 1, NULL, 10, 1.00, NULL, '2025-05-17 00:53:02', '2025-05-17 00:53:02', NULL),
(23, 4, 5, 3, 3, 4, 5, 'Nathen Gerhold', 1, '1995-05-07', '502402484', '(888) 881-9954', '575 Mante Summit', 'Effertzshire', 1, NULL, 7, 1.00, NULL, '2025-05-17 00:53:02', '2025-05-17 00:53:02', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phongban`
--

CREATE TABLE `phongban` (
  `id` int(10) UNSIGNED NOT NULL,
  `tenpb` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phongban`
--

INSERT INTO `phongban` (`id`, `tenpb`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Ban Giám Đốc', '2025-05-17 00:52:57', '2025-05-17 00:52:57', NULL),
(2, 'Phòng Kinh Doanh', '2025-05-17 00:52:57', '2025-05-17 00:52:57', NULL),
(3, 'Phòng Phân Tích', '2025-05-17 00:52:57', '2025-05-17 00:52:57', NULL),
(4, 'Phòng Thiết Kế', '2025-05-17 00:52:57', '2025-05-17 00:52:57', NULL),
(5, 'Phòng Lập Trình', '2025-05-17 00:52:57', '2025-05-17 00:52:57', NULL),
(6, 'Phòng Hành Chính', '2025-05-17 00:52:57', '2025-05-17 00:52:57', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phucap`
--

CREATE TABLE `phucap` (
  `id` int(10) UNSIGNED NOT NULL,
  `phongban_id` int(10) UNSIGNED NOT NULL,
  `chucvu_id` int(10) UNSIGNED NOT NULL,
  `hsphucap` double(5,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phucap`
--

INSERT INTO `phucap` (`id`, `phongban_id`, `chucvu_id`, `hsphucap`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 2, 2.50, '2025-05-17 00:52:57', '2025-05-17 00:52:57', NULL),
(2, 1, 3, 2.00, '2025-05-17 00:52:57', '2025-05-17 00:52:57', NULL),
(3, 2, 2, 1.50, '2025-05-17 00:52:57', '2025-05-17 00:52:57', NULL),
(4, 2, 3, 1.20, '2025-05-17 00:52:57', '2025-05-17 00:52:57', NULL),
(5, 2, 4, 1.00, '2025-05-17 00:52:57', '2025-05-17 00:52:57', NULL),
(6, 2, 5, 1.00, '2025-05-17 00:52:57', '2025-05-17 00:52:57', NULL),
(7, 3, 2, 1.50, '2025-05-17 00:52:57', '2025-05-17 00:52:57', NULL),
(8, 3, 3, 1.20, '2025-05-17 00:52:57', '2025-05-17 00:52:57', NULL),
(9, 3, 5, 1.00, '2025-05-17 00:52:57', '2025-05-17 00:52:57', NULL),
(10, 4, 2, 1.50, '2025-05-17 00:52:57', '2025-05-17 00:52:57', NULL),
(11, 4, 3, 1.20, '2025-05-17 00:52:57', '2025-05-17 00:52:57', NULL),
(12, 4, 5, 1.00, '2025-05-17 00:52:57', '2025-05-17 00:52:57', NULL),
(13, 5, 2, 1.50, '2025-05-17 00:52:57', '2025-05-17 00:52:57', NULL),
(14, 5, 3, 1.20, '2025-05-17 00:52:57', '2025-05-17 00:52:57', NULL),
(15, 5, 5, 1.00, '2025-05-17 00:52:57', '2025-05-17 00:52:57', NULL),
(16, 6, 2, 1.50, '2025-05-17 00:52:57', '2025-05-17 00:52:57', NULL),
(17, 6, 3, 1.20, '2025-05-17 00:52:57', '2025-05-17 00:52:57', NULL),
(18, 6, 5, 1.00, '2025-05-17 00:52:57', '2025-05-17 00:52:57', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('mNHbdXwKTHLGag7phmcwaOseiVA290gqCVoTS60e', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoidWtaemp4MktWQUJlSm9rUEVkNG1KNHhqNUxFYVVpMGM2dXpzd2Q3YyI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI3OiJodHRwOi8vbG9jYWxob3N0OjgwMDAvbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1747471989),
('TNiLV6xOBPLpRdaXyN4u4hKbsG1sbtXTNYL1x7q5', 20, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiUXQ5YTVIMDJYNVc2NVhuck5veUJ3ck5teDNOeGNSSUVZSUgyYnhjYiI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI3OiJodHRwOi8vbG9jYWxob3N0OjgwMDAvbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyMDt9', 1747469941),
('tOtUNJu7i7S1n9OqX5mULJ6jmSOm0P2NJXZTrW6i', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoia1B6clc3RzBIMkxSM3BEVlJtcFhrMWtPWXNianhLRmNLUlJEU0d1SyI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI3OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1747468392),
('ZtbqCC48AowupLtAZKe6kpaa8jUDbisvHSxRIelK', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiOERFVUwxNWtJS2Q3aXplaTBkelBFMWRzeVBIdHJCZE5pdHNtWDNiVyI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozODoiaHR0cDovL2xvY2FsaG9zdDo4MDAwL25oYW52aWVuLzIwL2VkaXQiO31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyNzoiaHR0cDovL2xvY2FsaG9zdDo4MDAwL2xvZ2luIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1747470366);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thuongphat`
--

CREATE TABLE `thuongphat` (
  `id` int(10) UNSIGNED NOT NULL,
  `nhanvien_id` int(10) UNSIGNED NOT NULL,
  `loai` tinyint(1) NOT NULL DEFAULT 0,
  `sotien` bigint(20) NOT NULL,
  `lydo` varchar(255) NOT NULL,
  `thang` int(11) NOT NULL,
  `nam` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tongiao`
--

CREATE TABLE `tongiao` (
  `id` int(10) UNSIGNED NOT NULL,
  `tentg` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tongiao`
--

INSERT INTO `tongiao` (`id`, `tentg`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Phật giáo', '2025-05-17 00:52:58', '2025-05-17 00:52:58', NULL),
(2, 'Công giáo', '2025-05-17 00:52:58', '2025-05-17 00:52:58', NULL),
(3, 'Tin Lành', '2025-05-17 00:52:58', '2025-05-17 00:52:58', NULL),
(4, 'Hồi giáo', '2025-05-17 00:52:58', '2025-05-17 00:52:58', NULL),
(5, 'Cao Đài', '2025-05-17 00:52:58', '2025-05-17 00:52:58', NULL),
(6, 'Hoà Hảo', '2025-05-17 00:52:58', '2025-05-17 00:52:58', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ungluong`
--

CREATE TABLE `ungluong` (
  `id` int(10) UNSIGNED NOT NULL,
  `nhanvien_id` int(10) UNSIGNED NOT NULL,
  `sotien` bigint(20) NOT NULL,
  `lydo` varchar(255) NOT NULL,
  `thang` int(11) NOT NULL,
  `nam` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `nhanvien_id` int(10) UNSIGNED NOT NULL,
  `email` varchar(50) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` tinyint(4) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `nhanvien_id`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'admin@email.com', '2025-05-17 00:52:59', '$2y$10$ZnLW3KCdj/gXcxJdgxIsMeHrPr0ZhOnpTDBl3yau39K9nXck1tKJK', 2, '3SXI9X9SpA', '2025-05-17 00:53:00', '2025-05-17 00:53:00', NULL),
(2, 2, 'quanly@email.com', '2025-05-17 00:53:00', '$2y$10$crjklv/1ocOBko/66yjkmuH.QREmbvrDNBidlKwQsts0t/wPlPa.2', 1, 'tZDnzZ8XUY', '2025-05-17 00:53:00', '2025-05-17 00:53:00', NULL),
(3, 3, 'nhanvien@email.com', '2025-05-17 00:53:00', '$2y$10$b9y/ey3pjyJazoUsHpcrFeCA22VbcAhvPoWYOPLroc4fngMed/v9G', 0, 'vJshovx7da', '2025-05-17 00:53:00', '2025-05-17 00:53:00', NULL),
(4, 4, 'kertzmann.carli@example.org', '2025-05-17 00:53:00', '$2y$10$1efNz.wgwlC39PWVuMI.QuYkBbv7zldaDKGgwWt6N7JCCfVd2UhHe', 0, 'yQhnn3nL8S', '2025-05-17 00:53:00', '2025-05-17 00:53:00', NULL),
(5, 5, 'meredith01@example.com', '2025-05-17 00:53:00', '$2y$10$lwtXbzQfP/7hqhjfhR7.VeibDEK8E67w1EzVs.6t1Wc5quyga3fe6', 0, 'xO5KGSrFiY', '2025-05-17 00:53:00', '2025-05-17 00:53:00', NULL),
(6, 6, 'vpfeffer@example.net', '2025-05-17 00:53:00', '$2y$10$mjxsIRmM8w8F/tdGP/z0K.Asbysk9AydQITs1Aot0EvGKJTYucf3G', 0, 'y6I0Roz19U', '2025-05-17 00:53:00', '2025-05-17 00:53:00', NULL),
(7, 7, 'adrien94@example.org', '2025-05-17 00:53:00', '$2y$10$bdd.IRiZCIC6b9xUvlcgQOotb67QSo/qeQ0.4CN/9WhTaumtUrNs.', 0, '0FipbBRYdP', '2025-05-17 00:53:00', '2025-05-17 00:53:00', NULL),
(8, 8, 'crowe@example.org', '2025-05-17 00:53:00', '$2y$10$cQ7RuBCWyyrYEFxlPS9sAOyDbQlgdbJURyRxGIa0DByVwXVcI1nfe', 0, 'ooYOrnYZA9', '2025-05-17 00:53:00', '2025-05-17 00:53:00', NULL),
(9, 9, 'osmith@example.com', '2025-05-17 00:53:00', '$2y$10$XMt.91pDKJVqAQ2p.X48Iex67prGSpVRXqCInz2ykLbue5V6LeCLW', 0, 'l6Ksmm0Mig', '2025-05-17 00:53:01', '2025-05-17 00:53:01', NULL),
(10, 10, 'zgutmann@example.com', '2025-05-17 00:53:01', '$2y$10$sLkGrgELhxBRWdUYE7p3geVAKcDAFYsj6f/Hp3d0hYWnye2RerWca', 0, 'V6lTKwUQZH', '2025-05-17 00:53:01', '2025-05-17 00:53:01', NULL),
(11, 11, 'rstreich@example.net', '2025-05-17 00:53:01', '$2y$10$kdnCKDU8ozHTBOilUM26ae8XU9W.uECbnTmiemm5lwj9Q5C7Uyzhi', 0, 'uXUH3DXEcx', '2025-05-17 00:53:01', '2025-05-17 00:53:01', NULL),
(12, 12, 'kiera45@example.org', '2025-05-17 00:53:01', '$2y$10$EGPvflnT.W75i8PsGl/u8eWWblQwgOOgKLTYGBKJ4Csdc.4.EvvBC', 0, 'V89qJAdlor', '2025-05-17 00:53:01', '2025-05-17 00:53:01', NULL),
(13, 13, 'derrick.kutch@example.org', '2025-05-17 00:53:01', '$2y$10$FVzU08wKx9UAqCdmNAcXouJ0pgwJbzVDS5s1T7m9JGfTDQzNBzrOK', 0, '7qegUvVwKl', '2025-05-17 00:53:01', '2025-05-17 00:53:01', NULL),
(14, 14, 'ursula.lind@example.com', '2025-05-17 00:53:01', '$2y$10$LB2Oz5l4r.KktPtZ9E8A7uLRBJ6oh6qnA4u8cSfAYATrH0ynPJYj6', 0, 'HouTyHxgc2', '2025-05-17 00:53:01', '2025-05-17 00:53:01', NULL),
(15, 15, 'kaylin.watsica@example.org', '2025-05-17 00:53:01', '$2y$10$o1gvVIUWP44Hq0N3j29zVepKs5swNrkPmEVPDDRYuknua7WbIDFNC', 0, 'ADhvPMwgwR', '2025-05-17 00:53:01', '2025-05-17 00:53:01', NULL),
(16, 16, 'ilene.gorczany@example.org', '2025-05-17 00:53:01', '$2y$10$Rdsq6r4Z0gvxLt5m9AFWJOg9NnGv5XQftC6AgXwd2eroTPXNRKFGC', 0, 'DT7zjEp0vM', '2025-05-17 00:53:01', '2025-05-17 00:53:01', NULL),
(17, 17, 'mjenkins@example.org', '2025-05-17 00:53:01', '$2y$10$hUIhX5MShvRV/cAhH2rcw.xusST3Wy53tQAf/O8QQUkF6ZlEUmbqi', 0, 'qGcolHDw6B', '2025-05-17 00:53:01', '2025-05-17 00:53:01', NULL),
(18, 18, 'jane43@example.org', '2025-05-17 00:53:01', '$2y$10$e42ChW2j1k6o5bpDxObKJuULLqTH.p42WTnipkEiuvjilMRcK0R4i', 0, '9pbboan9oT', '2025-05-17 00:53:01', '2025-05-17 00:53:01', NULL),
(19, 19, 'emmett.steuber@example.org', '2025-05-17 00:53:01', '$2y$10$ku13O1LFeg93l1EVCKMPpOTs52mutBwR.qDsS.ECjNGkNwFh0zRJO', 0, 'vO9l25GH0f', '2025-05-17 00:53:02', '2025-05-17 00:53:02', NULL),
(20, 20, 'raoul76@example.com', '2025-05-17 00:53:02', '$2y$10$uvnqDUw/t5UQEfv49xn7HuXsmGu9cEdKbx5k8AnD7jERqcrKvFY12', 0, 'MJoPuZH7tJ', '2025-05-17 00:53:02', '2025-05-17 00:53:02', NULL),
(21, 21, 'west.dimitri@example.org', '2025-05-17 00:53:02', '$2y$10$ruO0WpG6.FKIQXYd3hhgZu/9fBdYsr9hi7Uz4K0Jby6ZxwjmWDti6', 0, 'Zr3EiHzwrZ', '2025-05-17 00:53:02', '2025-05-17 00:53:02', NULL),
(22, 22, 'estella00@example.org', '2025-05-17 00:53:02', '$2y$10$Tcrzvb8dk4jC7Q.Cyo/0I.4ys/c7BcBigMp67ZcRJTUsie0ZX03V6', 0, 'a3Z4qZegUN', '2025-05-17 00:53:02', '2025-05-17 00:53:02', NULL),
(23, 23, 'bill99@example.com', '2025-05-17 00:53:02', '$2y$10$miQXBRzLz9et4Pix5.CRmu/um5CM8pDdG8LgvTcxN1GyXZWi5w2U.', 0, 'BT0EYOoobm', '2025-05-17 00:53:02', '2025-05-17 00:53:02', NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bangcap`
--
ALTER TABLE `bangcap`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `baohiem`
--
ALTER TABLE `baohiem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_baohiem_nhanvien_id` (`nhanvien_id`),
  ADD KEY `fk_baohiem_loaibaohiem_id` (`loaibaohiem_id`);

--
-- Chỉ mục cho bảng `chamcong`
--
ALTER TABLE `chamcong`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_chamcong_nhanvien_id` (`nhanvien_id`);

--
-- Chỉ mục cho bảng `chucvu`
--
ALTER TABLE `chucvu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `chuyenmon`
--
ALTER TABLE `chuyenmon`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `dantoc`
--
ALTER TABLE `dantoc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `heso`
--
ALTER TABLE `heso`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `hopdong`
--
ALTER TABLE `hopdong`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_hopdong_nhanvien_id` (`nhanvien_id`);

--
-- Chỉ mục cho bảng `khautru`
--
ALTER TABLE `khautru`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_khautru_nhanvien_id` (`nhanvien_id`),
  ADD KEY `fk_khautru_loaibaohiem_id` (`loaibaohiem_id`);

--
-- Chỉ mục cho bảng `loaibaohiem`
--
ALTER TABLE `loaibaohiem`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nghiviec`
--
ALTER TABLE `nghiviec`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_nghiviec_nhanvien_id` (`nhanvien_id`);

--
-- Chỉ mục cho bảng `ngoaingu`
--
ALTER TABLE `ngoaingu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nhanluong`
--
ALTER TABLE `nhanluong`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_nhanluong_nhanvien_id` (`nhanvien_id`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_nhanvien_phucap_id` (`phucap_id`),
  ADD KEY `fk_nhanvien_bangcap_id` (`bangcap_id`),
  ADD KEY `fk_nhanvien_chuyenmon_id` (`chuyenmon_id`),
  ADD KEY `fk_nhanvien_ngoaingu_id` (`ngoaingu_id`),
  ADD KEY `fk_nhanvien_dantoc_id` (`dantoc_id`),
  ADD KEY `fk_nhanvien_tongiao_id` (`tongiao_id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `phongban`
--
ALTER TABLE `phongban`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `phucap`
--
ALTER TABLE `phucap`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_phucap_phongban_id` (`phongban_id`),
  ADD KEY `fk_phucap_chucvu_id` (`chucvu_id`);

--
-- Chỉ mục cho bảng `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Chỉ mục cho bảng `thuongphat`
--
ALTER TABLE `thuongphat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_thuongphat_nhanvien_id` (`nhanvien_id`);

--
-- Chỉ mục cho bảng `tongiao`
--
ALTER TABLE `tongiao`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ungluong`
--
ALTER TABLE `ungluong`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ungluong_nhanvien_id` (`nhanvien_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_nhanvien_id_unique` (`nhanvien_id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bangcap`
--
ALTER TABLE `bangcap`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `baohiem`
--
ALTER TABLE `baohiem`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `chamcong`
--
ALTER TABLE `chamcong`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `chucvu`
--
ALTER TABLE `chucvu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `chuyenmon`
--
ALTER TABLE `chuyenmon`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `dantoc`
--
ALTER TABLE `dantoc`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `heso`
--
ALTER TABLE `heso`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `hopdong`
--
ALTER TABLE `hopdong`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `khautru`
--
ALTER TABLE `khautru`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `loaibaohiem`
--
ALTER TABLE `loaibaohiem`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `nghiviec`
--
ALTER TABLE `nghiviec`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `ngoaingu`
--
ALTER TABLE `ngoaingu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `nhanluong`
--
ALTER TABLE `nhanluong`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `phongban`
--
ALTER TABLE `phongban`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `phucap`
--
ALTER TABLE `phucap`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `thuongphat`
--
ALTER TABLE `thuongphat`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tongiao`
--
ALTER TABLE `tongiao`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `ungluong`
--
ALTER TABLE `ungluong`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `baohiem`
--
ALTER TABLE `baohiem`
  ADD CONSTRAINT `fk_baohiem_loaibaohiem_id` FOREIGN KEY (`loaibaohiem_id`) REFERENCES `loaibaohiem` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_baohiem_nhanvien_id` FOREIGN KEY (`nhanvien_id`) REFERENCES `nhanvien` (`id`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `chamcong`
--
ALTER TABLE `chamcong`
  ADD CONSTRAINT `fk_chamcong_nhanvien_id` FOREIGN KEY (`nhanvien_id`) REFERENCES `nhanvien` (`id`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `hopdong`
--
ALTER TABLE `hopdong`
  ADD CONSTRAINT `fk_hopdong_nhanvien_id` FOREIGN KEY (`nhanvien_id`) REFERENCES `nhanvien` (`id`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `khautru`
--
ALTER TABLE `khautru`
  ADD CONSTRAINT `fk_khautru_loaibaohiem_id` FOREIGN KEY (`loaibaohiem_id`) REFERENCES `loaibaohiem` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_khautru_nhanvien_id` FOREIGN KEY (`nhanvien_id`) REFERENCES `nhanvien` (`id`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `nghiviec`
--
ALTER TABLE `nghiviec`
  ADD CONSTRAINT `fk_nghiviec_nhanvien_id` FOREIGN KEY (`nhanvien_id`) REFERENCES `nhanvien` (`id`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `nhanluong`
--
ALTER TABLE `nhanluong`
  ADD CONSTRAINT `fk_nhanluong_nhanvien_id` FOREIGN KEY (`nhanvien_id`) REFERENCES `nhanvien` (`id`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD CONSTRAINT `fk_nhanvien_bangcap_id` FOREIGN KEY (`bangcap_id`) REFERENCES `bangcap` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_nhanvien_chuyenmon_id` FOREIGN KEY (`chuyenmon_id`) REFERENCES `chuyenmon` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_nhanvien_dantoc_id` FOREIGN KEY (`dantoc_id`) REFERENCES `dantoc` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_nhanvien_ngoaingu_id` FOREIGN KEY (`ngoaingu_id`) REFERENCES `ngoaingu` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_nhanvien_phucap_id` FOREIGN KEY (`phucap_id`) REFERENCES `phucap` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_nhanvien_tongiao_id` FOREIGN KEY (`tongiao_id`) REFERENCES `tongiao` (`id`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `phucap`
--
ALTER TABLE `phucap`
  ADD CONSTRAINT `fk_phucap_chucvu_id` FOREIGN KEY (`chucvu_id`) REFERENCES `chucvu` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_phucap_phongban_id` FOREIGN KEY (`phongban_id`) REFERENCES `phongban` (`id`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `thuongphat`
--
ALTER TABLE `thuongphat`
  ADD CONSTRAINT `fk_thuongphat_nhanvien_id` FOREIGN KEY (`nhanvien_id`) REFERENCES `nhanvien` (`id`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `ungluong`
--
ALTER TABLE `ungluong`
  ADD CONSTRAINT `fk_ungluong_nhanvien_id` FOREIGN KEY (`nhanvien_id`) REFERENCES `nhanvien` (`id`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_users_nhanvien_id` FOREIGN KEY (`nhanvien_id`) REFERENCES `nhanvien` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
