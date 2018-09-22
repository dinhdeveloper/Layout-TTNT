-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 22, 2018 lúc 05:30 AM
-- Phiên bản máy phục vụ: 10.1.33-MariaDB
-- Phiên bản PHP: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `trangtrinoithat`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdondathang`
--

CREATE TABLE `chitietdondathang` (
  `MaChiTietDonDatHang` int(11) NOT NULL,
  `MaDonDatHang` int(11) NOT NULL,
  `MaSanPham` int(11) NOT NULL,
  `SoLuong` int(11) DEFAULT NULL,
  `GiaBan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietdondathang`
--

INSERT INTO `chitietdondathang` (`MaChiTietDonDatHang`, `MaDonDatHang`, `MaSanPham`, `SoLuong`, `GiaBan`) VALUES
(1, 1, 4, 1, 435000),
(2, 2, 2, 1, 600000),
(3, 2, 12, 1, 580000),
(4, 3, 2, 1, 600000),
(5, 4, 2, 1, 600000),
(6, 5, 15, 1, 740000),
(7, 6, 1, 1, 700000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dondathang`
--

CREATE TABLE `dondathang` (
  `MaDonDatHang` int(11) NOT NULL,
  `MaKhachHang` int(11) NOT NULL,
  `NgayDatHang` datetime NOT NULL,
  `TongThanhTien` int(11) DEFAULT NULL,
  `MaTinhTrangDonDatHang` int(11) NOT NULL,
  `MaNhanVien` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dondathang`
--

INSERT INTO `dondathang` (`MaDonDatHang`, `MaKhachHang`, `NgayDatHang`, `TongThanhTien`, `MaTinhTrangDonDatHang`, `MaNhanVien`) VALUES
(1, 1, '2018-08-06 00:00:00', 435000, 1, NULL),
(2, 2, '2018-08-06 00:00:00', 1180000, 1, NULL),
(3, 3, '2018-08-06 00:00:00', 600000, 2, 0),
(4, 5, '2018-08-06 00:00:00', 600000, 1, NULL),
(5, 7, '2018-08-06 00:00:00', 740000, 1, NULL),
(6, 7, '2018-08-08 00:00:00', 700000, 1, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `MaKhachHang` int(11) NOT NULL,
  `HoTen` varchar(45) CHARACTER SET utf8 NOT NULL,
  `DiaChi` varchar(256) CHARACTER SET utf8 NOT NULL,
  `SoDienThoai` varchar(11) CHARACTER SET utf8 NOT NULL,
  `MatKhau` int(11) NOT NULL,
  `BiXoa` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`MaKhachHang`, `HoTen`, `DiaChi`, `SoDienThoai`, `MatKhau`, `BiXoa`) VALUES
(1, 'Võ Tùng Nghĩa', '97 Man Thiện- Quận 9', '1234567890', 0, 0),
(2, 'Võ Tùng Nghĩa', '97 Man Thiện- Quận 9', '123456789', 0, 0),
(3, '', '', '', 0, 0),
(4, '', '', '', 0, 0),
(5, 'Trần Bảo Minh', '97 Man Thiện', '12345678', 0, 0),
(6, '', '', '', 0, 0),
(7, 'Võ Tùng Nghĩa', '97 Man Thiện- Quận 9', '23456789', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `MaLoaiSanPham` int(11) NOT NULL,
  `HinhMinhHoaLSP` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TenLoaiSanPham` varchar(45) CHARACTER SET utf8 NOT NULL,
  `BiXoa` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`MaLoaiSanPham`, `HinhMinhHoaLSP`, `TenLoaiSanPham`, `BiXoa`) VALUES
