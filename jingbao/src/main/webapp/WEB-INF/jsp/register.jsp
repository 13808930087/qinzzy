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
    <!-- Modernizr Js -->
    <script src="js/vendor/modernizr-2.8.3.min.js"></script>
    <!--Jquery 1.12.4-->
    <script type="text/javascript" src="lib/jquery/jquery-3.6.0.min.js"></script>
    <script type="text/javascript" src="lib/layer/layer.js"></script>
    <script type="text/javascript">
        const ctx = "${ctx}";
        const user = "${user}";
    </script>
    <script src="js/jingbao/register.js"></script>

    <!-- <script src="js/login.js"></script>
   Modernizr Js -->
</head>
<body>

<!--[if lt IE 8]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
<![endif]-->

<div class="wrapper">
    <!--Header Area Start-->
    <header>
        <!--Header Top Area Start-->
        <div class="header-top-area">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <!--Header Top Left Start-->
                        <div class="header-top-left">
                            <a href="#">England’s Fastest Online Shopping Destination</a>
                        </div>
                        <!--Header Top Left End-->
                    </div>
                    <div class="col-md-6">
                        <!--Header Top Right Start-->
                        <div class="header-top-right text-center text-md-right">
                            <ul class="header-top-menu">
                                <li><a href="/login">My account</a></li>
                                <li class="drodown-show"><a href="#">USD $ <i class="ion-ios-arrow-down"></i></a>
                                    <!--Header Top Dropdown Start-->
                                    <ul class="ht-dropdown">
                                        <li><a href="#">EUR €</a></li>
                                        <li><a href="#">USD $</a></li>
                                    </ul>
                                    <!--Header Top Dropdown End-->
                                </li>
                                <li class="drodown-show"><a href="#">English <i class="ion-ios-arrow-down"></i></a>
                                    <!--Header Top Dropdown Start-->
                                    <ul class="ht-dropdown">
                                        <li><a href="#">English</a></li>
                                        <li><a href="#">Français</a></li>
                                    </ul>
                                    <!--Header Top Dropdown End-->
                                </li>
                            </ul>
                        </div>
                        <!--Header Top Right End-->
                    </div>
                </div>
            </div>
        </div>
        <!--Header Top Area End-->
        <!--Header Middle Area Start-->
        <div class="header-middle-area header-sticky">
            <div class="container">
                <div class="row">
                    <div class="col-md-3">
                        <!--Logo Start-->
                        <div class="logo">
                            <a href="index.html">
                                <img src="img/logo/logo1.jpg" alt="">
                            </a>
                        </div>
                        <!--Logo End-->
                    </div>
                    <div class="col-md-9">
                        <!--Header Menu Start-->
                        <div class="header-menu-area">
                            <nav>
                                <ul class="main-menu">
                                    <li class="active"><a href="/index">Home</a>
                                        <!--Dropdown Menu Start-->
                                        <ul class="dropdown">
                                            <li><a href="index.html">Home Shop 1</a></li>
                                            <li><a href="index-2.html">Home Shop 2</a></li>
                                            <li><a href="index-3.html">Home Shop 3</a></li>
                                            <li><a href="index-4.html">Home Shop 4</a></li>
                                        </ul>
                                        <!--Dropdown Menu End-->
                                    </li>
                                    <li><a href="about.html">About us</a></li>
                                    <li><a href="/shop">Shop</a></li>
                                    <li><a href="index.html">Pages</a>
                                        <!--Dropdown Menu Start-->
                                        <ul class="dropdown">
                                            <li><a href="about.html">About Us</a></li>
                                            <li><a href="/shop">Shop</a></li>
                                            <li><a href="single-product.html">Single Product</a></li>
                                            <li><a href="/login">My Account</a></li>
                                            <li><a href="login.html">Login</a></li>
                                            <li><a href="register.html">Register</a></li>
                                            <li><a href="faq.html">Frequently Questions</a></li>
                                            <li><a href="contact.html">Contact Us</a></li>
                                            <li><a href="404.html">Error 404</a></li>
                                        </ul>
                                        <!--Dropdown Menu End-->
                                    </li>
                                    <li><a href="blog.html">Blog</a></li>
                                    <li><a href="jingbao/list">Features</a>
                                        <!--Mega Menu Start-->
                                        <ul class="mega-menu">
                                            <li><a href="#" class="item-link">Pages</a>
                                                <ul>
                                                    <li><a href="/login">My Account</a></li>
                                                    <li><a href="checkout.html">Checkout</a></li>
                                                    <li><a href="cart.html">Shopping cart</a></li>
                                                    <li><a href="wishlist.html">Wishlist</a></li>
                                                    <li><a href="faq.html">Frequently Questions</a></li>
                                                    <li><a href="404.html">Error 404</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="#" class="item-link">Blog</a>
                                                <ul>
                                                    <li><a href="blog-nosidebar.html">None Sidebar</a></li>
                                                    <li><a href="blog-left-sidebar.html">Sidebar Left</a></li>
                                                    <li><a href="single-blog.html">Gallery Format</a></li>
                                                    <li><a href="single-blog.html">Audio Format</a></li>
                                                    <li><a href="single-blog.html">Video Format</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="#" class="item-link">Shop</a>
                                                <ul>
                                                    <li><a href="shop-full-width.html">Full Width</a></li>
                                                    <li><a href="shop-right-sidebar.html">Sidebar Right</a></li>
                                                    <li><a href="shop-list.html">List View</a></li>
                                                    <li><a href="single-product.html">Single Product</a></li>
                                                    <li><a href="single-product.html">Variable Product</a></li>
                                                    <li><a href="single-product.html">Simple Product</a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                        <!--Mega Menu End-->
                                    </li>
                                </ul>
                            </nav>
                        </div>
                        <!--Header Menu End-->
                        <div class="header-phone">
                            <p>Call us: <br><span>(999) 1234 56789</span></p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <!--Mobile Menu Area Start-->
                        <div class="mobile-menu d-lg-none"></div>
                        <!--Mobile Menu Area End-->
                    </div>
                </div>
            </div>
        </div>
        <!--Header Middle Area End-->
        <!--Header Bottom Area Start-->
        <div class="header-bottom-area pb-15">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-lg-3 order-lg-1 order-3">
                        <!--Category Menu Start-->
                        <div class="category-menu category-menu-hidden">
                            <div class="category-heading">
                                <h2 class="categories-toggle"><span>categories</span><i class="ion-ios-arrow-down"></i></h2>
                            </div>
                            <div id="cate-toggle" class="category-menu-list">
                                <ul>
                                    <li class="right-menu"><a href="shop.html">Electronic</a>
                                        <ul class="cat-mega-menu">
                                            <li class="right-menu cat-mega-title">
                                                <a href="shop.html">Television</a>
                                                <ul>
                                                    <li><a href="shop.html">LCD TV</a></li>
                                                    <li><a href="shop.html">LED TV</a></li>
                                                    <li><a href="shop.html">Curved TV</a></li>
                                                    <li><a href="shop.html">Plasma TV</a></li>
                                                </ul>
                                            </li>
                                            <li class="right-menu cat-mega-title">
                                                <a href="shop.html">Refrigerator</a>
                                                <ul>
                                                    <li><a href="shop.html">Brand1</a></li>
                                                    <li><a href="shop.html">Brand2</a></li>
                                                    <li><a href="shop.html">Brand3</a></li>
                                                    <li><a href="shop.html">Brand4</a></li>
                                                </ul>
                                            </li>
                                            <li class="right-menu cat-mega-title">
                                                <a href="shop.html">Air conditioners</a>
                                                <ul>
                                                    <li><a href="shop.html">Brand2</a></li>
                                                    <li><a href="shop.html">Brand4</a></li>
                                                    <li><a href="shop.html">Brand6</a></li>
                                                    <li><a href="shop.html">Brand3</a></li>
                                                </ul>
                                            </li>
                                            <li class="right-menu cat-mega-title">
                                                <a href="shop.html">Fashion</a>
                                                <ul>
                                                    <li><a href="shop.html">Brand1</a></li>
                                                    <li><a href="shop.html">Brand2</a></li>
                                                    <li><a href="shop.html">Brand3</a></li>
                                                    <li><a href="shop.html">Brand4</a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                    <li><a href="#">Fashion &amp; Beauty</a></li>
                                    <li class="right-menu"><a href="shop.html">Camera &amp; Photo</a>
                                        <!--Category Dropdown Menu Start-->
                                        <ul class="cat-dropdown">
                                            <li><a href="shop.html">Brand6</a></li>
                                            <li><a href="shop.html">Brand2</a></li>
                                            <li><a href="shop.html">Brand1</a></li>
                                            <li><a href="shop.html">Brand7</a></li>
                                        </ul>
                                        <!--Category Dropdown Menu Start-->
                                    </li>
                                    <li class="right-menu"><a href="#">Smart Phone &amp; Tablet</a>
                                        <!--Category Dropdown Menu Start-->
                                        <ul class="cat-dropdown">
                                            <li><a href="shop.html">Brand6</a></li>
                                            <li><a href="shop.html">Brand2</a></li>
                                            <li><a href="shop.html">Brand1</a></li>
                                            <li><a href="shop.html">Brand7</a></li>
                                        </ul>
                                        <!--Category Dropdown Menu Start-->
                                    </li>
                                    <li><a href="shop.html">Sport &amp; Outdoor</a></li>
                                    <li><a href="shop.html">Automotive &amp; Morocycle</a></li>
                                    <li><a href="shop.html">Washing machine</a></li>
                                    <li><a href="shop.html">Brand3</a></li>
                                    <li><a href="shop.html">Brand2</a></li>
                                    <li class="rx-child"><a href="shop.html">Sanyo</a></li>
                                    <li class="rx-child"><a href="shop.html">Brand1</a></li>
                                    <li class="rx-child"><a href="shop.html">Jewelry &amp; Watches</a></li>
                                    <li class="rx-child"><a href="shop.html">Holiday Supplies &amp; Gifts</a></li>
                                    <li class="rx-child"><a href="shop.html">Toys &amp; Hobbies</a></li>
                                    <li class="rx-parent">
                                        <a class="rx-default"><span class="cat-thumb  fa fa-plus"></span>More</a>
                                        <a class="rx-show"><span class="cat-thumb  fa fa-minus"></span>Less</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!--Category Menu End-->
                    </div>
                    <div class="col-md-9 col-lg-6 order-lg-2 order-1">
                        <!--Header Top Search Start-->
                        <div class="header-top-search">
                            <div class="search-categories">
                                <form action="#">
                                    <div class="search-form-input">
                                        <select id="select" name="select" class="nice-select">
                                            <option value="">All Categories</option>
                                            <option value="12">Uncategorized</option>
                                            <option value="22">Electronics</option>
                                            <option value="26">Accessories</option>
                                            <option value="27">Cap HDMI</option>
                                            <option value="28">Headphone</option>
                                            <option value="29">Keyboard</option>
                                            <option value="23">Mouse</option>
                                            <option value="30">Laptops & Tablets</option>
                                            <option value="31">Laptop</option>
                                            <option value="31">Macbook</option>
                                            <option value="31">Smartphone</option>
                                            <option value="31">Tablets</option>
                                            <option value="32">Tvs & Audios</option>
                                            <option value="33">Amply</option>
                                            <option value="24">Smart TV</option>
                                            <option value="34">Speaker</option>
                                            <option value="35">TV</option>
                                            <option value="36">Fashion & Jewelry</option>
                                            <option value="37">Accessories</option>
                                            <option value="25">Rings</option>
                                            <option value="38">Watches</option>
                                        </select>
                                        <input type="text" placeholder="Search product...">
                                        <button class="top-search-btn" type="submit"><i class="ion-ios-search-strong"></i></button>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <!--Header Top Search End-->
                    </div>
                    <div class="col-md-3 col-lg-3 order-lg-3 order-2">
                        <!--Mini Cart Start-->
                        <div class="mini-cart">
                            <a href="#">
                                    <span class="cart-info">
		                                <span class="cart-total">2</span>
		                                <span class="text">My Cart</span>
		                            </span>
                            </a>
                            <!--Cart Dropdown Start-->
                            <div class="header-cart">
                                <ul class="cart-items">
                                    <li class="single-cart-item">
                                        <div class="cart-img">
                                            <a href="cart.html"><img src="img/cart/cart1.jpg" alt=""></a>
                                            <span class="cart-sticker">1x</span>
                                        </div>
                                        <div class="cart-content">
                                            <h5 class="product-name"><a href="single-product.html">Lipstick Ultra Violet</a></h5>
                                            <span class="product-price">$16.40</span>
                                            <span class="product-size"><span>Size</span>: S</span>
                                            <span class="product-color"><span>Color</span>: Yellow</span>
                                        </div>
                                        <div class="cart-item-remove">
                                            <a title="Remove" href="#"><i class="fa fa-trash"></i></a>
                                        </div>
                                    </li>
                                    <li class="single-cart-item">
                                        <div class="cart-img">
                                            <a href="cart.html"><img src="img/cart/cart2.jpg" alt=""></a>
                                            <span class="cart-sticker">1x</span>
                                        </div>
                                        <div class="cart-content">
                                            <h5 class="product-name"><a href="single-product.html">Columbia Men's Ascender</a></h5>
                                            <span class="product-price">$23.39</span>
                                            <span class="product-size"><span>Size</span>: S</span>
                                            <span class="product-color"><span>Color</span>: Orange</span>
                                        </div>
                                        <div class="cart-item-remove">
                                            <a title="Remove" href="#"><i class="fa fa-trash"></i></a>
                                        </div>
                                    </li>
                                </ul>
                                <div class="cart-total">
                                    <h5>Subtotal <span class="float-right">$39.79</span></h5>
                                    <h5>Shipping <span class="float-right">$7.00</span></h5>
                                    <h5>Taxes <span class="float-right">$0.00</span></h5>
                                    <h5>Total <span class="float-right">$46.79</span></h5>
                                </div>
                                <div class="checkout">
                                    <a  href="checkout.html">checkout</a>
                                </div>
                            </div>
                            <!--Cart Dropdown End-->
                        </div>
                        <!--Mini Cart End-->
                    </div>
                </div>
            </div>
        </div>
        <!--Header Bottom Area End-->
    </header>
    <!--Header Area End-->
    <!--Breadcrumb Area Start-->
    <div class="breadcrumb-area">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="breadcrumb-content text-center">
                        <h1 class="breadmome-name">注册</h1>
                        <ul>
                            <li><a href="/index">主页</a></li>
                            <li class="active">注册</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--Breadcrumb Area End-->
    <!--Register Area Strat-->
    <div class="register-area mt-60">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-12 col-lg-6 col-xl-6 ml-auto mr-auto">
                    <div class="login">
                        <div class="login-form-container">
                            <div class="register-form">
                                <form action="/register" method="post">
                                    <p><a href="/login">已经有一个帐户？ 改为登录！</a></p>
