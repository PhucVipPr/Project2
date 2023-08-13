-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 13, 2023 at 06:02 PM
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
-- Database: `demo1`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `address_id` int(11) NOT NULL,
  `address_dt` varchar(255) DEFAULT NULL,
  `fee` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`address_id`, `address_dt`, `fee`) VALUES
(1, 'Miền Bắc', '50000'),
(2, 'Miền Nam', '100000'),
(3, 'Miền Trung', '200000');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `cart_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` varchar(10) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cate_id` int(11) NOT NULL,
  `cate_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cate_id`, `cate_name`) VALUES
(1, 'Whey Protein'),
(2, 'Sữa tăng cân'),
(3, 'BCAAs, EAAs'),
(4, 'Pre-Workout,Creatine'),
(5, 'Vitamin,khoáng chất'),
(6, 'Giảm mỡ');

-- --------------------------------------------------------

--
-- Table structure for table `flavors`
--

CREATE TABLE `flavors` (
  `flavor_id` int(11) NOT NULL,
  `flavor_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flavors`
--

INSERT INTO `flavors` (`flavor_id`, `flavor_name`) VALUES
(1, 'Chocolate'),
(2, 'Strawberry'),
(3, 'Vanila'),
(4, 'Cookie\'s cream'),
(5, 'Rocky rode');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `image_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`image_id`, `product_id`, `url`) VALUES
(2, 1, 'https://bizweb.dktcdn.net/thumb/grande/100/011/344/products/vitaxtrong-iso-pro-5lbs-hydrolyzed-whey-protein-isolate-tang-co-bap-gymstore.jpg?v=1672388398837'),
(3, 2, 'https://bizweb.dktcdn.net/thumb/grande/100/011/344/products/vitaxtrong-iso-pro-2lbs-hydrolyzed-whey-protein-isolate-tang-co-bap-gymstore.jpg?v=1672732385907'),
(4, 3, 'https://bizweb.dktcdn.net/thumb/1024x1024/100/011/344/products/protein3.jpg?v=1654611175213'),
(5, 4, 'https://bizweb.dktcdn.net/thumb/grande/100/011/344/products/pvl-whey-gold-tieu-chuan-protein-blend-gymstore.jpg?v=1638590579957'),
(6, 5, 'https://bizweb.dktcdn.net/thumb/grande/100/011/344/products/vitamin2.jpg?v=1639710175497'),
(7, 6, 'https://bizweb.dktcdn.net/thumb/grande/100/011/344/products/mutant-multi-vitamin-60-tablets-vitamin-tong-hop-gymstore.jpg?v=1641197559030'),
(8, 7, 'https://bizweb.dktcdn.net/thumb/grande/100/011/344/products/jym-supplement-science-shred-jym-fat-burner-240-v-capsules.jpg?v=1641198079777'),
(9, 8, 'https://bizweb.dktcdn.net/thumb/grande/100/011/344/products/anh-3.jpg?v=1638325637820'),
(10, 9, 'https://bizweb.dktcdn.net/thumb/grande/100/011/344/products/beyond-isolate-ultra-premium-high-quality-whey-protein-isolate-1-9-lbs-30-servings-blue-freeze-gymstore.jpg?v=1670230197503'),
(11, 10, 'https://bizweb.dktcdn.net/thumb/grande/100/011/344/products/perfect-sport-hulk-clean-masss-gainer-10-lbs-banana-gymstore.jpg?v=1670232070297'),
(12, 11, 'https://bizweb.dktcdn.net/thumb/grande/100/011/344/products/labrada-muscle-mass-gainer-12-lbs-chocolate-gymstore.jpg?v=1659151096267'),
(13, 12, 'https://bizweb.dktcdn.net/thumb/grande/100/011/344/products/2def6e89-3a8f-4fcb-8eea-0d81c63328df.jpg?v=1648575109937'),
(14, 13, 'https://bizweb.dktcdn.net/thumb/grande/100/011/344/products/kevin-levrone-gold-lean-mass-6kg-30-servings-gymstore.jpg?v=1655520772563'),
(15, 14, 'https://bizweb.dktcdn.net/thumb/grande/100/011/344/products/anh4-62d11c56-601b-4536-bc6e-ed5198973e90.jpg?v=1638325453150'),
(16, 15, 'https://bizweb.dktcdn.net/thumb/grande/100/011/344/products/muscletech-mass-tech-extreme-2000-22-lbs-triple-chocolate-brownie-gymstore.jpg?v=1659151470967'),
(17, 16, 'https://bizweb.dktcdn.net/thumb/1024x1024/100/011/344/products/mutant-mass-15lbs-trippe-chocolate.png?v=1675065258613'),
(18, 17, 'https://bizweb.dktcdn.net/thumb/grande/100/011/344/products/325023594-1246781555904629-595402955060081951-n.jpg?v=1673579277317'),
(19, 18, 'https://bizweb.dktcdn.net/thumb/grande/100/011/344/products/bcaa-1.jpg?v=1638344473590'),
(20, 19, 'https://bizweb.dktcdn.net/thumb/grande/100/011/344/products/mutant-bcaa-30serving-blue-raspberry-phuc-hoi-co-bap-gymstore.jpg?v=1639125284240'),
(21, 20, 'https://bizweb.dktcdn.net/thumb/grande/100/011/344/products/scivation-xtend-bcaa-blue-raspberry-ice-30-serving-gymstore.jpg?v=1639125148040'),
(22, 21, 'https://bizweb.dktcdn.net/thumb/grande/100/011/344/products/hydro-bcaa7.jpg?v=1647250249017'),
(23, 22, 'https://bizweb.dktcdn.net/thumb/grande/100/011/344/products/fa-ice-pump-pre-workout-25-servings-ice-dragon-fruit-gymstore.jpg?v=1654587258867'),
(24, 23, 'https://bizweb.dktcdn.net/thumb/grande/100/011/344/products/cellucor-c-4-g4-original-60-servings.jpg?v=1663575852923'),
(25, 24, 'https://bizweb.dktcdn.net/thumb/grande/100/011/344/products/applied-nutrition-pre-workout-abe-tang-suc-manh-hieu-qua-energy-gymstore.jpg?v=1640165733963'),
(26, 25, 'https://bizweb.dktcdn.net/thumb/grande/100/011/344/products/total-01.jpg?v=1666841916077'),
(27, 26, 'https://bizweb.dktcdn.net/thumb/grande/100/011/344/products/fa-omega-3-d3-k2-900x900.jpg?v=1672736879957'),
(28, 27, 'https://bizweb.dktcdn.net/thumb/grande/100/011/344/products/codeage-liposomal-magnesium-glycinate-240-capsules-gymstore.jpg?v=1668150183700'),
(29, 28, 'https://bizweb.dktcdn.net/thumb/grande/100/011/344/products/1f-2.jpg?v=1641199025740'),
(30, 29, 'https://bizweb.dktcdn.net/thumb/grande/100/011/344/products/105ef972-8512-4c72-8910-20bd81a54280.jpg?v=1663234297547'),
(31, 30, 'https://bizweb.dktcdn.net/thumb/grande/100/011/344/products/universal-animal-cuts-gymstore.jpg?v=1654768074563');

-- --------------------------------------------------------

--
-- Table structure for table `imports`
--

CREATE TABLE `imports` (
  `import_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `import_price` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `imports`
--

INSERT INTO `imports` (`import_id`, `product_id`, `import_price`) VALUES
(1, 1, '2000000'),
(2, 2, '1000000'),
(3, 3, '900000'),
(4, 4, '1200000'),
(5, 5, '200000'),
(6, 6, '450000'),
(7, 7, '500000'),
(8, 8, '500000'),
(9, 9, '750000'),
(10, 10, '1500000'),
(11, 11, '1600000'),
(12, 12, '1400000'),
(13, 13, '1700000'),
(14, 14, '1750000'),
(15, 15, '2500000'),
(16, 16, '2000000'),
(17, 17, '500000'),
(18, 18, '400000'),
(19, 19, '500000'),
(20, 20, '550000'),
(21, 21, '1250000'),
(22, 22, '600000'),
(23, 23, '790000'),
(24, 24, '500000'),
(25, 25, '650000'),
(26, 26, '500000'),
(27, 27, '1100000'),
(28, 28, '550000'),
(29, 29, '650000'),
(30, 30, '1000000');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_name` varchar(50) DEFAULT NULL,
  `order_phone` varchar(10) DEFAULT NULL,
  `order_address` varchar(50) DEFAULT NULL,
  `order_status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `order_name`, `order_phone`, `order_address`, `order_status`) VALUES
(77, 2, 'PT', '0123456789', 'Miền Nam', 3),
(78, 2, 'PT', '0123456789', 'Miền Nam', NULL),
(79, 2, 'PT', '0123456789', 'Miền Nam', 2),
(81, 2, 'PT', '0123456789', 'Miền Nam', NULL),
(82, 2, 'PT', '0123456789', 'Miền Nam', 2),
(83, 2, 'PT', '0123456789', 'Miền Nam', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `orderDt_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`orderDt_id`, `order_id`, `product_id`, `quantity`, `price`) VALUES
(222, 77, 1, 1, '2500000'),
(223, 78, 2, 1, '1200000'),
(224, 79, 10, 1, '1690000'),
(225, 81, 2, 1, '1200000'),
(226, 82, 1, 1, '2500000'),
(227, 82, 3, 1, '1150000'),
(228, 83, 11, 2, '1800000');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_code` varchar(50) DEFAULT NULL,
  `product_name` varchar(50) DEFAULT NULL,
  `product_info` longtext DEFAULT NULL,
  `cate_id` int(11) DEFAULT NULL,
  `quantity` varchar(50) DEFAULT NULL,
  `info_dt` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_code`, `product_name`, `product_info`, `cate_id`, `quantity`, `info_dt`) VALUES
