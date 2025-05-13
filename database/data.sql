-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:8889
-- Thời gian đã tạo: Th5 03, 2025 lúc 06:37 AM
-- Phiên bản máy phục vụ: 8.0.40
-- Phiên bản PHP: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `thuyenvien`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `answers`
--

CREATE TABLE `answers` (
  `id` bigint UNSIGNED NOT NULL,
  `question_id` bigint UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_correct` tinyint(1) NOT NULL DEFAULT '0',
  `explanation` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `answers`
--

INSERT INTO `answers` (`id`, `question_id`, `content`, `is_correct`, `explanation`, `created_at`, `updated_at`) VALUES
(5, 2, 'Phao áo, phao tròn, xuồng cứu sinh và bè cứu sinh.', 1, 'Đây là những thiết bị cứu sinh bắt buộc theo quy định SOLAS.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(6, 2, 'Chỉ cần phao áo và xuồng cứu sinh là đủ.', 0, 'Thiếu các thiết bị cứu sinh bắt buộc khác theo quy định.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(7, 2, 'Máy bay trực thăng cứu hộ.', 0, 'Đây không phải là thiết bị cứu sinh bắt buộc trên tàu.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(8, 2, 'Tàu cứu hộ đi kèm.', 0, 'Đây không phải là thiết bị cứu sinh bắt buộc trên tàu.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(9, 13, 'Sử dụng sextant để đo góc cao của thiên thể và tính toán vị trí dựa trên bảng hải đồ thiên văn.', 1, 'Đây là phương pháp chính xác để xác định vị trí tàu bằng thiên văn.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(10, 13, 'Chỉ cần nhìn vào vị trí mặt trời.', 0, 'Phương pháp này không đủ chính xác để xác định vị trí tàu.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(11, 13, 'Dựa vào la bàn từ và hướng sao Bắc Đẩu.', 0, 'Phương pháp này chỉ xác định được hướng Bắc chứ không xác định được vị trí chính xác.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(12, 13, 'Dựa vào GPS, không cần thiên văn.', 0, 'GPS là phương pháp hiện đại nhưng câu hỏi yêu cầu xác định bằng phương pháp thiên văn.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(13, 14, 'Sử dụng sextant để đo góc cao của thiên thể và tính toán vị trí dựa trên bảng hải đồ thiên văn.', 1, 'Đây là phương pháp chính xác để xác định vị trí tàu bằng thiên văn.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(14, 14, 'Chỉ cần nhìn vào vị trí mặt trời.', 0, 'Phương pháp này không đủ chính xác để xác định vị trí tàu.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(15, 14, 'Dựa vào la bàn từ và hướng sao Bắc Đẩu.', 0, 'Phương pháp này chỉ xác định được hướng Bắc chứ không xác định được vị trí chính xác.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(16, 14, 'Dựa vào GPS, không cần thiên văn.', 0, 'GPS là phương pháp hiện đại nhưng câu hỏi yêu cầu xác định bằng phương pháp thiên văn.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(17, 15, 'Sử dụng sextant để đo góc cao của thiên thể và tính toán vị trí dựa trên bảng hải đồ thiên văn.', 1, 'Đây là phương pháp chính xác để xác định vị trí tàu bằng thiên văn.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(18, 15, 'Chỉ cần nhìn vào vị trí mặt trời.', 0, 'Phương pháp này không đủ chính xác để xác định vị trí tàu.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(19, 15, 'Dựa vào la bàn từ và hướng sao Bắc Đẩu.', 0, 'Phương pháp này chỉ xác định được hướng Bắc chứ không xác định được vị trí chính xác.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(20, 15, 'Dựa vào GPS, không cần thiên văn.', 0, 'GPS là phương pháp hiện đại nhưng câu hỏi yêu cầu xác định bằng phương pháp thiên văn.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(21, 16, 'Sử dụng sextant để đo góc cao của thiên thể và tính toán vị trí dựa trên bảng hải đồ thiên văn.', 1, 'Đây là phương pháp chính xác để xác định vị trí tàu bằng thiên văn.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(22, 16, 'Chỉ cần nhìn vào vị trí mặt trời.', 0, 'Phương pháp này không đủ chính xác để xác định vị trí tàu.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(23, 16, 'Dựa vào la bàn từ và hướng sao Bắc Đẩu.', 0, 'Phương pháp này chỉ xác định được hướng Bắc chứ không xác định được vị trí chính xác.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(24, 16, 'Dựa vào GPS, không cần thiên văn.', 0, 'GPS là phương pháp hiện đại nhưng câu hỏi yêu cầu xác định bằng phương pháp thiên văn.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(25, 17, 'Sử dụng sextant để đo góc cao của thiên thể và tính toán vị trí dựa trên bảng hải đồ thiên văn.', 1, 'Đây là phương pháp chính xác để xác định vị trí tàu bằng thiên văn.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(26, 17, 'Chỉ cần nhìn vào vị trí mặt trời.', 0, 'Phương pháp này không đủ chính xác để xác định vị trí tàu.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(27, 17, 'Dựa vào la bàn từ và hướng sao Bắc Đẩu.', 0, 'Phương pháp này chỉ xác định được hướng Bắc chứ không xác định được vị trí chính xác.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(28, 17, 'Dựa vào GPS, không cần thiên văn.', 0, 'GPS là phương pháp hiện đại nhưng câu hỏi yêu cầu xác định bằng phương pháp thiên văn.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(29, 18, 'Sử dụng sextant để đo góc cao của thiên thể và tính toán vị trí dựa trên bảng hải đồ thiên văn.', 1, 'Đây là phương pháp chính xác để xác định vị trí tàu bằng thiên văn.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(30, 18, 'Chỉ cần nhìn vào vị trí mặt trời.', 0, 'Phương pháp này không đủ chính xác để xác định vị trí tàu.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(31, 18, 'Dựa vào la bàn từ và hướng sao Bắc Đẩu.', 0, 'Phương pháp này chỉ xác định được hướng Bắc chứ không xác định được vị trí chính xác.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(32, 18, 'Dựa vào GPS, không cần thiên văn.', 0, 'GPS là phương pháp hiện đại nhưng câu hỏi yêu cầu xác định bằng phương pháp thiên văn.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(33, 19, 'Sử dụng sextant để đo góc cao của thiên thể và tính toán vị trí dựa trên bảng hải đồ thiên văn.', 1, 'Đây là phương pháp chính xác để xác định vị trí tàu bằng thiên văn.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(34, 19, 'Chỉ cần nhìn vào vị trí mặt trời.', 0, 'Phương pháp này không đủ chính xác để xác định vị trí tàu.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(35, 19, 'Dựa vào la bàn từ và hướng sao Bắc Đẩu.', 0, 'Phương pháp này chỉ xác định được hướng Bắc chứ không xác định được vị trí chính xác.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(36, 19, 'Dựa vào GPS, không cần thiên văn.', 0, 'GPS là phương pháp hiện đại nhưng câu hỏi yêu cầu xác định bằng phương pháp thiên văn.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(37, 20, 'Đi bên phải của luồng, giảm tốc độ và tuân thủ tín hiệu giao thông thủy.', 1, 'Theo quy tắc quốc tế phòng ngừa đâm va trên biển COLREG.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(38, 20, 'Đi giữa luồng để có đủ độ sâu.', 0, 'Điều này vi phạm quy tắc luồng lạch hẹp trong COLREG.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(39, 20, 'Tăng tốc để qua luồng nhanh chóng.', 0, 'Việc tăng tốc có thể gây nguy hiểm trong luồng hẹp.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(40, 20, 'Không cần tuân thủ quy tắc nào nếu là tàu lớn.', 0, 'Mọi tàu đều phải tuân thủ quy tắc hàng hải.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(41, 21, 'Đi bên phải của luồng, giảm tốc độ và tuân thủ tín hiệu giao thông thủy.', 1, 'Theo quy tắc quốc tế phòng ngừa đâm va trên biển COLREG.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(42, 21, 'Đi giữa luồng để có đủ độ sâu.', 0, 'Điều này vi phạm quy tắc luồng lạch hẹp trong COLREG.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(43, 21, 'Tăng tốc để qua luồng nhanh chóng.', 0, 'Việc tăng tốc có thể gây nguy hiểm trong luồng hẹp.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(44, 21, 'Không cần tuân thủ quy tắc nào nếu là tàu lớn.', 0, 'Mọi tàu đều phải tuân thủ quy tắc hàng hải.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(45, 22, 'Đi bên phải của luồng, giảm tốc độ và tuân thủ tín hiệu giao thông thủy.', 1, 'Theo quy tắc quốc tế phòng ngừa đâm va trên biển COLREG.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(46, 22, 'Đi giữa luồng để có đủ độ sâu.', 0, 'Điều này vi phạm quy tắc luồng lạch hẹp trong COLREG.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(47, 22, 'Tăng tốc để qua luồng nhanh chóng.', 0, 'Việc tăng tốc có thể gây nguy hiểm trong luồng hẹp.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(48, 22, 'Không cần tuân thủ quy tắc nào nếu là tàu lớn.', 0, 'Mọi tàu đều phải tuân thủ quy tắc hàng hải.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(49, 23, 'Đi bên phải của luồng, giảm tốc độ và tuân thủ tín hiệu giao thông thủy.', 1, 'Theo quy tắc quốc tế phòng ngừa đâm va trên biển COLREG.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(50, 23, 'Đi giữa luồng để có đủ độ sâu.', 0, 'Điều này vi phạm quy tắc luồng lạch hẹp trong COLREG.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(51, 23, 'Tăng tốc để qua luồng nhanh chóng.', 0, 'Việc tăng tốc có thể gây nguy hiểm trong luồng hẹp.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(52, 23, 'Không cần tuân thủ quy tắc nào nếu là tàu lớn.', 0, 'Mọi tàu đều phải tuân thủ quy tắc hàng hải.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(53, 24, 'Đi bên phải của luồng, giảm tốc độ và tuân thủ tín hiệu giao thông thủy.', 1, 'Theo quy tắc quốc tế phòng ngừa đâm va trên biển COLREG.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(54, 24, 'Đi giữa luồng để có đủ độ sâu.', 0, 'Điều này vi phạm quy tắc luồng lạch hẹp trong COLREG.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(55, 24, 'Tăng tốc để qua luồng nhanh chóng.', 0, 'Việc tăng tốc có thể gây nguy hiểm trong luồng hẹp.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(56, 24, 'Không cần tuân thủ quy tắc nào nếu là tàu lớn.', 0, 'Mọi tàu đều phải tuân thủ quy tắc hàng hải.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(57, 25, 'Đi bên phải của luồng, giảm tốc độ và tuân thủ tín hiệu giao thông thủy.', 1, 'Theo quy tắc quốc tế phòng ngừa đâm va trên biển COLREG.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(58, 25, 'Đi giữa luồng để có đủ độ sâu.', 0, 'Điều này vi phạm quy tắc luồng lạch hẹp trong COLREG.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(59, 25, 'Tăng tốc để qua luồng nhanh chóng.', 0, 'Việc tăng tốc có thể gây nguy hiểm trong luồng hẹp.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(60, 25, 'Không cần tuân thủ quy tắc nào nếu là tàu lớn.', 0, 'Mọi tàu đều phải tuân thủ quy tắc hàng hải.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(61, 26, 'Đi bên phải của luồng, giảm tốc độ và tuân thủ tín hiệu giao thông thủy.', 1, 'Theo quy tắc quốc tế phòng ngừa đâm va trên biển COLREG.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(62, 26, 'Đi giữa luồng để có đủ độ sâu.', 0, 'Điều này vi phạm quy tắc luồng lạch hẹp trong COLREG.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(63, 26, 'Tăng tốc để qua luồng nhanh chóng.', 0, 'Việc tăng tốc có thể gây nguy hiểm trong luồng hẹp.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(64, 26, 'Không cần tuân thủ quy tắc nào nếu là tàu lớn.', 0, 'Mọi tàu đều phải tuân thủ quy tắc hàng hải.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(65, 46, 'Nhiệt độ nước làm mát, áp suất dầu bôi trơn, tốc độ vòng quay, và nhiệt độ khí xả.', 1, 'Đây là những thông số quan trọng cần giám sát khi vận hành động cơ chính.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(66, 46, 'Chỉ cần theo dõi tốc độ vòng quay của động cơ.', 0, 'Không đủ thông số để đảm bảo động cơ hoạt động an toàn.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(67, 46, 'Màu sắc của khói thải từ ống khói.', 0, 'Đây là một dấu hiệu nhưng không phải thông số vận hành chuẩn.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(68, 46, 'Mức tiêu thụ nhiên liệu theo giờ.', 0, 'Đây là thông số quan trọng nhưng không phải thông số chính để giám sát an toàn động cơ.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(69, 47, 'Nhiệt độ nước làm mát, áp suất dầu bôi trơn, tốc độ vòng quay, và nhiệt độ khí xả.', 1, 'Đây là những thông số quan trọng cần giám sát khi vận hành động cơ chính.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(70, 47, 'Chỉ cần theo dõi tốc độ vòng quay của động cơ.', 0, 'Không đủ thông số để đảm bảo động cơ hoạt động an toàn.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(71, 47, 'Màu sắc của khói thải từ ống khói.', 0, 'Đây là một dấu hiệu nhưng không phải thông số vận hành chuẩn.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(72, 47, 'Mức tiêu thụ nhiên liệu theo giờ.', 0, 'Đây là thông số quan trọng nhưng không phải thông số chính để giám sát an toàn động cơ.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(73, 48, 'Nhiệt độ nước làm mát, áp suất dầu bôi trơn, tốc độ vòng quay, và nhiệt độ khí xả.', 1, 'Đây là những thông số quan trọng cần giám sát khi vận hành động cơ chính.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(74, 48, 'Chỉ cần theo dõi tốc độ vòng quay của động cơ.', 0, 'Không đủ thông số để đảm bảo động cơ hoạt động an toàn.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(75, 48, 'Màu sắc của khói thải từ ống khói.', 0, 'Đây là một dấu hiệu nhưng không phải thông số vận hành chuẩn.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(76, 48, 'Mức tiêu thụ nhiên liệu theo giờ.', 0, 'Đây là thông số quan trọng nhưng không phải thông số chính để giám sát an toàn động cơ.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(77, 49, 'Nhiệt độ nước làm mát, áp suất dầu bôi trơn, tốc độ vòng quay, và nhiệt độ khí xả.', 1, 'Đây là những thông số quan trọng cần giám sát khi vận hành động cơ chính.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(78, 49, 'Chỉ cần theo dõi tốc độ vòng quay của động cơ.', 0, 'Không đủ thông số để đảm bảo động cơ hoạt động an toàn.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(79, 49, 'Màu sắc của khói thải từ ống khói.', 0, 'Đây là một dấu hiệu nhưng không phải thông số vận hành chuẩn.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(80, 49, 'Mức tiêu thụ nhiên liệu theo giờ.', 0, 'Đây là thông số quan trọng nhưng không phải thông số chính để giám sát an toàn động cơ.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(81, 50, 'Nhiệt độ nước làm mát, áp suất dầu bôi trơn, tốc độ vòng quay, và nhiệt độ khí xả.', 1, 'Đây là những thông số quan trọng cần giám sát khi vận hành động cơ chính.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(82, 50, 'Chỉ cần theo dõi tốc độ vòng quay của động cơ.', 0, 'Không đủ thông số để đảm bảo động cơ hoạt động an toàn.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(83, 50, 'Màu sắc của khói thải từ ống khói.', 0, 'Đây là một dấu hiệu nhưng không phải thông số vận hành chuẩn.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(84, 50, 'Mức tiêu thụ nhiên liệu theo giờ.', 0, 'Đây là thông số quan trọng nhưng không phải thông số chính để giám sát an toàn động cơ.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(85, 51, 'Kiểm tra rò rỉ, vệ sinh két giãn nở, kiểm tra bơm nước, thay thế chất làm mát theo định kỳ.', 1, 'Đây là quy trình bảo dưỡng chuẩn cho hệ thống làm mát.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(86, 51, 'Chỉ cần thay nước làm mát mỗi năm một lần.', 0, 'Quy trình này không đầy đủ cho bảo dưỡng hệ thống làm mát.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(87, 51, 'Kiểm tra khi động cơ gặp sự cố quá nhiệt.', 0, 'Đây là xử lý sự cố, không phải bảo dưỡng định kỳ.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(88, 51, 'Bảo dưỡng khi kết thúc hành trình.', 0, 'Bảo dưỡng định kỳ phải theo lịch cụ thể, không phải chỉ sau mỗi hành trình.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(89, 52, 'Kiểm tra rò rỉ, vệ sinh két giãn nở, kiểm tra bơm nước, thay thế chất làm mát theo định kỳ.', 1, 'Đây là quy trình bảo dưỡng chuẩn cho hệ thống làm mát.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(90, 52, 'Chỉ cần thay nước làm mát mỗi năm một lần.', 0, 'Quy trình này không đầy đủ cho bảo dưỡng hệ thống làm mát.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(91, 52, 'Kiểm tra khi động cơ gặp sự cố quá nhiệt.', 0, 'Đây là xử lý sự cố, không phải bảo dưỡng định kỳ.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(92, 52, 'Bảo dưỡng khi kết thúc hành trình.', 0, 'Bảo dưỡng định kỳ phải theo lịch cụ thể, không phải chỉ sau mỗi hành trình.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(93, 53, 'Kiểm tra rò rỉ, vệ sinh két giãn nở, kiểm tra bơm nước, thay thế chất làm mát theo định kỳ.', 1, 'Đây là quy trình bảo dưỡng chuẩn cho hệ thống làm mát.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(94, 53, 'Chỉ cần thay nước làm mát mỗi năm một lần.', 0, 'Quy trình này không đầy đủ cho bảo dưỡng hệ thống làm mát.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(95, 53, 'Kiểm tra khi động cơ gặp sự cố quá nhiệt.', 0, 'Đây là xử lý sự cố, không phải bảo dưỡng định kỳ.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(96, 53, 'Bảo dưỡng khi kết thúc hành trình.', 0, 'Bảo dưỡng định kỳ phải theo lịch cụ thể, không phải chỉ sau mỗi hành trình.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(97, 54, 'Kiểm tra rò rỉ, vệ sinh két giãn nở, kiểm tra bơm nước, thay thế chất làm mát theo định kỳ.', 1, 'Đây là quy trình bảo dưỡng chuẩn cho hệ thống làm mát.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(98, 54, 'Chỉ cần thay nước làm mát mỗi năm một lần.', 0, 'Quy trình này không đầy đủ cho bảo dưỡng hệ thống làm mát.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(99, 54, 'Kiểm tra khi động cơ gặp sự cố quá nhiệt.', 0, 'Đây là xử lý sự cố, không phải bảo dưỡng định kỳ.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(100, 54, 'Bảo dưỡng khi kết thúc hành trình.', 0, 'Bảo dưỡng định kỳ phải theo lịch cụ thể, không phải chỉ sau mỗi hành trình.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(101, 55, 'Kiểm tra rò rỉ, vệ sinh két giãn nở, kiểm tra bơm nước, thay thế chất làm mát theo định kỳ.', 1, 'Đây là quy trình bảo dưỡng chuẩn cho hệ thống làm mát.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(102, 55, 'Chỉ cần thay nước làm mát mỗi năm một lần.', 0, 'Quy trình này không đầy đủ cho bảo dưỡng hệ thống làm mát.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(103, 55, 'Kiểm tra khi động cơ gặp sự cố quá nhiệt.', 0, 'Đây là xử lý sự cố, không phải bảo dưỡng định kỳ.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(104, 55, 'Bảo dưỡng khi kết thúc hành trình.', 0, 'Bảo dưỡng định kỳ phải theo lịch cụ thể, không phải chỉ sau mỗi hành trình.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(105, 66, 'Kiểm soát khí gas, hệ thống trơ, thiết bị chống tĩnh điện, và quy trình xếp dỡ đặc biệt.', 1, 'Đây là các quy trình an toàn đặc biệt khi vận chuyển dầu thô.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(106, 66, 'Chỉ cần hệ thống phòng cháy chữa cháy.', 0, 'Hệ thống PCCC là cần thiết nhưng không đủ cho an toàn tàu dầu.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(107, 66, 'Cùng quy trình an toàn như tàu chở hàng thông thường.', 0, 'Tàu dầu cần quy trình an toàn đặc biệt khác với tàu thông thường.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(108, 66, 'Kiểm tra độ kín của két chứa mỗi tháng.', 0, 'Đây chỉ là một phần nhỏ trong quy trình an toàn tàu dầu.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(109, 68, 'Máy đo nồng độ khí hydrocarbon, máy đo oxy, máy đo khí H2S, và hệ thống báo động khí gas tự động.', 1, 'Đây là những thiết bị cần thiết để giám sát khí gas trên tàu dầu.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(110, 68, 'Chỉ cần máy đo nồng độ oxy.', 0, 'Không đủ để kiểm soát các loại khí nguy hiểm khác.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(111, 68, 'Máy đo khí CO2 từ hệ thống chữa cháy.', 0, 'Đây là thiết bị cho hệ thống chữa cháy, không phải để kiểm soát khí gas từ hàng hóa.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(112, 68, 'Thiết bị đo áp suất trong két dầu.', 0, 'Đây là thiết bị đo áp suất, không phải thiết bị giám sát khí gas.', '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(132, 1, 'Hét lên \"Người rơi xuống biển\" và ném ngay phao cứu sinh về phía nạn nhân.', 0, NULL, '2025-05-02 00:17:58', '2025-05-02 00:17:58'),
(133, 1, 'Điều động tàu quay lại vị trí nạn nhân ngay lập tức.', 0, NULL, '2025-05-02 00:17:58', '2025-05-02 00:17:58'),
(134, 1, 'Báo cáo ngay cho thuyền trưởng.', 0, NULL, '2025-05-02 00:17:58', '2025-05-02 00:17:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `icon`, `color`, `created_at`, `updated_at`) VALUES
(1, 'An toàn hàng hải', 'an-toan-hang-hai', 'Các câu hỏi về quy định, quy trình an toàn hàng hải', 'fa-shield-alt', '#4e73df', '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(2, 'Quy tắc tránh va', 'quy-tac-tranh-va', 'Các câu hỏi về quy tắc tránh va chạm trên biển', 'fa-life-ring', '#1cc88a', '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(3, 'Hàng hóa & Xếp dỡ', 'hang-hoa-xep-do', 'Các câu hỏi về xếp dỡ, vận chuyển hàng hóa', 'fa-boxes', '#36b9cc', '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(4, 'Thiết bị hàng hải', 'thiet-bi-hang-hai', 'Các câu hỏi về các thiết bị và dụng cụ hàng hải', 'fa-compass', '#f6c23e', '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(5, 'Động cơ & Máy móc', 'dong-co-may-moc', 'Các câu hỏi về động cơ và các thiết bị máy móc trên tàu', 'fa-cogs', '#e74a3b', '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(6, 'Dầu mỏ & Hóa chất', 'dau-mo-hoa-chat', 'Các câu hỏi về vận chuyển dầu, khí hóa lỏng và hóa chất', 'fa-oil-can', '#5a5c69', '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(7, 'Luật Biển Quốc tế', 'luat-bien-quoc-te', 'Các câu hỏi về luật biển và các công ước quốc tế', 'fa-gavel', '#6f42c1', '2025-04-29 23:47:15', '2025-04-29 23:47:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `certificates`
--

CREATE TABLE `certificates` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `test_id` bigint UNSIGNED DEFAULT NULL,
  `test_attempt_id` bigint UNSIGNED DEFAULT NULL,
  `certificate_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `issue_date` date NOT NULL,
  `expiry_date` date DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `issued_by` bigint UNSIGNED DEFAULT NULL,
  `revocation_reason` text COLLATE utf8mb4_unicode_ci,
  `certificate_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `certificates`
--

INSERT INTO `certificates` (`id`, `user_id`, `test_id`, `test_attempt_id`, `certificate_number`, `title`, `description`, `issue_date`, `expiry_date`, `status`, `issued_by`, `revocation_reason`, `certificate_file`, `created_at`, `updated_at`) VALUES
(1, 2, 1, NULL, 'CERT-2025-MGse86MX', 'Chứng chỉ Chứng chỉ Thuyền trưởng Tàu biển', 'Chứng nhận thuyền viên đã hoàn thành đánh giá và đạt yêu cầu của hệ thống đánh giá năng lực thuyền viên.', '2025-04-30', '2027-04-30', 'active', 1, NULL, NULL, '2025-04-30 06:38:15', '2025-04-30 06:38:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2025_03_16_164155_create_roles_table', 1),
(6, '2025_03_16_164201_create_positions_table', 1),
(7, '2025_03_16_164207_create_ship_types_table', 1),
(8, '2025_03_16_164213_create_thuyen_viens_table', 1),
(9, '2025_03_16_164218_create_questions_table', 1),
(10, '2025_03_16_164221_create_answers_table', 1),
(11, '2025_03_16_164225_create_tests_table', 1),
(12, '2025_03_16_164228_create_test_questions_table', 1),
(13, '2025_03_16_164232_create_test_attempts_table', 1),
(14, '2025_03_16_164237_create_user_responses_table', 1),
(15, '2025_03_16_164323_add_role_to_users_table', 1),
(16, '2025_03_16_180550_add_ship_type_id_to_thuyen_viens_table', 1),
(17, '2025_03_16_181114_add_category_to_questions_table', 1),
(18, '2025_03_16_181217_add_category_to_tests_table', 1),
(19, '2025_04_22_035710_add_temporary_fields_to_test_questions_table', 1),
(20, '2025_04_22_051630_create_categories_table', 1),
(21, '2025_04_22_051631_add_category_id_to_questions_and_tests', 1),
(22, '2025_04_30_071608_add_fields_to_user_responses_table', 2),
(23, '2025_04_30_084154_create_certificates_table', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `positions`
--

CREATE TABLE `positions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department` enum('Boong','Máy','Khác') COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `positions`
--

INSERT INTO `positions` (`id`, `name`, `department`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Thuyền trưởng (Captain / Master)', 'Boong', 'Chịu trách nhiệm tối cao về tàu, hàng hóa và thủy thủ đoàn. Quản lý hành trình, xử lý tình huống khẩn cấp, tuân thủ quy định an toàn hàng hải.', '2025-04-29 23:47:13', '2025-04-29 23:47:13'),
(2, 'Thuyền phó 1 (Chief Officer)', 'Boong', 'Phụ trách hàng hải, an toàn và bảo trì boong.', '2025-04-29 23:47:13', '2025-04-29 23:47:13'),
(3, 'Thuyền phó 2 (2nd Officer)', 'Boong', 'Chịu trách nhiệm về bản đồ, hành trình và thiết bị định vị.', '2025-04-29 23:47:13', '2025-04-29 23:47:13'),
(4, 'Thuyền phó 3 (3rd Officer)', 'Boong', 'Giám sát an toàn sinh mạng, thiết bị cứu hộ và hỗ trợ hàng hải.', '2025-04-29 23:47:13', '2025-04-29 23:47:13'),
(5, 'Thủy thủ thủ trưởng (Bosun)', 'Boong', 'Hỗ trợ điều hướng, bảo trì tàu, thực hiện các lệnh từ thuyền trưởng và thuyền phó.', '2025-04-29 23:47:13', '2025-04-29 23:47:13'),
(6, 'Thủy thủ (Able Seaman)', 'Boong', 'Hỗ trợ điều hướng, bảo trì tàu, thực hiện các lệnh từ thuyền trưởng và thuyền phó.', '2025-04-29 23:47:13', '2025-04-29 23:47:13'),
(7, 'Thủy thủ thực tập (Ordinary Seaman)', 'Boong', 'Học tập và hỗ trợ thủy thủ chính.', '2025-04-29 23:47:13', '2025-04-29 23:47:13'),
(8, 'Máy trưởng (Chief Engineer)', 'Máy', 'Quản lý hệ thống động lực của tàu, bảo trì máy móc, đảm bảo hiệu suất vận hành.', '2025-04-29 23:47:13', '2025-04-29 23:47:13'),
(9, 'Máy phó 1 (2nd Engineer)', 'Máy', 'Giám sát vận hành chính hệ thống máy.', '2025-04-29 23:47:13', '2025-04-29 23:47:13'),
(10, 'Máy phó 2 (3rd Engineer)', 'Máy', 'Phụ trách động cơ phụ, hệ thống điện, nhiên liệu.', '2025-04-29 23:47:13', '2025-04-29 23:47:13'),
(11, 'Máy phó 3 (4th Engineer)', 'Máy', 'Phụ trách động cơ phụ, hệ thống điện, nhiên liệu.', '2025-04-29 23:47:13', '2025-04-29 23:47:13'),
(12, 'Thợ máy (Motorman)', 'Máy', 'Hỗ trợ bảo trì máy móc, kiểm tra hệ thống dầu, nước làm mát.', '2025-04-29 23:47:13', '2025-04-29 23:47:13'),
(13, 'Điện trưởng (Electro-Technical Officer - ETO)', 'Khác', 'Bảo trì hệ thống điện tử và tự động hóa trên tàu.', '2025-04-29 23:47:13', '2025-04-29 23:47:13'),
(14, 'Bếp trưởng (Cook)', 'Khác', 'Đảm bảo hậu cần, nấu ăn.', '2025-04-29 23:47:13', '2025-04-29 23:47:13'),
(15, 'Phục vụ (Steward)', 'Khác', 'Đảm bảo hậu cần, vệ sinh.', '2025-04-29 23:47:13', '2025-04-29 23:47:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `questions`
--

CREATE TABLE `questions` (
  `id` bigint UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint UNSIGNED DEFAULT NULL,
  `type` enum('Trắc nghiệm','Tự luận','Tình huống','Mô phỏng','Thực hành') COLLATE utf8mb4_unicode_ci NOT NULL,
  `difficulty` enum('Dễ','Trung bình','Khó') COLLATE utf8mb4_unicode_ci NOT NULL,
  `position_id` bigint UNSIGNED DEFAULT NULL,
  `ship_type_id` bigint UNSIGNED DEFAULT NULL,
  `created_by` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `questions`
--

INSERT INTO `questions` (`id`, `content`, `category`, `category_id`, `type`, `difficulty`, `position_id`, `ship_type_id`, `created_by`, `created_at`, `updated_at`) VALUES
(1, '<p>Khi gặp tình huống người rơi xuống biển, hành động đầu tiên cần làm là gì?1</p>', 'An toàn hàng hải', 1, 'Trắc nghiệm', 'Trung bình', NULL, NULL, 1, '2025-04-29 23:47:14', '2025-05-02 00:17:58'),
(2, 'Các thiết bị cứu sinh bắt buộc trên tàu biển bao gồm những gì?', 'An toàn hàng hải', 1, 'Trắc nghiệm', 'Dễ', NULL, NULL, 1, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(3, 'Quy trình báo động khẩn cấp trên tàu biển được thực hiện như thế nào?', 'An toàn hàng hải', 1, 'Tự luận', 'Khó', NULL, NULL, 1, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(4, 'Các biện pháp an toàn cần thực hiện khi có bão trên biển?', 'An toàn hàng hải', 1, 'Tự luận', 'Trung bình', NULL, NULL, 1, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(5, 'Trong tình huống hỏa hoạn trên tàu, bạn sẽ thực hiện các bước nào theo thứ tự?', 'An toàn hàng hải', 1, 'Tình huống', 'Khó', NULL, NULL, 1, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(6, 'Các loại bản đồ hàng hải (sea chart) và cách sử dụng chúng?', 'An toàn hàng hải', 1, 'Tự luận', 'Trung bình', 1, NULL, 1, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(7, 'Các loại bản đồ hàng hải (sea chart) và cách sử dụng chúng?', 'An toàn hàng hải', 1, 'Tự luận', 'Trung bình', 2, NULL, 1, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(8, 'Các loại bản đồ hàng hải (sea chart) và cách sử dụng chúng?', 'An toàn hàng hải', 1, 'Tự luận', 'Trung bình', 3, NULL, 1, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(9, 'Các loại bản đồ hàng hải (sea chart) và cách sử dụng chúng?', 'An toàn hàng hải', 1, 'Tự luận', 'Trung bình', 4, NULL, 1, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(10, 'Các loại bản đồ hàng hải (sea chart) và cách sử dụng chúng?', 'An toàn hàng hải', 1, 'Tự luận', 'Trung bình', 5, NULL, 1, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(11, 'Các loại bản đồ hàng hải (sea chart) và cách sử dụng chúng?', 'An toàn hàng hải', 1, 'Tự luận', 'Trung bình', 6, NULL, 1, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(12, 'Các loại bản đồ hàng hải (sea chart) và cách sử dụng chúng?', 'An toàn hàng hải', 1, 'Tự luận', 'Trung bình', 7, NULL, 1, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(13, 'Cách xác định vị trí tàu trên biển bằng các phương pháp thiên văn?', 'An toàn hàng hải', 1, 'Trắc nghiệm', 'Khó', 1, NULL, 1, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(14, 'Cách xác định vị trí tàu trên biển bằng các phương pháp thiên văn?', 'An toàn hàng hải', 1, 'Trắc nghiệm', 'Khó', 2, NULL, 1, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(15, 'Cách xác định vị trí tàu trên biển bằng các phương pháp thiên văn?', 'An toàn hàng hải', 1, 'Trắc nghiệm', 'Khó', 3, NULL, 1, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(16, 'Cách xác định vị trí tàu trên biển bằng các phương pháp thiên văn?', 'An toàn hàng hải', 1, 'Trắc nghiệm', 'Khó', 4, NULL, 1, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(17, 'Cách xác định vị trí tàu trên biển bằng các phương pháp thiên văn?', 'An toàn hàng hải', 1, 'Trắc nghiệm', 'Khó', 5, NULL, 1, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(18, 'Cách xác định vị trí tàu trên biển bằng các phương pháp thiên văn?', 'An toàn hàng hải', 1, 'Trắc nghiệm', 'Khó', 6, NULL, 1, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(19, 'Cách xác định vị trí tàu trên biển bằng các phương pháp thiên văn?', 'An toàn hàng hải', 1, 'Trắc nghiệm', 'Khó', 7, NULL, 1, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(20, 'Các quy tắc điều động tàu trong luồng lạch hẹp là gì?', 'An toàn hàng hải', 1, 'Trắc nghiệm', 'Trung bình', 1, NULL, 1, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(21, 'Các quy tắc điều động tàu trong luồng lạch hẹp là gì?', 'An toàn hàng hải', 1, 'Trắc nghiệm', 'Trung bình', 2, NULL, 1, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(22, 'Các quy tắc điều động tàu trong luồng lạch hẹp là gì?', 'An toàn hàng hải', 1, 'Trắc nghiệm', 'Trung bình', 3, NULL, 1, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(23, 'Các quy tắc điều động tàu trong luồng lạch hẹp là gì?', 'An toàn hàng hải', 1, 'Trắc nghiệm', 'Trung bình', 4, NULL, 1, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(24, 'Các quy tắc điều động tàu trong luồng lạch hẹp là gì?', 'An toàn hàng hải', 1, 'Trắc nghiệm', 'Trung bình', 5, NULL, 1, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(25, 'Các quy tắc điều động tàu trong luồng lạch hẹp là gì?', 'An toàn hàng hải', 1, 'Trắc nghiệm', 'Trung bình', 6, NULL, 1, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(26, 'Các quy tắc điều động tàu trong luồng lạch hẹp là gì?', 'An toàn hàng hải', 1, 'Trắc nghiệm', 'Trung bình', 7, NULL, 1, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(27, 'Quy trình cập cảng an toàn bao gồm những bước nào?', 'An toàn hàng hải', 1, 'Tình huống', 'Khó', 1, NULL, 1, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(28, 'Quy trình cập cảng an toàn bao gồm những bước nào?', 'An toàn hàng hải', 1, 'Tình huống', 'Khó', 2, NULL, 1, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(29, 'Quy trình cập cảng an toàn bao gồm những bước nào?', 'An toàn hàng hải', 1, 'Tình huống', 'Khó', 3, NULL, 1, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(30, 'Quy trình cập cảng an toàn bao gồm những bước nào?', 'An toàn hàng hải', 1, 'Tình huống', 'Khó', 4, NULL, 1, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(31, 'Quy trình cập cảng an toàn bao gồm những bước nào?', 'An toàn hàng hải', 1, 'Tình huống', 'Khó', 5, NULL, 1, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(32, 'Quy trình cập cảng an toàn bao gồm những bước nào?', 'An toàn hàng hải', 1, 'Tình huống', 'Khó', 6, NULL, 1, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(33, 'Quy trình cập cảng an toàn bao gồm những bước nào?', 'An toàn hàng hải', 1, 'Tình huống', 'Khó', 7, NULL, 1, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(34, 'Các thiết bị định vị hàng hải hiện đại và cách sử dụng chúng?', 'An toàn hàng hải', 1, 'Thực hành', 'Trung bình', 1, NULL, 1, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(35, 'Các thiết bị định vị hàng hải hiện đại và cách sử dụng chúng?', 'An toàn hàng hải', 1, 'Thực hành', 'Trung bình', 2, NULL, 1, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(36, 'Các thiết bị định vị hàng hải hiện đại và cách sử dụng chúng?', 'An toàn hàng hải', 1, 'Thực hành', 'Trung bình', 3, NULL, 1, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(37, 'Các thiết bị định vị hàng hải hiện đại và cách sử dụng chúng?', 'An toàn hàng hải', 1, 'Thực hành', 'Trung bình', 4, NULL, 1, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(38, 'Các thiết bị định vị hàng hải hiện đại và cách sử dụng chúng?', 'An toàn hàng hải', 1, 'Thực hành', 'Trung bình', 5, NULL, 1, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(39, 'Các thiết bị định vị hàng hải hiện đại và cách sử dụng chúng?', 'An toàn hàng hải', 1, 'Thực hành', 'Trung bình', 6, NULL, 1, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(40, 'Các thiết bị định vị hàng hải hiện đại và cách sử dụng chúng?', 'An toàn hàng hải', 1, 'Thực hành', 'Trung bình', 7, NULL, 1, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(41, 'Cách kiểm tra và xử lý sự cố động cơ diesel tàu biển?', 'An toàn hàng hải', 1, 'Tự luận', 'Khó', 8, NULL, 1, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(42, 'Cách kiểm tra và xử lý sự cố động cơ diesel tàu biển?', 'An toàn hàng hải', 1, 'Tự luận', 'Khó', 9, NULL, 1, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(43, 'Cách kiểm tra và xử lý sự cố động cơ diesel tàu biển?', 'An toàn hàng hải', 1, 'Tự luận', 'Khó', 10, NULL, 1, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(44, 'Cách kiểm tra và xử lý sự cố động cơ diesel tàu biển?', 'An toàn hàng hải', 1, 'Tự luận', 'Khó', 11, NULL, 1, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(45, 'Cách kiểm tra và xử lý sự cố động cơ diesel tàu biển?', 'An toàn hàng hải', 1, 'Tự luận', 'Khó', 12, NULL, 1, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(46, 'Các thông số vận hành chuẩn của động cơ chính là gì?', 'An toàn hàng hải', 1, 'Trắc nghiệm', 'Trung bình', 8, NULL, 1, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(47, 'Các thông số vận hành chuẩn của động cơ chính là gì?', 'An toàn hàng hải', 1, 'Trắc nghiệm', 'Trung bình', 9, NULL, 1, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(48, 'Các thông số vận hành chuẩn của động cơ chính là gì?', 'An toàn hàng hải', 1, 'Trắc nghiệm', 'Trung bình', 10, NULL, 1, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(49, 'Các thông số vận hành chuẩn của động cơ chính là gì?', 'An toàn hàng hải', 1, 'Trắc nghiệm', 'Trung bình', 11, NULL, 1, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(50, 'Các thông số vận hành chuẩn của động cơ chính là gì?', 'An toàn hàng hải', 1, 'Trắc nghiệm', 'Trung bình', 12, NULL, 1, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(51, 'Quy trình bảo dưỡng định kỳ hệ thống làm mát động cơ?', 'An toàn hàng hải', 1, 'Trắc nghiệm', 'Dễ', 8, NULL, 1, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(52, 'Quy trình bảo dưỡng định kỳ hệ thống làm mát động cơ?', 'An toàn hàng hải', 1, 'Trắc nghiệm', 'Dễ', 9, NULL, 1, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(53, 'Quy trình bảo dưỡng định kỳ hệ thống làm mát động cơ?', 'An toàn hàng hải', 1, 'Trắc nghiệm', 'Dễ', 10, NULL, 1, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(54, 'Quy trình bảo dưỡng định kỳ hệ thống làm mát động cơ?', 'An toàn hàng hải', 1, 'Trắc nghiệm', 'Dễ', 11, NULL, 1, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(55, 'Quy trình bảo dưỡng định kỳ hệ thống làm mát động cơ?', 'An toàn hàng hải', 1, 'Trắc nghiệm', 'Dễ', 12, NULL, 1, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(56, 'Xử lý tình huống khi lọc dầu bị tắc nghẽn?', 'An toàn hàng hải', 1, 'Tình huống', 'Trung bình', 8, NULL, 1, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(57, 'Xử lý tình huống khi lọc dầu bị tắc nghẽn?', 'An toàn hàng hải', 1, 'Tình huống', 'Trung bình', 9, NULL, 1, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(58, 'Xử lý tình huống khi lọc dầu bị tắc nghẽn?', 'An toàn hàng hải', 1, 'Tình huống', 'Trung bình', 10, NULL, 1, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(59, 'Xử lý tình huống khi lọc dầu bị tắc nghẽn?', 'An toàn hàng hải', 1, 'Tình huống', 'Trung bình', 11, NULL, 1, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(60, 'Xử lý tình huống khi lọc dầu bị tắc nghẽn?', 'An toàn hàng hải', 1, 'Tình huống', 'Trung bình', 12, NULL, 1, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(61, 'Cách kiểm tra và hiệu chỉnh hệ thống điện trên tàu?', 'An toàn hàng hải', 1, 'Thực hành', 'Khó', 8, NULL, 1, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(62, 'Cách kiểm tra và hiệu chỉnh hệ thống điện trên tàu?', 'An toàn hàng hải', 1, 'Thực hành', 'Khó', 9, NULL, 1, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(63, 'Cách kiểm tra và hiệu chỉnh hệ thống điện trên tàu?', 'An toàn hàng hải', 1, 'Thực hành', 'Khó', 10, NULL, 1, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(64, 'Cách kiểm tra và hiệu chỉnh hệ thống điện trên tàu?', 'An toàn hàng hải', 1, 'Thực hành', 'Khó', 11, NULL, 1, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(65, 'Cách kiểm tra và hiệu chỉnh hệ thống điện trên tàu?', 'An toàn hàng hải', 1, 'Thực hành', 'Khó', 12, NULL, 1, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(66, 'Các quy trình an toàn đặc biệt khi vận chuyển dầu thô là gì?', 'An toàn hàng hải', 1, 'Trắc nghiệm', 'Khó', NULL, 3, 1, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(67, 'Cách ứng phó với tràn dầu trên biển?', 'An toàn hàng hải', 1, 'Tình huống', 'Khó', NULL, 3, 1, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(68, 'Các thiết bị đo và kiểm soát khí gas trên tàu dầu?', 'An toàn hàng hải', 1, 'Trắc nghiệm', 'Trung bình', NULL, 3, 1, '2025-04-29 23:47:14', '2025-04-29 23:47:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Quản trị viên hệ thống', '2025-04-29 23:47:13', '2025-04-29 23:47:13'),
(2, 'Thuyền viên', 'Thuyền viên tham gia làm bài kiểm tra', '2025-04-29 23:47:13', '2025-04-29 23:47:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ship_types`
--

CREATE TABLE `ship_types` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` enum('Cargo','Passenger','Specialized') COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ship_types`
--

INSERT INTO `ship_types` (`id`, `name`, `category`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Tàu hàng rời (Bulk Carrier)', 'Cargo', 'Chở than, ngũ cốc, quặng kim loại.', '2025-04-29 23:47:13', '2025-04-29 23:47:13'),
(2, 'Tàu container (Container Ship)', 'Cargo', 'Chuyên vận chuyển container tiêu chuẩn.', '2025-04-29 23:47:13', '2025-04-29 23:47:13'),
(3, 'Tàu chở dầu (Oil Tanker)', 'Cargo', 'Chở dầu thô và các sản phẩm dầu.', '2025-04-29 23:47:13', '2025-04-29 23:47:13'),
(4, 'Tàu chở khí hóa lỏng (LNG/LPG Carrier)', 'Cargo', 'Chở khí tự nhiên hóa lỏng (LNG) hoặc khí dầu mỏ hóa lỏng (LPG).', '2025-04-29 23:47:13', '2025-04-29 23:47:13'),
(5, 'Tàu chở hóa chất (Chemical Tanker)', 'Cargo', 'Chở hóa chất nguy hiểm.', '2025-04-29 23:47:13', '2025-04-29 23:47:13'),
(6, 'Tàu du lịch (Cruise Ship)', 'Passenger', 'Phục vụ du khách, yêu cầu kỹ năng cứu hộ, phục vụ.', '2025-04-29 23:47:13', '2025-04-29 23:47:13'),
(7, 'Tàu phà (Ferry)', 'Passenger', 'Vận chuyển người và xe cộ giữa các cảng.', '2025-04-29 23:47:13', '2025-04-29 23:47:13'),
(8, 'Tàu kéo (Tugboat)', 'Specialized', 'Kéo và lai dắt tàu lớn vào cảng.', '2025-04-29 23:47:13', '2025-04-29 23:47:13'),
(9, 'Tàu cứu hộ (Rescue Vessel)', 'Specialized', 'Thực hiện nhiệm vụ tìm kiếm cứu nạn trên biển.', '2025-04-29 23:47:13', '2025-04-29 23:47:13'),
(10, 'Tàu nghiên cứu (Research Vessel)', 'Specialized', 'Phục vụ khảo sát khoa học biển.', '2025-04-29 23:47:13', '2025-04-29 23:47:13'),
(11, 'Tàu nạo vét (Dredger)', 'Specialized', 'Nạo vét lòng sông, cảng biển.', '2025-04-29 23:47:13', '2025-04-29 23:47:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tests`
--

CREATE TABLE `tests` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `position_id` bigint UNSIGNED DEFAULT NULL,
  `ship_type_id` bigint UNSIGNED DEFAULT NULL,
  `duration` int NOT NULL DEFAULT '60',
  `is_random` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint UNSIGNED DEFAULT NULL,
  `type` enum('certification','assessment','placement','practice') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'practice',
  `difficulty` enum('Dễ','Trung bình','Khó') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Trung bình',
  `passing_score` int DEFAULT NULL,
  `created_by` bigint UNSIGNED NOT NULL,
  `random_questions_count` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tests`
--

INSERT INTO `tests` (`id`, `title`, `description`, `position_id`, `ship_type_id`, `duration`, `is_random`, `is_active`, `category`, `category_id`, `type`, `difficulty`, `passing_score`, `created_by`, `random_questions_count`, `created_at`, `updated_at`) VALUES
(1, 'Chứng chỉ Thuyền trưởng Tàu biển', 'Bài kiểm tra cấp chứng chỉ Thuyền trưởng tàu biển theo tiêu chuẩn quốc tế. Đánh giá kiến thức hàng hải, luật biển, xử lý tình huống khẩn cấp, và kỹ năng quản lý.', 1, NULL, 120, 1, 1, 'Kiểm tra chứng chỉ', NULL, 'certification', 'Khó', 80, 1, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(2, 'Chứng chỉ Thuyền phó 1', 'Bài kiểm tra cấp chứng chỉ Thuyền phó 1 theo tiêu chuẩn quốc tế. Đánh giá kiến thức về hàng hải, xếp dỡ hàng hóa, an toàn hàng hải và xử lý tình huống khẩn cấp.', 2, NULL, 90, 1, 1, 'Kiểm tra chứng chỉ', NULL, 'certification', 'Khó', 75, 1, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(3, 'Chứng chỉ Máy trưởng Tàu biển', 'Bài kiểm tra cấp chứng chỉ Máy trưởng tàu biển theo tiêu chuẩn quốc tế. Đánh giá kiến thức về hệ thống máy tàu, bảo trì, sửa chữa, và xử lý sự cố động cơ.', 8, NULL, 120, 1, 1, 'Kiểm tra chứng chỉ', NULL, 'certification', 'Khó', 75, 1, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(4, 'Chứng chỉ Vận hành Tàu dầu', 'Bài kiểm tra chứng chỉ đặc biệt cho thuyền viên làm việc trên tàu dầu. Đánh giá kiến thức về an toàn đặc thù, quy trình xếp dỡ, và xử lý sự cố tràn dầu.', NULL, 3, 90, 1, 1, 'Kiểm tra chứng chỉ', NULL, 'certification', 'Trung bình', 70, 1, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(5, 'Đánh giá Năng lực Thuyền trưởng - Tàu Container', 'Bài kiểm tra đánh giá năng lực thuyền trưởng trên tàu container. Tập trung vào kiến thức điều động tàu, quy trình xếp container, và quản lý an toàn.', 1, 2, 60, 1, 1, 'Kiểm tra đánh giá năng lực', NULL, 'assessment', 'Trung bình', 70, 1, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(6, 'Đánh giá Năng lực Thuyền phó 1 - Tàu Hàng rời', 'Bài kiểm tra đánh giá năng lực thuyền phó 1 trên tàu hàng rời. Tập trung vào kiến thức xếp dỡ hàng rời, ổn định tàu, và an toàn khoang hàng.', 2, 1, 60, 1, 1, 'Kiểm tra đánh giá năng lực', NULL, 'assessment', 'Trung bình', 70, 1, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(7, 'Đánh giá Năng lực Máy trưởng - Tàu dầu', 'Bài kiểm tra đánh giá năng lực máy trưởng trên tàu dầu. Tập trung vào kiến thức về hệ thống bơm dầu, hệ thống kiểm soát khí gas, và an toàn buồng máy.', 8, 3, 60, 1, 1, 'Kiểm tra đánh giá năng lực', NULL, 'assessment', 'Trung bình', 70, 1, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(8, 'Kiểm tra Phân loại Năng lực Hàng hải', 'Bài kiểm tra phân loại trình độ kiến thức hàng hải chung. Giúp xác định mức độ hiểu biết và phân loại thuyền viên theo trình độ.', NULL, NULL, 45, 1, 1, 'Kiểm tra phân loại', NULL, 'placement', 'Trung bình', NULL, 1, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(9, 'Kiểm tra Phân loại Sỹ quan Boong', 'Bài kiểm tra phân loại trình độ kiến thức chuyên môn cho sỹ quan boong. Giúp xác định và phân loại sỹ quan theo năng lực thực tế.', NULL, NULL, 60, 1, 1, 'Kiểm tra phân loại', NULL, 'placement', 'Trung bình', NULL, 1, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(10, 'Kiểm tra Phân loại Sỹ quan Máy', 'Bài kiểm tra phân loại trình độ kiến thức chuyên môn cho sỹ quan máy. Giúp xác định và phân loại sỹ quan theo năng lực thực tế.', NULL, NULL, 60, 1, 1, 'Kiểm tra phân loại', NULL, 'placement', 'Trung bình', NULL, 1, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(11, 'Luyện tập An toàn Hàng hải', 'Bài luyện tập kiến thức và quy trình an toàn hàng hải cơ bản. Gồm các tình huống thường gặp và biện pháp xử lý.', NULL, NULL, 30, 1, 1, 'Kiểm tra luyện tập', NULL, 'practice', 'Dễ', NULL, 1, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(12, 'Luyện tập Xử lý Tình huống Khẩn cấp', 'Bài luyện tập kỹ năng xử lý các tình huống khẩn cấp trên tàu biển như cháy, va chạm, thủng tàu, người rơi xuống biển.', NULL, NULL, 30, 1, 1, 'Kiểm tra luyện tập', NULL, 'practice', 'Trung bình', NULL, 1, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(13, 'Luyện tập Điều động Tàu', 'Bài luyện tập kiến thức và kỹ năng điều động tàu trong các tình huống khác nhau như cập cảng, tránh va, và đi trong luồng hẹp.', 1, NULL, 30, 1, 1, 'Kiểm tra luyện tập', NULL, 'practice', 'Khó', NULL, 1, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(14, 'Luyện tập Hệ thống Máy tàu', 'Bài luyện tập kiến thức về vận hành, bảo dưỡng và xử lý sự cố hệ thống máy tàu biển.', 8, NULL, 30, 1, 1, 'Kiểm tra luyện tập', NULL, 'practice', 'Trung bình', NULL, 1, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `test_attempts`
--

CREATE TABLE `test_attempts` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `test_id` bigint UNSIGNED NOT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `is_completed` tinyint(1) NOT NULL DEFAULT '0',
  `needs_marking` tinyint(1) NOT NULL DEFAULT '0',
  `is_marked` tinyint(1) NOT NULL DEFAULT '0',
  `score` double(8,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `test_attempts`
--

INSERT INTO `test_attempts` (`id`, `user_id`, `test_id`, `start_time`, `end_time`, `is_completed`, `needs_marking`, `is_marked`, `score`, `created_at`, `updated_at`) VALUES
(1, 2, 8, '2025-04-27 22:47:14', '2025-04-27 23:32:14', 1, 0, 0, 90.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(2, 2, 11, '2025-04-15 18:47:14', '2025-04-15 19:17:14', 1, 0, 0, 57.14, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(3, 2, 10, '2025-04-27 02:47:14', '2025-04-27 03:47:14', 1, 0, 0, 85.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(4, 3, 12, '2025-04-17 09:47:14', '2025-04-17 10:17:14', 1, 0, 0, 60.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(5, 3, 11, '2025-04-04 07:47:14', '2025-04-04 08:17:14', 1, 0, 0, 92.86, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(6, 3, 8, '2025-04-18 06:47:14', '2025-04-18 07:32:14', 1, 0, 0, 78.33, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(7, 3, 9, '2025-04-27 04:47:14', '2025-04-27 05:47:14', 1, 0, 0, 90.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(8, 4, 9, '2025-04-17 17:47:14', '2025-04-17 18:47:14', 1, 0, 0, 85.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(9, 4, 11, '2025-04-12 20:47:14', '2025-04-12 21:17:14', 1, 0, 0, 85.71, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(10, 5, 10, '2025-04-06 03:47:14', '2025-04-06 04:47:14', 1, 0, 0, 76.67, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(11, 5, 12, '2025-03-31 18:47:14', '2025-03-31 19:17:14', 1, 0, 0, 75.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(12, 5, 11, '2025-04-23 14:47:14', '2025-04-23 15:17:14', 1, 0, 0, 57.14, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(13, 6, 10, '2025-04-05 16:47:14', '2025-04-05 17:47:14', 1, 0, 0, 78.33, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(14, 6, 11, '2025-04-04 06:47:14', '2025-04-04 07:17:14', 1, 0, 0, 57.14, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(15, 7, 11, '2025-04-18 10:47:14', '2025-04-18 11:17:14', 1, 0, 0, 42.86, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(16, 7, 8, '2025-03-30 01:47:14', '2025-03-30 02:32:14', 1, 0, 0, 70.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(17, 7, 9, '2025-04-15 22:47:14', '2025-04-15 23:47:14', 1, 0, 0, 81.67, '2025-04-29 23:47:14', '2025-04-29 23:47:15'),
(18, 7, 10, '2025-04-07 06:47:15', '2025-04-07 07:47:15', 1, 0, 0, 75.00, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(19, 8, 10, '2025-04-05 11:47:15', '2025-04-05 12:47:15', 1, 0, 0, 86.67, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(20, 8, 12, '2025-04-22 20:47:15', '2025-04-22 21:17:15', 1, 0, 0, 55.00, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(21, 8, 8, '2025-04-22 14:47:15', '2025-04-22 15:32:15', 1, 0, 0, 71.67, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(22, 8, 11, '2025-04-16 22:47:15', '2025-04-16 23:17:15', 1, 0, 0, 92.86, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(23, 8, 9, '2025-03-31 04:47:15', '2025-03-31 05:47:15', 1, 0, 0, 53.33, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(24, 9, 8, '2025-04-10 02:47:15', '2025-04-10 03:32:15', 1, 0, 0, 63.33, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(25, 9, 11, '2025-04-08 01:47:15', '2025-04-08 02:17:15', 1, 0, 0, 71.43, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(26, 9, 12, '2025-04-03 15:47:15', '2025-04-03 16:17:15', 1, 0, 0, 60.00, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(27, 9, 10, '2025-04-27 11:47:15', '2025-04-27 12:47:15', 1, 0, 0, 80.00, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(28, 9, 9, '2025-04-14 03:47:15', '2025-04-14 04:47:15', 1, 0, 0, 61.67, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(29, 10, 8, '2025-04-05 08:47:15', '2025-04-05 09:32:15', 1, 0, 0, 71.67, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(30, 10, 9, '2025-04-05 01:47:15', '2025-04-05 02:47:15', 1, 0, 0, 61.67, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(31, 10, 10, '2025-04-13 20:47:15', '2025-04-13 21:47:15', 1, 0, 0, 53.33, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(32, 10, 11, '2025-03-31 18:47:15', '2025-03-31 19:17:15', 1, 0, 0, 35.71, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(33, 10, 12, '2025-04-08 06:47:15', '2025-04-08 07:17:15', 1, 0, 0, 55.00, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(34, 11, 9, '2025-04-11 13:47:15', '2025-04-11 14:47:15', 1, 0, 0, 50.00, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(35, 11, 8, '2025-04-12 14:47:15', '2025-04-12 15:32:15', 1, 0, 0, 58.33, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(36, 5, 12, '2025-04-29 23:26:15', NULL, 0, 0, 0, 0.00, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(37, 6, 12, '2025-04-29 23:41:15', NULL, 0, 0, 0, 0.00, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(38, 8, 9, '2025-04-29 22:10:15', NULL, 0, 0, 0, 0.00, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(39, 2, 12, '2025-04-29 23:47:16', NULL, 0, 0, 0, 0.00, '2025-04-29 23:47:16', '2025-04-29 23:47:16'),
(40, 2, 8, '2025-04-29 23:47:22', NULL, 0, 0, 0, 0.00, '2025-04-29 23:47:22', '2025-04-29 23:47:22'),
(50, 2, 8, '2025-04-30 00:03:08', NULL, 0, 0, 0, 0.00, '2025-04-30 00:03:08', '2025-04-30 00:03:08'),
(55, 2, 8, '2025-04-30 00:10:47', NULL, 0, 0, 0, 0.00, '2025-04-30 00:10:47', '2025-04-30 00:10:47'),
(56, 2, 8, '2025-04-30 00:30:28', '2025-04-30 00:30:32', 1, 0, 1, 0.00, '2025-04-30 00:30:28', '2025-04-30 00:30:32'),
(57, 2, 8, '2025-04-30 00:41:38', '2025-04-30 00:48:15', 1, 0, 1, 100.00, '2025-04-30 00:41:38', '2025-04-30 01:38:31'),
(58, 2, 8, '2025-04-30 01:05:28', '2025-04-30 01:05:51', 1, 0, 1, 0.00, '2025-04-30 01:05:28', '2025-04-30 01:17:08'),
(59, 2, 12, '2025-04-30 06:50:39', NULL, 0, 0, 0, 0.00, '2025-04-30 06:50:39', '2025-04-30 06:50:39'),
(60, 2, 12, '2025-04-30 06:50:59', '2025-04-30 07:21:22', 1, 0, 1, 0.00, '2025-04-30 06:50:59', '2025-04-30 07:21:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `test_questions`
--

CREATE TABLE `test_questions` (
  `id` bigint UNSIGNED NOT NULL,
  `test_id` bigint UNSIGNED NOT NULL,
  `question_id` bigint UNSIGNED NOT NULL,
  `order` int NOT NULL DEFAULT '0',
  `is_temporary` tinyint(1) NOT NULL DEFAULT '0',
  `test_attempt_id` bigint UNSIGNED DEFAULT NULL,
  `points` double(8,2) NOT NULL DEFAULT '1.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `test_questions`
--

INSERT INTO `test_questions` (`id`, `test_id`, `question_id`, `order`, `is_temporary`, `test_attempt_id`, `points`, `created_at`, `updated_at`) VALUES
(1, 1, 13, 1, 0, NULL, 3.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(2, 1, 66, 2, 0, NULL, 3.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(3, 1, 67, 3, 0, NULL, 3.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(4, 1, 5, 4, 0, NULL, 3.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(5, 1, 27, 5, 0, NULL, 3.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(6, 1, 3, 6, 0, NULL, 3.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(7, 1, 1, 7, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(8, 1, 4, 8, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(9, 1, 2, 9, 0, NULL, 1.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(10, 1, 34, 10, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(11, 1, 6, 11, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(12, 1, 20, 12, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(13, 1, 68, 13, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(14, 2, 66, 1, 0, NULL, 3.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(15, 2, 67, 2, 0, NULL, 3.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(16, 2, 14, 3, 0, NULL, 3.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(17, 2, 28, 4, 0, NULL, 3.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(18, 2, 3, 5, 0, NULL, 3.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(19, 2, 5, 6, 0, NULL, 3.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(20, 2, 1, 7, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(21, 2, 35, 8, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(22, 2, 7, 9, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(23, 2, 2, 10, 0, NULL, 1.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(24, 2, 21, 11, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(25, 2, 68, 12, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(26, 2, 4, 13, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(27, 3, 66, 1, 0, NULL, 3.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(28, 3, 5, 2, 0, NULL, 3.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(29, 3, 61, 3, 0, NULL, 3.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(30, 3, 3, 4, 0, NULL, 3.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(31, 3, 67, 5, 0, NULL, 3.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(32, 3, 41, 6, 0, NULL, 3.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(33, 3, 56, 7, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(34, 3, 46, 8, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(35, 3, 68, 9, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(36, 3, 4, 10, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(37, 3, 2, 11, 0, NULL, 1.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(38, 3, 51, 12, 0, NULL, 1.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(39, 3, 1, 13, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(40, 4, 25, 1, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(41, 4, 9, 2, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(42, 4, 40, 3, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(43, 4, 26, 4, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(44, 4, 7, 5, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(45, 4, 36, 6, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(46, 4, 34, 7, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(47, 4, 37, 8, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(48, 4, 11, 9, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(49, 4, 58, 10, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(50, 4, 49, 11, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(51, 4, 4, 12, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(52, 4, 1, 13, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(53, 4, 38, 14, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(54, 4, 21, 15, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(55, 4, 57, 16, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(56, 4, 23, 17, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(57, 4, 39, 18, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(58, 4, 20, 19, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(59, 4, 8, 20, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(60, 4, 35, 21, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(61, 4, 22, 22, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(62, 4, 12, 23, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(63, 4, 47, 24, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(64, 4, 50, 25, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(65, 4, 68, 26, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(66, 4, 48, 27, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(67, 4, 56, 28, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(68, 4, 24, 29, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(69, 4, 6, 30, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(70, 4, 60, 31, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(71, 4, 46, 32, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(72, 4, 59, 33, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(73, 4, 10, 34, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(74, 4, 19, 35, 0, NULL, 3.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(75, 4, 51, 36, 0, NULL, 1.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(76, 4, 33, 37, 0, NULL, 3.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(77, 4, 32, 38, 0, NULL, 3.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(78, 4, 65, 39, 0, NULL, 3.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(79, 4, 31, 40, 0, NULL, 3.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(80, 5, 34, 1, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(81, 5, 20, 2, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(82, 5, 1, 3, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(83, 5, 6, 4, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(84, 5, 4, 5, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(85, 5, 5, 6, 0, NULL, 3.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(86, 5, 27, 7, 0, NULL, 3.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(87, 5, 13, 8, 0, NULL, 3.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(88, 5, 2, 9, 0, NULL, 1.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(89, 5, 3, 10, 0, NULL, 3.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(90, 6, 21, 1, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(91, 6, 35, 2, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(92, 6, 4, 3, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(93, 6, 7, 4, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(94, 6, 1, 5, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(95, 6, 14, 6, 0, NULL, 3.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(96, 6, 28, 7, 0, NULL, 3.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(97, 6, 3, 8, 0, NULL, 3.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(98, 6, 2, 9, 0, NULL, 1.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(99, 6, 5, 10, 0, NULL, 3.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(100, 7, 46, 1, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(101, 7, 56, 2, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(102, 7, 4, 3, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(103, 7, 68, 4, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(104, 7, 1, 5, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(105, 7, 67, 6, 0, NULL, 3.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(106, 7, 2, 7, 0, NULL, 1.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(107, 7, 41, 8, 0, NULL, 3.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(108, 7, 3, 9, 0, NULL, 3.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(109, 7, 66, 10, 0, NULL, 3.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(110, 7, 51, 11, 0, NULL, 1.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(111, 7, 5, 12, 0, NULL, 3.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(112, 7, 61, 13, 0, NULL, 3.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(113, 8, 20, 1, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(114, 8, 56, 2, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(115, 8, 34, 3, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(116, 8, 11, 4, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(117, 8, 26, 5, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(118, 8, 25, 6, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(119, 8, 22, 7, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(120, 8, 12, 8, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(121, 8, 24, 9, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(122, 8, 60, 10, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(123, 8, 39, 11, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(124, 8, 40, 12, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(125, 8, 49, 13, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(126, 8, 8, 14, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(127, 8, 35, 15, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(128, 8, 50, 16, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(129, 8, 48, 17, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(130, 8, 37, 18, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(131, 8, 36, 19, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(132, 8, 6, 20, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(133, 8, 47, 21, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(134, 8, 57, 22, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(135, 8, 7, 23, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(136, 8, 21, 24, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(137, 8, 1, 25, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(138, 8, 59, 26, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(139, 8, 58, 27, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(140, 8, 68, 28, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(141, 8, 38, 29, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(142, 8, 46, 30, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(143, 9, 60, 1, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(144, 9, 40, 2, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(145, 9, 8, 3, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(146, 9, 58, 4, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(147, 9, 57, 5, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(148, 9, 10, 6, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(149, 9, 24, 7, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(150, 9, 36, 8, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(151, 9, 35, 9, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(152, 9, 59, 10, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(153, 9, 39, 11, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(154, 9, 49, 12, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(155, 9, 48, 13, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(156, 9, 46, 14, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(157, 9, 1, 15, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(158, 9, 37, 16, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(159, 9, 25, 17, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(160, 9, 22, 18, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(161, 9, 47, 19, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(162, 9, 50, 20, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(163, 9, 38, 21, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(164, 9, 23, 22, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(165, 9, 7, 23, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(166, 9, 26, 24, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(167, 9, 34, 25, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(168, 9, 21, 26, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(169, 9, 9, 27, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(170, 9, 4, 28, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(171, 9, 56, 29, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(172, 9, 11, 30, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(173, 10, 6, 1, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(174, 10, 50, 2, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(175, 10, 34, 3, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(176, 10, 48, 4, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(177, 10, 46, 5, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(178, 10, 25, 6, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(179, 10, 49, 7, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(180, 10, 57, 8, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(181, 10, 56, 9, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(182, 10, 4, 10, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(183, 10, 26, 11, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(184, 10, 23, 12, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(185, 10, 40, 13, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(186, 10, 58, 14, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(187, 10, 47, 15, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(188, 10, 20, 16, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(189, 10, 39, 17, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(190, 10, 35, 18, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(191, 10, 60, 19, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(192, 10, 8, 20, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(193, 10, 9, 21, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(194, 10, 1, 22, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(195, 10, 22, 23, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(196, 10, 10, 24, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(197, 10, 68, 25, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(198, 10, 59, 26, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(199, 10, 11, 27, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(200, 10, 38, 28, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(201, 10, 21, 29, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(202, 10, 7, 30, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(203, 11, 55, 1, 0, NULL, 1.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(204, 11, 2, 2, 0, NULL, 1.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(205, 11, 53, 3, 0, NULL, 1.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(206, 11, 54, 4, 0, NULL, 1.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(207, 11, 51, 5, 0, NULL, 1.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(208, 11, 52, 6, 0, NULL, 1.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(209, 11, 38, 7, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(210, 11, 9, 8, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(211, 11, 24, 9, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(212, 11, 22, 10, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(213, 12, 68, 1, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(214, 12, 11, 2, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(215, 12, 39, 3, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(216, 12, 4, 4, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(217, 12, 37, 5, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(218, 12, 60, 6, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(219, 12, 22, 7, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(220, 12, 26, 8, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(221, 12, 6, 9, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(222, 12, 20, 10, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(223, 13, 27, 1, 0, NULL, 3.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(224, 13, 13, 2, 0, NULL, 3.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(225, 13, 3, 3, 0, NULL, 3.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(226, 13, 67, 4, 0, NULL, 3.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(227, 13, 5, 5, 0, NULL, 3.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(228, 13, 66, 6, 0, NULL, 3.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(229, 13, 6, 7, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(230, 13, 68, 8, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(231, 13, 20, 9, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(232, 13, 1, 10, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(233, 14, 4, 1, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(234, 14, 1, 2, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(235, 14, 68, 3, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(236, 14, 46, 4, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(237, 14, 56, 5, 0, NULL, 2.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(238, 14, 3, 6, 0, NULL, 3.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(239, 14, 66, 7, 0, NULL, 3.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(240, 14, 67, 8, 0, NULL, 3.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(241, 14, 2, 9, 0, NULL, 1.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(242, 14, 41, 10, 0, NULL, 3.00, '2025-04-29 23:47:14', '2025-04-29 23:47:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thuyen_viens`
--

CREATE TABLE `thuyen_viens` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `position_id` bigint UNSIGNED DEFAULT NULL,
  `ship_type_id` bigint UNSIGNED DEFAULT NULL,
  `experience` int NOT NULL DEFAULT '0',
  `age` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thuyen_viens`
--

INSERT INTO `thuyen_viens` (`id`, `user_id`, `position_id`, `ship_type_id`, `experience`, `age`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL, 15, NULL, '2025-04-29 23:47:13', '2025-04-29 23:47:13'),
(2, 3, NULL, NULL, 10, NULL, '2025-04-29 23:47:13', '2025-04-29 23:47:13'),
(3, 4, NULL, NULL, 12, NULL, '2025-04-29 23:47:13', '2025-04-29 23:47:13'),
(4, 5, NULL, NULL, 8, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(5, 6, NULL, NULL, 5, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(6, 7, NULL, NULL, 7, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(7, 8, NULL, NULL, 9, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(8, 9, NULL, NULL, 3, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(9, 10, NULL, NULL, 4, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(10, 11, NULL, NULL, 1, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` bigint UNSIGNED DEFAULT NULL,
  `seafarer_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role_id`, `seafarer_id`, `phone`) VALUES
(1, 'Administrator', 'admin@thuyenvien.com', '2025-04-29 23:47:13', '$2y$10$IAoLmNwXT1YpAkdgXc/ggu8xKLai8EqsstejC2dSYz2PFhJm6MFKm', NULL, '2025-04-29 23:47:13', '2025-04-29 23:47:13', 1, NULL, NULL),
(2, 'Nguyễn Văn A', 'nguyenvana@example.com', '2025-04-29 23:47:13', '$2y$10$IAoLmNwXT1YpAkdgXc/ggu8xKLai8EqsstejC2dSYz2PFhJm6MFKm', NULL, '2025-04-29 23:47:13', '2025-04-29 23:47:13', 2, 'SID001', '0901234567'),
(3, 'Trần Văn B', 'tranvanb@example.com', '2025-04-29 23:47:13', '$2y$10$IAoLmNwXT1YpAkdgXc/ggu8xKLai8EqsstejC2dSYz2PFhJm6MFKm', NULL, '2025-04-29 23:47:13', '2025-04-29 23:47:13', 2, 'SID002', '0901234568'),
(4, 'Lê Văn C', 'levanc@example.com', '2025-04-29 23:47:13', '$2y$10$IAoLmNwXT1YpAkdgXc/ggu8xKLai8EqsstejC2dSYz2PFhJm6MFKm', NULL, '2025-04-29 23:47:13', '2025-04-29 23:47:13', 2, 'SID003', '0901234569'),
(5, 'Phạm Văn D', 'phamvand@example.com', '2025-04-29 23:47:14', '$2y$10$IAoLmNwXT1YpAkdgXc/ggu8xKLai8EqsstejC2dSYz2PFhJm6MFKm', NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14', 2, 'SID004', '0901234570'),
(6, 'Hoàng Văn E', 'hoangvane@example.com', '2025-04-29 23:47:14', '$2y$10$IAoLmNwXT1YpAkdgXc/ggu8xKLai8EqsstejC2dSYz2PFhJm6MFKm', NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14', 2, 'SID005', '0901234571'),
(7, 'Đỗ Văn F', 'dovanf@example.com', '2025-04-29 23:47:14', '$2y$10$IAoLmNwXT1YpAkdgXc/ggu8xKLai8EqsstejC2dSYz2PFhJm6MFKm', NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14', 2, 'SID006', '0901234572'),
(8, 'Vũ Văn G', 'vuvang@example.com', '2025-04-29 23:47:14', '$2y$10$IAoLmNwXT1YpAkdgXc/ggu8xKLai8EqsstejC2dSYz2PFhJm6MFKm', NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14', 2, 'SID007', '0901234573'),
(9, 'Ngô Văn H', 'ngovanh@example.com', '2025-04-29 23:47:14', '$2y$10$IAoLmNwXT1YpAkdgXc/ggu8xKLai8EqsstejC2dSYz2PFhJm6MFKm', NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14', 2, 'SID008', '0901234574'),
(10, 'Dương Văn I', 'duongvani@example.com', '2025-04-29 23:47:14', '$2y$10$IAoLmNwXT1YpAkdgXc/ggu8xKLai8EqsstejC2dSYz2PFhJm6MFKm', NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14', 2, 'SID009', '0901234575'),
(11, 'Bùi Văn K', 'buivank@example.com', '2025-04-29 23:47:14', '$2y$10$IAoLmNwXT1YpAkdgXc/ggu8xKLai8EqsstejC2dSYz2PFhJm6MFKm', NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14', 2, 'SID010', '0901234576');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_responses`
--

CREATE TABLE `user_responses` (
  `id` bigint UNSIGNED NOT NULL,
  `test_attempt_id` bigint UNSIGNED NOT NULL,
  `question_id` bigint UNSIGNED NOT NULL,
  `answer_id` bigint UNSIGNED DEFAULT NULL,
  `text_response` text COLLATE utf8mb4_unicode_ci,
  `response_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_marked` tinyint(1) NOT NULL DEFAULT '0',
  `score` double(8,2) NOT NULL DEFAULT '0.00',
  `admin_comment` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_responses`
--

INSERT INTO `user_responses` (`id`, `test_attempt_id`, `question_id`, `answer_id`, `text_response`, `response_type`, `is_marked`, `score`, `admin_comment`, `created_at`, `updated_at`) VALUES
(1, 1, 20, 37, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(2, 1, 56, NULL, 'Câu trả lời mẫu cho câu hỏi 56', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(3, 1, 34, NULL, 'Câu trả lời mẫu cho câu hỏi 34', NULL, 1, 0.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(4, 1, 11, NULL, 'Câu trả lời mẫu cho câu hỏi 11', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(5, 1, 26, 61, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(6, 1, 25, 57, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(7, 1, 22, 45, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(8, 1, 12, NULL, 'Câu trả lời mẫu cho câu hỏi 12', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(9, 1, 24, 53, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(10, 1, 60, NULL, 'Câu trả lời mẫu cho câu hỏi 60', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(11, 1, 39, NULL, 'Câu trả lời mẫu cho câu hỏi 39', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(12, 1, 40, NULL, 'Câu trả lời mẫu cho câu hỏi 40', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(13, 1, 49, 78, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(14, 1, 8, NULL, 'Câu trả lời mẫu cho câu hỏi 8', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(15, 1, 35, NULL, 'Câu trả lời mẫu cho câu hỏi 35', NULL, 1, 0.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(16, 1, 50, 81, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(17, 1, 48, 73, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(18, 1, 37, NULL, 'Câu trả lời mẫu cho câu hỏi 37', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(19, 1, 36, NULL, 'Câu trả lời mẫu cho câu hỏi 36', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(20, 1, 6, NULL, 'Câu trả lời mẫu cho câu hỏi 6', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(21, 1, 47, 69, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(22, 1, 57, NULL, 'Câu trả lời mẫu cho câu hỏi 57', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(23, 1, 7, NULL, 'Câu trả lời mẫu cho câu hỏi 7', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(24, 1, 21, 41, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(25, 1, 1, NULL, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(26, 1, 59, NULL, 'Câu trả lời mẫu cho câu hỏi 59', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(27, 1, 58, NULL, 'Câu trả lời mẫu cho câu hỏi 58', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(28, 1, 68, 109, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(29, 1, 38, NULL, 'Câu trả lời mẫu cho câu hỏi 38', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(30, 1, 46, 65, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(31, 2, 55, 101, NULL, NULL, 0, 1.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(32, 2, 2, 6, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(33, 2, 53, 94, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(34, 2, 54, 97, NULL, NULL, 0, 1.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(35, 2, 51, 85, NULL, NULL, 0, 1.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(36, 2, 52, 90, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(37, 2, 38, NULL, 'Câu trả lời mẫu cho câu hỏi 38', NULL, 1, 1.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(38, 2, 9, NULL, 'Câu trả lời mẫu cho câu hỏi 9', NULL, 1, 0.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(39, 2, 24, 53, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(40, 2, 22, 45, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(41, 3, 6, NULL, 'Câu trả lời mẫu cho câu hỏi 6', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(42, 3, 50, 81, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(43, 3, 34, NULL, 'Câu trả lời mẫu cho câu hỏi 34', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(44, 3, 48, 73, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(45, 3, 46, 65, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(46, 3, 25, 58, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(47, 3, 49, 77, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(48, 3, 57, NULL, 'Câu trả lời mẫu cho câu hỏi 57', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(49, 3, 56, NULL, 'Câu trả lời mẫu cho câu hỏi 56', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(50, 3, 4, NULL, 'Câu trả lời mẫu cho câu hỏi 4', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(51, 3, 26, 61, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(52, 3, 23, 49, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(53, 3, 40, NULL, 'Câu trả lời mẫu cho câu hỏi 40', NULL, 1, 1.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(54, 3, 58, NULL, 'Câu trả lời mẫu cho câu hỏi 58', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(55, 3, 47, 69, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(56, 3, 20, 39, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(57, 3, 39, NULL, 'Câu trả lời mẫu cho câu hỏi 39', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(58, 3, 35, NULL, 'Câu trả lời mẫu cho câu hỏi 35', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(59, 3, 60, NULL, 'Câu trả lời mẫu cho câu hỏi 60', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(60, 3, 8, NULL, 'Câu trả lời mẫu cho câu hỏi 8', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(61, 3, 9, NULL, 'Câu trả lời mẫu cho câu hỏi 9', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(62, 3, 1, NULL, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(63, 3, 22, 46, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(64, 3, 10, NULL, 'Câu trả lời mẫu cho câu hỏi 10', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(65, 3, 68, 109, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(66, 3, 59, NULL, 'Câu trả lời mẫu cho câu hỏi 59', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(67, 3, 11, NULL, 'Câu trả lời mẫu cho câu hỏi 11', NULL, 1, 0.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(68, 3, 38, NULL, 'Câu trả lời mẫu cho câu hỏi 38', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(69, 3, 21, 41, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(70, 3, 7, NULL, 'Câu trả lời mẫu cho câu hỏi 7', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(71, 4, 68, 112, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(72, 4, 11, NULL, 'Câu trả lời mẫu cho câu hỏi 11', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(73, 4, 39, NULL, 'Câu trả lời mẫu cho câu hỏi 39', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(74, 4, 4, NULL, 'Câu trả lời mẫu cho câu hỏi 4', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(75, 4, 37, NULL, 'Câu trả lời mẫu cho câu hỏi 37', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(76, 4, 60, NULL, 'Câu trả lời mẫu cho câu hỏi 60', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(77, 4, 22, 45, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(78, 4, 26, 64, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(79, 4, 6, NULL, 'Câu trả lời mẫu cho câu hỏi 6', NULL, 1, 0.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(80, 4, 20, 39, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(81, 5, 55, 104, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(82, 5, 2, 5, NULL, NULL, 0, 1.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(83, 5, 53, 93, NULL, NULL, 0, 1.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(84, 5, 54, 97, NULL, NULL, 0, 1.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(85, 5, 51, 85, NULL, NULL, 0, 1.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(86, 5, 52, 89, NULL, NULL, 0, 1.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(87, 5, 38, NULL, 'Câu trả lời mẫu cho câu hỏi 38', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(88, 5, 9, NULL, 'Câu trả lời mẫu cho câu hỏi 9', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(89, 5, 24, 53, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(90, 5, 22, 45, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(91, 6, 20, 38, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(92, 6, 56, NULL, 'Câu trả lời mẫu cho câu hỏi 56', NULL, 1, 0.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(93, 6, 34, NULL, 'Câu trả lời mẫu cho câu hỏi 34', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(94, 6, 11, NULL, 'Câu trả lời mẫu cho câu hỏi 11', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(95, 6, 26, 61, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(96, 6, 25, 57, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(97, 6, 22, 45, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(98, 6, 12, NULL, 'Câu trả lời mẫu cho câu hỏi 12', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(99, 6, 24, 53, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(100, 6, 60, NULL, 'Câu trả lời mẫu cho câu hỏi 60', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(101, 6, 39, NULL, 'Câu trả lời mẫu cho câu hỏi 39', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(102, 6, 40, NULL, 'Câu trả lời mẫu cho câu hỏi 40', NULL, 1, 0.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(103, 6, 49, 77, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(104, 6, 8, NULL, 'Câu trả lời mẫu cho câu hỏi 8', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(105, 6, 35, NULL, 'Câu trả lời mẫu cho câu hỏi 35', NULL, 1, 0.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(106, 6, 50, 81, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(107, 6, 48, 73, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(108, 6, 37, NULL, 'Câu trả lời mẫu cho câu hỏi 37', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(109, 6, 36, NULL, 'Câu trả lời mẫu cho câu hỏi 36', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(110, 6, 6, NULL, 'Câu trả lời mẫu cho câu hỏi 6', NULL, 1, 1.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(111, 6, 47, 69, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(112, 6, 57, NULL, 'Câu trả lời mẫu cho câu hỏi 57', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(113, 6, 7, NULL, 'Câu trả lời mẫu cho câu hỏi 7', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(114, 6, 21, 44, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(115, 6, 1, NULL, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(116, 6, 59, NULL, 'Câu trả lời mẫu cho câu hỏi 59', NULL, 1, 0.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(117, 6, 58, NULL, 'Câu trả lời mẫu cho câu hỏi 58', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(118, 6, 68, 109, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(119, 6, 38, NULL, 'Câu trả lời mẫu cho câu hỏi 38', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(120, 6, 46, 65, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(121, 7, 60, NULL, 'Câu trả lời mẫu cho câu hỏi 60', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(122, 7, 40, NULL, 'Câu trả lời mẫu cho câu hỏi 40', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(123, 7, 8, NULL, 'Câu trả lời mẫu cho câu hỏi 8', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(124, 7, 58, NULL, 'Câu trả lời mẫu cho câu hỏi 58', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(125, 7, 57, NULL, 'Câu trả lời mẫu cho câu hỏi 57', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(126, 7, 10, NULL, 'Câu trả lời mẫu cho câu hỏi 10', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(127, 7, 24, 53, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(128, 7, 36, NULL, 'Câu trả lời mẫu cho câu hỏi 36', NULL, 1, 1.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(129, 7, 35, NULL, 'Câu trả lời mẫu cho câu hỏi 35', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(130, 7, 59, NULL, 'Câu trả lời mẫu cho câu hỏi 59', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(131, 7, 39, NULL, 'Câu trả lời mẫu cho câu hỏi 39', NULL, 1, 0.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(132, 7, 49, 77, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(133, 7, 48, 73, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(134, 7, 46, 65, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(135, 7, 1, NULL, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(136, 7, 37, NULL, 'Câu trả lời mẫu cho câu hỏi 37', NULL, 1, 1.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(137, 7, 25, 57, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(138, 7, 22, 45, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(139, 7, 47, 69, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(140, 7, 50, 81, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(141, 7, 38, NULL, 'Câu trả lời mẫu cho câu hỏi 38', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(142, 7, 23, 49, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(143, 7, 7, NULL, 'Câu trả lời mẫu cho câu hỏi 7', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(144, 7, 26, 61, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(145, 7, 34, NULL, 'Câu trả lời mẫu cho câu hỏi 34', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(146, 7, 21, 41, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(147, 7, 9, NULL, 'Câu trả lời mẫu cho câu hỏi 9', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(148, 7, 4, NULL, 'Câu trả lời mẫu cho câu hỏi 4', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(149, 7, 56, NULL, 'Câu trả lời mẫu cho câu hỏi 56', NULL, 1, 0.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(150, 7, 11, NULL, 'Câu trả lời mẫu cho câu hỏi 11', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(151, 8, 60, NULL, 'Câu trả lời mẫu cho câu hỏi 60', NULL, 1, 1.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(152, 8, 40, NULL, 'Câu trả lời mẫu cho câu hỏi 40', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(153, 8, 8, NULL, 'Câu trả lời mẫu cho câu hỏi 8', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(154, 8, 58, NULL, 'Câu trả lời mẫu cho câu hỏi 58', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(155, 8, 57, NULL, 'Câu trả lời mẫu cho câu hỏi 57', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(156, 8, 10, NULL, 'Câu trả lời mẫu cho câu hỏi 10', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(157, 8, 24, 54, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(158, 8, 36, NULL, 'Câu trả lời mẫu cho câu hỏi 36', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(159, 8, 35, NULL, 'Câu trả lời mẫu cho câu hỏi 35', NULL, 1, 0.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(160, 8, 59, NULL, 'Câu trả lời mẫu cho câu hỏi 59', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(161, 8, 39, NULL, 'Câu trả lời mẫu cho câu hỏi 39', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(162, 8, 49, 80, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(163, 8, 48, 73, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(164, 8, 46, 65, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(165, 8, 1, NULL, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(166, 8, 37, NULL, 'Câu trả lời mẫu cho câu hỏi 37', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(167, 8, 25, 57, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(168, 8, 22, 45, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(169, 8, 47, 69, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(170, 8, 50, 81, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(171, 8, 38, NULL, 'Câu trả lời mẫu cho câu hỏi 38', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(172, 8, 23, 49, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(173, 8, 7, NULL, 'Câu trả lời mẫu cho câu hỏi 7', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(174, 8, 26, 61, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(175, 8, 34, NULL, 'Câu trả lời mẫu cho câu hỏi 34', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(176, 8, 21, 41, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(177, 8, 9, NULL, 'Câu trả lời mẫu cho câu hỏi 9', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(178, 8, 4, NULL, 'Câu trả lời mẫu cho câu hỏi 4', NULL, 1, 0.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(179, 8, 56, NULL, 'Câu trả lời mẫu cho câu hỏi 56', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(180, 8, 11, NULL, 'Câu trả lời mẫu cho câu hỏi 11', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(181, 9, 55, 101, NULL, NULL, 0, 1.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(182, 9, 2, 5, NULL, NULL, 0, 1.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(183, 9, 53, 93, NULL, NULL, 0, 1.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(184, 9, 54, 97, NULL, NULL, 0, 1.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(185, 9, 51, 85, NULL, NULL, 0, 1.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(186, 9, 52, 89, NULL, NULL, 0, 1.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(187, 9, 38, NULL, 'Câu trả lời mẫu cho câu hỏi 38', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(188, 9, 9, NULL, 'Câu trả lời mẫu cho câu hỏi 9', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(189, 9, 24, 53, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(190, 9, 22, 47, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(191, 10, 6, NULL, 'Câu trả lời mẫu cho câu hỏi 6', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(192, 10, 50, 81, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(193, 10, 34, NULL, 'Câu trả lời mẫu cho câu hỏi 34', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(194, 10, 48, 74, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(195, 10, 46, 65, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(196, 10, 25, 57, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(197, 10, 49, 77, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(198, 10, 57, NULL, 'Câu trả lời mẫu cho câu hỏi 57', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(199, 10, 56, NULL, 'Câu trả lời mẫu cho câu hỏi 56', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(200, 10, 4, NULL, 'Câu trả lời mẫu cho câu hỏi 4', NULL, 1, 1.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(201, 10, 26, 61, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(202, 10, 23, 52, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(203, 10, 40, NULL, 'Câu trả lời mẫu cho câu hỏi 40', NULL, 1, 0.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(204, 10, 58, NULL, 'Câu trả lời mẫu cho câu hỏi 58', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(205, 10, 47, 69, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(206, 10, 20, 37, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(207, 10, 39, NULL, 'Câu trả lời mẫu cho câu hỏi 39', NULL, 1, 1.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(208, 10, 35, NULL, 'Câu trả lời mẫu cho câu hỏi 35', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(209, 10, 60, NULL, 'Câu trả lời mẫu cho câu hỏi 60', NULL, 1, 0.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(210, 10, 8, NULL, 'Câu trả lời mẫu cho câu hỏi 8', NULL, 1, 1.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(211, 10, 9, NULL, 'Câu trả lời mẫu cho câu hỏi 9', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(212, 10, 1, NULL, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(213, 10, 22, 45, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(214, 10, 10, NULL, 'Câu trả lời mẫu cho câu hỏi 10', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(215, 10, 68, 111, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(216, 10, 59, NULL, 'Câu trả lời mẫu cho câu hỏi 59', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(217, 10, 11, NULL, 'Câu trả lời mẫu cho câu hỏi 11', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(218, 10, 38, NULL, 'Câu trả lời mẫu cho câu hỏi 38', NULL, 1, 1.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(219, 10, 21, 41, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(220, 10, 7, NULL, 'Câu trả lời mẫu cho câu hỏi 7', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(221, 11, 68, 109, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(222, 11, 11, NULL, 'Câu trả lời mẫu cho câu hỏi 11', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(223, 11, 39, NULL, 'Câu trả lời mẫu cho câu hỏi 39', NULL, 1, 1.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(224, 11, 4, NULL, 'Câu trả lời mẫu cho câu hỏi 4', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(225, 11, 37, NULL, 'Câu trả lời mẫu cho câu hỏi 37', NULL, 1, 0.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(226, 11, 60, NULL, 'Câu trả lời mẫu cho câu hỏi 60', NULL, 1, 0.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(227, 11, 22, 45, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(228, 11, 26, 61, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(229, 11, 6, NULL, 'Câu trả lời mẫu cho câu hỏi 6', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(230, 11, 20, 37, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(231, 12, 55, 101, NULL, NULL, 0, 1.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(232, 12, 2, 7, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(233, 12, 53, 93, NULL, NULL, 0, 1.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(234, 12, 54, 98, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(235, 12, 51, 85, NULL, NULL, 0, 1.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(236, 12, 52, 92, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(237, 12, 38, NULL, 'Câu trả lời mẫu cho câu hỏi 38', NULL, 1, 1.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(238, 12, 9, NULL, 'Câu trả lời mẫu cho câu hỏi 9', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(239, 12, 24, 56, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(240, 12, 22, 45, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(241, 13, 6, NULL, 'Câu trả lời mẫu cho câu hỏi 6', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(242, 13, 50, 81, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(243, 13, 34, NULL, 'Câu trả lời mẫu cho câu hỏi 34', NULL, 1, 0.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(244, 13, 48, 73, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(245, 13, 46, 65, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(246, 13, 25, 60, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(247, 13, 49, 77, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(248, 13, 57, NULL, 'Câu trả lời mẫu cho câu hỏi 57', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(249, 13, 56, NULL, 'Câu trả lời mẫu cho câu hỏi 56', NULL, 1, 1.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(250, 13, 4, NULL, 'Câu trả lời mẫu cho câu hỏi 4', NULL, 1, 1.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(251, 13, 26, 61, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(252, 13, 23, 49, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(253, 13, 40, NULL, 'Câu trả lời mẫu cho câu hỏi 40', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(254, 13, 58, NULL, 'Câu trả lời mẫu cho câu hỏi 58', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(255, 13, 47, 70, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(256, 13, 20, 37, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(257, 13, 39, NULL, 'Câu trả lời mẫu cho câu hỏi 39', NULL, 1, 1.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(258, 13, 35, NULL, 'Câu trả lời mẫu cho câu hỏi 35', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(259, 13, 60, NULL, 'Câu trả lời mẫu cho câu hỏi 60', NULL, 1, 0.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(260, 13, 8, NULL, 'Câu trả lời mẫu cho câu hỏi 8', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(261, 13, 9, NULL, 'Câu trả lời mẫu cho câu hỏi 9', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(262, 13, 1, NULL, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(263, 13, 22, 45, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(264, 13, 10, NULL, 'Câu trả lời mẫu cho câu hỏi 10', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(265, 13, 68, 109, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(266, 13, 59, NULL, 'Câu trả lời mẫu cho câu hỏi 59', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(267, 13, 11, NULL, 'Câu trả lời mẫu cho câu hỏi 11', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(268, 13, 38, NULL, 'Câu trả lời mẫu cho câu hỏi 38', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(269, 13, 21, 41, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(270, 13, 7, NULL, 'Câu trả lời mẫu cho câu hỏi 7', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(271, 14, 55, 102, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(272, 14, 2, 6, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(273, 14, 53, 94, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(274, 14, 54, 99, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(275, 14, 51, 87, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(276, 14, 52, 89, NULL, NULL, 0, 1.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(277, 14, 38, NULL, 'Câu trả lời mẫu cho câu hỏi 38', NULL, 1, 1.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(278, 14, 9, NULL, 'Câu trả lời mẫu cho câu hỏi 9', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(279, 14, 24, 53, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(280, 14, 22, 45, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(281, 15, 55, 103, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(282, 15, 2, 5, NULL, NULL, 0, 1.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(283, 15, 53, 96, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(284, 15, 54, 99, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(285, 15, 51, 85, NULL, NULL, 0, 1.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(286, 15, 52, 92, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(287, 15, 38, NULL, 'Câu trả lời mẫu cho câu hỏi 38', NULL, 1, 0.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(288, 15, 9, NULL, 'Câu trả lời mẫu cho câu hỏi 9', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(289, 15, 24, 53, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(290, 15, 22, 46, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(291, 16, 20, 37, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(292, 16, 56, NULL, 'Câu trả lời mẫu cho câu hỏi 56', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(293, 16, 34, NULL, 'Câu trả lời mẫu cho câu hỏi 34', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(294, 16, 11, NULL, 'Câu trả lời mẫu cho câu hỏi 11', NULL, 1, 1.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(295, 16, 26, 64, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(296, 16, 25, 57, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(297, 16, 22, 45, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(298, 16, 12, NULL, 'Câu trả lời mẫu cho câu hỏi 12', NULL, 1, 0.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(299, 16, 24, 53, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(300, 16, 60, NULL, 'Câu trả lời mẫu cho câu hỏi 60', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(301, 16, 39, NULL, 'Câu trả lời mẫu cho câu hỏi 39', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(302, 16, 40, NULL, 'Câu trả lời mẫu cho câu hỏi 40', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(303, 16, 49, 79, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(304, 16, 8, NULL, 'Câu trả lời mẫu cho câu hỏi 8', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(305, 16, 35, NULL, 'Câu trả lời mẫu cho câu hỏi 35', NULL, 1, 0.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(306, 16, 50, 84, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(307, 16, 48, 73, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(308, 16, 37, NULL, 'Câu trả lời mẫu cho câu hỏi 37', NULL, 1, 1.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(309, 16, 36, NULL, 'Câu trả lời mẫu cho câu hỏi 36', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(310, 16, 6, NULL, 'Câu trả lời mẫu cho câu hỏi 6', NULL, 1, 1.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(311, 16, 47, 69, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(312, 16, 57, NULL, 'Câu trả lời mẫu cho câu hỏi 57', NULL, 1, 0.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(313, 16, 7, NULL, 'Câu trả lời mẫu cho câu hỏi 7', NULL, 1, 1.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(314, 16, 21, 41, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(315, 16, 1, NULL, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(316, 16, 59, NULL, 'Câu trả lời mẫu cho câu hỏi 59', NULL, 1, 0.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(317, 16, 58, NULL, 'Câu trả lời mẫu cho câu hỏi 58', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(318, 16, 68, 109, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(319, 16, 38, NULL, 'Câu trả lời mẫu cho câu hỏi 38', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(320, 16, 46, 65, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(321, 17, 60, NULL, 'Câu trả lời mẫu cho câu hỏi 60', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(322, 17, 40, NULL, 'Câu trả lời mẫu cho câu hỏi 40', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(323, 17, 8, NULL, 'Câu trả lời mẫu cho câu hỏi 8', NULL, 1, 1.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(324, 17, 58, NULL, 'Câu trả lời mẫu cho câu hỏi 58', NULL, 1, 0.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(325, 17, 57, NULL, 'Câu trả lời mẫu cho câu hỏi 57', NULL, 1, 0.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(326, 17, 10, NULL, 'Câu trả lời mẫu cho câu hỏi 10', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(327, 17, 24, 53, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(328, 17, 36, NULL, 'Câu trả lời mẫu cho câu hỏi 36', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(329, 17, 35, NULL, 'Câu trả lời mẫu cho câu hỏi 35', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(330, 17, 59, NULL, 'Câu trả lời mẫu cho câu hỏi 59', NULL, 1, 0.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(331, 17, 39, NULL, 'Câu trả lời mẫu cho câu hỏi 39', NULL, 1, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(332, 17, 49, 77, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:14', '2025-04-29 23:47:14'),
(333, 17, 48, 73, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(334, 17, 46, 65, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(335, 17, 1, NULL, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(336, 17, 37, NULL, 'Câu trả lời mẫu cho câu hỏi 37', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(337, 17, 25, 59, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(338, 17, 22, 45, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(339, 17, 47, 69, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(340, 17, 50, 81, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(341, 17, 38, NULL, 'Câu trả lời mẫu cho câu hỏi 38', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(342, 17, 23, 49, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(343, 17, 7, NULL, 'Câu trả lời mẫu cho câu hỏi 7', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(344, 17, 26, 61, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(345, 17, 34, NULL, 'Câu trả lời mẫu cho câu hỏi 34', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(346, 17, 21, 42, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(347, 17, 9, NULL, 'Câu trả lời mẫu cho câu hỏi 9', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(348, 17, 4, NULL, 'Câu trả lời mẫu cho câu hỏi 4', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(349, 17, 56, NULL, 'Câu trả lời mẫu cho câu hỏi 56', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(350, 17, 11, NULL, 'Câu trả lời mẫu cho câu hỏi 11', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(351, 18, 6, NULL, 'Câu trả lời mẫu cho câu hỏi 6', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(352, 18, 50, 81, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(353, 18, 34, NULL, 'Câu trả lời mẫu cho câu hỏi 34', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(354, 18, 48, 73, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(355, 18, 46, 65, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(356, 18, 25, 57, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(357, 18, 49, 77, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(358, 18, 57, NULL, 'Câu trả lời mẫu cho câu hỏi 57', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(359, 18, 56, NULL, 'Câu trả lời mẫu cho câu hỏi 56', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(360, 18, 4, NULL, 'Câu trả lời mẫu cho câu hỏi 4', NULL, 1, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(361, 18, 26, 61, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(362, 18, 23, 49, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(363, 18, 40, NULL, 'Câu trả lời mẫu cho câu hỏi 40', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(364, 18, 58, NULL, 'Câu trả lời mẫu cho câu hỏi 58', NULL, 1, 1.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(365, 18, 47, 69, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(366, 18, 20, 40, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(367, 18, 39, NULL, 'Câu trả lời mẫu cho câu hỏi 39', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(368, 18, 35, NULL, 'Câu trả lời mẫu cho câu hỏi 35', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(369, 18, 60, NULL, 'Câu trả lời mẫu cho câu hỏi 60', NULL, 1, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(370, 18, 8, NULL, 'Câu trả lời mẫu cho câu hỏi 8', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(371, 18, 9, NULL, 'Câu trả lời mẫu cho câu hỏi 9', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(372, 18, 1, NULL, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(373, 18, 22, 46, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(374, 18, 10, NULL, 'Câu trả lời mẫu cho câu hỏi 10', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(375, 18, 68, 109, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(376, 18, 59, NULL, 'Câu trả lời mẫu cho câu hỏi 59', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(377, 18, 11, NULL, 'Câu trả lời mẫu cho câu hỏi 11', NULL, 1, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(378, 18, 38, NULL, 'Câu trả lời mẫu cho câu hỏi 38', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(379, 18, 21, 42, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(380, 18, 7, NULL, 'Câu trả lời mẫu cho câu hỏi 7', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(381, 19, 6, NULL, 'Câu trả lời mẫu cho câu hỏi 6', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(382, 19, 50, 81, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(383, 19, 34, NULL, 'Câu trả lời mẫu cho câu hỏi 34', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(384, 19, 48, 73, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(385, 19, 46, 65, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(386, 19, 25, 57, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(387, 19, 49, 77, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(388, 19, 57, NULL, 'Câu trả lời mẫu cho câu hỏi 57', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(389, 19, 56, NULL, 'Câu trả lời mẫu cho câu hỏi 56', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(390, 19, 4, NULL, 'Câu trả lời mẫu cho câu hỏi 4', NULL, 1, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(391, 19, 26, 61, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(392, 19, 23, 52, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(393, 19, 40, NULL, 'Câu trả lời mẫu cho câu hỏi 40', NULL, 1, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(394, 19, 58, NULL, 'Câu trả lời mẫu cho câu hỏi 58', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(395, 19, 47, 69, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(396, 19, 20, 37, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(397, 19, 39, NULL, 'Câu trả lời mẫu cho câu hỏi 39', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(398, 19, 35, NULL, 'Câu trả lời mẫu cho câu hỏi 35', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(399, 19, 60, NULL, 'Câu trả lời mẫu cho câu hỏi 60', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(400, 19, 8, NULL, 'Câu trả lời mẫu cho câu hỏi 8', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(401, 19, 9, NULL, 'Câu trả lời mẫu cho câu hỏi 9', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(402, 19, 1, NULL, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(403, 19, 22, 45, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(404, 19, 10, NULL, 'Câu trả lời mẫu cho câu hỏi 10', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(405, 19, 68, 109, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(406, 19, 59, NULL, 'Câu trả lời mẫu cho câu hỏi 59', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(407, 19, 11, NULL, 'Câu trả lời mẫu cho câu hỏi 11', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(408, 19, 38, NULL, 'Câu trả lời mẫu cho câu hỏi 38', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(409, 19, 21, 43, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(410, 19, 7, NULL, 'Câu trả lời mẫu cho câu hỏi 7', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(411, 20, 68, 110, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(412, 20, 11, NULL, 'Câu trả lời mẫu cho câu hỏi 11', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(413, 20, 39, NULL, 'Câu trả lời mẫu cho câu hỏi 39', NULL, 1, 1.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(414, 20, 4, NULL, 'Câu trả lời mẫu cho câu hỏi 4', NULL, 1, 1.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(415, 20, 37, NULL, 'Câu trả lời mẫu cho câu hỏi 37', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(416, 20, 60, NULL, 'Câu trả lời mẫu cho câu hỏi 60', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(417, 20, 22, 45, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(418, 20, 26, 64, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(419, 20, 6, NULL, 'Câu trả lời mẫu cho câu hỏi 6', NULL, 1, 1.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(420, 20, 20, 38, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(421, 21, 20, 37, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(422, 21, 56, NULL, 'Câu trả lời mẫu cho câu hỏi 56', NULL, 1, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(423, 21, 34, NULL, 'Câu trả lời mẫu cho câu hỏi 34', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(424, 21, 11, NULL, 'Câu trả lời mẫu cho câu hỏi 11', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(425, 21, 26, 61, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(426, 21, 25, 57, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(427, 21, 22, 45, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(428, 21, 12, NULL, 'Câu trả lời mẫu cho câu hỏi 12', NULL, 1, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(429, 21, 24, 55, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(430, 21, 60, NULL, 'Câu trả lời mẫu cho câu hỏi 60', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(431, 21, 39, NULL, 'Câu trả lời mẫu cho câu hỏi 39', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(432, 21, 40, NULL, 'Câu trả lời mẫu cho câu hỏi 40', NULL, 1, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(433, 21, 49, 77, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(434, 21, 8, NULL, 'Câu trả lời mẫu cho câu hỏi 8', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(435, 21, 35, NULL, 'Câu trả lời mẫu cho câu hỏi 35', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(436, 21, 50, 84, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(437, 21, 48, 73, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(438, 21, 37, NULL, 'Câu trả lời mẫu cho câu hỏi 37', NULL, 1, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(439, 21, 36, NULL, 'Câu trả lời mẫu cho câu hỏi 36', NULL, 1, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(440, 21, 6, NULL, 'Câu trả lời mẫu cho câu hỏi 6', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(441, 21, 47, 69, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(442, 21, 57, NULL, 'Câu trả lời mẫu cho câu hỏi 57', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(443, 21, 7, NULL, 'Câu trả lời mẫu cho câu hỏi 7', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(444, 21, 21, 41, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(445, 21, 1, NULL, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(446, 21, 59, NULL, 'Câu trả lời mẫu cho câu hỏi 59', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(447, 21, 58, NULL, 'Câu trả lời mẫu cho câu hỏi 58', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(448, 21, 68, 109, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(449, 21, 38, NULL, 'Câu trả lời mẫu cho câu hỏi 38', NULL, 1, 1.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(450, 21, 46, 65, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(451, 22, 55, 101, NULL, NULL, 0, 1.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(452, 22, 2, 5, NULL, NULL, 0, 1.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(453, 22, 53, 93, NULL, NULL, 0, 1.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(454, 22, 54, 97, NULL, NULL, 0, 1.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(455, 22, 51, 88, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(456, 22, 52, 89, NULL, NULL, 0, 1.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(457, 22, 38, NULL, 'Câu trả lời mẫu cho câu hỏi 38', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(458, 22, 9, NULL, 'Câu trả lời mẫu cho câu hỏi 9', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(459, 22, 24, 53, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(460, 22, 22, 45, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(461, 23, 60, NULL, 'Câu trả lời mẫu cho câu hỏi 60', NULL, 1, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(462, 23, 40, NULL, 'Câu trả lời mẫu cho câu hỏi 40', NULL, 1, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(463, 23, 8, NULL, 'Câu trả lời mẫu cho câu hỏi 8', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(464, 23, 58, NULL, 'Câu trả lời mẫu cho câu hỏi 58', NULL, 1, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(465, 23, 57, NULL, 'Câu trả lời mẫu cho câu hỏi 57', NULL, 1, 1.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(466, 23, 10, NULL, 'Câu trả lời mẫu cho câu hỏi 10', NULL, 1, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(467, 23, 24, 53, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(468, 23, 36, NULL, 'Câu trả lời mẫu cho câu hỏi 36', NULL, 1, 1.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(469, 23, 35, NULL, 'Câu trả lời mẫu cho câu hỏi 35', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(470, 23, 59, NULL, 'Câu trả lời mẫu cho câu hỏi 59', NULL, 1, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(471, 23, 39, NULL, 'Câu trả lời mẫu cho câu hỏi 39', NULL, 1, 1.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(472, 23, 49, 77, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(473, 23, 48, 74, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(474, 23, 46, 65, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15');
INSERT INTO `user_responses` (`id`, `test_attempt_id`, `question_id`, `answer_id`, `text_response`, `response_type`, `is_marked`, `score`, `admin_comment`, `created_at`, `updated_at`) VALUES
(475, 23, 1, NULL, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(476, 23, 37, NULL, 'Câu trả lời mẫu cho câu hỏi 37', NULL, 1, 1.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(477, 23, 25, 57, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(478, 23, 22, 45, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(479, 23, 47, 69, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(480, 23, 50, 82, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(481, 23, 38, NULL, 'Câu trả lời mẫu cho câu hỏi 38', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(482, 23, 23, 49, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(483, 23, 7, NULL, 'Câu trả lời mẫu cho câu hỏi 7', NULL, 1, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(484, 23, 26, 61, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(485, 23, 34, NULL, 'Câu trả lời mẫu cho câu hỏi 34', NULL, 1, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(486, 23, 21, 44, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(487, 23, 9, NULL, 'Câu trả lời mẫu cho câu hỏi 9', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(488, 23, 4, NULL, 'Câu trả lời mẫu cho câu hỏi 4', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(489, 23, 56, NULL, 'Câu trả lời mẫu cho câu hỏi 56', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(490, 23, 11, NULL, 'Câu trả lời mẫu cho câu hỏi 11', NULL, 1, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(491, 24, 20, 37, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(492, 24, 56, NULL, 'Câu trả lời mẫu cho câu hỏi 56', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(493, 24, 34, NULL, 'Câu trả lời mẫu cho câu hỏi 34', NULL, 1, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(494, 24, 11, NULL, 'Câu trả lời mẫu cho câu hỏi 11', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(495, 24, 26, 61, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(496, 24, 25, 57, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(497, 24, 22, 46, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(498, 24, 12, NULL, 'Câu trả lời mẫu cho câu hỏi 12', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(499, 24, 24, 53, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(500, 24, 60, NULL, 'Câu trả lời mẫu cho câu hỏi 60', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(501, 24, 39, NULL, 'Câu trả lời mẫu cho câu hỏi 39', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(502, 24, 40, NULL, 'Câu trả lời mẫu cho câu hỏi 40', NULL, 1, 1.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(503, 24, 49, 77, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(504, 24, 8, NULL, 'Câu trả lời mẫu cho câu hỏi 8', NULL, 1, 1.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(505, 24, 35, NULL, 'Câu trả lời mẫu cho câu hỏi 35', NULL, 1, 1.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(506, 24, 50, 84, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(507, 24, 48, 76, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(508, 24, 37, NULL, 'Câu trả lời mẫu cho câu hỏi 37', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(509, 24, 36, NULL, 'Câu trả lời mẫu cho câu hỏi 36', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(510, 24, 6, NULL, 'Câu trả lời mẫu cho câu hỏi 6', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(511, 24, 47, 71, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(512, 24, 57, NULL, 'Câu trả lời mẫu cho câu hỏi 57', NULL, 1, 1.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(513, 24, 7, NULL, 'Câu trả lời mẫu cho câu hỏi 7', NULL, 1, 1.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(514, 24, 21, 42, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(515, 24, 1, NULL, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(516, 24, 59, NULL, 'Câu trả lời mẫu cho câu hỏi 59', NULL, 1, 1.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(517, 24, 58, NULL, 'Câu trả lời mẫu cho câu hỏi 58', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(518, 24, 68, 110, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(519, 24, 38, NULL, 'Câu trả lời mẫu cho câu hỏi 38', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(520, 24, 46, 68, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(521, 25, 55, 101, NULL, NULL, 0, 1.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(522, 25, 2, 5, NULL, NULL, 0, 1.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(523, 25, 53, 93, NULL, NULL, 0, 1.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(524, 25, 54, 97, NULL, NULL, 0, 1.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(525, 25, 51, 88, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(526, 25, 52, 89, NULL, NULL, 0, 1.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(527, 25, 38, NULL, 'Câu trả lời mẫu cho câu hỏi 38', NULL, 1, 1.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(528, 25, 9, NULL, 'Câu trả lời mẫu cho câu hỏi 9', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(529, 25, 24, 53, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(530, 25, 22, 46, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(531, 26, 68, 111, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(532, 26, 11, NULL, 'Câu trả lời mẫu cho câu hỏi 11', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(533, 26, 39, NULL, 'Câu trả lời mẫu cho câu hỏi 39', NULL, 1, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(534, 26, 4, NULL, 'Câu trả lời mẫu cho câu hỏi 4', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(535, 26, 37, NULL, 'Câu trả lời mẫu cho câu hỏi 37', NULL, 1, 1.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(536, 26, 60, NULL, 'Câu trả lời mẫu cho câu hỏi 60', NULL, 1, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(537, 26, 22, 45, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(538, 26, 26, 61, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(539, 26, 6, NULL, 'Câu trả lời mẫu cho câu hỏi 6', NULL, 1, 1.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(540, 26, 20, 37, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(541, 27, 6, NULL, 'Câu trả lời mẫu cho câu hỏi 6', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(542, 27, 50, 81, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(543, 27, 34, NULL, 'Câu trả lời mẫu cho câu hỏi 34', NULL, 1, 1.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(544, 27, 48, 73, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(545, 27, 46, 65, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(546, 27, 25, 57, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(547, 27, 49, 80, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(548, 27, 57, NULL, 'Câu trả lời mẫu cho câu hỏi 57', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(549, 27, 56, NULL, 'Câu trả lời mẫu cho câu hỏi 56', NULL, 1, 1.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(550, 27, 4, NULL, 'Câu trả lời mẫu cho câu hỏi 4', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(551, 27, 26, 61, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(552, 27, 23, 49, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(553, 27, 40, NULL, 'Câu trả lời mẫu cho câu hỏi 40', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(554, 27, 58, NULL, 'Câu trả lời mẫu cho câu hỏi 58', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(555, 27, 47, 69, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(556, 27, 20, 37, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(557, 27, 39, NULL, 'Câu trả lời mẫu cho câu hỏi 39', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(558, 27, 35, NULL, 'Câu trả lời mẫu cho câu hỏi 35', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(559, 27, 60, NULL, 'Câu trả lời mẫu cho câu hỏi 60', NULL, 1, 1.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(560, 27, 8, NULL, 'Câu trả lời mẫu cho câu hỏi 8', NULL, 1, 1.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(561, 27, 9, NULL, 'Câu trả lời mẫu cho câu hỏi 9', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(562, 27, 1, NULL, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(563, 27, 22, 48, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(564, 27, 10, NULL, 'Câu trả lời mẫu cho câu hỏi 10', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(565, 27, 68, 112, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(566, 27, 59, NULL, 'Câu trả lời mẫu cho câu hỏi 59', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(567, 27, 11, NULL, 'Câu trả lời mẫu cho câu hỏi 11', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(568, 27, 38, NULL, 'Câu trả lời mẫu cho câu hỏi 38', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(569, 27, 21, 41, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(570, 27, 7, NULL, 'Câu trả lời mẫu cho câu hỏi 7', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(571, 28, 60, NULL, 'Câu trả lời mẫu cho câu hỏi 60', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(572, 28, 40, NULL, 'Câu trả lời mẫu cho câu hỏi 40', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(573, 28, 8, NULL, 'Câu trả lời mẫu cho câu hỏi 8', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(574, 28, 58, NULL, 'Câu trả lời mẫu cho câu hỏi 58', NULL, 1, 1.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(575, 28, 57, NULL, 'Câu trả lời mẫu cho câu hỏi 57', NULL, 1, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(576, 28, 10, NULL, 'Câu trả lời mẫu cho câu hỏi 10', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(577, 28, 24, 54, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(578, 28, 36, NULL, 'Câu trả lời mẫu cho câu hỏi 36', NULL, 1, 1.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(579, 28, 35, NULL, 'Câu trả lời mẫu cho câu hỏi 35', NULL, 1, 1.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(580, 28, 59, NULL, 'Câu trả lời mẫu cho câu hỏi 59', NULL, 1, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(581, 28, 39, NULL, 'Câu trả lời mẫu cho câu hỏi 39', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(582, 28, 49, 77, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(583, 28, 48, 73, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(584, 28, 46, 65, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(585, 28, 1, NULL, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(586, 28, 37, NULL, 'Câu trả lời mẫu cho câu hỏi 37', NULL, 1, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(587, 28, 25, 57, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(588, 28, 22, 48, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(589, 28, 47, 69, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(590, 28, 50, 81, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(591, 28, 38, NULL, 'Câu trả lời mẫu cho câu hỏi 38', NULL, 1, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(592, 28, 23, 49, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(593, 28, 7, NULL, 'Câu trả lời mẫu cho câu hỏi 7', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(594, 28, 26, 61, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(595, 28, 34, NULL, 'Câu trả lời mẫu cho câu hỏi 34', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(596, 28, 21, 43, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(597, 28, 9, NULL, 'Câu trả lời mẫu cho câu hỏi 9', NULL, 1, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(598, 28, 4, NULL, 'Câu trả lời mẫu cho câu hỏi 4', NULL, 1, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(599, 28, 56, NULL, 'Câu trả lời mẫu cho câu hỏi 56', NULL, 1, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(600, 28, 11, NULL, 'Câu trả lời mẫu cho câu hỏi 11', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(601, 29, 20, 40, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(602, 29, 56, NULL, 'Câu trả lời mẫu cho câu hỏi 56', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(603, 29, 34, NULL, 'Câu trả lời mẫu cho câu hỏi 34', NULL, 1, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(604, 29, 11, NULL, 'Câu trả lời mẫu cho câu hỏi 11', NULL, 1, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(605, 29, 26, 61, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(606, 29, 25, 57, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(607, 29, 22, 47, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(608, 29, 12, NULL, 'Câu trả lời mẫu cho câu hỏi 12', NULL, 1, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(609, 29, 24, 56, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(610, 29, 60, NULL, 'Câu trả lời mẫu cho câu hỏi 60', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(611, 29, 39, NULL, 'Câu trả lời mẫu cho câu hỏi 39', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(612, 29, 40, NULL, 'Câu trả lời mẫu cho câu hỏi 40', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(613, 29, 49, 77, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(614, 29, 8, NULL, 'Câu trả lời mẫu cho câu hỏi 8', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(615, 29, 35, NULL, 'Câu trả lời mẫu cho câu hỏi 35', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(616, 29, 50, 81, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(617, 29, 48, 73, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(618, 29, 37, NULL, 'Câu trả lời mẫu cho câu hỏi 37', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(619, 29, 36, NULL, 'Câu trả lời mẫu cho câu hỏi 36', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(620, 29, 6, NULL, 'Câu trả lời mẫu cho câu hỏi 6', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(621, 29, 47, 69, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(622, 29, 57, NULL, 'Câu trả lời mẫu cho câu hỏi 57', NULL, 1, 1.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(623, 29, 7, NULL, 'Câu trả lời mẫu cho câu hỏi 7', NULL, 1, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(624, 29, 21, 41, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(625, 29, 1, NULL, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(626, 29, 59, NULL, 'Câu trả lời mẫu cho câu hỏi 59', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(627, 29, 58, NULL, 'Câu trả lời mẫu cho câu hỏi 58', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(628, 29, 68, 109, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(629, 29, 38, NULL, 'Câu trả lời mẫu cho câu hỏi 38', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(630, 29, 46, 68, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(631, 30, 60, NULL, 'Câu trả lời mẫu cho câu hỏi 60', NULL, 1, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(632, 30, 40, NULL, 'Câu trả lời mẫu cho câu hỏi 40', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(633, 30, 8, NULL, 'Câu trả lời mẫu cho câu hỏi 8', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(634, 30, 58, NULL, 'Câu trả lời mẫu cho câu hỏi 58', NULL, 1, 1.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(635, 30, 57, NULL, 'Câu trả lời mẫu cho câu hỏi 57', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(636, 30, 10, NULL, 'Câu trả lời mẫu cho câu hỏi 10', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(637, 30, 24, 56, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(638, 30, 36, NULL, 'Câu trả lời mẫu cho câu hỏi 36', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(639, 30, 35, NULL, 'Câu trả lời mẫu cho câu hỏi 35', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(640, 30, 59, NULL, 'Câu trả lời mẫu cho câu hỏi 59', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(641, 30, 39, NULL, 'Câu trả lời mẫu cho câu hỏi 39', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(642, 30, 49, 80, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(643, 30, 48, 73, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(644, 30, 46, 66, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(645, 30, 1, NULL, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(646, 30, 37, NULL, 'Câu trả lời mẫu cho câu hỏi 37', NULL, 1, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(647, 30, 25, 57, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(648, 30, 22, 45, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(649, 30, 47, 69, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(650, 30, 50, 83, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(651, 30, 38, NULL, 'Câu trả lời mẫu cho câu hỏi 38', NULL, 1, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(652, 30, 23, 50, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(653, 30, 7, NULL, 'Câu trả lời mẫu cho câu hỏi 7', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(654, 30, 26, 64, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(655, 30, 34, NULL, 'Câu trả lời mẫu cho câu hỏi 34', NULL, 1, 1.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(656, 30, 21, 41, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(657, 30, 9, NULL, 'Câu trả lời mẫu cho câu hỏi 9', NULL, 1, 1.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(658, 30, 4, NULL, 'Câu trả lời mẫu cho câu hỏi 4', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(659, 30, 56, NULL, 'Câu trả lời mẫu cho câu hỏi 56', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(660, 30, 11, NULL, 'Câu trả lời mẫu cho câu hỏi 11', NULL, 1, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(661, 31, 6, NULL, 'Câu trả lời mẫu cho câu hỏi 6', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(662, 31, 50, 81, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(663, 31, 34, NULL, 'Câu trả lời mẫu cho câu hỏi 34', NULL, 1, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(664, 31, 48, 73, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(665, 31, 46, 65, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(666, 31, 25, 57, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(667, 31, 49, 77, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(668, 31, 57, NULL, 'Câu trả lời mẫu cho câu hỏi 57', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(669, 31, 56, NULL, 'Câu trả lời mẫu cho câu hỏi 56', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(670, 31, 4, NULL, 'Câu trả lời mẫu cho câu hỏi 4', NULL, 1, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(671, 31, 26, 63, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(672, 31, 23, 51, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(673, 31, 40, NULL, 'Câu trả lời mẫu cho câu hỏi 40', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(674, 31, 58, NULL, 'Câu trả lời mẫu cho câu hỏi 58', NULL, 1, 1.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(675, 31, 47, 70, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(676, 31, 20, 37, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(677, 31, 39, NULL, 'Câu trả lời mẫu cho câu hỏi 39', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(678, 31, 35, NULL, 'Câu trả lời mẫu cho câu hỏi 35', NULL, 1, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(679, 31, 60, NULL, 'Câu trả lời mẫu cho câu hỏi 60', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(680, 31, 8, NULL, 'Câu trả lời mẫu cho câu hỏi 8', NULL, 1, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(681, 31, 9, NULL, 'Câu trả lời mẫu cho câu hỏi 9', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(682, 31, 1, NULL, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(683, 31, 22, 45, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(684, 31, 10, NULL, 'Câu trả lời mẫu cho câu hỏi 10', NULL, 1, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(685, 31, 68, 109, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(686, 31, 59, NULL, 'Câu trả lời mẫu cho câu hỏi 59', NULL, 1, 1.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(687, 31, 11, NULL, 'Câu trả lời mẫu cho câu hỏi 11', NULL, 1, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(688, 31, 38, NULL, 'Câu trả lời mẫu cho câu hỏi 38', NULL, 1, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(689, 31, 21, 43, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(690, 31, 7, NULL, 'Câu trả lời mẫu cho câu hỏi 7', NULL, 1, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(691, 32, 55, 102, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(692, 32, 2, 5, NULL, NULL, 0, 1.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(693, 32, 53, 95, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(694, 32, 54, 97, NULL, NULL, 0, 1.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(695, 32, 51, 85, NULL, NULL, 0, 1.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(696, 32, 52, 90, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(697, 32, 38, NULL, 'Câu trả lời mẫu cho câu hỏi 38', NULL, 1, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(698, 32, 9, NULL, 'Câu trả lời mẫu cho câu hỏi 9', NULL, 1, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(699, 32, 24, 53, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(700, 32, 22, 47, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(701, 33, 68, 109, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(702, 33, 11, NULL, 'Câu trả lời mẫu cho câu hỏi 11', NULL, 1, 1.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(703, 33, 39, NULL, 'Câu trả lời mẫu cho câu hỏi 39', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(704, 33, 4, NULL, 'Câu trả lời mẫu cho câu hỏi 4', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(705, 33, 37, NULL, 'Câu trả lời mẫu cho câu hỏi 37', NULL, 1, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(706, 33, 60, NULL, 'Câu trả lời mẫu cho câu hỏi 60', NULL, 1, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(707, 33, 22, 46, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(708, 33, 26, 61, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(709, 33, 6, NULL, 'Câu trả lời mẫu cho câu hỏi 6', NULL, 1, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(710, 33, 20, 37, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(711, 34, 60, NULL, 'Câu trả lời mẫu cho câu hỏi 60', NULL, 1, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(712, 34, 40, NULL, 'Câu trả lời mẫu cho câu hỏi 40', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(713, 34, 8, NULL, 'Câu trả lời mẫu cho câu hỏi 8', NULL, 1, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(714, 34, 58, NULL, 'Câu trả lời mẫu cho câu hỏi 58', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(715, 34, 57, NULL, 'Câu trả lời mẫu cho câu hỏi 57', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(716, 34, 10, NULL, 'Câu trả lời mẫu cho câu hỏi 10', NULL, 1, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(717, 34, 24, 54, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(718, 34, 36, NULL, 'Câu trả lời mẫu cho câu hỏi 36', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(719, 34, 35, NULL, 'Câu trả lời mẫu cho câu hỏi 35', NULL, 1, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(720, 34, 59, NULL, 'Câu trả lời mẫu cho câu hỏi 59', NULL, 1, 1.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(721, 34, 39, NULL, 'Câu trả lời mẫu cho câu hỏi 39', NULL, 1, 1.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(722, 34, 49, 77, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(723, 34, 48, 74, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(724, 34, 46, 67, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(725, 34, 1, NULL, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(726, 34, 37, NULL, 'Câu trả lời mẫu cho câu hỏi 37', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(727, 34, 25, 57, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(728, 34, 22, 48, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(729, 34, 47, 72, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(730, 34, 50, 83, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(731, 34, 38, NULL, 'Câu trả lời mẫu cho câu hỏi 38', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(732, 34, 23, 49, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(733, 34, 7, NULL, 'Câu trả lời mẫu cho câu hỏi 7', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(734, 34, 26, 63, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(735, 34, 34, NULL, 'Câu trả lời mẫu cho câu hỏi 34', NULL, 1, 1.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(736, 34, 21, 44, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(737, 34, 9, NULL, 'Câu trả lời mẫu cho câu hỏi 9', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(738, 34, 4, NULL, 'Câu trả lời mẫu cho câu hỏi 4', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(739, 34, 56, NULL, 'Câu trả lời mẫu cho câu hỏi 56', NULL, 1, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(740, 34, 11, NULL, 'Câu trả lời mẫu cho câu hỏi 11', NULL, 1, 1.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(741, 35, 20, 37, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(742, 35, 56, NULL, 'Câu trả lời mẫu cho câu hỏi 56', NULL, 1, 1.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(743, 35, 34, NULL, 'Câu trả lời mẫu cho câu hỏi 34', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(744, 35, 11, NULL, 'Câu trả lời mẫu cho câu hỏi 11', NULL, 1, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(745, 35, 26, 61, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(746, 35, 25, 57, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(747, 35, 22, 47, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(748, 35, 12, NULL, 'Câu trả lời mẫu cho câu hỏi 12', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(749, 35, 24, 56, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(750, 35, 60, NULL, 'Câu trả lời mẫu cho câu hỏi 60', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(751, 35, 39, NULL, 'Câu trả lời mẫu cho câu hỏi 39', NULL, 1, 1.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(752, 35, 40, NULL, 'Câu trả lời mẫu cho câu hỏi 40', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(753, 35, 49, 78, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(754, 35, 8, NULL, 'Câu trả lời mẫu cho câu hỏi 8', NULL, 1, 1.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(755, 35, 35, NULL, 'Câu trả lời mẫu cho câu hỏi 35', NULL, 1, 1.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(756, 35, 50, 81, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(757, 35, 48, 73, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(758, 35, 37, NULL, 'Câu trả lời mẫu cho câu hỏi 37', NULL, 1, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(759, 35, 36, NULL, 'Câu trả lời mẫu cho câu hỏi 36', NULL, 1, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(760, 35, 6, NULL, 'Câu trả lời mẫu cho câu hỏi 6', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(761, 35, 47, 72, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(762, 35, 57, NULL, 'Câu trả lời mẫu cho câu hỏi 57', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(763, 35, 7, NULL, 'Câu trả lời mẫu cho câu hỏi 7', NULL, 1, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(764, 35, 21, 44, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(765, 35, 1, NULL, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(766, 35, 59, NULL, 'Câu trả lời mẫu cho câu hỏi 59', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(767, 35, 58, NULL, 'Câu trả lời mẫu cho câu hỏi 58', NULL, 1, 1.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(768, 35, 68, 110, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(769, 35, 38, NULL, 'Câu trả lời mẫu cho câu hỏi 38', NULL, 1, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(770, 35, 46, 65, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(771, 36, 68, 112, NULL, NULL, 0, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(772, 36, 11, NULL, 'Câu trả lời mẫu cho câu hỏi 11', NULL, 1, 1.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(773, 36, 39, NULL, 'Câu trả lời mẫu cho câu hỏi 39', NULL, 1, 1.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(774, 36, 4, NULL, 'Câu trả lời mẫu cho câu hỏi 4', NULL, 1, 1.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(775, 36, 37, NULL, 'Câu trả lời mẫu cho câu hỏi 37', NULL, 1, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(776, 36, 60, NULL, 'Câu trả lời mẫu cho câu hỏi 60', NULL, 1, 1.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(777, 37, 68, 109, NULL, NULL, 0, 2.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(778, 37, 11, NULL, 'Câu trả lời mẫu cho câu hỏi 11', NULL, 1, 1.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(779, 37, 39, NULL, 'Câu trả lời mẫu cho câu hỏi 39', NULL, 1, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(780, 37, 4, NULL, 'Câu trả lời mẫu cho câu hỏi 4', NULL, 1, 0.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(781, 38, 60, NULL, 'Câu trả lời mẫu cho câu hỏi 60', NULL, 1, 1.00, NULL, '2025-04-29 23:47:15', '2025-04-29 23:47:15'),
(782, 57, 20, 37, NULL, NULL, 0, 1.00, NULL, '2025-04-30 00:43:07', '2025-04-30 00:43:07'),
(783, 57, 20, 37, NULL, NULL, 0, 1.00, NULL, '2025-04-30 00:48:15', '2025-04-30 00:48:15'),
(784, 57, 56, NULL, '{\"analysis\":\"oinjioufds\",\"solution\":\"d\\u00ecunisdbe\"}', 'situation', 0, 1.00, NULL, '2025-04-30 00:48:15', '2025-04-30 01:27:38'),
(785, 57, 34, NULL, '{\"process\":\"dsfsdfdf\",\"result\":null,\"evidence_file\":null}', 'practical', 0, 1.00, NULL, '2025-04-30 00:48:15', '2025-04-30 01:27:38'),
(786, 58, 56, NULL, '{\"analysis\":\"21bjh32j`ku\",\"solution\":\"bjhvyjhvjvh\"}', 'situation', 1, 0.00, NULL, '2025-04-30 01:05:51', '2025-04-30 01:17:08'),
(787, 58, 34, NULL, '{\"process\":\"bkbkbk\",\"result\":\"kbjkhbhk\",\"evidence_file\":null}', 'practical', 1, 0.00, NULL, '2025-04-30 01:05:51', '2025-04-30 01:17:08'),
(788, 58, 11, NULL, 'okokokok', NULL, 1, 0.00, NULL, '2025-04-30 01:05:51', '2025-04-30 01:17:08');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `answers_question_id_foreign` (`question_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `certificates_certificate_number_unique` (`certificate_number`),
  ADD KEY `certificates_user_id_foreign` (`user_id`),
  ADD KEY `certificates_test_id_foreign` (`test_id`),
  ADD KEY `certificates_test_attempt_id_foreign` (`test_attempt_id`),
  ADD KEY `certificates_issued_by_foreign` (`issued_by`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questions_position_id_foreign` (`position_id`),
  ADD KEY `questions_ship_type_id_foreign` (`ship_type_id`),
  ADD KEY `questions_created_by_foreign` (`created_by`),
  ADD KEY `questions_category_id_foreign` (`category_id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Chỉ mục cho bảng `ship_types`
--
ALTER TABLE `ship_types`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tests_position_id_foreign` (`position_id`),
  ADD KEY `tests_ship_type_id_foreign` (`ship_type_id`),
  ADD KEY `tests_created_by_foreign` (`created_by`),
  ADD KEY `tests_category_id_foreign` (`category_id`);

--
-- Chỉ mục cho bảng `test_attempts`
--
ALTER TABLE `test_attempts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `test_attempts_user_id_foreign` (`user_id`),
  ADD KEY `test_attempts_test_id_foreign` (`test_id`);

--
-- Chỉ mục cho bảng `test_questions`
--
ALTER TABLE `test_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `test_questions_test_id_foreign` (`test_id`),
  ADD KEY `test_questions_question_id_foreign` (`question_id`),
  ADD KEY `test_questions_test_attempt_id_foreign` (`test_attempt_id`);

--
-- Chỉ mục cho bảng `thuyen_viens`
--
ALTER TABLE `thuyen_viens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `thuyen_viens_user_id_foreign` (`user_id`),
  ADD KEY `thuyen_viens_position_id_foreign` (`position_id`),
  ADD KEY `thuyen_viens_ship_type_id_foreign` (`ship_type_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_seafarer_id_unique` (`seafarer_id`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Chỉ mục cho bảng `user_responses`
--
ALTER TABLE `user_responses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_responses_test_attempt_id_foreign` (`test_attempt_id`),
  ADD KEY `user_responses_question_id_foreign` (`question_id`),
  ADD KEY `user_responses_answer_id_foreign` (`answer_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `answers`
--
ALTER TABLE `answers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `certificates`
--
ALTER TABLE `certificates`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `positions`
--
ALTER TABLE `positions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `ship_types`
--
ALTER TABLE `ship_types`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `tests`
--
ALTER TABLE `tests`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `test_attempts`
--
ALTER TABLE `test_attempts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT cho bảng `test_questions`
--
ALTER TABLE `test_questions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- AUTO_INCREMENT cho bảng `thuyen_viens`
--
ALTER TABLE `thuyen_viens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `user_responses`
--
ALTER TABLE `user_responses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=789;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `certificates`
--
ALTER TABLE `certificates`
  ADD CONSTRAINT `certificates_issued_by_foreign` FOREIGN KEY (`issued_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `certificates_test_attempt_id_foreign` FOREIGN KEY (`test_attempt_id`) REFERENCES `test_attempts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `certificates_test_id_foreign` FOREIGN KEY (`test_id`) REFERENCES `tests` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `certificates_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `questions_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `questions_position_id_foreign` FOREIGN KEY (`position_id`) REFERENCES `positions` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `questions_ship_type_id_foreign` FOREIGN KEY (`ship_type_id`) REFERENCES `ship_types` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `tests`
--
ALTER TABLE `tests`
  ADD CONSTRAINT `tests_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `tests_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tests_position_id_foreign` FOREIGN KEY (`position_id`) REFERENCES `positions` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `tests_ship_type_id_foreign` FOREIGN KEY (`ship_type_id`) REFERENCES `ship_types` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `test_attempts`
--
ALTER TABLE `test_attempts`
  ADD CONSTRAINT `test_attempts_test_id_foreign` FOREIGN KEY (`test_id`) REFERENCES `tests` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `test_attempts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `test_questions`
--
ALTER TABLE `test_questions`
  ADD CONSTRAINT `test_questions_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `test_questions_test_attempt_id_foreign` FOREIGN KEY (`test_attempt_id`) REFERENCES `test_attempts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `test_questions_test_id_foreign` FOREIGN KEY (`test_id`) REFERENCES `tests` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `thuyen_viens`
--
ALTER TABLE `thuyen_viens`
  ADD CONSTRAINT `thuyen_viens_position_id_foreign` FOREIGN KEY (`position_id`) REFERENCES `positions` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `thuyen_viens_ship_type_id_foreign` FOREIGN KEY (`ship_type_id`) REFERENCES `ship_types` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `thuyen_viens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `user_responses`
--
ALTER TABLE `user_responses`
  ADD CONSTRAINT `user_responses_answer_id_foreign` FOREIGN KEY (`answer_id`) REFERENCES `answers` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `user_responses_question_id_foreign` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_responses_test_attempt_id_foreign` FOREIGN KEY (`test_attempt_id`) REFERENCES `test_attempts` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