<%--                                    <label>性别</label>--%>
<%--                                    <div class="input-radio">--%>
<%--                                        <span class="custom-radio"><input name="customerSex" value="1" type="radio"> 男.</span>--%>
<%--                                        <span class="custom-radio"><input name="customerSex" value="1" type="radio"> 女.</span>--%>
<%--                                    </div>--%>
<%--                                    <label>First Name</label>--%>
<%--                                    <input name="first-name" type="text">--%>
<%--                                    <label>Last Name</label>--%>
<%--                                    <input name="last-name" type="text">--%>
                                    <label>用户名</label>
                                    <input name="username" type="text">
                                    <label>密码</label>
                                    <input name="password" type="password">
                                    <label>再次输入密码</label>
                                    <input name="repeatPassword" type="password">
<%--                                    <label>Birthdate</label>--%>
<%--                                    <input name="birthday" value="" placeholder="MM/DD/YYYY" type="text">--%>
                                    <span class="custom-checkbox">
                                            <input name="optin" value="1" type="checkbox">
                                            <label>接收来自我们合作伙伴的报价</label>
                                        </span>
                                    <span class="custom-checkbox">
                                            <input name="newsletter" value="1" type="checkbox">
                                            <label>注册我们的通讯<br><em>您可以随时取消订阅。为此请在法律声明中找到我们的联系信息。</em></label>
                                        </span>
                                    <div class="button-box">
                                        <button type="button" class="default-btn">注册</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--Register Area End-->
    <!--Feature Area Start-->
    <div class="feature-area mt-60">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <!--Single Feature Start-->
                    <div class="single-feature">g
                        <div class="feature-icon">
                            <i class="icon ion-ios-telephone"></i>
                        </div>
                        <div class="feature-content">
                            <h3>(999) 1234 56789</h3>
                            <p>Free support line!</p>
                        </div>
                    </div>
                    <!--Single Feature End-->
                </div>
                <div class="col-md-4">
                    <!--Single Feature Start-->
                    <div class="single-feature">
                        <div class="feature-icon">
                            <i class="icon ion-email"></i>
                        </div>
                        <div class="feature-content">
                            <h3>(999) 1234 56789</h3>
                            <p>Free support line!</p>
                        </div>
                    </div>
                    <!--Single Feature End-->
                </div>
                <div class="col-md-4">
                    <!--Single Feature Start-->
                    <div class="single-feature">
                        <div class="feature-icon">
                            <i class="icon ion-ios-timer-outline"></i>
                        </div>
                        <div class="feature-content">
                            <h3>(999) 1234 56789</h3>
                            <p>Free support line!</p>
                        </div>
                    </div>
                    <!--Single Feature End-->
                </div>
            </div>
        </div>
    </div>
    <!--Feature Area End-->
    <!--Footer Area Start-->
    <footer>
        <div class="footer-container">

            <!--Footer Middle Area End-->
            <!--Footer Bottom Area Start-->
            <div class="footer-bottom-area">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6">
                            <!--Footer Copyright Start-->
                            <div class="footer-copyright">
                                <p>Copyright &copy; 2018.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
                            </div>
                            <!--Footer Copyright End-->
                        </div>
                        <div class="col-md-6">
                            <!--Footer Payment Start-->
                            <div class="footer-payments-image text-center text-md-right">
                                <img src="img/payment/payment.png" alt="">
                            </div>
                            <!--Footer Payment End-->
                        </div>
                    </div>
                </div>
            </div>
            <!--Footer Bottom Area End-->
        </div>
    </footer>
    <!--Footer Area End-->
    <!-- Modal Area Strat -->
    <div class="modal fade" id="open-modal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <!--Modal Img-->
                        <div class="col-md-5">
                            <!--Modal Tab Content Start-->
                            <div class="tab-content product-details-large" id="myTabContent">
                                <div class="tab-pane fade show active" id="single-slide1" role="tabpanel" aria-labelledby="single-slide-tab-1">
                                    <!--Single Product Image Start-->
                                    <div class="single-product-img img-full">
                                        <img src="img/single-product/large/large1.jpg" alt="">
                                    </div>
                                    <!--Single Product Image End-->
                                </div>
                                <div class="tab-pane fade" id="single-slide2" role="tabpanel" aria-labelledby="single-slide-tab-2">
                                    <!--Single Product Image Start-->
                                    <div class="single-product-img img-full">
                                        <img src="img/single-product/large/large2.jpg" alt="">
                                    </div>
                                    <!--Single Product Image End-->
                                </div>
                                <div class="tab-pane fade" id="single-slide3" role="tabpanel" aria-labelledby="single-slide-tab-3">
                                    <!--Single Product Image Start-->
                                    <div class="single-product-img img-full">
                                        <img src="img/single-product/large/large3.jpg" alt="">
                                    </div>
                                    <!--Single Product Image End-->
                                </div>
                                <div class="tab-pane fade" id="single-slide4" role="tabpanel" aria-labelledby="single-slide-tab-4">
                                    <!--Single Product Image Start-->
                                    <div class="single-product-img img-full">
                                        <img src="img/single-product/large/large4.jpg" alt="">
                                    </div>
                                    <!--Single Product Image End-->
                                </div>
                            </div>
                            <!--Modal Content End-->
                            <!--Modal Tab Menu Start-->
                            <div class="single-product-menu">
                                <div class="nav single-slide-menu" role="tablist">
                                    <div class="single-tab-menu img-full">
                                        <a class="active" data-toggle="tab" id="single-slide-tab-1" href="#single-slide1"><img src="img/single-product/small/small1.jpg" alt=""></a>
                                    </div>
                                    <div class="single-tab-menu img-full">
                                        <a data-toggle="tab" id="single-slide-tab-2" href="#single-slide2"><img src="img/single-product/small/small2.jpg" alt=""></a>
                                    </div>
                                    <div class="single-tab-menu img-full">
                                        <a data-toggle="tab" id="single-slide-tab-3" href="#single-slide3"><img src="img/single-product/small/small3.jpg" alt=""></a>
                                    </div>
                                    <div class="single-tab-menu img-full">
                                        <a data-toggle="tab" id="single-slide-tab-4" href="#single-slide4"><img src="img/single-product/small/small4.jpg" alt=""></a>
                                    </div>
                                </div>
                            </div>
                            <!--Modal Tab Menu End-->
                        </div>
                        <!--Modal Img-->
                        <!--Modal Content-->
                        <div class="col-md-7">
                            <div class="single-product-content">
                                <h1 class="single-product-name">Printed Chiffon Dress</h1>
                                <div class="single-product-reviews">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <div class="single-product-price">
                                    <div class="product-discount">
                                        <span class="regular-price">$20.50</span>
                                        <span class="price">$16.40</span>
                                        <span class="discount">-20%</span>
                                    </div>
                                </div>
                                <div class="product-info">
                                    <p>Long printed dress with thin adjustable straps. V-neckline and wiring under the bust with ruffles at the bottom of the dress.</p>
                                </div>
                                <div class="single-product-action">
                                    <form action="#">
                                        <div class="product-variants">
                                            <div class="product-variants-item">
                                                <span class="control-label">Size</span>
                                                <select class="nice-select" name="size">
                                                    <option value="1">S</option>
                                                    <option value="2">M</option>
                                                    <option value="3">X</option>
                                                    <option value="4">XL</option>
                                                </select>
                                            </div>
                                            <div class="product-variants-item">
                                                <span class="control-label">Color</span>
                                                <select class="nice-select" name="color">
                                                    <option value="1">Red</option>
                                                    <option value="2">Green</option>
                                                    <option value="3">Blue</option>
                                                    <option value="4">White</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="product-add-to-cart">
                                            <span class="control-label">Quantity</span>
                                            <div class="cart-plus-minus">
                                                <input class="cart-plus-minus-box" type="text" name="qtybutton" value="0">
                                            </div>
                                            <div class="add">
                                                <button class="add-to-cart"><i class="zmdi zmdi-shopping-cart-plus"></i> add-to-cart</button>
                                                <span class="product-availability"><i class="zmdi zmdi-check"></i> In stock</span>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <!--Modal Content-->
                    </div>
                </div>
                <div class="modal-footer">
                    <!--Single Product Share-->
                    <div class="single-product-share">
                        <ul>
                            <li class="categories-title">Share :</li>
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                            <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                        </ul>
                    </div>
                    <!--Single Product Share-->
                </div>
            </div>
        </div>
    </div>
    <!-- Modal Area End -->
</div>




<!--Jquery 1.12.4-->
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