(1, 'nuochoanoithat.jpg', 'Nước Hoa Nội Thất', 0),
(2, 'nenthom.jpg', 'Nến Thơm', 0),
(3, 'thachcaothom.jpg', 'Thạch Cao Thơm', 0),
(4, 'trangtrinhacua.jpg', 'Trang Trí Nhà Cửa', 0),
(5, 'trangtriphongtam.jpg', 'Trang Trí Phòng Tắm', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `MaNhanVien` int(11) NOT NULL,
  `HinhNhanVien` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TenDangNhap` varchar(45) CHARACTER SET utf8 NOT NULL,
  `MatKhau` varchar(20) CHARACTER SET utf8 NOT NULL,
  `HoTen` varchar(45) CHARACTER SET utf8 NOT NULL,
  `Email` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `SoDienThoai` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `BiXoa` int(11) NOT NULL DEFAULT '0',
  `QuyenAdmin` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`MaNhanVien`, `HinhNhanVien`, `TenDangNhap`, `MatKhau`, `HoTen`, `Email`, `SoDienThoai`, `BiXoa`, `QuyenAdmin`) VALUES
(0, 'avatar-16.png', 'admin', 'admin', 'Quản Trị', 'admin@gmail.com', '0123456789', 0, 1),
(30, 'dinh.jpg', 'canhdinh', '123123', 'Trần Cảnh Dinh', 'dinhtrancntt@gmail.com', '0975469232', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSanPham` int(11) NOT NULL,
  `TenSanPham` varchar(100) CHARACTER SET utf8 NOT NULL,
  `MaLoaiSanPham` int(11) NOT NULL,
  `Gia` int(11) NOT NULL,
  `NgayNhap` date NOT NULL,
  `SoLuongBan` int(11) DEFAULT '0',
  `SoLuotXem` int(11) DEFAULT '0',
  `BiXoa` int(11) DEFAULT '0',
  `MoTa` longtext CHARACTER SET utf8,
  `HinhURL` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `ListHinhURL` text COLLATE utf8_unicode_ci NOT NULL,
  `HuongDanSuDung` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`MaSanPham`, `TenSanPham`, `MaLoaiSanPham`, `Gia`, `NgayNhap`, `SoLuongBan`, `SoLuotXem`, `BiXoa`, `MoTa`, `HinhURL`, `ListHinhURL`, `HuongDanSuDung`) VALUES
