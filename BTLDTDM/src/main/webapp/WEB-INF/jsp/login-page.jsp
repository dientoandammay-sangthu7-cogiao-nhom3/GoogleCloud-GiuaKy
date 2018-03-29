<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Login | E-Shopper</title>
    <link href="static/css/bootstrap.min.css" rel="stylesheet">
    <link href="static/css/font-awesome.min.css" rel="stylesheet">
    <link href="static/css/prettyPhoto.css" rel="stylesheet">
    <link href="static/css/price-range.css" rel="stylesheet">
    <link href="static/css/animate.css" rel="stylesheet">
    <link href="static/css/main.css" rel="stylesheet">
    <link href="static/css/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="static/js/html5shiv.js"></script>
    <script src="static/js/respond.min.js"></script>
    <![endif]-->
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="static/images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="static/images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="static/images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="static/images/ico/apple-touch-icon-57-precomposed.png">
</head>
<!--/head-->

<body>
    <header id="header">
        <!--header-->

        <div class="header-middle">
            <!--header-middle-->
            <div class="container">
                <div class="row">
                    <div class="col-sm-4">
                        <div class="logo pull-left">
                            <a href="index.html"><img src="static/images/home/logo.jpg" alt="" /></a>
                        </div>
                        <div class="btn-group pull-right">
                            <div class="btn-group">
                            </div>
                            <div class="btn-group">
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-8">
                        <div class="shop-menu pull-right">
                            <ul class="nav navbar-nav" id="btn-login">
                                <li><a href="/dangnhap"><i class="fa fa-lock"></i> Đăng nhập</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--/header-middle-->

        <div class="header-bottom">
            <!--header-bottom-->
            <div class="container">
                <div class="row">
                    <div class="col-sm-9">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                        <span class="sr-only">Toggle navigation</span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                    </button>
                        </div>
                        <div class="mainmenu pull-left">
                            <ul class="nav navbar-nav collapse navbar-collapse">
                                <li><a href="/" class="active">Trang Chủ</a></li>
                                <li class="dropdown"><a href="#">Giới Thiệu<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                        <li><a href="">HCMUTE</a></li>
                                        <li><a href="">ICSSE</a></li>
                                    </ul>
                                </li>

                                <li class="dropdown"><a href="#">Liên Hệ</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-3">
                        <div class="search_box pull-right">
                            <input type="text" placeholder="Tìm Kiếm" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--/header-bottom-->
    </header>
    <!--/header-->
    <!--form-->
    <div class="container">
        <div class="row">
            <div class="col-sm-4 col-sm-offset-1">
                <div class="login-form">
                    <!--login form-->
                    <h2>Đăng nhập tài khoản của bạn</h2>
                       <hr>
            <p style="color:red; font-size:16px">${error}</p>
                    <form class="form-horizontal" method="POST" action="dangnhap">
                       <div class="form-group">
                    <label for="username">Tên đăng nhập *</label>
                    <input type="text" name="username" placeholder="Tên đăng nhập"
                     class="form-control" id="usernamelogin" value="${user.username }">
                </div>
                <div class="form-group">
                    <label for="password">Mật khẩu *</label>
                    <input type="password" name="password" placeholder="Mật khẩu" 
                    id="passlogin" class="form-control" value="${user.password }">
                </div>
                    <hr>
            <small class="sttslogin" id="sttslogin" >Vui lòng nhập đầy đủ thông tin *</small><br>
                        <button type="submit" class="btn btn-default">Đăng Nhập</button>
                    </form>
                    <div class="single-widget">
                        <ul class="nav nav-pills nav-stacked">
                            <li>
                                <a href=""></a>
                            </li>
                        </ul>
                    </div>
                </div>
                <!--/login form-->
            </div>
        </div>
    </div>
    <!--/form-->


<footer id="footer">
            <!--Footer-->
            <div class="footer-widget">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-2">
                            <div class="single-widget">

                            </div>
                        </div>
                        <div class="col-sm-2">
                            <div class="single-widget">

                            </div>
                        </div>
                        <div class="col-sm-2">
                            <div class="single-widget">

                            </div>
                        </div>
                        <div class="col-sm-3 col-sm-offset-1">
                            <div class="single-widget">
                                <h2>Đăng Ký</h2>
                                <form action="#" class="searchform">
                                    <input type="text" placeholder="Email của bạn" />
                                    <button type="submit" class="btn btn-default"><i class="fa fa-arrow-circle-o-right"></i></button>
                                    <p>Nhận các tin tức mới nhất<br />từ trang web của chúng tôi và tự động gửi tới email của bạn</p>
                                </form>
                            </div>
                        </div>

                        <div class="col-sm-2">
                            <div class="companyinfo">
                                <h2><span>Seminar</span> website</h2>
                                <p></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="footer-bottom">
                <div class="container">
                    <div class="row">
                        <p class="pull-left">Copyright © 2017 THE TRIPLE Inc. All rights reserved.</p>
                    </div>
                </div>
            </div>

        </footer>
        <!--/Footer-->



    <script src="static/js/jquery.js"></script>
    <script src="static/js/price-range.js"></script>
    <script src="static/js/jquery.scrollUp.min.js"></script>
    <script src="static/js/bootstrap.min.js"></script>
    <script src="static/js/jquery.prettyPhoto.js"></script>
    <script src="static/js/main.js"></script>
</body>

</html>