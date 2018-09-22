<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="msapplication-tap-highlight" content="no">
    <meta name="description"
          content="Materialize is a Material Design Admin Template,It's modern, responsive and based on Material Design by Google. ">
    <meta name="keywords"
          content="materialize, admin template, dashboard template, flat admin template, responsive admin template,">
    <title>Trang Quản Trị</title>
    <!-- Favicons-->
    <link rel="icon" href="images/favicon/favicon-32x32.png" sizes="32x32">
    <!-- Favicons-->
    <link rel="apple-touch-icon-precomposed" href="images/favicon/apple-touch-icon-152x152.png">
    <!-- For iPhone -->
    <meta name="msapplication-TileColor" content="#00bcd4">
    <meta name="msapplication-TileImage" content="images/favicon/mstile-144x144.png">
    <!-- For Windows Phone -->
    <!-- CORE CSS-->
    <link href="css/themes/fixed-menu/materialize.css" type="text/css" rel="stylesheet">
    <link href="css/themes/fixed-menu/style.css" type="text/css" rel="stylesheet">
    <!-- Custome CSS-->
    <link href="css/custom/custom.css" type="text/css" rel="stylesheet">
    <!-- INCLUDED PLUGIN CSS ON THIS PAGE -->
    <link href="vendors/perfect-scrollbar/perfect-scrollbar.css" type="text/css" rel="stylesheet">
    <link href="vendors/jvectormap/jquery-jvectormap.css" type="text/css" rel="stylesheet">
    <link href="vendors/flag-icon/css/flag-icon.min.css" type="text/css" rel="stylesheet">
    <link rel="stylesheet" href="https://code.jquery.com/jquery-3.3.1.min.js">
    <link rel="stylesheet" type="text/css" href="css/admin.css" />
</head>
<body>
<header id="header" class="page-topbar">
    <!-- start header nav-->
    <div class="navbar-fixed">
        <nav class="navbar-color">
            <div class="nav-wrapper">
                <ul class="left">
                    <li>
                        <h1 class="logo-wrapper">
                            <a href="index.php" class="brand-logo darken-1">
                                <img src="modules/logo/materialize-logo-color.png" alt="materialize logo">
                                <span class="logo-text hide-on-med-and-down">FLOWER</span>
                            </a>
                        </h1>
                    </li>
                </ul>
                <div class="header-search-wrapper hide-on-med-and-down">
                    <i class="material-icons">search</i>
                    <input type="text" name="Search" class="header-search-input z-depth-2"
                           placeholder="Tìm kiếm"/>
                </div>
                <ul class="right hide-on-med-and-down">
                    <li>
                        <a href="javascript:void(0);" class="waves-effect waves-block waves-light toggle-fullscreen">
                            <i class="material-icons">settings_overscan</i>
                        </a>
                    </li>
                    <li>
                        <a href="javascript:void(0);" class="waves-effect waves-block waves-light profile-button"
                           data-activates="profile-dropdown">
                  <span class="avatar-status avatar-online">
                    <img src="modules/logo/avatar-1.png" alt="avatar">
                    <i></i>
                  </span>
                        </a>
                    </li>
                </ul>
                <ul id="profile-dropdown" class="dropdown-content">
                    <li>
                        <a href="#" class="grey-text text-darken-1">
                            <i class="material-icons">face</i> Thông tin cá nhân</a>
                    </li>
                    <li>
                        <a href="#" class="grey-text text-darken-1">
                            <i class="material-icons">keyboard_tab</i> Đăng xuất</a>
                    </li>
                </ul>
            </div>
        </nav>
    </div>