(1, '859072007437', 'VitaXtrong ISO PRO 5lbs', '<p><strong>ĐẶC ĐIỂM NỔI BẬT</strong></p><p><strong>VitaXtrong ISO Pro</strong> là một trong những dòng sữa tăng cơ tinh khiết nhất hiện nay với công thức 100% Whey Protein Hydrolyzed hấp thu nhanh. Đồng thời được áp dụng công nghệ tiên tiến nhất để cho ra sản phẩm hoàn toàn không chứa đường lactose, gluten hay chất béo bão hòa.</p><p>&nbsp;</p><p><img src=\"https://bizweb.dktcdn.net/100/011/344/files/vitaxtrong-iso-pro-5lbs-hydrolyzed-whey-protein-isolate-cong-thuc-tang-co-tinh-khiet-gymstore.jpg?v=1672388439865\" alt=\"vitaxtrong-iso-pro-5lbs-hydrolyzed-whey-protein-isolate-cong-thuc-tang-co-tinh-khiet-gymstore\"></p>', 1, '0', '<h2><strong>THÀNH PHẦN&nbsp;CÓ TRONG VITAXTRONG ISO PRO</strong></h2><p>&nbsp;</p><figure class=\"table\"><table><tbody><tr><td>Nguồn protein</td><td>100% Hydrolyzed Whey Protein Isolate</td></tr><tr><td>Thành phần</td><td>27G Protein; 1G Carb; 0.5G Fat</td></tr><tr><td>Xuất xứ</td><td>VitaXtrong - Mỹ</td></tr><tr><td>Đóng gói</td><td>5Lbs - 66 lần dùng</td></tr></tbody></table></figure>'),
(2, 'PVN3011', 'VitaXtrong ISO PRO 2lbs', '<p><strong>ĐẶC ĐIỂM NỔI BẬT</strong></p><p>VitaXtrong ISO Pro là một trong những dòng sữa tăng cơ tinh khiết nhất hiện nay với công thức 100% Whey Protein Hydrolyzed hấp thu nhanh. VitaXtrong ISO Pro 2lbs là phiên bản túi nhỏ, thích hợp để dùng thử và tiện lợi để mang đi.&nbsp;</p><p>&nbsp;</p><p><img src=\"https://bizweb.dktcdn.net/100/011/344/files/vitaxtrong-iso-pro-2lbs-hydrolyzed-whey-protein-isolate-cong-thuc-tang-co-tinh-khiet-gymstore.jpg?v=1672732518432\" alt=\"vitaxtrong-iso-pro-2lbs-hydrolyzed-whey-protein-isolate-cong-thuc-tang-co-tinh-khiet-gymstore\"></p>', 1, '3', '<h2><strong>THÀNH PHẦN&nbsp;CÓ TRONG WHEY PROTEIN VITAXTRONG ISO PRO</strong></h2><p>&nbsp;</p><figure class=\"table\"><table><tbody><tr><td>Nguồn protein</td><td>100% Hydrolyzed Whey Protein Isolate</td></tr><tr><td>Thành phần</td><td>27G Protein; 1G Carb; 0.5G Fat</td></tr><tr><td>Xuất xứ</td><td>VitaXtrong - Mỹ</td></tr><tr><td>Đóng gói</td><td>2Lbs - 26 lần dùng</td></tr></tbody></table></figure><p>&nbsp;</p>'),
(3, '0658556043783', 'Whey Protein Hydrolysed', '<p><strong>ĐẶC ĐIỂM NỔI BẬT</strong></p><p>Một dòng Whey Protein cung cấp tới 21g Protein từ nguồn Hydrolysed Whey Protein với tỉ lệ Protein chiếm tới 95% tổng Calories trong mỗi Serving, đó chính là những con số trong bảng thành phần của <strong>Applied Nutrition Clear Whey Protein</strong> mang tới cho bạn. Một dòng Whey Protein đúng chuẩn định nghĩa tinh khiết hoàn toàn.&nbsp;</p><p>&nbsp;</p><p><img src=\"https://bizweb.dktcdn.net/100/011/344/files/clear-whey.jpg?v=1651635087809\" alt=\"applied-clear-whey-protein\"></p><p>&nbsp;</p><h2><strong>APPLIED CLEAR WHEY PROTEIN - NGUỒN PROTEIN TINH KHIẾT NHẤT BẠN TỪNG BIẾT</strong></h2><p>&nbsp;</p><p>Clear Whey Protein của Applied Nutrition không phải là sản phẩm kết hợp các nguồn Protein khác nhau mà đơn giản sản phẩm chỉ chứa đúng một nguồn Protein duy nhất đó chính là: Hydrolysed Whey Protein Isolate hoàn toàn tinh khiết tới mức không thể nào tinh khiết hơn khi tỉ lệ bột Protein chiếm tới 95% trong mỗi Serving.&nbsp;</p><p>&nbsp;</p><p>Clear Whey Protein là một sản phẩm hoàn hảo để phục vụ việc duy trì và phát triển cơ bắp hiệu quả nhất khi cung cấp 21g Protein đi kèm với đó 5g BCAA hỗ trợ tổng hợp Protein, phục hồi cơ bắp hiệu quả hơn. Đồng thời, nhờ vào sự tinh khiết của sản phẩm, Clear Whey Protein phù hợp với mọi cơ địa, thể chất, giới tính, độ tuổi đều có thể sử dụng sản phẩm một cách dễ dàng, an toàn và hiệu quả.&nbsp;</p><p>&nbsp;</p>', 1, '2', '<h2><strong>THÀNH PHẦN CỦA APPLIED CLEAR WHEY PROTEIN</strong></h2><p>&nbsp;</p><figure class=\"table\"><table><tbody><tr><td>Thành phần</td><td>Hydrolyzed Whey Protein</td></tr><tr><td>Protein</td><td>21.27 gram</td></tr><tr><td>Xuất xứ</td><td>UK&nbsp;</td></tr><tr><td>Thương hiệu</td><td>Applied Nutrition</td></tr></tbody></table></figure><p>&nbsp;</p>'),
(4, '627933620015', 'PVL Whey Gold', '<p><strong>ĐẶC ĐIỂM NỔI BẬT</strong></p><p><strong>PVL Whey Gold</strong> là sản phẩm đã đặt ra một tiêu chuẩn mới của Whey Protein Blend. Với công thức được cải tiến, loại bỏ hoàn toàn nguồn protein chất lượng thấp, PVL Whey Gold có khả năng hấp thụ nhanh hơn, hỗ trợ xây dựng cơ bắp lên mức tối đa.<br>&nbsp;</p><p><img src=\"https://file.hstatic.net/1000146087/file/pvl-whey-gold-tieu-chuan-protein-blend-gymstore-234_f4677cfbcb2e4f3489369ad57aca10c1.jpg\" alt=\"Pvl-Whey-Gold-tieu-chuan-protein-blend-gymstore-234\"></p><p>&nbsp;</p><h2><strong>PVL WHEY GOLD - TIÊU CHUẨN PROTEIN BLEND SIÊU TINH KHIẾT&nbsp;</strong></h2><p>&nbsp;</p><p><strong>PVL WHEY GOLD</strong> nâng mức tiêu chuẩn Protein Blend lên tâng cao mới. Công thức tiên tiến của PVL sạch hơn và hấp thụ nhanh hơn các nguồn protein kém chất lượng. Rất đơn giản, để giúp bạn có thể đạt được mục tiêu của mình sớm hơn!</p><p>&nbsp;</p><p><strong>PVL WHEY GOLD</strong> sản xuất Protein với các loại whey protein đã qua xử lý lạnh, được vi lọc từ các nguồn sữa loại A được cho ăn cỏ và không chứa hormone.&nbsp;</p><p>&nbsp;</p><p>Đi cùng với công nghệ đặc biệt, PVL WHEY GOLD bổ sung các enzyme để cải thiện tiêu hóa cũng như hấp thụ Whey Protein tốt hơn. Đi cùng với 2 hương vị đặc trưng và ngon nhất của hãng đó chính là: Vanilla Soft Serve Supreme và Triple Chocolate Brownie Overload mang lại cho bạn một trải nghiệm hương vị đỉnh hơn bao giờ hết.&nbsp;</p>', 1, '0', '<h3><strong>THÀNH PHẦN CÓ TRONG PVL WHEY GOLD</strong></h3><p>&nbsp;</p><figure class=\"table\"><table><tbody><tr><td>Thành phần</td><td>Whey Concentrate + Isolate + Hydrolysate</td></tr><tr><td>Protein</td><td>24G Protein/Serving</td></tr><tr><td>Amino acids</td><td>15G EAAs</td></tr><tr><td>Thương hiệu</td><td>PVL</td></tr><tr><td>Xuất xứ</td><td>Canada</td></tr></tbody></table></figure>'),
(5, 'X001OEJPNF', 'Bronson Vitamin', '<p><strong>ĐẶC ĐIỂM NỔI BẬT</strong></p><p><strong>Bronson Vitamin K2+D3&nbsp;</strong>là giải pháp 2 trong 1 bổ sung kết hợp Vitamin D3 và Vitamin K2, hỗ trợ tăng hấp thụ và chuyển hóa canxi vào xương, thúc đẩy sức khỏe xương khớp. Ngoài ra, Bronson Vitamin K2+D3&nbsp;còn có tác dụng tăng cường sức khỏe toàn diện.</p><p>&nbsp;</p><p><img src=\"https://bizweb.dktcdn.net/100/011/344/files/d3k2.jpg?v=1588145357155\" alt=\"Bronson-Vitamin-D3-K2-ho-tro-bao-ve-xuong-khop-gymstore\"></p><p>&nbsp;</p><h2><strong>BRONSON VITAMIN K2+D3 - HỖ TRỢ BẢO VỆ XƯƠNG KHỚP HIỆU QUẢ</strong></h2><p>&nbsp;</p><p><strong>Bronson Vitamin K2+D3</strong> cung cấp hàm lượng cao từng loại vitamin cần thiết để tối đa hóa lợi ích của chúng đối với xương và tim của bạn.&nbsp;</p><p>&nbsp;</p><p>Vitamin D (cụ thể là D3, dạng Vitamin D bạn nhận được từ ánh nắng mặt trời) rất cần thiết để tối đa hóa hấp thụ canxi vào xương. Không có Vitamin D3, cơ thể có thể không hấp thụ được hết lượng canxi tiêu thụ. Tuy nhiên, hầu hết mọi người chỉ bắt đầu dùng Vitamin D3 sau khi họ gặp phải những triệu chứng của sự thiếu hụt loại Vitamin này.</p><p>&nbsp;</p><p><strong>Vitamin D3</strong> nếu được kết hợp với <strong>Vitamin K2</strong> sẽ tối đa hóa lợi ích mà cơ thể có được từ canxi. Mặc dù Vitamin D đảm bảo rằng canxi được hấp thụ, Vitamin K2 (cụ thể là MK-7, dạng sinh khả dụng nhất) hướng nó đến các khu vực của cơ thể như xương, vì vậy nó có thể được sử dụng ở đúng chỗ. Không có Vitamin K2, canxi được hấp thụ có thể được lắng đọng trong động mạch, có thể dẫn đến vôi hóa hoặc các vấn đề khác.</p><p>&nbsp;</p><p>Tóm lại, <strong>Bronson Vitamin K2 + D3</strong> thực sự là cặp đôi hoàn hảo. Nếu bạn muốn tăng cường sức khỏe của xương thì chắc chắn bạn không thể bỏ quả Bronson K2+D3.</p><p>&nbsp;</p><p>=&gt; Các sản phẩm tương tự hỗ trợ sức khỏe toàn diện: <a href=\"https://gymstore.vn/vitamin-mineral\">Vitamin &amp; Khoáng chất</a></p><p>&nbsp;</p><h3><strong>BRONSON VITAMIN K2+D3&nbsp;CÓ XUẤT XỨ TỪ ĐÂU?</strong></h3><p>&nbsp;</p><p>Bronson Vitamin K2+D3 là sản phẩm của thương hiệu Bronson - hãng Thực phẩm dành cho sức khỏe được thành lập năm 1960. Với 60 năm xây dựng và phát triển, Bronson luôn là một trong những thương hiệu tiên phong và nhạy bén với sự đổi mới, hãng luôn nỗ lực để đem lại những sản phẩm tốt nhất đến tay người tiêu dùng.</p><p>&nbsp;</p><p>Một số sản phẩm Bronson rất được ưa chuộng như Bronson NAC, Bronson Vitamin B12,..</p>', 5, '0', '<h3><strong>THÀNH PHẦN CÓ TRONG BRONSON VITAMIN K2+D3</strong></h3><p>&nbsp;</p><figure class=\"table\"><table><tbody><tr><td>Thành phần</td><td>5000 IU D3 &amp; 90mcg K2 as MK7</td></tr><tr><td>Đóng gói</td><td>60 viên | 120 viên |&nbsp;250 viên</td></tr><tr><td>Thương hiệu</td><td>Bronson</td></tr><tr><td>Xuất xứ</td><td>Mỹ</td></tr></tbody></table></figure><p>&nbsp;</p>'),
(6, '627933025902', 'MUTANT Multi Vitamin', '<p><strong>ĐẶC ĐIỂM NỔI BẬT</strong></p><p><strong>Mutant Multi</strong> là giải pháp Vitamin tổng hợp, cung cấp nhiều loại Vitamin và khoáng chất thiết yếu với cơ thể như Vitamin A, Vitamin B, Canxi, Kẽm,... Mutant Multi được thiết kế với các thành phần có nguồn gốc tự nhiên và dễ hấp thu, mang lại hiệu quả nhanh.</p><p>&nbsp;</p><p><img src=\"https://bizweb.dktcdn.net/100/011/344/files/mutant-multi-vitamin-tong-hop-gymstore.jpg?v=1651057811692\" alt=\"mutant-multi-vitamin-tong-hop-gymstore\"></p><p>&nbsp;</p><h2><strong>MUTANT MULTI - CUNG CẤP VITAMIN TỔNG HỢP CHO SỨC KHỎE TOÀN DIỆN</strong></h2><p>&nbsp;</p><p><strong>MUTANT MULTI</strong> là một công thức kết hợp 75 thành phần dưỡng chất quan trọng với cơ thể, được thiết kế dành cho tất cả mọi người, đặc biệt là những ai đam mê tập luyện. Nghiên cứu đã chứng minh rằng việc tập luyện cường độ cao dễ khiến chúng ta rơi vào tình trạng thiếu hụt các vitamin và khoáng chất quan trọng.</p><p>&nbsp;</p><p><strong>MUTANT MULTI </strong>được thiết kế để bổ sung vào chế độ ăn uống của bạn các vitamin, khoáng chất, chất điện giải, các chất chống oxy hóa, men tiêu hóa, rau xanh và các chất tối ưu hóa hiệu suất tập luyện. Thiết lập nền tảng dinh dưỡng của bạn bằng công thức dễ sử dụng, dùng một lần mỗi ngày để đạt hiệu quả cao.</p>', 5, '4', '<h2><strong>THÀNH PHẦN DINH DƯỠNG CỦA MUTANT MULTI</strong></h2><p>&nbsp;</p><figure class=\"table\"><table><tbody><tr><td>Thành phần chính</td><td>Vitamin A, B, C, D, Calcium, Magnesium, Zinc</td></tr><tr><td>Đóng gói</td><td>60 viên (30 lần dùng)</td></tr><tr><td>Thương hiệu</td><td>Mutant</td></tr><tr><td>Xuất xứ</td><td>Canada</td></tr></tbody></table></figure>'),
(7, '374989NHHG', 'JYM Supplement Science', '<p><strong>ĐẶC ĐIỂM NỔI BẬT</strong></p><p><strong>Omega JYM</strong> là sản phẩm dầu cá độc quyền của JYM Nutrition, cung cấp hàm lượng thích hợp của ba axit béo omega-3 quan trọng: axit docosahexaenoic (DHA), axit eicosapentaenoic (EPA) và axit docosapentaenoic (DPA).</p><p>&nbsp;</p><p>Chất béo omega-3 có thể giúp tăng cường sức khỏe tim mạch, thúc đẩy các khớp khỏe mạnh và tăng cường sức khỏe tổng thể. &nbsp;</p><p>&nbsp;</p><p><img src=\"https://bizweb.dktcdn.net/100/011/344/files/jym-omega.jpg?v=1587063515247\" alt=\"JYM-OMEGA-3-bổ-sung-nguồn-chất-béo-tốt-gymstore\"></p><p>&nbsp;</p><h2><strong>JYM OMEGA - NGUỒN DẦU CÁ CHẤT LƯỢNG NHẤT</strong></h2><p>&nbsp;</p><p>Mặc dù một số loại dầu cá cung cấp một lượng EPA dồi dào, nhưng một số sản phẩm Omega-3 lại không cung cấp nhiều DHA cho mỗi lần dùng như <strong>JYM Omega 3</strong>. Điều đó thực sự không tốt vì DHA, hay axit docosahexaenoic, là axit béo Omega-3 quan trọng. Trên thực tế, sự kết hợp giữa DHA và EPA là điều cần thiết nếu bạn muốn nhận được tất cả những lợi ích tuyệt vời mà Axit béo omega-3 có thể mang lại.&nbsp;</p><p>&nbsp;</p><p>Chất béo Omega-3 có thể giúp giảm nguy cơ mắc bệnh tim và bệnh mạch vành khi tập thể dục cường độ cao. Chúng cũng hỗ trợ não và chức năng khớp khỏe mạnh. Nhưng đối với những người tập luyện, điều đặc biệt là nghiên cứu hiện tại cho thấy dầu cá có thể giúp thúc đẩy tăng trưởng cơ bắp và hỗ trợ giảm béo - khi loại dầu cá đó cung cấp liều lượng thích hợp của DHA. Liều lượng đó là 1500 mg DHA mỗi ngày với liều tương đương EPA, hoặc axit eicosapentaenoic.</p><p>&nbsp;</p><h3><strong>JYM OMEGA 3 CÓ XUẤT XỨ TỪ ĐÂU?</strong></h3><p>&nbsp;</p><p>JYM Omega 3 là dòng sản phẩm dầu cá cao cấp của hãng JYM Nutrition, thương hiệu Thực phẩm bổ sung được thành lập bởi Tiến sĩ Jim Stoppani. JYM Nutrition luôn cố gắng cải tiến sản phẩm của mình để mang lại những sản phẩm chất lượng và độc đáo nhất. Những sản phẩm của JYM quen mặt với người tiêu dùng có thể kể đến như: JYM Vita, Pre JYM, JYM Alpha,...</p>', 5, '6', '<p>&nbsp;</p><h2><strong>THÀNH PHẦN CÓ TRONG JYM OMEGA3</strong></h2><p>&nbsp;</p><figure class=\"table\"><table><tbody><tr><td>Omega3</td><td>2800mg</td></tr><tr><td>Hàm lượng</td><td>750mg EPA, 750mg DHA, 150mg DPA&nbsp;</td></tr><tr><td>Đóng gói</td><td>120 viên (60 lần dùng)</td></tr><tr><td>Thương hiệu</td><td>JYM Nutrition&nbsp;</td></tr><tr><td>Xuất xứ</td><td>Mỹ</td></tr></tbody></table></figure><p>&nbsp;</p>'),
(8, '7864HJWI', 'Nutrex Lipo-6', '<p><strong>ĐẶC ĐIỂM NỔI BẬT</strong></p><p>Lipo-6 Maximum Strength là sản phẩm có công thức đốt mỡ cực đỉnh nhờ công nghệ viên nang lỏng, giúp thẩm thấu cực nhanh. Dòng Fat Burner này hỗ trợ giảm cân nhanh nhưng an toàn và lành mạnh với chiết xuất 100% tự nhiên.</p><p>&nbsp;</p><p><img src=\"https://bizweb.dktcdn.net/100/011/344/files/nutrex-lipo-6-maximum-strength-dot-mo-tot-nhat-gymstore.jpg?v=1649826774044\" alt=\"nutrex-lipo-6-maximum-strength-dot-mo-tot-nhat-gymstore\"></p><p>&nbsp;</p><h2>LIPO-6 MAXIMUM STRENGTH - CÔNG THỨC ĐỐT MỠ CỰC NHANH</h2><p>&nbsp;</p><p>Lipo-6 Maximum Strength là sản phẩm giảm cân, đốt mỡ có khả năng hấp thu nhanh chóng nhờ việc được chiết xuất dưới dạng viên nang mềm, còn được gọi là gel lỏng, chứa các hoạt chất trong gelatin, dễ tiêu hóa và có khả năng hấp thu nhanh hơn các viên nang cứng.</p><p>&nbsp;</p><p>Lipo-6 Maximum Strength có thành phần tự nhiên, trong đó là Caffeine, Synephrine HCL (synephrine hydrochloride), Guggulsterone, Yohimbine HCL và chiết xuất hạt tiêu đen (BioPerine) giúp tăng khả năng hấp thu của các hoạt chất nói trên.</p><p>&nbsp;</p><h2>LIPO-6 MAXIMUM STRENGTH CÓ NGUỒN GỐC TỪ ĐÂU?</h2><p>&nbsp;</p><p>Lipo-6 Maximum Strength là sản phẩm của hãng Nutrex Research, được thành lập vào năm 2002 và hoạt động trên cơ sở hiện đại rộng 80.000 mét vuông của riêng mình ở Oviedo, Trung Florida.&nbsp;</p><p>&nbsp;</p><p>Các sản phẩm chất lượng của Nutrex quen mặt với người tiêu dùng có thể kể đến như Pre-workout Outlift, các dòng Fat Burner với tác dụng mạnh mẽ như Lipo 6 black, Lipo RX, Lipo Stim free,...</p>', 6, '6', '<h2>THÀNH PHẦN CÓ TRONG LIPO-6 MAXIMUM STRENGTH</h2><p>&nbsp;</p><figure class=\"table\"><table><tbody><tr><td>Thành phần&nbsp;</td><td>200mg Caffeine Anhydrous USP<br>20mg Synephrine HCL<br>20mg Guggulsterone<br>5mg BioPerine<br>3mg Yohimbine HCL</td></tr><tr><td>Đóng gói</td><td>120 viên nang mềm (60 lần dùng)</td></tr><tr><td>Thương hiệu</td><td>Nutrex Research</td></tr><tr><td>Xuất xứ</td><td>Mỹ</td></tr></tbody></table></figure><p><br>&nbsp;</p>'),
(9, '666873999973', 'Beyond Isolate', '<p><strong>ĐẶC ĐIỂM NỔI BẬT</strong></p><p>Sữa tăng cơ Hormone-Free <strong>Beyond Isolate</strong> là dòng Whey Protein Isolate có giá trị sinh học cao nhất và được chiết xuất từ nguồn sữa bò chăn thả tự nhiên tại Canada. Đảm bảo không có dư lượng hormone và kháng sinh, 100% an toàn để sử dụng.</p><p>&nbsp;</p><p><img src=\"https://bizweb.dktcdn.net/100/011/344/files/beyond-isolate-whey-protein-isolate-sua-tang-co-hormone-free-gymstore-8c8b234d-0e11-4b6d-9005-398a2611feaa.jpg?v=1670491166410\" alt=\"beyond-isolate-whey-protein-isolate-sua-tang-co-hormone-free-gymstore\"></p>', 1, '10', '<h2><strong>THÀNH PHẦN&nbsp;CÓ TRONG SỮA TĂNG CƠ BEYOND ISOLATE</strong></h2><p>&nbsp;</p><figure class=\"table\"><table><tbody><tr><td>Nguồn protein</td><td>100% Whey Protein Isolate</td></tr><tr><td>Thành phần</td><td>26g Protein; 1g Carb; 1.5g Fat; 0g Sugar</td></tr><tr><td>Xuất xứ</td><td>Beyond - Canada</td></tr><tr><td>Đóng gói</td><td>1.9lbs - 30 lần dùng</td></tr></tbody></table></figure>'),
(10, '699097754295', 'Perfect Sport HULK Clean Mass Gainer', '<p><strong>ĐẶC ĐIỂM NỔI BẬT</strong></p><p>Hulk Clean Mass Gainer là dòng sữa tăng cân nhanh nhưng cung cấp hàm lượng protein cao giúp tăng cân vượt trội nhưng vẫn tăng cơ hiệu quả. Cùng với 14 loại Vitamin và Khoáng chất chiết xuất từ rau quả tự nhiên, hỗ trợ tăng khả năng hấp thụ tối đa.</p><p>&nbsp;</p><p><img src=\"https://bizweb.dktcdn.net/100/011/344/files/hulk-mass-gainer.jpg?v=1670475129250\" alt=\"hulk-clean-mass-gainer-tang-can-tang-co-nhanh-gymstore\"></p><p>&nbsp;</p>', 2, '3', '<h2><strong>THÀNH PHẦN&nbsp;CÓ TRONG HULK CLEAN MASS GAINER</strong></h2><p>&nbsp;</p><figure class=\"table\"><table><tbody><tr><td>Dinh dưỡng</td><td>1030 Calo; 50g Protein; 180g Carb</td></tr><tr><td>Xuất xứ</td><td>Perfect Sports -&nbsp;Canada</td></tr><tr><td>Đóng gói</td><td>10 Lbs - 18 lần dùng (4 muỗng/ serv)</td></tr></tbody></table></figure><p><br>&nbsp;</p>'),
(11, '710779570023', 'Labrada Muscle Mass Gainer', '<p><strong>ĐẶC ĐIỂM NỔI BẬT</strong></p><p><strong>Muscle Mass Gainer</strong> là sản phẩm sữa tăng cân được yêu thích hàng đầu vì khả năng tăng cân nhanh chóng, đồng thời hỗ trợ xây dựng cơ bắp tối ưu trong suốt quá trình sử dụng nhờ thành phần và tỷ lệ dinh dưỡng chuẩn mực. Nếu bạn là người gầy kinh niên, khó tăng cân, hấp thụ kém,... thì đây chính là sản phẩm bạn cần tìm!</p><p><br><img src=\"https://bizweb.dktcdn.net/100/011/344/files/labrada-muscle-mass-gainer-12-lbs-5443-g-1.jpg?v=1583144455497\" alt=\"Labrada-Muscle-Mass-Gainer-12-lbs-tang-can-nhanh-gymstore\"></p><p>&nbsp;</p><h2><strong>SỮA TĂNG CÂN MUSCLE MASS GAINER - TĂNG CÂN NHANH VƯỢT TRỘI</strong></h2><p>&nbsp;</p><p>Khác với phương pháp tăng cân “lạc hậu” trước đây, bạn sẽ không cần ép bản thân phải ăn thật nhiều thực phẩm tự nhiên, không phải cố ăn những thực phẩm chứa nhiều tinh bột, chất béo,... vì bây giờ, chuyện lên cân&nbsp;là hoàn toàn dễ dàng khi sử dụng Muscle Mass Gainer.</p><p>&nbsp;</p><p><strong>Muscle Mass Gainer</strong> là sản phẩm của&nbsp;Labrada - 1 Thương hiệu tiên phong trong việc&nbsp;nghiên cứu sản xuất các sản phẩm cao cấp với mục tiêu tăng cơ, giảm mỡ với công thức cải tiến mang lại hiệu quả.</p><p>&nbsp;</p><p>Sản phẩm có thể được sử dụng như 1 bữa ăn thay thế (MRP - Meal Replacement) hay một sản phẩm phục hồi sau khi tập.</p><p>&nbsp;</p><p>Đặc biệt, Muscle Mass còn được ưa chuộng trong giới thể hình vì loại sữa tăng cân này chứa nhiều năng lượng với hàm lượng Protein xây dựng cơ, cùng Carbonhydrate, Creatine và nhiều dưỡng chất quan trọng khác như Vitamin và khoáng chất giúp tăng hấp thụ tối đa.</p>', 2, '1', '<h3><strong>THÀNH PHẦN CỦA SỮA TĂNG CÂN MUSCLE MASS GAINER</strong></h3><p>&nbsp;</p><figure class=\"table\"><table><tbody><tr><td>Calories&nbsp;</td><td>1265 kcal</td></tr><tr><td>Protein</td><td>Whey Concentrate + Isolate</td></tr><tr><td>Đóng gói</td><td>5.443kg (16 lần dùng)</td></tr><tr><td>Thương hiệu</td><td>Labrada</td></tr><tr><td>Xuất xứ</td><td>Mỹ</td></tr></tbody></table></figure>'),
(12, '634158627767', 'Applied Critical Mass Original', '<p><strong>ĐẶC ĐIỂM NỔI BẬT</strong></p><p><img src=\"https://bizweb.dktcdn.net/100/011/344/files/mass-88a3f8ca-a10d-425e-a753-2029417f0cd1.jpg?v=1651635240471\" alt=\"applied-critical-mass-original\"></p><p>&nbsp;</p><h2><strong>CRITICAL MASS ORIGINAL - CÔNG THỨC SỮA&nbsp;TĂNG CÂN TĂNG CƠ HÀNG ĐẦU ANH QUỐC</strong></h2><p>&nbsp;</p><p>Critical Mass Original được thiết kế cho người gầy khó tăng cân, tăng cơ với công thức tối ưu của hãng Applied Nutrition. Khi bổ sung công thức giàu Calo bao gồm hàm lượng Protein và Carbohydrate cao trong mỗi Serving.&nbsp;</p><p>&nbsp;</p><p>Bằng việc bổ sung một bảng thành phần vô cùng đồ sộ chỉ để đảm bảo cơ thể của bạn nhận được tất cả các chất dinh dưỡng quan trọng để giúp bạn thực hiện hóa mục tiêu tăng cân tăng cơ.&nbsp;</p><p>&nbsp;</p><p>Chứa tới 55g Protein, Critical Mass là một trong loại Mass tăng cân sở hữu nguồn Protein có hàm lượng và giá trị sinh học cao nhất hiện nay.</p><p>&nbsp;</p>', 2, '5', '<h2><strong>THÀNH PHẦN CỦA CRITICAL MASS ORIGINAL</strong></h2><p>&nbsp;</p><figure class=\"table\"><table><tbody><tr><td>Thành phần</td><td>Whey Concentrate, Maltodextrin, Sáp ngô, CLA, Enzymes, Glutamine</td></tr><tr><td>Amino Acid</td><td>55g Protein, 154g Carb, 8.4g Fat</td></tr><tr><td>Xuất xứ</td><td>UK&nbsp;</td></tr><tr><td>Thương hiệu</td><td>Applied Nutrition</td></tr></tbody></table></figure>'),
(13, '5903719208840', 'Kevin Levrone GOLD Lean Mass', '<p><strong>ĐẶC ĐIỂM NỔI BẬT</strong></p><p>Gold Lean Mass là sữa tăng cân, tăng cơ nạc vượt trội đến từ thương hiệu Kevin Levrone. Ngoài tác dụng chính là tăng cân, sản phẩm còn có khả năng tăng Testosterone, tăng cường sức mạnh nam giới.</p><p>&nbsp;</p><p><img src=\"https://bizweb.dktcdn.net/100/011/344/files/kevin-levrone-gold-lean-mass-tang-can-tang-co-gymstore.jpg?v=1655520462726\" alt=\"kevin-levrone-gold-lean-mass-tang-can-tang-co-gymstore\"></p><p>&nbsp;</p><h2><strong>GOLD LEAN MASS - TĂNG CÂN TĂNG CƠ, CẢI THIỆN SỨC MẠNH NAM GIỚI</strong></h2><p><br>Gold Lean Mass là sản phẩm trong Kevin Levrone Signature Series, thuộc dòng GOLD Line gồm những sản phẩm chủ lực của hãng như Gold BCAA, Gold Creatine, Gold Oat Meal,...</p><p>&nbsp;</p><p>Gold Lean Mass là sản phẩm của hãng KEVIN LEVRONE SUPPLEMENTS với người đứng đầu là Kevin Levrone - vận động viên thể hình nổi tiếng từ những thập niên 90 sánh ngang với những huyền thoại thời đó như Ronnie Coleman, Jay Cutler, Lee Haney và Dexter Jackson,…</p><p>&nbsp;</p><p>Gold Lean Mass là sữa tăng cân, tăng cơ nạc với hàm lượng protein cao - 70G Protein trên 1 serving và lượng calo vừa phải - 676 kcal một lần dùng, hỗ trợ tăng cân nhưng hạn chế mỡ, người săn chắc hơn.</p><p>&nbsp;</p><p>Hơn nữa, khác với các loại sữa tăng cân khác, Gold Lean Mass còn được bổ sung 10G Creatine hàm lượng cao, tăng cường sức mạnh và hiệu suất tập luyện.</p><p>&nbsp;</p><p>Đồng thời, với những thành phần khác như Tribulus terrestris, chiết xuất cỏ cà ri, Axit D-aspartic (DAA), sữa tăng cân Gold Lean Mass còn có tác dụng tăng sản sinh Test tự nhiên, cải thiện bản lĩnh nam giới.</p>', 2, '6', '<h2><strong>THÀNH PHẦN&nbsp;CÓ TRONG GOLD LEAN MASS</strong></h2><p>&nbsp;</p><figure class=\"table\"><table><tbody><tr><td>Dinh dưỡng</td><td>676 calo, 70G Protein, 72G Carb, 10G Creatine</td></tr><tr><td>Thành phần</td><td>Tribulus terrestris, DAA, chiết xuất cỏ cà ri, CLA, dầu MCT,...</td></tr><tr><td>Xuất xứ</td><td>Mỹ</td></tr><tr><td>Thương hiệu</td><td>Kevin Levrone</td></tr></tbody></table></figure><p>&nbsp;</p>'),
(14, '5902610931444', 'Kevin Levrone Anabolic Mass', '<p><strong>ĐẶC ĐIỂM NỔI BẬT</strong></p><p><img src=\"https://bizweb.dktcdn.net/100/011/344/files/annabolic-mass.jpg?v=1634809052074\" alt=\"kevin-levrone-anabolic-mass-7kg-gymstore\"></p><p>&nbsp;</p><p>&nbsp;</p><h2><strong>ANABOLIC MASS - CÔNG THỨC TĂNG CÂN, TĂNG CƠ NẠC TỐI ƯU</strong></h2><p>&nbsp;</p><p>Anabolic Mass là sự kết hợp độc đáo giữa 5 nguồn protein khác nhau, bao gồm: Whey Protein Concentrate, Buttermilk, Whey Protein Isolate, Hydrolyzed Whey Protein Isolate và Hydrolysed Casein. Đi kèm với 54g Carbohydrate phức hợp, Anabolic Mass sẽ là công cụ tuyệt vời giúp bạn tăng cân, tăng cơ nạc một cách nhanh chóng và hiệu quả.</p><p>&nbsp;</p><p>Nếu như các dòng Mass Gainer khác thường tập trung vào hàm lượng carb, protein, vitamin và khoáng chất. Thì Anabolic Mass là một làn gió mới với các thành phần tập trung vào hiệu suất tập luyện và trao đổi chất&nbsp;như: Creatine Monohydrate, DAA, HMB, Chiết xuất Fenugreek, L-arginine và Taurine.</p><p>&nbsp;</p><p>Anabolic Mass là sản phẩm sữa tăng cân thuộc thương hiệu Kevin Levrone. Đây cũng là tên của nhà sáng lập ra nó - một vận động viên thể hình nổi tiếng đến từ Mỹ. Tên tuổi của ông có thể sánh ngang với những huyền thoại vào những năm 90 như Ronnie Coleman, Jay Cutler, Lee Haney và Dexter Jackson,…</p>', 2, '4', '<h2><strong>THÀNH PHẦN CỦA ANABOLIC MASS</strong></h2><p>&nbsp;</p><figure class=\"table\"><table><tbody><tr><td>Thành phần</td><td>438 calo, 54g carb, 48g protein</td></tr><tr><td>Hương vị</td><td>Bunty, Cookie with cream, Snikers, Strawberry, Vanilla,..</td></tr><tr><td>Đóng gói</td><td>Túi 7kg ~ 58 servings</td></tr><tr><td>Serving size</td><td>1 serving = 2 muỗng = 120g</td></tr><tr><td>Thương hiệu</td><td>Kevin Levrone - Mỹ</td></tr></tbody></table></figure>'),
(15, '631656709551', 'MuscleTech Mass Tech Extreme', '<p><strong>ĐẶC ĐIỂM NỔI BẬT</strong></p><p><strong>Mass Tech Extreme 2000</strong> là sản phẩm tăng cân nhanh, tăng cơ bắp chất lượng, tốt nhất chưa từng có. Sở hữu bảng thành phần khủng và chất lượng, Mass Tech Extreme 2000 hứa hẹn sẽ mang lại cho bạn trải nghiệm đáng giá nhất.&nbsp;</p><p>&nbsp;</p><p><img src=\"https://bizweb.dktcdn.net/100/011/344/files/ccc.jpg?v=1582855819886\" alt=\"Mass-tech-Extreme-2000-tang-can-hieu-qua-gymstore \"></p><p>&nbsp;</p><h2><strong>MASSTECH EXTREME 2000 - TĂNG CÂN NHANH ẤN TƯỢNG</strong></h2><p>&nbsp;</p><p>Nếu bạn là người gầy kinh niên, hấp thu kém, khó tăng cân và muốn tăng cân nhanh thì sữa tăng cân <strong>MASSTECH EXTREME 2000 </strong>là sự lựa chọn hàng đầu dành cho bạn. Không những có hàm lượng calories cao để đem lại hiệu quả tăng cân tối ưu, MASSTECH EXTREME 2000 còn mang lại giá trị dinh dưỡng cao&nbsp;nhờ 20 loại Vitamin và Khoáng chất. Dưỡng chất đa lượng lẫn vi lượng đều có trong<strong> MASSTECH EXTREME 2000</strong>, có thể nói rằng siêu phẩm MASSTECH EXTREME 2000 hoàn toàn&nbsp;thay thế 1 bữa ăn đầy đủ dưỡng chất.</p><p>&nbsp;</p><p>Siêu phẩm này còn cung cấp hơn 10g BCAAs và 10g Glutamine, giúp chống dị hóa, phục hồi và phát triển cơ bắp vượt trội. Tăng sức mạnh nhờ 10g Creatine, kích thích cơ bắp hấp thụ các chất dinh dưỡng để mau chóng tăng cân hiệu quả nhất.&nbsp;Phải nói rằng ít có sản&nbsp;sản phẩm tăng cân nào có thành phần hoàn hảo như vậy.</p><p>&nbsp;</p><p><strong>MASSTECH EXTREME 2000</strong> hoàn toàn có thể được gọi là sản phẩm cao cấp nhất, vì quá đầy đủ dưỡng chất và các đơn chất giúp phát triển cơ bắp và chống dị hóa cơ bắp.</p>', 2, '3', '<p>&nbsp;</p><h2><strong>THÀNH PHẦN&nbsp;NỔI BẬT&nbsp;CÓ TRONG MASS TECH EXTREME 2000</strong></h2><p>&nbsp;</p><figure class=\"table\"><table><tbody><tr><td>Hàm lượng calories</td><td>2060 kcal</td></tr><tr><td>Nguồn protein</td><td>Whey Concentrate + Isolate</td></tr><tr><td>Thành phần</td><td>60G Protein, 443G Carb, 5G Fat</td></tr><tr><td>Amino acids</td><td>17.8G BCAAs, 10G Creatine</td></tr><tr><td>Đóng gói</td><td>10kg (18 lần dùng)</td></tr><tr><td>Thương hiệu</td><td>MuscleTech</td></tr><tr><td>Xuất xứ</td><td>Mỹ</td></tr></tbody></table></figure>'),
(16, '627933026565', 'Mutant Mass 15 Lbs', '<p><strong>ĐẶC ĐIỂM NỔI BẬT</strong></p><p>Đã đến lúc bạn dứt điểm tăng cân một lần và mãi mãi với Mutant Mass - công thức tăng cân siêu vươt trội đến từ CANADA. Vậy điều gì làm nên sự đặc biệt của <strong>Mutant Mass</strong>? Hãy cùng tìm hiểu ngay dưới đây.&nbsp;</p><p>&nbsp;</p><p><img src=\"https://bizweb.dktcdn.net/100/011/344/files/mutant-mass-15lbs-tang-can-nhanh-hieu-qua-gymstore-1.jpg?v=1588152942369\" alt=\"Mutant-mass-15lbs-tang-can-nhanh-hieu-qua-gymstore-1\"></p><p>&nbsp;</p><h2><strong>MUTANT MASS - SỮA TĂNG CÂN THẾ HỆ MỚI, TĂNG CÂN TĂNG CƠ HIỆU QUẢ</strong></h2><p>&nbsp;</p><p>Sự khó tính trong từng sản phẩm chính là nét riêng của hãng thực phẩm bổ sung Mutant. Hãng Mutant Nutrition cam kết luôn mang đến những sản phẩm hàng đầu về chất lượng với những thành phần chất lượng cao, dễ dàng chinh phục cả những vị khách hàng khó tính nhất.&nbsp;</p><p>&nbsp;</p><p>MUTANT được biết đến là một hãng thực phẩm bổ sung hàng đầu của CANADA với mục tiêu luôn luôn đặt chất lượng và mùi vị của sản phẩm lên hàng đầu. Mutant Mass 15lbs cung cấp tới 1100 Calories với 56G Protein, một tỷ lệ cực kì thích hợp với nhu cầu của những người muốn tăng cân.&nbsp;</p><p>&nbsp;</p><p>Ngoài ra điểm khác biệt của Mutant Mass so với các dòng Mass Gainer khác là mùi vị cực kì dễ uống, không khó uống và gây ngán như các dòng Mass Gainer khác có trên thị trường. &nbsp;</p>', 2, '4', '<h2><strong>THÀNH PHẦN SIÊU CHẤT LƯỢNG CÓ TRANG MUTANT MASS</strong></h2><p>&nbsp;</p><figure class=\"table\"><table><tbody><tr><td>Calories</td><td>1100 kcal</td></tr><tr><td>Nguồn protein</td><td>Whey protein hydrolyzed, Whey protein concentrate, Whey protein isolate</td></tr><tr><td>Thương hiệu</td><td>MUTANT</td></tr><tr><td>Xuất xứ</td><td>Canada</td></tr><tr><td>Đóng gói</td><td>15lbs (6,8kg) ~ 24 lần dùng</td></tr></tbody></table></figure>'),
(17, '5903719209441', 'Kevin Levrone GOLD BCAA', '<p><strong>ĐẶC ĐIỂM NỔI BẬT</strong></p><p><strong>Gold BCAA</strong> là sản phẩm bổ sung BCAA đến từ thương hiệu được sáng lập bởi vận động viên thể hình nổi tiếng Kevin Levrone. Sản phẩm sẽ mang đến cho bạn trải nghiệm như một nhà vô địch thực thụ với hàm lượng BCAA lên tới 6g/serving.</p><p>&nbsp;</p><p><img src=\"https://bizweb.dktcdn.net/100/011/344/files/goldbcaa.jpg?v=1634809015199\" alt=\"kevin-levrone-gold-bcaa-30-servings-285-gram\"></p><p>&nbsp;</p><h2><strong>KEVIN LEVRONE GOLD BCAA - CẢI THIỆN HIỆU SUẤT TẬP LUYỆN CÙNG NHÀ VÔ ĐỊCH</strong></h2><p>&nbsp;</p><p>Gold BCAA là sản phẩm bổ sung BCAA đến từ thương hiệu Kevin Levrone. Đây cũng là tên của nhà sáng lập ra nó - một vận động viên thể hình nổi tiếng đến từ Mỹ.</p><p>&nbsp;</p><p>Tuy mới chỉ hoạt động được hơn 5 năm nhưng các sản phẩm của Kevin Levrone nhận được rất nhiều sự ủng hộ của khách hàng. Trước hết là nhờ danh tiếng của bản thân Kevin Levrone, và trên hết là chất lượng sản phẩm thực sự rất tốt.</p><p>&nbsp;</p><p>Gold BCAA sở hữu hàm lượng BCAA vượt trội lên đến 6g, cao hơn hầu hết các sản phẩm bổ sung BCAA thông thường khác đang được bán trên thị trường. Sản phẩm sẽ giúp bạn sửa chữa hiệu quả những tế bào cơ bị tổn thương sau khi hoạt động mạnh, phòng ngừa teo cơ, dị hóa cơ.</p>', 3, '3', '<h2><strong>THÀNH PHẦN CỦA KEVIN LEVRONE GOLD BCAA</strong></h2><p>&nbsp;</p><figure class=\"table\"><table><tbody><tr><td>Thành phần</td><td>BCAA, Whey Peptides</td></tr><tr><td>Hương vị</td><td>Mango Lemon, Citrus Peach, Orange Mango, Lychee,…</td></tr><tr><td>Đóng gói</td><td>Hộp 375g ~ 30 servings</td></tr><tr><td>Serving size</td><td>1 serving = 2 muỗng = 12,5g</td></tr><tr><td>Thương hiệu</td><td>Kevin Levrone</td></tr></tbody></table></figure>'),
(18, '5902448210728', 'FA CORE BCAA 8:1:1', '<p><strong>ĐẶC ĐIỂM NỔI BẬT</strong></p><p>Bất kỳ&nbsp;sản phẩm đến từ các nước bên Châu Âu đều mang một cái nét rất riêng về độ hoàn thiện, tính sáng tạo và sự đổi mới qua thời gian. Thực phẩm bổ sung cũng không phải là ngoại lệ, dòng sản phẩm FA CORE BCAA mang cho mình công thức vô cùng độc đáo và sáng tạo khi tỷ&nbsp;lệ BCAA không phải là 2:1:1 mà là 8:1:1 nghiêng vượt trội về Leucine.</p><p>&nbsp;</p><p><img src=\"https://bizweb.dktcdn.net/100/011/344/files/fa-core-bcaa1.jpg?v=1641178382448\" alt=\"fa-core-bcaa-ti-le-8-1-1-intra-workout-gymstore\"></p><p>&nbsp;</p><h2>CÔNG THỨC ĐỘT PHÁ FA CORE BCAA 8:1:1 HỖ TRỢ PHÁT TRIỂN CƠ BẮP</h2><p>&nbsp;</p><p>Khác so với những dòng BCAA khác đang có hiện nay, FA CORE BCAA mang cho mình một sự sáng tạo hoàn toàn mới với tỉ lệ BCAA 8:1:1 nghiêng vượt trội về hàm lượng của Leucine lên tới 4000mg trong khi tổng hàm lượng BCAA trên mỗi Serving là 5000mg.&nbsp;</p><p>&nbsp;</p><p>Trong số ba chất tạo lên BCAA, leucine được cho là có tác động lớn nhất đến khả năng tạo protein hỗ trợ phát triển cơ bắp&nbsp;của bạn. Trong khi đó, isoleucine và valine có vẻ hiệu quả hơn trong việc sản xuất năng lượng và điều chỉnh lượng đường trong máu.</p><p>&nbsp;</p><p>Đi kèm với đó là sự kết hợp của bộ 3 tăng cường hiệu suất tập luyện mà chỉ thường hay xuất hiện trong những dòng sản phẩm Pre-Workout tăng sức mạnh trước tập đó là: Citrulline Malate, Beta-Alanine và Taurine.</p>', 3, '6', '<h3>THÀNH PHẦN VƯỢT TRỘI CỦA FA CORE BCAA TRONG MỖI SERVING</h3><p>&nbsp;</p><p>▪️&nbsp;5G BCAA tỉ lệ 8:1:1: giúp tổng hợp Protein, phát triển cơ bắp và cải thiện mức độ khối lượng cơ nạc trong cơ thể.</p><p>&nbsp;</p><p>▪️ 1G Citrulline Malate - Tăng nồng độ Arginine và Nitric Oxide trong máu giúp gia tăng khả năng tập luyện và hiệu suất trong khi tập.</p><p>&nbsp;</p><p>▪️ 1G Beta-Alanine làm tăng nồng độ carnosine giúp chống mỏi cơ, đau nhức cơ và tăng phục hồi cơ bắp hơn trong tập luyện. Hỗ trợ gia tăng sức mạnh và cơ nạc hiệu quả.</p><p>&nbsp;</p><p>▪️ 1G Taurine&nbsp;có vai trò thúc đẩy sức chịu đựng, tăng sự tỉnh táo, tập trung và tăng cường phục hồi</p><p>&nbsp;</p><p>▪️ 1mg Vitamin B6 hỗ trợ cải thiện tâm trạng, giảm các triệu chứng căng thẳng mệt mỏi não bộ</p>'),
(19, '627933022680', 'Mutant BCAA 9.7', '<p><strong>ĐẶC ĐIỂM NỔI BẬT</strong></p><p><strong>Mutant BCAA</strong> cung cấp nguồn BCAAs bao gồm 3 axit amin: leucine - isoleucine - valine. 3 loại axit amin này có tác dụng rất quan trọng trong việc phục hồi và phát triển cơ bắp, hỗ trợ gia tăng sức bền và đồng thời chống dị hóa cơ khi tập luyện.&nbsp;</p><p>&nbsp;</p><p><img src=\"https://bizweb.dktcdn.net/100/011/344/files/vv2-a1c72b32-f59d-4197-adb5-8b2104b5d62f.jpg?v=1583136215644\" alt=\"Mutant-BCAA-gia-tang-suc-ben-gymstore-1\"></p><p>&nbsp;</p><h2><strong>ĐIỂM NỔI BẬT CỦA MUTANT BCAA 9.7 GIÚP BẠN TẬP LUYỆN HIỆU QUẢ&nbsp;</strong></h2><p>&nbsp;</p><p><strong>BCAA (Branched-Chain Amino Acid)</strong> là chuỗi 3 axit amin thiết yếu: leucine, iso-leucine và valine mà cơ thể không thể tổng hợp được, chỉ hấp thụ bằng đường thức ăn hay thực phẩm bổ sung. BCAA giúp đẩy nhanh quá trình tổng hợp protein, phục hồi cơ bắp, chống mất cơ và cải thiện hiệu suất tập luyện.</p><p><br>Thành phần quý báu nhất trong BCAA đó là leucine, chất hoá học này đóng vai trò quan trọng trong việc hấp thu lượng protein, theo đó lượng leucine được hấp thu càng nhiều thì đồng nghĩa với việc Protein càng nhanh hấp thụ hơn. &nbsp;</p><p>&nbsp;</p><p><strong>Mutant BCAA 30 Serving </strong>có các thành phần BCAA được chia theo tỷ lệ 2:1:1 và lượng leucine chiếm tỷ lệ 2 trong 3 nhánh acid amin. So sánh với các dòng BCAA khác trên thị trường, Mutant BCAA là dòng BCAA có hàm lượng cao nhất và được rất nhiều vận động viên trên thế giới sử dụng.</p><p>&nbsp;</p><p>Bên cạnh hàm lượng BCAA cao có trong mỗi Serving, <strong>Mutant BCAA 9.7</strong> còn chứa tới 8 chất điện giải khác nhau giúp duy trì lượng nước trong cơ thể hỗ trợ duy trì hiệu suất tập luyện tới cuối buổi tập.&nbsp;</p><p>&nbsp;</p><p>=&gt; Các sản phẩm tương tự giúp tăng hiệu suất tập luyện: <a href=\"https://gymstore.vn/bcaas\">BCAA</a></p><p>&nbsp;</p><h3><strong>MUTANT BCAA CÓ XUẤT&nbsp;XỨ NHƯ THẾ NÀO?</strong></h3><p>&nbsp;</p><p>Mutant BCAA là sản phẩm bổ sung nguồn BCAA chất lượng cao đến từ hãng MUTANT - thương hiệu Thực phẩm bổ sung đình đám tại Canada với những sản phẩm được nhiều người biết đến như Mutant Glutamine, Mutant Multi, Mutant Geaar,...</p>', 3, '6', '<h2><strong>THÀNH PHẦN&nbsp;CÓ TRONG MUTANT BCAA</strong></h2><p>&nbsp;</p><figure class=\"table\"><table><tbody><tr><td>Thành phần</td><td>7,2G BCAAs + 2,5G Amino Acid<br>12mg Electrolytes Blend (chất điện giải)</td></tr><tr><td>Đóng gói</td><td>30 lần dùng</td></tr><tr><td>Thương hiệu</td><td>MUTANT</td></tr><tr><td>Xuất xứ&nbsp;</td><td>Canada</td></tr></tbody></table></figure>'),
(20, '181030000151', 'Scivation Xtend BCAA Original', '<p><strong>ĐẶC ĐIỂM NỔI BẬT</strong></p><p><strong>XTEND BCAA</strong> được nhiều người mệnh danh là BCAA ngon nhất thế giới. Không những thế, hiệu quả của XTEND BCAA cũng được đánh giá rất cao.</p><p>&nbsp;</p><p><img src=\"https://bizweb.dktcdn.net/100/011/344/files/30-1-9fe135d0-14a8-409c-809e-46265f18d6d2.jpg?v=1586195187077\" alt=\"Xtend-BCAA-30-servings-gia-tang-hieu-suat-tap-gymstore\"></p><p>&nbsp;</p><p>&nbsp;</p><h2><strong>XTEND BCAA - PHỤC HỒI CƠ BẮP, TĂNG HIỆU SUẤT TẬP LUYỆN HIỆU QUẢ</strong></h2><p>&nbsp;</p><p>Để sở hữu thân hình săn chắc, mạnh mẽ như mong muốn, ngoài quá trình luyện tập nghiêm ngặt thì một chế độ nghỉ ngơi, phục hồi hợp lý cũng đóng một vai trò rất quan trọng. Trong đó, BCAA là thực phẩm bổ sung được nhiều người lựa chọn nhất để phục hồi cơ bắp sau những buổi tập luyện vất vả.</p><p>&nbsp;</p><p><strong>XTEND BCAA</strong> sở hữu hàm lượng BCAA vượt trội lên đến 7g, cao hơn hầu hết các sản phẩm bổ sung BCAA thông thường khác đang được bán trên thị trường. Sản phẩm sẽ giúp bạn sửa chữa hiệu quả những tế bào cơ bị tổn thương sau khi hoạt động mạnh, phòng ngừa teo cơ, dị hóa cơ.</p><p>&nbsp;</p><p>Bên cạnh đó, <strong>XTEND BCAA</strong> còn chứa hàm lượng cao các chất như Glutamine, Citrulline Malate giúp giảm đau nhức, mệt mỏi, tăng cường hiệu suất tập luyện.</p><p>&nbsp;</p><p>Đặc biệt, <strong>XTEND BCAA </strong>sở hữu hương vị cực kỳ thơm ngon sẽ làm hài lòng bất kỳ khách hàng khó tính nào. Nếu trước đây đã từng uống nhiều loại BCAA khác và bây giờ chuyển sang dùng XTEND BCAA, bạn sẽ phải công nhận rằng không sản phẩm nào có thể vượt qua được XTEND BCAA về hương vị.</p>', 3, '7', '<h2><strong>THÀNH PHẦN CỦA XTEND BCAA</strong></h2><p>&nbsp;</p><figure class=\"table\"><table><tbody><tr><td>Thành phần</td><td>BCAA, Glutamine, Citrulline Malate, Chất điện giải</td></tr><tr><td>Hương vị</td><td>Watermelon, Blue Raspberry, Lemon Lime, Mango, Apple, Strawberry Kiwi, Tropical Thunder,…</td></tr><tr><td>Liều lượng</td><td>30 servings</td></tr><tr><td>Serving size</td><td>1 Scoop&nbsp;13g</td></tr><tr><td>Thương hiệu</td><td>Scivation, USA</td></tr></tbody></table></figure>'),
(21, '818253026445', 'ProSupps Hydro BCAA', '<p><strong>ĐẶC ĐIỂM NỔI BẬT</strong></p><p><img src=\"https://bizweb.dktcdn.net/100/011/344/files/thanh-phan-cua-prosupps-hydro-bcaa.jpg?v=1651894490416\" alt=\"thanh-phan-cua-prosupps-hydro-bcaa-gymstore\"></p><p>&nbsp;</p><p>&nbsp;</p><h2><strong>PROSUPPS HYDRO BCAA 90 SERVINGS - PHỤC HỒI CƠ BẮP TỐI ĐA</strong></h2><p>&nbsp;</p><p>BCAA (viết tắt của Branched chain amino acid) là một chuỗi gồm 3 axit amin (L-leucine, L-isoleucine và L-valine) mà cơ thể không thể tự sản xuất. Đây là 3 axit amin đóng vai trò quan trọng nhất trong việc tổng hợp và chuyển hóa protein, hỗ trợ xây dựng và phục hồi cơ bắp, chống mất cơ, teo cơ và cải thiện hiệu suất luyện tập. Do đó BCAA là nguyên liệu không thể thiếu với những người tập thể hình.</p><p>&nbsp;</p><p><strong>Hydro BCAA </strong>nổi bật so với những sản phẩm bổ sung BCAA khác nhờ kết hợp với EAA - cũng là một nhóm gồm 9 axit amin khác giúp phục hồi và nuôi dưỡng cơ bắp một cách tối ưu nhất.&nbsp;Do đó, sản phẩm này cực kỳ phù hợp với những người thường xuyên vận động mạnh.</p><p>&nbsp;</p><p>Tập luyện nặng mà không có phương pháp nghỉ ngơi, hồi phục hợp lý sẽ khiến cơ bắp nhanh bị rễu rã, đau mỏi dai dẳng hay thậm chí là đứt cơ. Mọi công sức luyện tập chăm chỉ trước đó của bạn sẽ đổ sông đổ bể.</p>', 3, '8', '<h3><strong>THÀNH PHẦN CỦA PROSUPPS HYDRO BCAA 90 SERVINGS</strong></h3><p>&nbsp;</p><figure class=\"table\"><table><tbody><tr><td>Thành phần</td><td>7g BCAA, 3g EAA, 150mg chất điện giải</td></tr><tr><td>Hương vị</td><td>Miami Vice, Passion Fruit, Pink Lemonade, Strawberry Kiwi, Texas Tea, Dragon Fruit,…</td></tr><tr><td>Đóng gói</td><td>Hộp 90 servings</td></tr><tr><td>Serving size</td><td>1 serving = 1 thìa = 14.5g</td></tr><tr><td>Thương hiệu</td><td>Prosupps - Mỹ</td></tr></tbody></table></figure>'),
(22, '5902448246420', 'FA ICE Pump Pre Workout', '<p><strong>ĐẶC ĐIỂM NỔI BẬT</strong></p><p><strong>FA ICE Pump</strong> Pre Workout là thức uống trước tập cung cấp cho bạn một nguồn năng lượng sung mãn, bền bỉ nhất để có thể hoàn thành buổi tập một cách tối ưu. Hơn nữa, sản phẩm còn có vị the mát, mang lại cảm giác sảng khoái, rất phù hợp dùng trong mùa hè.</p><p>&nbsp;</p><p><img src=\"https://bizweb.dktcdn.net/100/011/344/files/fa-ice-pump-pre-workout-25-servings-gymstore.jpg?v=1654664337214\" alt=\"fa-ice-pump-pre-workout-tang-suc-manh-gymstore\"></p><p>&nbsp;</p><h2><strong>FA ICE PUMP PRE WORKOUT - NGUỒN NĂNG LƯỢNG BÙNG NỔ</strong></h2><p>&nbsp;</p><p><strong>FA ICE Pump</strong> Pre Workout là một sản phẩm của hãng FA Engineered Nutrition, đến từ Ba Lan. ICE Pump là công thức kết hợp các hoạt chất có tác dụng tăng sức mạnh vượt trội như Citrulline Malate, Beta-Alanine hay Arginine AKG,..., hứa hẹn sẽ mang đến cho bạn một buổi tập với năng lượng bùng nổ, thách thức mọi giới hạn của bản thân.&nbsp;</p><p><br>Đặc biệt, sản phẩm được bào chế với hiệu ứng mát đặc biệt EVERCOOL, là một đặc tính mới trên thị trường Thực phẩm bổ sung. Hiệu ứng EVERCOOL mang đến cho bạn cảm giác the mát sảng khoái và sự “tỉnh táo” tức thì, cực kỳ phù hợp sử dụng trong mùa hè.</p>', 4, '3', '<h2><strong>THÀNH PHẦN&nbsp;CÓ TRONG FA ICE PUMP&nbsp;</strong></h2><p>&nbsp;</p><figure class=\"table\"><table><tbody><tr><td>Thành phần chính</td><td>Citrulline Malate, Beta-Alanine, Arginine AKG, Betaine, Caffeine.</td></tr><tr><td>Xuất xứ</td><td>Ba Lan</td></tr><tr><td>Thương hiệu</td><td>FA Engineered Nutrition</td></tr></tbody></table></figure>'),
(23, '842595106084', 'Cellucor C4 Original', '<p><strong>ĐẶC ĐIỂM NỔI BẬT</strong></p><p>Là Pre-workout bán chạy hàng đầu tại Mỹ, C4 Original sở hữu công thức cải tiến với các thành phần mang tính đột phá, giúp bạn bùng nổ năng lượng và kéo dài thời gian tập luyện. Tại Gymstore đã có phiên bản 60 serving to hơn, tiết kiệm hơn, tập sung hơn.</p><p>&nbsp;</p><p><img src=\"https://bizweb.dktcdn.net/100/011/344/files/1-11.jpg?v=1585078541256\" alt=\"C4-Original-60-serving-tang-suc-manh-co-bap-gymstore-1\"></p><p>&nbsp;</p><p>&nbsp;</p><h2><strong>C4 ORIGINAL 60 SERVINGS - ĐÁNH THỨC SỨC MẠNH BÊN TRONG</strong></h2><p>&nbsp;</p><p>C4 Original 60 servings là pre workout đến từ thuộc thương hiệu Cellucor, rất phù hợp cho những người mới bắt đầu sử dụng những sản phẩm tăng sức mạnh.</p><p>&nbsp;</p><p>Nếu bạn đang bắt đầu những chuỗi ngày thay đổi vóc dáng, hoặc đang phấn đấu để đạt được tới cấp độ tập luyện tiếp theo, thì chắc chắn C4 Original 60 servings sẽ là người bạn đồng hành đánh tin cậy, giúp bạn mở khóa toàn bộ sức mạnh bên trong cơ thể.</p><p>&nbsp;</p><p>C4 Original 60 servings cung cấp nguồn năng lượng bùng nổ, đánh bay mọi mệt mỏi đồng thời giúp bạn tăng cường tâp trung cao độ. Bạn sẽ có cảm giác&nbsp; thôi thúc mạnh mẽ để hoàn thành bất cứ thử thách nào trong phòng tập.</p><p>&nbsp;</p><p>C4 Original&nbsp;xứng đáng đạt vị trí #1 Pre-workout tại Mỹ. Sản phẩm dựa trên nền tảng của C4 Classic với bảng thành phần cải tiến, thiết kế bao bì mới sang trọng và sự đổi mới về hương vị, đảm bảo mang đến trải nghiệm tuyệt vời cho khách hàng.</p>', 4, '2', '<h2><strong>THÀNH PHẦN CỦA C4 ORIGINAL 60 SERVINGS</strong></h2><p>&nbsp;</p><figure class=\"table\"><table><tbody><tr><td>Thành phần</td><td>Beta-Alanine, Creatine, Arginine, Caffeine</td></tr><tr><td>Hương vị</td><td>Berry Bomb, Icy Blue Razz, Fruit Punch, Orange Burst, Watermelon,…</td></tr><tr><td>Đóng gói</td><td>Hộp 360g ~ 60 servings</td></tr><tr><td>Serving size</td><td>1 serving = 1 thìa = 6g</td></tr><tr><td>Thương hiệu</td><td>Cellucor - Mỹ</td></tr></tbody></table></figure>'),
(24, '634158661662', 'Applied ABE Pre-Workout', '<p><strong>ĐẶC ĐIỂM NỔI BẬT</strong></p><p><img src=\"https://bizweb.dktcdn.net/100/011/344/files/thanh-phan-abe-pre-workout.jpg?v=1651738060891\" alt=\"thanh-phan-abe-pre-workout-GYMSTORE\"></p><p>&nbsp;</p><p>&nbsp;</p><h2><strong>ABE PRE WORKOUT - CÔNG THỨC TĂNG SỨC MẠNH TỐI ĐA</strong></h2><p>&nbsp;</p><p><strong>ABE </strong>(All Black Everything) là sản phẩm pre workout bán chạy nhất nước Anh và cũng rất quen mặt với anh em gymers Việt Nam. Pre workout là một dạng đồ uống tăng lực thường được sử dụng trước khi tập 30’ nhằm thúc đẩy năng lượng, tăng sức bền, sức mạnh cho quá trình tập luyện hiệu quả hơn.</p><p>&nbsp;</p><p>&nbsp;</p><p><strong>ABE pre workout</strong> sở hữu bảng thành phần “vàng” với công thức pha trộn độc đáo sẽ mang đến cho bạn nguồn năng lượng bùng nổ, đi kèm với đó cảm giác ngứa ngáy khắp người, đánh tan cơn mệt mỏi và thúc đẩy hiệu suất tập luyện lên tối đa.</p><p>&nbsp;</p><p>Bên cạnh đó, ABE pre workout còn sở hữu tới 11 mùi vị khác nhau đem đến trải nghiệm thú vị cho khách hàng, trong đó có vị Energy Flavour khá giống với vị của nước tăng lực bò húc Redbull, rất được anh em Việt Nam yêu thích.</p><p>&nbsp;</p><p><strong>ABE pre workout</strong> được sản xuất bởi Applied Nutrition - một trong thương hiệu chuyên về dinh dưỡng thể hình nổi tiếng nhất Anh quốc. Sản phẩm của hãng đã có mặt ở hơn 70 quốc gia trên thế giới. Do đó, bạn hoàn toàn có thể yên tâm về chất lượng cũng như thông tin ghi trên bao bì là chính xác 100%.</p>', 4, '1', '<h2><strong>THÀNH PHẦN CỦA ABE PRE WORKOUT</strong></h2><p>&nbsp;</p><p>&nbsp;</p><figure class=\"table\"><table><tbody><tr><td>Thành phần</td><td>Tri-Creatine, Caffeine, Citrulline. Beta Alanine, Teacrine</td></tr><tr><td>Hương vị nổi bật</td><td>Energy - Bò húc</td></tr><tr><td>Đóng gói</td><td>Hộp 315g ~ 30 serving</td></tr><tr><td>Serving size</td><td>1 serving = 1 muỗng = 10,5g</td></tr><tr><td>Thương hiệu</td><td>Applied Nutrition - Mỹ</td></tr></tbody></table></figure>'),
(25, '647603261409', 'Redcon1 Pre-workout Total War', '<p><strong>ĐẶC ĐIỂM NỔI BẬT</strong></p><p><strong>Total War Pre-workout</strong> là một loại thức uống trước tập, luôn là lựa chọn không thể thiếu đối với người tập luyện nghiêm túc với mục tiêu của mình. Pre-workout mang lại những lợi ích cực kỳ to lớn, đặc biệt là nguồn năng lượng bùng nổ giúp bạn phá vỡ mọi giới hạn trong phòng tập.</p><p>&nbsp;</p><p><img src=\"https://bizweb.dktcdn.net/100/011/344/files/redcon1-total-war.jpg?v=1538660443537\" alt=\"Total-War-hỗ-trợ-tăng-sức-mạnh-gymstore-1\"></p><p>&nbsp;</p><h2><strong>TOTAL WAR PRE WORKOUT - TỐI ƯU SỨC MẠNH TRƯỚC TẬP</strong></h2><p>&nbsp;</p><p>Redcon1 đã cho ra đời một dòng sản phẩm Pre-workout tăng sức mạnh với hiệu quả mạnh mẽ giúp bạn có một buổi tập cực kì hiệu quả mang tên Total War.</p><p>&nbsp;</p><p>Total War sẽ giúp bạn có thể vượt qua tất cả những giới hạn của bản thân, bạn sẽ thấy cơ thể bạn phát triển vượt bậc chỉ trong một thời gian ngắn. Ngoài ra bạn sẽ không còn mệt mỏi về tinh thần sau mỗi ngày làm việc, cơ thể bạn sẽ có sức chịu đựng tốt hơn nhờ sự đồng hành của Total War.</p>', 4, '0', '<h3><strong>THÀNH PHẦN QUAN TRỌNG CÓ TRONG TOTAL WAR PRE WORKOUT</strong></h3><p>&nbsp;</p><figure class=\"table\"><table><tbody><tr><td>Thành phần</td><td>L-Citrulline, Beta-Alanine, Agmatine Sulfate, Taurine, Caffeine, Cocoteanol,...</td></tr><tr><td>Serving</td><td>30 servings</td></tr><tr><td>Thương hiệu</td><td>Redcon1</td></tr><tr><td>Xuất xứ</td><td>Mỹ</td></tr></tbody></table></figure><p>&nbsp;</p><p><br>&nbsp;</p>'),
(26, '5902448262338', 'FA Engineered Nutrition Omega', '<p><strong>ĐẶC ĐIỂM NỔI BẬT</strong></p><h2><strong>FA OMEGA 3 D3+K2&nbsp;- CÔNG THỨC 3 TRONG 1 HỖ TRỢ &nbsp;SỨC KHỎE TOÀN DIỆN</strong></h2><p>&nbsp;</p><p><img src=\"https://bizweb.dktcdn.net/100/011/344/files/fa-omega-3-d3-k2-gymstore-600a5e47-0762-4bfb-b58a-dc74beb30277.jpg?v=1673671873804\" alt=\"fa-omega-3-d3-k2-ho-tro-suc-khoe-tong-the-gymstore\"></p><p>&nbsp;</p><p>Omega 3, vitamin D và vitamin K đều là những dưỡng chất cực kỳ có lợi cho tim mạch, xương khớp, não bộ cũng như sức khỏe toàn diện của bạn. Thay vì phải mua từng chất riêng lẻ, giờ đây bạn có thể bổ sung tất cả chỉ với một sản phẩm duy nhất: <strong>FA Omega 3 D3 + K2</strong>.</p>', 5, '7', '<h2><strong>THÀNH PHẦN CỦA FA OMEGA 3 D3+K2</strong></h2><p>&nbsp;</p><figure class=\"table\"><table><tbody><tr><td>Thành phần chính</td><td>360mg EPA, 240mg DHA, 2000IU D3, 50mcg K2, 15mg vitamin E</td></tr><tr><td>Đóng gói</td><td>Hộp 180 viên</td></tr><tr><td>Serving size</td><td>1 serving = 1 viên</td></tr><tr><td>Thương hiệu</td><td>FA Engineered Nutrition - Ba Lan</td></tr></tbody></table></figure><p>&nbsp;</p>');
INSERT INTO `products` (`product_id`, `product_code`, `product_name`, `product_info`, `cate_id`, `quantity`, `info_dt`) VALUES
(27, '850026121643', 'CodeAge Liposomal Magnesium Glycinate', '<p><strong>ĐẶC ĐIỂM NỔI BẬT</strong></p><p>Codeage Liposomal Magnesium Glycinate là viên uống bổ sung Magiê được áp dụng công nghệ liposomal tiên tiến và bổ sung Bioperine - chiết xuất hạt tiêu đen tăng khả năng hấp thụ lên tối đa.</p><p>&nbsp;</p><p><img src=\"https://bizweb.dktcdn.net/100/011/344/files/codeage-liposomal-magnesium-glycinate-vien-uong-bo-sung-magie-gymstore-1.jpg?v=1668479072730\" alt=\"codeage-liposomal-magnesium-glycinate-vien-uong-bo-sung-magie-gymstore-1\"></p><p>&nbsp;</p><h2><strong>CODEAGE MAGNESIUM GLYCINATE - VIÊN UỐNG BỔ SUNG MAGIÊ HẤP THỤ TỐT NHẤT</strong></h2><p>&nbsp;</p><p>Viên uống bổ sung Magiê <strong>Codeage Magnesium Glycinate</strong> là nguồn bổ sung Magnesium Glycinate chất lượng cao đến từ thương hiệu Codeage. Đây được đánh giá là loại Magiê có khả dụng sinh học cao nhất hiện nay (tốc độ &amp; khả năng hấp thụ).</p><p>&nbsp;</p><p>Codeage Liposomal Magnesium Glycinate là dòng sản phẩm cao cấp của Codeage, thương hiệu chuyên cung cấp các sản phẩm chăm sóc sức khỏe đến từ Mỹ. “Khỏe bên trong, đẹp bên ngoài” là định hướng của Codeage với các sản phẩm của mình. Vì thế nên hãng luôn đầu tư một cách chỉn chu nhất từ chất lượng đến bao bì để mang đến trải nghiệm tuyệt vời nhất.</p><p><br>✓ 350mg Magnesium Glycinate Chelate<br>✓ Bổ sung Bioperine (chiết xuất hạt tiêu đen) tăng khả năng hấp thụ<br>✓ Thuần chay, phù hợp với cả những người ăn chay<br>✓ Không gluten, đậu nành và các thành phần từ sữa</p>', 5, '9', '<h2><strong>THÀNH PHẦN&nbsp;CÓ TRONG CODEAGE LIPOSOMAL MAGNESIUM GLYCINATE</strong></h2><p>&nbsp;</p><figure class=\"table\"><table><tbody><tr><td>Thành phần chính</td><td>350mg Magnesium (Glycinate Chelate)</td></tr><tr><td>Đóng gói</td><td>240 viên (60 lần dùng)</td></tr><tr><td>Xuất xứ</td><td>Codeage - Mỹ</td></tr></tbody></table></figure>'),
(28, '752830871670', 'Nutrabolics Semtex', '<p><strong>ĐẶC ĐIỂM NỔI BẬT</strong></p><p>Semtex là viên uống đốt mỡ mới nhất, hiệu quả nhất của Nutrabolics, giúp bạn đốt cháy mỡ thừa, hỗ trợ giảm cân và chuyển hóa chất béo thành năng lượng cho việc luyện tập thêm sung hơn, bền bỉ hơn.</p><p>&nbsp;</p><p><img src=\"https://bizweb.dktcdn.net/100/011/344/files/11-4.jpg?v=1584502727854\" alt=\"Semtex-sinh-nhiet-dot-mo-hieu-qua-gymstore\"></p><p>&nbsp;</p><p>&nbsp;</p><h2><strong>NUTRABOLICS SEMTEX - HỖ TRỢ SINH NHIỆT, GIẢM MỠ HIỆU QUẢ</strong></h2><p>&nbsp;</p><p>- Cơ địa bạn dễ tích mỡ?</p><p>&nbsp;</p><p>- Bạn không có thời gian đến phòng tập thường xuyên hay ăn uống kiêng khem nghiêm ngặt?</p><p>&nbsp;</p><p>- Bạn đã sử dụng một số sản phẩm đốt mỡ giảm cân nhưng chỉ hiệu quả thời gian đầu, mà lại còn gây nhiều tác dụng phụ?</p><p>&nbsp;</p><p>Vậy hãy thử ngay Semtex - công thức đốt mỡ tiên tiến nhất đến từ Nutrabolics – thương hiệu chuyên về dinh dưỡng thể hình của Canada với hơn 20 năm kinh nghiệm. Được sản xuất trên dây chuyền hiện đại, Semtex sẽ mang lại hiệu quả đốt mỡ đáng ngạc nhiên cho bạn. Không những thế, hiệu quả còn duy trì trong thời gian dài, không gây lờn thuốc, không chứa chất cấm và ít tác dụng phụ.</p><p>&nbsp;</p><p>Semtex chắc chắn sẽ là người bạn đồng hành đáng tin cậy giúp bạn rút ngắn thời gian chinh phục được vóc dáng hằng mong ước.</p>', 6, '4', '<h2><strong>THÀNH PHẦN CỦA NUTRABOLICS SEMTEX</strong></h2><p>&nbsp;</p><figure class=\"table\"><table><tbody><tr><td>Thành phần chính</td><td>300mg Caffeine, 200mg Cayenne Pepper,&nbsp;600mg Dendrobium</td></tr><tr><td>Quy cách đóng gói</td><td>Hộp 60 viên nang ~ 30 servings</td></tr><tr><td>Serving size</td><td>1 serving = 2 viên</td></tr><tr><td>Thương hiệU</td><td>Nutrabolics - Canada</td></tr></tbody></table></figure>'),
(29, '99999872', 'USN Cutting Edge Hypercut XT', '<p><strong>ĐẶC ĐIỂM NỔI BẬT</strong></p><p><img src=\"https://bizweb.dktcdn.net/100/011/344/files/usn-hypercut-gymstore.jpg?v=1635386287808\" alt=\"usn-hypercut-dot-mo-toi-da-gymstore\"></p><p>&nbsp;</p><h2>HYPERCUT XT - ĐỐT MỠ SINH NHIỆT HIỆU QUẢ&nbsp;</h2><p><br>Hypercut XT là sản phẩm ra đời với mục tiêu giúp tăng cơ và giảm mỡ tự nhiên, không gây mệt, không gây mất cơ, hay mất nước giống những sản phẩm giảm cân khác trên thị trường</p><p><br>Hypercut XT sử dụng các thành phần được cấp bằng sáng chế tiên tiến nhất, đã được chứng minh là làm tăng khả năng đốt mỡ. Các thành phần&nbsp;trong sản phẩm giúp hỗ trợ trao đổi chất, cũng như quá trình xúc tác enzym và làm&nbsp;tăng năng lượng tiêu hao trong luyện tập, tăng sự tập trung tinh thần, cải thiện tâm trạng &amp; tăng cường động lực.</p>', 6, '0', '<h3>THÀNH PHẦN TRONG HYPERCUT XT HỖ TRỢ GIẢM MỠ&nbsp;</h3><p><br>◾️ Thành phần khoa học và&nbsp;chính xác với&nbsp;N-Acetyl-L-Tyrosine, Caffeine Anyhdrous, Theobromine, Paradoxine, Yohimbine HCl, Alpha Yohimbine HCL, Yohimbe Extract. Đặc biệt&nbsp;Trio-yohimbe sinh nhiệt&nbsp;cực cao giúp làm giảm mỡ, tăng năng lượng và sự tập trung.</p><p>&nbsp;</p><p>◾️ TEACRINE có công dụng tương tự như CAFFEIN nhưng lại không gây kích thích và đặc biệt không gây \"nhờn\". Chính vì vậy bạn có thể duy trì được mức năng lượng trong buổi tập một cách tuyệt đối, giúp buổi tập đạt được hiệu suất&nbsp;tối đa.</p><p>&nbsp;</p><p>◾️ Paradoxine® là thành phần đốt mỡ nguồn gốc&nbsp;thảo dược nhẹ, không kích thích có thể kích hoạt quá trình sinh nhiệt và giảm mỡ cơ thể.</p><p>&nbsp;</p><p>Yobimbe làm giãn mạch máu và tăng lưu lượng máu trong dương vật, giúp cải thiện chức năng cương dương. Hợp chất này đã được sử dụng hàng trăm năm như là một chất kích thích tình dục và để cải thiện sức khỏe sinh lý&nbsp;của nam giới, và có thể cải thiện khả năng&nbsp;nhận thức. Tuy nhiên, người ta lại phát hiện ra rằng Yohimbe khi sử dụng có khả năng giúp duy trì cân nặng khỏe mạnh, vì thế nó được sử dụng rộng rãi với tác dụng giảm mỡ, chủ yếu dùng để giảm béo trong thời gian nhịn ăn ngắn hạn.</p>'),
(30, '039442030146', 'Universal Animal Cuts', '<p><strong>ĐẶC ĐIỂM NỔI BẬT</strong></p><p><img src=\"https://bizweb.dktcdn.net/100/011/344/files/animal-cuts-dot-mo-hieu-qua-gymstore.jpg?v=1654767983195\" alt=\"Universal-Animal-Cuts-dot-mo-hieu-qua-gymstore-1\"></p><p>&nbsp;</p><h2><strong>UNIVERSAL&nbsp;ANIMAL CUTS - CÔNG THỨC ĐỐT MỠ ĐỘC QUYỀN CỦA HÃNG</strong></h2><p>&nbsp;</p><p>Đa số các sản phẩm đốt mỡ trên thị trường được điều chế từ công thức cổ điển E/C/A, gồm 3 chất Ephedrine, Caffeine hoặc Aspirin. Đây là 3 chất đã được chứng minh là có khả năng kích thích cơ thể đốt mỡ, tuy nhiên không phải với ai cũng có hiệu quả. Hơn nữa, các thành phần này thường sẽ bị lờn sau một thời gian sử dụng liên tục, khiến hiệu lực sản phẩm bị giảm sút.</p><p>&nbsp;</p><p>&nbsp;</p><p>Animal Cuts sở hữu công thức đột phá với 8 hợp chất mạnh mẽ (hợp chất sinh nhiệt, trao đổi chất, lợi tiểu, nootropic,…) sẽ giúp bạn đốt mỡ một cách toàn diện. Không chỉ là một sản phẩm sinh nhiệt đốt mỡ, Animal Cuts còn giúp giảm lượng nước dư thừa tích trữ dưới da. Có thể cơ thể bạn đạt được tỷ lệ mỡ thấp, tuy nhiên nếu vẫn tích nước dưới da khiến cơ bắp không đủ khô, quá trình đốt mỡ sẽ bị coi là thất bại.</p><p>&nbsp;</p><p>Bạn muốn sở hữu những nét cắt hoàn hảo trên cơ thể, cơ bắp khô căng, sần sùi và nổi gân? Animal Cuts sẽ là công cụ hỗ trợ đắc lực giúp bạn chinh phục những mục tiêu đó. Sản phẩm được sản xuất bởi Universal - thương hiệu dinh dưỡng thể hình rất nổi tiếng đến từ Mỹ với 45 năm kinh nghiệm. Do đó, bạn có thể hoàn toàn yên tâm về độ an toàn của sản phẩm.</p>', 6, '9', '<h2><strong>THÀNH PHẦN KẾT HỢP ĐỘC QUYỀN CỦA UNIVERSAL&nbsp;ANIMAL CUTS</strong></h2><p>&nbsp;</p><p>&nbsp;</p><figure class=\"table\"><table><tbody><tr><td>Thành phần chính</td><td>Caffeine, trà xanh, trà đen,&nbsp;hạt kola, rễ bồ công anh, L-Tyrosine, Ashwagandha, Nootropic,...</td></tr><tr><td>Quy cách đóng gói</td><td>Hộp 42 túi nhỏ</td></tr><tr><td>Serving size</td><td>1 serving = 1 túi = 9 viên</td></tr><tr><td>Thương hiệu&nbsp;</td><td>Universal Nutrition - Mỹ</td></tr></tbody></table></figure><p><br>&nbsp;</p>');

