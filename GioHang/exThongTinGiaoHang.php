<?php
/**
 * Created by PhpStorm.
 * User: Dinht
 * Date: 7/5/2018
 * Time: 7:36 PM
 */
if (isset($_POST['hovaten'])== false){
    Database::ChangeURL ("index.php?c=404");
}
else{
    $hoten = $_POST['hovaten'];
    $diachi = $_POST['diachi'];
    $sodienthoai = $_POST['sodienthoai'];
    if ($hoten==''|| $diachi=='' || $sodienthoai== ''){
        ?>
        <script>
            alert("Bạn vui lòng điền đầy đủ thông tin");
        </script>
        <?php
        Database::ChangeURL("index.php?c=103");
    }
    $sql ="INSERT INTO khachhang(HoTen,DiaChi,SoDienThoai)
				VALUES('$hoten','$diachi','$sodienthoai')";
    $result = Database::ExecuteQuery ($sql);
    $sql = "SELECT MaKhachHang FROM khachhang WHERE BiXoa = 0 ORDER BY MaKhachHang DESC LIMIT 0,1";
    $result = Database::ExecuteQuery ($sql);
    $row = mysqli_fetch_array($result);
    $makhachhang = $row["MaKhachHang"];
    $_SESSION["makhachhang"] = $makhachhang;
    Database::ChangeURL ("index.php?c=105");
}
?>