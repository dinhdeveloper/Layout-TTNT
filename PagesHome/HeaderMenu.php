<div class="ban-top">
    <div class="container">
        <div class="top_nav_left">
            <nav class="navbar navbar-default">
                <div class="container-fluid">
                    <div class="collapse navbar-collapse menu--shylock" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav menu__list">
                            <li class="active menu__item menu__item--current"><a class="menu__link" href="index.php">Trang
                                    Chủ
                                    <span class="sr-only">(current)</span></a></li>
                            <?php
                            $sql = "SELECT MaLoaiSanPham, TenLoaiSanPham FROM loaisanpham ORDER BY MaLoaiSanPham ASC";
                            $result = Database::ExecuteQuery($sql);
                            while ($row = mysqli_fetch_array($result)) {
                                ?>
                                <li class=" menu__item"><a class="menu__link"
                                                           href="index.php?c=4&a=<?php echo $row["MaLoaiSanPham"] ?>"><?php echo $row["TenLoaiSanPham"] ?></a>
                                </li>
                                <?php
                            }
                            ?>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
        <div class="clearfix"></div>
    </div>
</div>