-- --------------------------------------------------------

--
-- Table structure for table `sell_products`
--

CREATE TABLE `sell_products` (
  `sp_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `prices` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sell_products`
--

INSERT INTO `sell_products` (`sp_id`, `product_id`, `prices`) VALUES
(2, 1, '2500000'),
(3, 2, '1200000'),
(4, 3, '1150000'),
(5, 4, '1640000'),
(6, 5, '300000'),
(7, 6, '500000'),
(8, 7, '750000'),
(9, 8, '650000'),
(10, 9, '950000'),
(11, 10, '1690000'),
(12, 11, '1800000'),
(13, 12, '1600000'),
(14, 13, '1850000'),
(15, 14, '1950000'),
(16, 15, '2950000'),
(17, 16, '2150000'),
(18, 17, '650000'),
(19, 18, '550000'),
(20, 19, '650000'),
(21, 20, '700000'),
(22, 21, '1400000'),
(23, 22, '800000'),
(24, 23, '990000'),
(25, 24, '690000'),
(26, 25, '790000'),
(27, 26, '650000'),
(28, 27, '1250000'),
(29, 28, '650000'),
(30, 29, '800000'),
(31, 30, '1200000');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `isAdmin` tinyint(1) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `address`, `phone`, `isAdmin`, `level`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '', '0123456789', 1, 0, '$2y$10$EY2qaf4qNxWvS9TNv6ioaeRUXx8jw3mUJtnAPyN2Dih908vZ6NK7e', '2022-12-08 10:24:14', '2022-12-08 10:24:14'),
(2, 'PT', 'pt@gmail.com', 'Miền Nam', '0123456789', 0, 0, '$2y$10$ONEcA8gy2QU7UHtT34Giaek0eHU4XYdjPmkC/dLELDRkkhSX9MulW', '2022-12-08 10:24:15', '2022-12-08 10:24:15'),
(4, 'Super', 'adu@gmail.com', 'Miền Bắc', '0983742341', 0, NULL, '$2y$10$NKI3qO/iFzLxBapXp5/9buQvA5PVu3qsBjvZ1di/QkHZux70P2V0K', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`address_id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cate_id`);

--
-- Indexes for table `flavors`
--
ALTER TABLE `flavors`
  ADD PRIMARY KEY (`flavor_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`image_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `imports`
--
ALTER TABLE `imports`
  ADD PRIMARY KEY (`import_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`orderDt_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `cate_id` (`cate_id`);

--
-- Indexes for table `sell_products`
--
ALTER TABLE `sell_products`
  ADD PRIMARY KEY (`sp_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `flavors`
--
ALTER TABLE `flavors`
  MODIFY `flavor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `imports`
--
ALTER TABLE `imports`
  MODIFY `import_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `orderDt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;

--
-- AUTO_INCREMENT for table `sell_products`
--
ALTER TABLE `sell_products`
  MODIFY `sp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `imports`
--
ALTER TABLE `imports`
  ADD CONSTRAINT `imports_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`cate_id`) REFERENCES `categories` (`cate_id`);

--
-- Constraints for table `sell_products`
--
ALTER TABLE `sell_products`
  ADD CONSTRAINT `sell_products_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
