<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<c:set var="user" value=" ${login_user}" />
<!doctype html>
<html class="no-js" lang="en">
<head>
    <base href="${ctx}/">
    <title>京宝商城</title>

    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Login</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Place favicon.ico in the root directory -->
    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
    <!--All Css Here-->

    <!-- Ionicons Font CSS-->
    <link rel="stylesheet" href="css/ionicons.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="css/font-awesome.min.css">

    <!-- Animate CSS-->
    <link rel="stylesheet" href="css/animate.css">
    <!-- Owl Carousel CSS-->
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <!-- Nice Select CSS-->
    <link rel="stylesheet" href="css/nice-select.css">
    <!-- Slick CSS-->
    <link rel="stylesheet" href="css/slick.css">
    <!-- Meanmenu CSS-->
    <link rel="stylesheet" href="css/meanmenu.min.css">
    <!-- Venobox CSS-->
    <link rel="stylesheet" href="css/venobox.css">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Style CSS -->
    <link rel="stylesheet" href="style.css">
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="css/responsive.css">
    <!--Jquery 1.12.4-->
    <script src="js/vendor/modernizr-2.8.3.min.js"></script>
    <script type="text/javascript" src="lib/jquery/jquery-3.6.0.min.js"></script>
    <script type="text/javascript" src="lib/layer/layer.js"></script>
    <script type="text/javascript">
        const ctx = "${ctx}";
        const user = "${user}";
    </script>

    <script src="js/jingbao/login.js"></script>
    <!-- Modernizr Js -->

</head>
<body>

<!--[if lt IE 8]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
<![endif]-->

<div class="wrapper">
    <!--Header Area Start-->
    <%@include file="template/header.jsp" %>
    <!--Header Area End-->
    <!--Breadcrumb Area Start-->
    <div class="breadcrumb-area">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="breadcrumb-content text-center">
                        <h1 class="breadmome-name">登录</h1>
                        <ul>
                            <li><a href="index.html">主页</a></li>
                            <li class="active">登录</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--Breadcrumb Area End-->
    <!--Login Area Strat-->
    <div class="login-area mt-60">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-12 col-lg-6 col-xl-6 ml-auto mr-auto">
                    <div class="login">
                        <div class="login-form-container">
                            <div class="login-form">
                                <form action="/login" method="post">
                                    <label>用户名</label>
                                    <input name="username" type="text">
                                    <label>密码</label>
                                    <input name="password" type="password">
                                    <div class="button-box">
                                        <div class="login-toggle-btn">
                                            <input type="checkbox">
                                            <label>记得我</label>
                                            <a href="#">忘记了密码?</a>
                                        </div>
                                        <button type="button" class="default-btn">登录</button>
                                    </div>
                                </form>
                                <div class="no-account">
                                    <a href="/register">没有账号？在这里创建一个</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--Login Area End-->
    <!--Footer Area Start-->
    <%@include file="template/footer.jsp" %>
    <!--Footer Area End-->
</div>





<!--All Js Here-->
<script src="js/vendor/jquery-1.12.4.min.js"></script>
<!--Imagesloaded-->
<script src="js/imagesloaded.pkgd.min.js"></script>
<!--Isotope-->
<script src="js/isotope.pkgd.min.js"></script>
<!--Waypoints-->
<script src="js/waypoints.min.js"></script>
<!--Counterup-->
<script src="js/jquery.counterup.min.js"></script>
<!--Countdown-->
<script src="js/jquery.countdown.min.js"></script>
<!--Carousel-->
<script src="js/owl.carousel.min.js"></script>
<!--Slick-->
<script src="js/slick.min.js"></script>
<!--Meanmenu-->
<script src="js/jquery.meanmenu.min.js"></script>
<!--Instafeed-->
<!--<script src="js/instafeed.min.js"></script>-->
<!--Nice Select-->
<script src="js/jquery.nice-select.min.js"></script>
<!--ScrollUp-->
<script src="js/jquery.scrollUp.min.js"></script>
<!--Wow-->
<script src="js/wow.min.js"></script>
<!--Venobox-->
<script src="js/venobox.min.js"></script>
<!--Popper-->
<script src="js/popper.min.js"></script>
<!--Bootstrap-->
<script src="js/bootstrap.min.js"></script>
<!--Plugins-->
<script src="js/plugins.js"></script>
<!--Main Js-->
<script src="js/jingbaomain.js"></script>

</body>
</html>
