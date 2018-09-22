<div class="checkout">
    <div class="container">
        <h3>Giỏ Hàng Của Tôi</h3>
        <div class="table-responsive checkout-right animated wow slideInUp" data-wow-delay=".5s">
            <table class="timetable_sub">
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
        </div>
        <div class="checkout-left">

            <div class="checkout-right-basket animated wow slideInRight" data-wow-delay=".5s">
                <a href="#"><span class="glyphicon glyphicon-menu-left" aria-hidden="true"></span>Back To Shopping</a>
            </div>
            <div class="checkout-left-basket animated wow slideInLeft" data-wow-delay=".5s">
                <h4>TỔNG THÀNH TIỀN</h4>
                <h3 style="text-align: center">Tổng Thành Tiền<br><br>Đồng</h3>
		            <a href="#">
                        <button type="button" class="btn btn-success" style="margin-left: 100px;margin-bottom: 40px">Thanh Toán</button>
                    </a>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
</body>
</html>