(1, 'CHIẾT XUẤT XỊT PHÒNG THƠM', 1, 700000, '2018-07-30', 0, 0, 0, 'Xịt phòng đậm đặc mang đến cho nhà bạn hương thơm nồng nàn tức thì', '19.jpg', '', 'Xịt vài lần trong phòng'),
(2, 'BỘ KHUẾCH TÁN BẰNG THỦY TINH', 1, 600000, '2018-07-30', 0, 0, 0, 'Xịt phòng với ống dẫn, cung cấp hương thơm cho những căn phòng lớn vừa trong thời gian vài tuần. Có thể làm đầy lại được', '6.jpg', '', 'Một khi thanh mây được cho vào bộ khuếch tán, ống dẫn của nó sẽ tinh tế lan tỏa hương thơm vào trong không khí trong vòng 5 hoặc 6 tháng. Tuy nhiên, sau 2 tháng thì thân cây mây sẽ bão hoà và phải được thay thế để dùng tốt nhất'),
(3, 'NẾN DEMOISELLE SIZE LỚN', 2, 560000, '2018-07-30', 0, 0, 0, 'Nến size lớn đốt ngọn bấc để có được hương thơm tức thì và chỉ khi ngọn bấc vẫn còn cháy Hương thơm : Marquise', '29.jpg', '', ''),
(4, 'NẾN THƠM ĐÔI TRONG LỌ THỦY TINH', 2, 435000, '2018-07-30', 0, 0, 0, 'Nến thơm đốt ngọn bấc để có được hương thơm tức thì và chỉ khi ngọn bấc vẫn còn cháy Hương thơm : Marquise', '23.jpg', '', ''),
(7, 'BÌNH THỦY TINH ĐỂ CHÂN NẾN', 4, 1160000, '2018-07-30', 0, 0, 0, 'đồ giữ nến đặt cây nên nhỏ vào đồ giữ nến kính mờ được làm bằng thủy ngân', '76.jpg', '', ''),
(8, 'ĐÈN BÀN', 4, 2400000, '2018-07-30', 0, 0, 0, 'đèn bàn đèn điện dùng để trưng trên bàn gỗ, thạch cao, nhung', '73.jpg', '', ''),
(9, 'BỘ 2 BÌNH TRANG TRÍ BẰNG GỐM', 4, 990000, '2018-07-30', 0, 0, 0, 'Bộ 2 bình trang trí bằng gốm 8,5 x 15 cm; 10,5 x 18,5 cm', '100.jpg', '', ''),
(10, 'ĐỒNG HỒ', 4, 2350000, '2018-07-30', 0, 0, 0, 'Đồng hồ 80 x 7 cm', '97.jpg', '', ''),
(11, 'KHAY DỰNG XÀ PHÒNG BẰNG GỐM', 4, 370000, '2018-07-30', 0, 0, 0, 'Khay dựng xà phòng bằng gốm 15,5 x 7 x 7,5 cm', '108.jpg', '', 'Đựng xà phòng'),
(12, 'NƯỚC HOA NỘI THẤT', 1, 580000, '2018-07-30', 0, 0, 0, 'Xịt phòng đậm đặc mang đến cho nhà bạn hương thơm nồng nàn tức thì', 'a1.jpg', '', 'Xịt vài lần trong phòng'),
(13, 'BỘ KHUẾCH TÁN', 1, 1300000, '2018-07-30', 0, 0, 0, 'Xịt phòng với ống dẫn, cung cấp hương thơm cho những căn phòng lớn vừa trong thời gian vài tuần. Có thể làm đầy lại được', '17.jpg', '', 'Một khi thanh mây được cho vào bộ khuếch tán, ống dẫn của nó sẽ tinh tế lan tỏa hương thơm vào trong không khí trong vòng 5 hoặc 6 tháng. Tuy nhiên, sau 2 tháng thì thân cây mây sẽ bão hoà và phải được thay thế để dùng tốt nhất'),
(14, 'BỘ KHUẾCH TÁN NƯỚC HOA', 1, 1100000, '2018-07-30', 0, 0, 0, 'Xịt phòng với ống dẫn, cung cấp hương thơm cho những căn phòng lớn vừa trong thời gian vài tuần. Có thể làm đầy lại được', '5.jpg', '', 'Một khi thanh mây được cho vào bộ khuếch tán, ống dẫn của nó sẽ tinh tế lan tỏa hương thơm vào trong không khí trong vòng 5 hoặc 6 tháng. Tuy nhiên, sau 2 tháng thì thân cây mây sẽ bão hoà và phải được thay thế để dùng tốt nhất'),
(15, 'BỘ KHUẾCH TÁN NƯỚC HOA', 1, 740000, '2018-07-30', 0, 0, 0, 'Xịt phòng với ống dẫn, cung cấp hương thơm cho những căn phòng lớn vừa trong thời gian vài tuần. Có thể làm đầy lại được Hương thơm : Lavande de Provence', '11.jpg', '', 'Một khi thanh mây được cho vào bộ khuếch tán, ống dẫn của nó sẽ tinh tế lan tỏa hương thơm vào trong không khí trong vòng 2 hoặc 3 tháng. Tuy nhiên, sau 2 tháng thì thân cây mây sẽ bão hoà và phải được thay'),
(16, 'NƯỚC HOA NỘI THẤT', 1, 400000, '2018-07-30', 0, 0, 0, 'xịt phòng đậm đặc mang đến cho nhà bạn hương thơm nồng nàn tức thì, hương thơm dự trữ cho bộ khuếch tán Hương thơm : Voltige 200ml', 'a2.jpg', '', 'Một khi hương thơm trong bộ khuếch tán đã hết, hương thơm dự trữ phải được đặt vào bộ khuếch tán để thay thế'),
(17, 'NƯỚC HOA NỘI THẤT', 1, 420000, '2018-07-30', 0, 0, 0, 'Hương thơm dự trữ cho bộ khuếch tán Soliflore Hương thơm : Rose Ancienne 150ml', 'a3.jpg', '', 'Một khi hương thơm trong bộ khuếch tán đã hết, hương thơm dự trữ phải được đặt vào bộ khuếch tán để thay thế'),
(18, 'NẾN THƠM LY THỦY TINH', 2, 500000, '2018-07-30', 0, 0, 0, 'Nến Les Intemporels đốt ngọn bấc để có được hương thơm tức thì và chỉ khi ngọn bấc vẫn còn cháy Hương thơm : Marquise 125g', '21.jpg', '', ''),
(19, 'NẾN THƠM LY THỦY TINH', 2, 275000, '2018-07-30', 0, 0, 0, 'Nến Ornements đốt ngọn bấc để có được hương thơm tức thì và chỉ khi ngọn bấc vẫn còn cháy Hương thơm : Poudre de Riz 60g', 'b1.jpg', '', ''),
(20, 'NẾN THƠM LY THỦY TINH', 2, 330000, '2018-07-30', 0, 0, 0, 'Nến Les Intemporels đốt ngọn bấc để có được hương thơm tức thì và chỉ khi ngọn bấc vẫn còn cháy\r\n\r\nHương thơm: ROSE ÉLÉGANTE 55g', 'b2.jpg', '', ''),
(21, ' NẾN THƠM LY THỦY TINH', 2, 330000, '2018-07-30', 0, 0, 0, 'Nến Les Intemporels đốt ngọn bấc để có được hương thơm tức thì và chỉ khi ngọn bấc vẫn còn cháy\r\n\r\nHương thơm: JARDIN À LA FRANCAISE 55g', '26.jpg', '', ''),
(22, 'NẾN THƠM ĐÔI TRONG LỌ THỦY TINH', 2, 435000, '2018-07-30', 0, 0, 0, 'Nến thơm đốt ngọn bấc để có được hương thơm tức thì và chỉ khi ngọn bấc vẫn còn cháy Hương thơm : Fleur de Coton', '27.jpg', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tinhtrangdondathang`
--

CREATE TABLE `tinhtrangdondathang` (
  `MaTinhTrangDonDatHang` int(11) NOT NULL,
  `TenTinhTrangDonDatHang` varchar(45) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tinhtrangdondathang`
--

INSERT INTO `tinhtrangdondathang` (`MaTinhTrangDonDatHang`, `TenTinhTrangDonDatHang`) VALUES
(1, 'Đặt Hàng'),
(2, 'Đang Xử Lý'),
(3, 'Đang Giao Hàng'),
(4, 'Thanh Toán'),
(5, 'Hủy');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitietdondathang`
--
ALTER TABLE `chitietdondathang`
  ADD PRIMARY KEY (`MaChiTietDonDatHang`),
  ADD KEY `fk_ChiTietDonDatHang_DonDatHang1_idx` (`MaDonDatHang`),
  ADD KEY `fk_ChiTietDonDatHang_SanPham1_idx` (`MaSanPham`);

--
-- Chỉ mục cho bảng `dondathang`
--
ALTER TABLE `dondathang`
  ADD PRIMARY KEY (`MaDonDatHang`),
  ADD KEY `fk_DonDatHang_KhachHang1_idx` (`MaKhachHang`),
  ADD KEY `fk_DonDatHang_TinhTrangDonDatHang1_idx` (`MaTinhTrangDonDatHang`),
  ADD KEY `fk_DonDatHang_NhanVien1_idx` (`MaNhanVien`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MaKhachHang`);

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`MaLoaiSanPham`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`MaNhanVien`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSanPham`),
  ADD KEY `fk_SanPham_LoaiSanPham_idx` (`MaLoaiSanPham`);

--
-- Chỉ mục cho bảng `tinhtrangdondathang`
--
ALTER TABLE `tinhtrangdondathang`
  ADD PRIMARY KEY (`MaTinhTrangDonDatHang`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitietdondathang`
