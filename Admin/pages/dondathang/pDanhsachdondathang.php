<form method="post" style="padding: 25px">
	<h4 style="color: red">Danh Sách Đơn Đặt Hàng</h4>
	<table class="table">
		<thead class="thead-light">
		<tr>
			<th scope="col">Mã Đơn Đặt Hàng</th>
			<th scope="col">Khách Hàng</th>
			<th scope="col">Số Điện Thoại</th>
			<th scope="col">Địa Chỉ</th>
			<th scope="col">Tình Trạng ĐĐH</th>
			<th scope="col">Nhân Viên Xử Lý</th>
			<th scope="col">Thao Tác</th>
		</tr>
		</thead>
        <?php
        $sql = "SELECT  MaDonDatHang, HoTen, DiaChi, SoDienThoai, TenTinhTrangDonDatHang, MaTinhTrangDonDatHang, HoTenNhanVien
        FROM ((SELECT MaDonDatHang, khachhang.HoTen, khachhang.DiaChi, khachhang.SoDienThoai,
        TenTinhTrangDonDatHang, dondathang.MaTinhTrangDonDatHang, '' As HoTenNhanVien
        FROM khachhang, dondathang, tinhtrangdondathang, nhanvien
        WHERE khachhang.MaKhachHang = dondathang.MaKhachHang AND dondathang.MaTinhTrangDonDatHang =
        tinhtrangdondathang.MaTinhTrangDonDatHang AND dondathang.MaNhanVien Is NULL
        ORDER BY tinhtrangdondathang.MaTinhTrangDonDatHang) UNION
        (SELECT MaDonDatHang, khachhang.HoTen, khachhang.DiaChi, khachhang.SoDienThoai,
         TenTinhTrangDonDatHang, dondathang.MaTinhTrangDonDatHang, nhanvien.HoTen As HoTenNhanVien
        FROM khachhang, dondathang, tinhtrangdondathang, nhanvien
        WHERE khachhang.MaKhachHang = dondathang.MaKhachHang AND dondathang.MaTinhTrangDonDatHang =
        tinhtrangdondathang.MaTinhTrangDonDatHang AND dondathang.MaNhanVien = nhanvien.MaNhanVien
        ORDER BY tinhtrangdondathang.MaTinhTrangDonDatHang)) t";
//        $sql = "SELECT dondathang.MaDonDatHang, khachhang.HoTen, khachhang.DiaChi, khachhang.SoDienThoai,
//                tinhtrangdondathang.TenTinhTrangDonDatHang,dondathang.MaTinhTrangDonDatHang,nhanvien.HoTen as HoTenNhanVien
//                FROM dondathang,khachhang,tinhtrangdondathang,nhanvien
//                WHERE (dondathang.MaKhachHang = khachhang.MaKhachHang) AND
//                (dondathang.MaTinhTrangDonDatHang= tinhtrangdondathang.MaTinhTrangDonDatHang) AND
//                dondathang.MaTinhTrangDonDatHang";
        $result = Database::ExecuteQuery($sql);
        while($row = mysqli_fetch_array($result)){
            $maDonDatHang = $row["MaDonDatHang"];
            $hoTen = $row["HoTen"];
            $diaChi = $row["DiaChi"];
            $soDienThoai = $row["SoDienThoai"];
            $tenTinhTrangDonDatHang = $row["TenTinhTrangDonDatHang"];
            $maTinhTrangDonDatHang = $row["MaTinhTrangDonDatHang"];
            $hoTenNhanVien = $row["HoTenNhanVien"];

            $class = "";
            switch($maTinhTrangDonDatHang){
                case 1:
                    $class = "";
                    break;
                case 2:
                    $class = "classDangXuLy";
                    break;
                case 3:
                    $class = "classGiaoHang";
                    break;
                case 4:
                    $class = "classThanhToan";
                    break;
                case 5:
                    $class = "classHuy";
                    break;
            }

            include("pages/dondathang/tDanhsachdondathang.php");
        }
        ?>
	</table>
</form>