</header> <!-- close header-->
<div id="main">
    <!-- START WRAPPER -->
    <div class="wrapper">
        <aside id="left-sidebar-nav">
            <ul id="slide-out" class="side-nav fixed leftside-navigation">
                <li class="user-details cyan darken-2">
                    <div class="row">
                        <div class="col col s4 m4 l4">
                            <img src="modules/logo/avatar-1.png" alt="Quản trị viên"
                                 class="circle responsive-img valign profile-image cyan"
                                 style="height: 50px;width: 50px">
                        </div>
                        <div class="col col s8 m8 l8">
                            <a class="btn-flat dropdown-button waves-effect waves-light white-text profile-btn"
                               href="index.php?c=2&k=3"
                               data-activates="profile-dropdown-nav">Họ Tên<i
			                            class="mdi-navigation-arrow-drop-down right"></i></a>
                            <a href="#">
                                <p class="user-roal">Trang cá nhân</p>
                            </a>
                        </div>
                    </div>
                </li>
                <li class="li-hover">
                    <p class="ultra-small margin more-text">Quản lý cửa hàng</p>
                </li>
                <li class="no-padding">
                    <ul class="collapsible" data-collapsible="accordion">
                        <li class="bold">
                            <a class="collapsible-header waves-effect waves-cyan">
                                <i class="material-icons">dashboard</i>
                                <span class="nav-text">Quản lý tài khoản</span>
                            </a>
                            <div class="collapsible-body">
                                <ul>
                                    <li>
                                        <a href="index.php?c=2&k=3">
                                            <i class="material-icons">keyboard_arrow_right</i>
                                            <span>Trang Cá Nhân</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="index.php?c=2&k=4">
                                            <i class="material-icons">keyboard_arrow_right</i>
                                            <span>Cập nhật tài khoản</span>
                                        </a>
                                    </li>
		                                <li>
                                            <a href="#">
                                                <i class="material-icons">keyboard_arrow_right</i>
                                                <span>Danh sách nhân viên</span>
                                            </a>
                                        </li>
                                </ul>
                            </div>
                        </li>
                        <li class="bold">
                            <a class="collapsible-header waves-effect waves-cyan">
                                <i class="material-icons">dvr</i>
                                <span class="nav-text">Quản lý loại sản phẩm</span>
                            </a>
                            <div class="collapsible-body">
                                <ul>
                                    <li>
                                        <a href="#">
                                            <i class="material-icons">keyboard_arrow_right</i>
                                            <span> Danh sách loại sản phẩm</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="material-icons">keyboard_arrow_right</i>
                                            <span> Tạo loại sản phẩm mới</span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </li>  <!-- danh mục-->
                        <li class="bold">
                            <a class="collapsible-header waves-effect waves-cyan">
                                <i class="material-icons">web</i>
                                <span class="nav-text">Quản lý sản phẩm</span>
                            </a>
                            <div class="collapsible-body">
                                <ul>
                                    <li>
                                        <a href="#">
                                            <i class="material-icons">keyboard_arrow_right</i>
                                            <span>Danh sách tất cả sản phẩm</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="material-icons">keyboard_arrow_right</i>
                                            <span> Tạo sản phẩm</span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="bold">
                            <a class="collapsible-header  waves-effect waves-cyan">
                                <i class="material-icons">photo_filter</i>
                                <span class="nav-text">Quản lý đơn đặt hàng</span>
                            </a>
                            <div class="collapsible-body">
                                <ul class="collapsible" data-collapsible="accordion">
                                    <li>
                                        <a href="#">
                                            <i class="material-icons">keyboard_arrow_right</i>
                                            <span>Danh sách đơn đặt hàng</span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="li-hover">
                            <p class="ultra-small margin more-text">MORE</p>
                        </li>
                        <li class="bold">
                            <a class="collapsible-header  waves-effect waves-cyan">
                                <i class="material-icons">today</i>
                                <span class="nav-text">Báo cáo doanh thu</span>
                            </a>
                            <div class="collapsible-body">
                                <ul class="collapsible" data-collapsible="accordion">
                                    <li>
                                        <a href="#">
                                            <i class="material-icons">keyboard_arrow_right</i>
                                            <span> Doanh thu theo tháng</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="material-icons">keyboard_arrow_right</i>
                                            <span> Doanh thu theo qúy </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="material-icons">keyboard_arrow_right</i>
                                            <span> Doanh thu theo năm</span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                    <a href="#" data-activates="slide-out"
                       class="sidebar-collapse btn-floating btn-medium waves-effect waves-light hide-on-large-only">
                        <i class="material-icons">menu</i>
                    </a>
                </li>

        </aside>
	    <!-- END WRAPPER -->
<div id="content">
	<h4 style="color: red"><marquee scrollamount="1" behavior="alternate">CHÀO MỪNG BẠN ĐẾN VỚI TRANG QUẢN LÝ</marquee></h4>

