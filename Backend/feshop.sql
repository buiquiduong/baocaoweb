-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 11, 2021 lúc 08:38 AM
-- Phiên bản máy phục vụ: 10.4.8-MariaDB
-- Phiên bản PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `feshop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id_comment` int(11) NOT NULL,
  `id_product` int(255) DEFAULT NULL,
  `email_user` varchar(255) DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`id_comment`, `id_product`, `email_user`, `content`, `time`) VALUES
(1, 1, 'abc@gmail.com', 'Sản phẩm giá rẻ, chất lượng tốt', '2021-05-28 15:18:34'),
(2, 24, 'buiquiduongvip@gmail.com', 'hhshs', '2021-07-10 08:54:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ctdonhang`
--

CREATE TABLE `ctdonhang` (
  `madonhang` int(11) UNSIGNED NOT NULL,
  `masanpham` int(11) UNSIGNED NOT NULL,
  `dongia` float(255,0) DEFAULT NULL,
  `soluong` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ctdonhang`
--

INSERT INTO `ctdonhang` (`madonhang`, `masanpham`, `dongia`, `soluong`) VALUES
(4, 1, 10000000, 2),
(5, 22, 30000000, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `madonhang` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngaydat` datetime DEFAULT NULL,
  `diachigiaohang` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sdt` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `ngaygiaodukien` date DEFAULT NULL,
  `ngaygiaothucte` datetime DEFAULT NULL,
  `tongtien` float(255,0) DEFAULT NULL,
  `tinhtrang` int(1) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`madonhang`, `email`, `ngaydat`, `diachigiaohang`, `sdt`, `ngaygiaodukien`, `ngaygiaothucte`, `tongtien`, `tinhtrang`) VALUES
(3, 'admin@sportshop.vn', '2021-07-10 00:00:00', 'Frontend', '0937378973', NULL, NULL, 0, 1),
(4, 'admin@sportshop.vn', '2021-07-10 00:00:00', 'Frontend', '0937378973', NULL, NULL, 20000000, 2),
(5, 'abc@gmail.com', '2021-07-10 00:00:00', 'Tịnh Hà, Sơn Tịnh, Quảng Ngãi', '09785556555', NULL, NULL, 30000000, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giohang`
--

CREATE TABLE `giohang` (
  `email` varchar(255) CHARACTER SET utf8 NOT NULL,
  `masp` int(255) NOT NULL,
  `gia` int(255) DEFAULT NULL,
  `soluong` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `giohang`
--

INSERT INTO `giohang` (`email`, `masp`, `gia`, `soluong`) VALUES
('admin@gmail.com', 1, 300000, 69);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `maloai` int(11) NOT NULL,
  `tenloai` varchar(255) CHARACTER SET utf8 DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`maloai`, `tenloai`) VALUES
(1, 'Pc'),
(2, 'Laptop'),
(3, 'Chuột'),
(4, 'Bàn phím'),
(5, 'Ram'),
(6, 'Ổ cứng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhasanxuat`
--

CREATE TABLE `nhasanxuat` (
  `ma_nsx` int(11) NOT NULL,
  `ten_nsx` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `nhasanxuat`
--

INSERT INTO `nhasanxuat` (`ma_nsx`, `ten_nsx`) VALUES
(1, 'SamSung'),
(2, 'Kingston'),
(3, 'Corsair'),
(4, 'LCD'),
(5, 'SamsungEvo'),
(6, 'Asus'),
(7, 'Dell'),
(8, 'HP'),
(9, 'Apple');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `masanpham` int(11) UNSIGNED NOT NULL,
  `tensanpham` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `gia` float(255,0) DEFAULT NULL,
  `soluong` int(255) DEFAULT NULL,
  `luotxem` int(255) UNSIGNED DEFAULT 0,
  `daban` int(11) UNSIGNED DEFAULT 0,
  `hinhanh` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ngaynhap` date DEFAULT NULL,
  `loaisanpham` int(11) DEFAULT NULL,
  `nhasanxuat` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`masanpham`, `tensanpham`, `gia`, `soluong`, `luotxem`, `daban`, `hinhanh`, `ngaynhap`, `loaisanpham`, `nhasanxuat`) VALUES
(1, 'PC full 10tr', 10000000, 47, 2, 3, 'https://tinhocanhphat.vn/media/product/250_13205_pcgm090.jpg', '2021-05-12', 1, 1),
(22, 'Pc corsair', 30000000, 67, 1, 1, 'https://hanoicomputercdn.com/media/product/42525_modding_pc_corsair_570x_ht_16_1.jpg', '2018-05-12', 1, 3),
(23, 'Pc giá rẻ', 3000000, 95, 3, 0, 'https://cf.shopee.vn/file/be3e8b472e569cfa084aff98074cffe5', '2018-05-12', 1, 1),
(24, 'Pc cho sinh viên', 4000000, 74, 2, 0, 'https://gamek.mediacdn.vn/133514250583805952/2020/5/31/1-15909071700831482470273.png', '2018-05-12', 1, 1),
(27, 'Pc sale', 5000000, 45, 0, 0, 'https://i0.wp.com/maytinhdalat.vn/wp-content/uploads/2021/01/z2291943363955_c7607d2f47dbd6d06482a24476b17403.jpg?resize=1050%2C588&quality=100&strip=all', '2018-05-12', 1, 2),
(28, 'Pc sale 1', 3000000, 45, 0, 0, 'https://vn-test-11.slatic.net/p/ae92a0bcdef9488d03caf8dbd3166b1a.jpg_800x800Q100.jpg', '2018-05-12', 1, 2),
(47, 'Asus', 25000000, 65, 0, 0, 'https://anphat.com.vn/media/product/30385_laptop_asus_x409fj_ek035t_1.jpg', '2018-05-12', 2, 6),
(48, 'Dell vostro', 25000000, 65, 0, 0, 'https://dienmaythienhoa.vn/static/images/4.%20hinh%20sp/MAY%20TINH%20XACH%20TAY%20DELL%20VOS%2014%203490(2N1R82).jpg', '2018-05-12', 2, 7),
(49, 'Dell', 4500000, 65, 0, 0, 'https://laptops.vn/uploads/laptop-dell_1588080683.jpg', '2018-05-12', 2, 7),
(50, 'HP', 4500000, 65, 0, 0, 'https://cdn.tgdd.vn/Products/Images/44/237630/hp-340s-g7-i3-240q4pa-13-600x600.jpg', '2018-05-12', 2, 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` int(1) UNSIGNED DEFAULT 0,
  `status` int(1) UNSIGNED DEFAULT 1,
  `createat` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`id`, `email`, `password`, `firstname`, `lastname`, `address`, `phone`, `role`, `status`, `createat`) VALUES
(1, 'admin@sportshop.vn', '111111', 'Admin', 'Bùi', 'Frontend', '0937378973', 1, 1, '2018-05-14 04:02:42'),
(4, 'abc@gmail.com', '123456', 'Dương', 'Bùi', 'Tịnh Hà, Sơn Tịnh, Quảng Ngãi', '09785556555', 0, 1, '2021-07-10 09:17:00');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id_comment`);

--
-- Chỉ mục cho bảng `ctdonhang`
--
ALTER TABLE `ctdonhang`
  ADD PRIMARY KEY (`madonhang`,`masanpham`),
  ADD KEY `ctdonhang_sanpham` (`masanpham`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`madonhang`),
  ADD KEY `donhang_user` (`email`);

--
-- Chỉ mục cho bảng `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`masp`,`email`);

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`maloai`);

--
-- Chỉ mục cho bảng `nhasanxuat`
--
ALTER TABLE `nhasanxuat`
  ADD PRIMARY KEY (`ma_nsx`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`masanpham`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `emailunique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id_comment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `madonhang` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `maloai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `nhasanxuat`
--
ALTER TABLE `nhasanxuat`
  MODIFY `ma_nsx` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `masanpham` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `ctdonhang`
--
ALTER TABLE `ctdonhang`
  ADD CONSTRAINT `ctdonhang_donhang` FOREIGN KEY (`madonhang`) REFERENCES `donhang` (`madonhang`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `ctdonhang_sanpham` FOREIGN KEY (`masanpham`) REFERENCES `sanpham` (`masanpham`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_user` FOREIGN KEY (`email`) REFERENCES `taikhoan` (`email`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