--
ALTER TABLE `chitietdondathang`
  MODIFY `MaChiTietDonDatHang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `dondathang`
--
ALTER TABLE `dondathang`
  MODIFY `MaDonDatHang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `MaKhachHang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `MaLoaiSanPham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `MaNhanVien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MaSanPham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `tinhtrangdondathang`
--
ALTER TABLE `tinhtrangdondathang`
  MODIFY `MaTinhTrangDonDatHang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitietdondathang`
--
ALTER TABLE `chitietdondathang`
  ADD CONSTRAINT `fk_ChiTietDonDatHang_DonDatHang1` FOREIGN KEY (`MaDonDatHang`) REFERENCES `dondathang` (`MaDonDatHang`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ChiTietDonDatHang_SanPham1` FOREIGN KEY (`MaSanPham`) REFERENCES `sanpham` (`MaSanPham`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `dondathang`
--
ALTER TABLE `dondathang`
  ADD CONSTRAINT `fk_DonDatHang_KhachHang1` FOREIGN KEY (`MaKhachHang`) REFERENCES `khachhang` (`MaKhachHang`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_DonDatHang_NhanVien1` FOREIGN KEY (`MaNhanVien`) REFERENCES `nhanvien` (`MaNhanVien`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_DonDatHang_TinhTrangDonDatHang1` FOREIGN KEY (`MaTinhTrangDonDatHang`) REFERENCES `tinhtrangdondathang` (`MaTinhTrangDonDatHang`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `fk_SanPham_LoaiSanPham` FOREIGN KEY (`MaLoaiSanPham`) REFERENCES `loaisanpham` (`MaLoaiSanPham`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