<section id="content">
    <!--start container-->
    <div class="container">
        <!--card stats start-->
        <div id="card-stats">
            <div class="row">
                <div class="col s12 m6 l3">
                    <div class="card">
                        <div class="card-content cyan white-text">
                            <p class="card-stats-title">
                                <i class="material-icons">person_outline</i> Khách hàng mới</p>
	                        <h4 class="card-stats-number">5 KH</h4>
                            <p class="card-stats-compare">
                                <i class="material-icons">keyboard_arrow_up</i> 15%
                                <span class="cyan text text-lighten-5">so với hôm qua</span>
                            </p>
                        </div>
                        <div class="card-action cyan darken-1">
                            <div id="clients-bar" class="center-align"></div>
                        </div>
                    </div>
                </div>
                <div class="col s12 m6 l3">
                    <div class="card">
                        <div class="card-content red accent-2 white-text">
                            <p class="card-stats-title">
                                <i class="material-icons">attach_money</i>Tổng doanh thu</p>
                            <h4 class="card-stats-number">123 000 VNĐ</h4>
                            <p class="card-stats-compare">
                                <i class="material-icons">keyboard_arrow_up</i> 70%
                                <span class="red-text text-lighten-5">so với tháng trước</span>
                            </p>
                        </div>
                        <div class="card-action red darken-1">
                            <div id="sales-compositebar" class="center-align"></div>
                        </div>
                    </div>
                </div>
                <div class="col s12 m6 l3">
                    <div class="card">
                        <div class="card-content teal accent-4 white-text">
                            <p class="card-stats-title">
                                <i class="material-icons">trending_up</i> Lợi nhuận hôm nay</p>
                            <h4 class="card-stats-number">123 000 VNĐ</h4>
                            <p class="card-stats-compare">
                                <i class="material-icons">keyboard_arrow_up</i> 80%
                                <span class="teal-text text-lighten-5">so với năm trước</span>
                            </p>
                        </div>
                        <div class="card-action teal darken-1">
                            <div id="profit-tristate" class="center-align"></div>
                        </div>
                    </div>
                </div>
                <div class="col s12 m6 l3">
                    <div class="card">
                        <div class="card-content deep-orange accent-2 white-text">
                            <p class="card-stats-title">
                                <i class="material-icons">content_copy</i> Hóa đơn mới</p>
	                        <h4 class="card-stats-number">5 HĐ</h4>
                            <p class="card-stats-compare">
                                <i class="material-icons">keyboard_arrow_down</i> 3%
                                <span class="deep-orange-text text-lighten-5">so với tháng trước</span>
                            </p>
                        </div>
                        <div class="card-action  deep-orange darken-1">
                            <div id="invoice-line" class="center-align"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--end container-->
</section>
	<!--Menu Content-->
</div>
<!-- jQuery Library -->
<script type="text/javascript" src="vendors/jquery-3.2.1.min.js"></script>
<!--materialize js-->
<script type="text/javascript" src="js/materialize.min.js"></script>
<!--scrollbar-->
<script type="text/javascript" src="vendors/perfect-scrollbar/perfect-scrollbar.min.js"></script>
<!-- chartjs -->
<script type="text/javascript" src="vendors/chartjs/chart.min.js"></script>
<!-- sparkline -->
<script type="text/javascript" src="vendors/sparkline/jquery.sparkline.min.js"></script>
<!-- google map api -->
<script type="text/javascript"
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAAZnaZBXLqNBRXjd-82km_NO7GUItyKek"></script>
<!--jvectormap-->
<script type="text/javascript" src="vendors/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script type="text/javascript" src="vendors/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<script type="text/javascript" src="vendors/jvectormap/vectormap-script.js"></script>
<!--google map-->
<script type="text/javascript" src="js/scripts/google-map-script.js"></script>
<!--plugins.js - Some Specific JS codes for Plugin Settings-->
<script type="text/javascript" src="js/plugins.js"></script>
<!--card-advanced.js - Page specific JS-->
<script type="text/javascript" src="js/scripts/dashboard-analytics.js"></script>
<!--custom-script.js - Add your own theme custom JS-->
<script type="text/javascript" src="js/custom-script.js"></script>
</body>
</html>


