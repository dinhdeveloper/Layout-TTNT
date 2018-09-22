<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
      integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
<div id="quanlygiohang">
    <h2 style="color: red">Quản Lý Giỏ Hàng</h2>
    <table class="table table-bordered">
        <thead>
        <tr>
            <th scope="col">STT</th>
            <th scope="col">Tên Sản Phẩm</th>
            <th scope="col">Hình</th>
            <th scope="col">Giá</th>
            <th scope="col">Số Lượng</th>
            <th scope="col">Thao Tác</th>
        </tr>
        </thead>
                <form name="frmGioHang" action="#" method="post">
                    <tbody>
                    <tr>
                        <th scope="row">STT</th>
                        <td>Tên Sản Phẩm</td>
                        <td>
                            <img src="../images/sanpham/4.jpg" width="50">
                        </td>
                        <td>123 000</td>
                        <td>
                            <input type="number" min="0" max="20" name="txtSoLuong"
                                   value="soluong" width="20">
                            <input type="hidden" name="hdMaSanPham" value="id"/>
                        </td>
                        <td>
                            <input type="submit" value="Cập nhật số lượng"/>
                        </td>
                    </tr>
                    </tbody>
                </form>
    </table>
    <div class="pprice">
        <h5><strong>Tổng thành tiền: 123 000 đ</strong></h5>
    </div>
    <br>
		<a href="#">
			<button type="button" class="btn btn-success">Thanh Toán</button>
		</a>
</div>

