<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!doctype html>
<html class="no-js" lang="en">
<head>
    <base href="${ctx}/">
    <title>京宝商城</title>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Home</title>
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
</head>
<body>
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
                            <a href="/index">中国最快的网上购物目的地</a>
                        </div>
                        <!--Header Top Left End-->
                    </div>
                    <div class="col-md-6">
                        <!--Header Top Right Start-->
                        <div class="header-top-right text-center text-md-right">
                            <ul class="header-top-menu">
                                <li class="drodown-show"><a href="/login">${sessionScope.login_user_name}<i
                                        class="ion-ios-arrow-down"></i></a>
                                    <!--Header Top Dropdown Start-->
                                    <ul class="ht-dropdown">
                                        <li><a href=${sessionScope.login_url1}>${sessionScope.login_or_name1}</a></li>
                                        <li><a href=${sessionScope.login_url2}>${sessionScope.login_or_name2}</a></li>
                                    </ul>
                                    <!--Header Top Dropdown End-->
                                </li>
                                <li class="drodown-show"><a href="#">简体中文 <i class="ion-ios-arrow-down"></i></a>
                                    <!--Header Top Dropdown Start-->
                                    <ul class="ht-dropdown">
                                        <li><a href="#">简体中文</a></li>
                                        <li><a href="#">English</a></li>
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
        <!--Header Middle Area Start--><div class="he-50"></div>
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
                                    <li class="active"><a href="/index">主页</a>
                                        <!--Dropdown Menu Start-->
                                        <ul class="dropdown">
                                            <li><a href="index.html">Home Shop 1</a></li>
                                            <li><a href="index-2.html">Home Shop 2</a></li>
                                            <li><a href="index-3.html">Home Shop 3</a></li>
                                            <li><a href="index-4.html">Home Shop 4</a></li>
                                        </ul>
                                        <!--Dropdown Menu End-->
                                    </li>
                                    <li><a href="about.html">关于我们</a></li>
                                    <li><a href="/shop">商店</a></li>
                                    <li><a href="index.html">页</a>
                                        <!--Dropdown Menu Start-->
                                        <ul class="dropdown">
                                            <li><a href="about.html">关于我们</a></li>
                                            <li><a href="/shop">商店</a></li>
                                            <li><a href="single-product.html">单一产品</a></li>
                                            <li><a href="/login">我的帐户</a></li>
                                            <li><a href="login.html">登录</a></li>
                                            <li><a href="register.html">注册</a></li>
                                            <li><a href="faq.html">常见问题</a></li>
                                            <li><a href="contact.html">联系我们</a></li>
                                            <li><a href="404.html">错误404</a></li>
                                        </ul>
                                        <!--Dropdown Menu End-->
                                    </li>
                                    <li><a href="blog.html">博客</a></li>
                                    <li><a href="jingbao/list">特征</a>
                                        <!--Mega Menu Start-->
                                        <ul class="mega-menu">
                                            <li><a href="#" class="item-link">页</a>
                                                <ul>
                                                    <li><a href="/login">我的账户</a></li>
                                                    <li><a href="checkout.html">结帐</a></li>
                                                    <li><a href="cart.html">购物车</a></li>
                                                    <li><a href="wishlist.html">愿望列表</a></li>
                                                    <li><a href="faq.html">常见问题</a></li>
                                                    <li><a href="404.html">错误404</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="#" class="item-link">博客</a>
                                                <ul>
                                                    <li><a href="blog-nosidebar.html">没有一个侧边栏</a></li>
                                                    <li><a href="blog-left-sidebar.html">左栏</a></li>
                                                    <li><a href="single-blog.html">画廊的格式</a></li>
                                                    <li><a href="single-blog.html">音频格式</a></li>
                                                    <li><a href="single-blog.html">视频格式</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="#" class="item-link">商店</a>
                                                <ul>
                                                    <li><a href="shop-full-width.html">全宽</a></li>
                                                    <li><a href="shop-right-sidebar.html">侧边栏右</a></li>
                                                    <li><a href="shop-list.html">列表视图</a></li>
                                                    <li><a href="single-product.html">单一产品</a></li>
                                                    <li><a href="single-product.html">变量的产品</a></li>
                                                    <li><a href="single-product.html">简单的产品</a></li>
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
                            <p>打电话给我们: <br><span>138 0084 4754</span></p>
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
        <div class="he-50"></div>
        <!--Header Middle Area End-->
        <!--Header Bottom Area Start-->
        <div class="header-bottom-area pb-15">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 col-lg-3 order-lg-1 order-3">
                        <!--Category Menu Start-->
                        <div class="category-menu">
                            <div class="category-heading">
                                <h2 class="categories-toggle"><span>类别</span><i class="ion-ios-arrow-down"
                                ></i></h2>
                            </div>
                            <div id="cate-toggle" class="category-menu-list" style="display: none;">
                                <ul>
                                    <c:forEach var="title" items="${titles}" varStatus="p">
                                        <c:if test="${p.count<6}">
                                            <li class="right-menu">
                                                <a href="/shop">${title.titleName}</a>
                                                <c:if test="${ not empty title.titles}">
                                                    <ul class="cat-mega-menu">
                                                        <c:forEach var="title" items="${title.titles}">
                                                            <li class="right-menu cat-mega-title">
                                                                <a href="/shop">${title.titleName}</a>
                                                                <c:if test="${ not empty title.titles}">
                                                                    <ul>
                                                                        <c:forEach var="title" items="${title.titles}">
                                                                            <li><a href="/shop">${title.titleName}</a>
                                                                            </li>
                                                                        </c:forEach>
                                                                    </ul>
                                                                </c:if>
                                                            </li>
                                                        </c:forEach>
                                                    </ul>
                                                </c:if>
                                            </li>
                                        </c:if>
                                        <c:if test="${p.count>=6}">
                                            <li class="rx-child">
                                                <a href="/shop">${title.titleName}</a>
                                                <c:if test="${ not empty title.titles}">
                                                    <ul class="cat-mega-menu">
                                                        <c:forEach var="title" items="${title.titles}">
                                                            <li class="right-menu cat-mega-title">
                                                                <a href="/shop">${title.titleName}</a>
                                                                <c:if test="${ not empty title.titles}">
                                                                    <ul>
                                                                        <c:forEach var="title" items="${title.titles}">
                                                                            <li><a href="/shop">${title.titleName}</a>
                                                                            </li>
                                                                        </c:forEach>
                                                                    </ul>
                                                                </c:if>
                                                            </li>
                                                        </c:forEach>
                                                    </ul>
                                                </c:if>
                                            </li>
                                        </c:if>
                                    </c:forEach>
                                    <li class="rx-parent">
                                        <a class="rx-default"><span class="cat-thumb  fa fa-plus"></span>更多的</a>
                                        <a class="rx-show"><span class="cat-thumb  fa fa-minus"></span>更少的</a>
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
                                            <option value="">所有类别</option>
                                            <c:forEach items="${titles}" var="title">
                                                <option value="${title.titleId}">${title.titleName}</option>
                                                <c:forEach items="${title.titles}" var="title">
                                                    <option value="${title.titleId}">${title.titleName}</option>
                                                    <c:forEach items="${title.titles}" var="title">
                                                        <option value="${title.titleId}">${title.titleName}</option>
                                                    </c:forEach>
                                                </c:forEach>

                                            </c:forEach>
                                        </select>
                                        <input type="text" placeholder="Search product...">
                                        <button class="top-search-btn" type="submit"><i
                                                class="ion-ios-search-strong"></i></button>
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
		                                <span class="jingbao/cart">我的购物车</span>
		                            </span>
                            </a>
                            <!--Cart Dropdown Start-->
                            <div class="header-cart" style="display: none;">
                                <ul class="cart-items">
                                    <li class="single-cart-item">
                                        <div class="cart-img">
                                            <a href="cart.html"><img src="img/cart/cart1.jpg" alt=""></a>
                                            <span class="cart-sticker">1x</span>
                                        </div>
                                        <div class="cart-content">
                                            <h5 class="product-name"><a href="single-product.html">Lipstick Ultra
                                                Violet</a></h5>
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
                                            <h5 class="product-name"><a href="single-product.html">Columbia Men's
                                                Ascender</a></h5>
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
                                    <h5>小计 <span class="float-right">$39.79</span></h5>
                                    <h5>运费 <span class="float-right">$7.00</span></h5>
                                    <h5>税收 <span class="float-right">$0.00</span></h5>
                                    <h5>总计 <span class="float-right">$46.79</span></h5>
                                </div>
                                <div class="checkout">
                                    <a href="jingbao/cart">查看</a>
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
    <!--Slider Area Start-->
    <div class="slider-area">
        <div class="container">
            <div class="row">
                <div class="col-md-3 d-md-none col-lg-3 d-lg-block"></div>
                <div class="col-md-8 col-lg-6">
                    <div class="hero-slider owl-carousel">
                        <!--Single Slider Start-->
                        <div class="single-slider" style="background-image: url(/img/slider/home1-slider-1.jpg)">
                            <div class="hero-slider-content">
                                <h2 class="slow-animation1">pendant lights</h2>
                                <h2 class="slow-animation2">collection 2018</h2>
                                <h4>get up to</h4>
                                <h1>30% off</h1>
                                <div class="slider-btn mt-50">
                                    <a href="#">Shop Now</a>
                                </div>
                            </div>
                        </div>
                        <!--Single Slider End-->
                        <!--Single Slider Start-->
                        <div class="single-slider" style="background-image: url(/img/slider/home1-slider-2.jpg)">
                            <div class="hero-slider-content">
                                <h2 class="slow-animation1">Beat solo2</h2>
                                <h2 class="slow-animation2">wireless</h2>
                                <h4>get up to</h4>
                                <h1>60% off</h1>
                                <div class="slider-btn mt-50">
                                    <a href="#">Shop Now</a>
                                </div>
                            </div>
                        </div>
                        <!--Single Slider End-->
                    </div>
                </div>
                <div class="col-md-4 col-lg-3">
                    <!--Sidebar Product Categories Start-->
                    <div class="sidebar-product-categori">
                        <div class="sidebar-cate-title">
                            <h2>热门分类</h2>
                        </div>
                        <div class="categori-block-content owl-carousel">
                            <div class="item-listcategories">
                                <c:forEach begin="0" end="2" items="${titles}" var="title">
                                    <!--Single List Categories Start-->
                                    <div class="list-categories">
                                        <div class="desc-listcategoreis">
                                            <div class="name-categoreis">
                                                <a href="/shop">${title.titleName}</a>
                                            </div>
                                            <div class="view-more">
                                                <a href="#">立即购买</a>
                                            </div>
                                        </div>
                                        <div class="thumb-category">
                                            <a href="/shop"><img src="${title.titleSmallImg}" alt=""></a>
                                        </div>
                                    </div>
                                    <!--Single List Categories End--></c:forEach>

                            </div>
                            <div class="item-listcategories">
                                <!--Single List Categories Start-->
                                <div class="list-categories">
                                    <div class="desc-listcategoreis">
                                        <div class="name-categoreis">
                                            <a href="/shop">Cosmetic</a>
                                        </div>
                                        <div class="view-more">
                                            <a href="#">Buy Now</a>
                                        </div>
                                    </div>
                                    <div class="thumb-category">
                                        <a href="/shop"><img src="img/product-thumb/product-thumb4.jpg" alt=""></a>
                                    </div>
                                </div>
                                <!--Single List Categories End-->
                                <!--Single List Categories Start-->
                                <div class="list-categories">
                                    <div class="desc-listcategoreis">
                                        <div class="name-categoreis">
                                            <a href="/shop">Computer & Laptop</a>
                                        </div>
                                        <div class="view-more">
                                            <a href="#">Buy Now</a>
                                        </div>
                                    </div>
                                    <div class="thumb-category">
                                        <a href="/shop"><img src="img/product-thumb/product-thumb5.jpg" alt=""></a>
                                    </div>
                                </div>
                                <!--Single List Categories End-->
                            </div>
                        </div>
                    </div>
                    <!--Sidebar Product Categories Start-->
                </div>
            </div>
            <div class="banner-slide mt-30">
                <div class="banner-inner">
                    <a href="#"><img class="d-lg-block d-md-block d-none" src="img/banner/slider-banner.jpg" alt="">
                        <img class="d-block d-md-none d-lg-none" src="img/banner/slider-banner1.png" alt=""></a>
                </div>
            </div>
        </div>
    </div>
    <!--Slider Area End-->
    <!--Banner Area Start-->
    <div class="banner-area mt-60">
        <div class="container">
            <div class="banner-items">
                <div class="row">
                    <c:forEach begin="0" end="3" items="${titles}" var="title">
                        <div class="col-md-6 col-lg-3">
                            <!--Single Banner Item Start-->
                            <div class="single-banner-item mb-20">
                                <div class="banner-inner">
                                    <a href="#"><img src="${title.titleFourImg}" alt=""></a>
                                </div>
                                <div class="banner-content">
                                    <span class="name">${title.titleName}打折出售</span>
                                    <p class="price-sale">Up to <span class="text">75% off</span></p>
                                </div>
                            </div>
                            <!--Single Banner Item End-->
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
    <!--Banner Area End-->
    <!--Product Area Start-->
    <div class="product-area mt-60">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <!--Section Title Start-->
                    <div class="section-title">
                        <h2>畅销产品</h2>
                    </div>
                    <!--Section Title End-->
                </div>
            </div>
            <div class="product-block-content">
                <div class="row">
                    <div class="bestsellerSlide pdr-0 owl-carousel">
                        <c:forEach items="${goodss}" var="goods" begin="0" end="11">
                            <div class="col-md-12">
                                <!--Single Product Start-->
                                <div class="single-product">
                                    <div class="product-img">
                                        <a href="single-product.html">
                                            <img class="first-img" src="${goods.goodsFirstImg}" alt="">
                                            <c:if test="${goods.goodsHoverImg!=null}">
                                                <img class="hover-img" src="${goods.goodsHoverImg}"
                                                     alt=""></c:if>
                                        </a>
                                        <c:if test="${goods.goodsNew==1}"> <span
                                                class="sticker">New</span></c:if>
                                        <div class="product-action">
                                            <ul>
                                                <li><a href="cart.html"><i class="ion-bag"></i></a></li>
                                                <li><a href="#open-modal" data-toggle="modal"><i
                                                        class="ion-eye"></i></a>
                                                </li>
                                                <li><a href="#"><i class="ion-ios-copy-outline"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product-content">
                                        <h4><a href="single-product.html">${goods.goodsName}</a></h4>
                                        <div class="product-price">
                                            <c:if test="${goods.goodsDiscount<1.0}">
                                                <span class="regular-price">${goods.goodsPrice}</span>
                                                <span class="price">${goods.newGoodsPrice}</span></c:if>
                                            <c:if test="${goods.goodsDiscount==1.0}">
                                                <span class="price">${goods.goodsPrice}</span>
                                            </c:if>
                                        </div>
                                        <div class="product-reviews">
                                            <c:forEach begin="0" end="${goods.goodsLevel}">
                                                <i class="ion-android-star"></i>
                                            </c:forEach>
                                        </div>
                                    </div>
                                </div>
                                <!--Single Product End-->
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--Product Area End-->
    <!--Banner Area Start-->
    <div class="banner-area mt-60">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="banner-inner">
                        <a href="#"><img src="img/banner/offer-banner1.jpg" alt=""></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--Banner Area End-->
    <!--Categorie Product Area Start-->
    <c:forEach begin="0" end="3" items="${titles}" var="title">
        <div class="categorie-product-area mt-60">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <!--Section Title Start-->
                        <div class="section-title float-left">
                            <h2>${title.titleName}</h2>
                        </div>
                        <!--Section Title End-->
                        <!--Product Slider Nav-->
                        <div class="cate-slider-nav float-right">
                            <button class="nav-prev"><i class="fa fa-angle-left"></i></button>
                            <button class="nav-next"><i class="fa fa-angle-right"></i></button>
                        </div>
                        <!--Product Slider Nav-->
                    </div>
                </div>
                <div class="cate-product-wrapper">
                    <div class="row">
                        <div class="col-md-12 col-lg-3">
                            <!--Product Categorie Start-->
                            <div class="product-categorie">
                                <!--Categorie Filter Toggle-->
                                <button class="product-tab-filter-toggle">categories: <span>all</span><i
                                        class="ion-chevron-down"></i></button>
                                <!--Categorie Filter Toggle-->
                                <ul class="cate-filter">
                                    <c:forEach items="${title.titles}" var="tit">
                                        <li><a href="/shop">${tit.titleName}</a></li>
                                    </c:forEach>
                                </ul>
                            </div>
                            <!--Product Categorie Start-->
                        </div>

                        <div class="col-md-12 col-lg-9">
                            <!--Product Banner Start-->
                            <div class="banner-block-content">

                                <div class="banner-inner">

                                    <a href="#"><img src="${title.titleBigImg}" alt=""></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="categorie-product-block-content">
                        <div class="row">
                            <div class="cate-product-slide owl-carousel">
                                <div class="col-md-12">
                                    <!--Single Product Start-->
                                    <div class="single-product">
                                        <div class="product-img">
                                            <a href="single-product.html">
                                                <img class="first-img" src="img/product/product8.jpg" alt="">
                                                <img class="hover-img" src="img/product/product1.jpg" alt="">
                                            </a>
                                            <span class="sticker">New</span>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="cart.html"><i class="ion-bag"></i></a></li>
                                                    <li><a href="#open-modal" data-toggle="modal"><i
                                                            class="ion-eye"></i></a></li>
                                                    <li><a href="#"><i class="ion-ios-copy-outline"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content">
                                            <h4><a href="single-product.html">Versace Bright Crystal</a></h4>
                                            <div class="product-price">
                                                <span class="price">$260.00</span>
                                            </div>
                                            <div class="product-reviews">
                                                <i class="ion-android-star"></i>
                                                <i class="ion-android-star"></i>
                                                <i class="ion-android-star"></i>
                                                <i class="ion-android-star"></i>
                                                <i class="ion-android-star"></i>
                                            </div>
                                        </div>
                                    </div>
                                    <!--Single Product End-->
                                </div>
                                <div class="col-md-12">
                                    <!--Single Product Start-->
                                    <div class="single-product">
                                        <div class="product-img">
                                            <a href="single-product.html">
                                                <img class="first-img" src="img/product/product13.jpg" alt="">
                                                <img class="hover-img" src="img/product/product8.jpg" alt="">
                                            </a>
                                            <span class="sticker">New</span>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="cart.html"><i class="ion-bag"></i></a></li>
                                                    <li><a href="#open-modal" data-toggle="modal"><i
                                                            class="ion-eye"></i></a></li>
                                                    <li><a href="#"><i class="ion-ios-copy-outline"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content">
                                            <h4><a href="single-product.html">Vera Wang Princess</a></h4>
                                            <div class="product-price">
                                                <span class="price">$120.00</span>
                                            </div>
                                            <div class="product-reviews">
                                                <i class="ion-android-star"></i>
                                                <i class="ion-android-star"></i>
                                                <i class="ion-android-star"></i>
                                                <i class="ion-android-star"></i>
                                                <i class="ion-android-star"></i>
                                            </div>
                                        </div>
                                    </div>
                                    <!--Single Product End-->
                                </div>
                                <div class="col-md-12">
                                    <!--Single Product Start-->
                                    <div class="single-product">
                                        <div class="product-img">
                                            <a href="single-product.html">
                                                <img class="first-img" src="img/product/product10.jpg" alt="">
                                                <img class="hover-img" src="img/product/product11.jpg" alt="">
                                            </a>
                                            <span class="sticker">New</span>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="cart.html"><i class="ion-bag"></i></a></li>
                                                    <li><a href="#open-modal" data-toggle="modal"><i
                                                            class="ion-eye"></i></a></li>
                                                    <li><a href="#"><i class="ion-ios-copy-outline"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content">
                                            <h4><a href="single-product.html">The North Face Men's</a></h4>
                                            <div class="product-price">
                                                <span class="regular-price">$60.00</span>
                                                <span class="price">$54.00</span>
                                            </div>
                                            <div class="product-reviews">
                                                <i class="ion-android-star"></i>
                                                <i class="ion-android-star"></i>
                                                <i class="ion-android-star"></i>
                                                <i class="ion-android-star"></i>
                                                <i class="ion-android-star"></i>
                                            </div>
                                        </div>
                                    </div>
                                    <!--Single Product End-->
                                </div>
                                <div class="col-md-12">
                                    <!--Single Product Start-->
                                    <div class="single-product">
                                        <div class="product-img">
                                            <a href="single-product.html">
                                                <img class="first-img" src="img/product/product15.jpg" alt="">
                                                <img class="hover-img" src="img/product/product16.jpg" alt="">
                                            </a>
                                            <span class="sticker">New</span>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="cart.html"><i class="ion-bag"></i></a></li>
                                                    <li><a href="#open-modal" data-toggle="modal"><i
                                                            class="ion-eye"></i></a></li>
                                                    <li><a href="#"><i class="ion-ios-copy-outline"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content">
                                            <h4><a href="single-product.html">Merax Stylish Accent</a></h4>
                                            <div class="product-price">
                                                <span class="price">$90.00</span>
                                            </div>
                                            <div class="product-reviews">
                                                <i class="ion-android-star"></i>
                                                <i class="ion-android-star"></i>
                                                <i class="ion-android-star"></i>
                                                <i class="ion-android-star"></i>
                                                <i class="ion-android-star"></i>
                                            </div>
                                        </div>
                                    </div>
                                    <!--Single Product End-->
                                </div>
                                <div class="col-md-12">
                                    <!--Single Product Start-->
                                    <div class="single-product">
                                        <div class="product-img">
                                            <a href="single-product.html">
                                                <img class="first-img" src="img/product/product17.jpg" alt="">
                                                <img class="hover-img" src="img/product/product18.jpg" alt="">
                                            </a>
                                            <span class="sticker">New</span>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="cart.html"><i class="ion-bag"></i></a></li>
                                                    <li><a href="#open-modal" data-toggle="modal"><i
                                                            class="ion-eye"></i></a></li>
                                                    <li><a href="#"><i class="ion-ios-copy-outline"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content">
                                            <h4><a href="single-product.html">Makeup Brushes Set</a></h4>
                                            <div class="product-price">
                                                <span class="price">$320.00</span>
                                            </div>
                                            <div class="product-reviews">
                                                <i class="ion-android-star"></i>
                                                <i class="ion-android-star"></i>
                                                <i class="ion-android-star"></i>
                                                <i class="ion-android-star"></i>
                                                <i class="ion-android-star"></i>
                                            </div>
                                        </div>
                                    </div>
                                    <!--Single Product End-->
                                </div>
                                <div class="col-md-12">
                                    <!--Single Product Start-->
                                    <div class="single-product">
                                        <div class="product-img">
                                            <a href="single-product.html">
                                                <img class="first-img" src="img/product/product3.jpg" alt="">
                                            </a>
                                            <span class="sticker">New</span>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="cart.html"><i class="ion-bag"></i></a></li>
                                                    <li><a href="#open-modal" data-toggle="modal"><i
                                                            class="ion-eye"></i></a></li>
                                                    <li><a href="#"><i class="ion-ios-copy-outline"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content">
                                            <h4><a href="single-product.html">Lipstick Ultra Violet</a></h4>
                                            <div class="product-price">
                                                <span class="price">$180.00</span>
                                            </div>
                                            <div class="product-reviews">
                                                <i class="ion-android-star"></i>
                                                <i class="ion-android-star"></i>
                                                <i class="ion-android-star"></i>
                                                <i class="ion-android-star"></i>
                                                <i class="ion-android-star"></i>
                                            </div>
                                        </div>
                                    </div>
                                    <!--Single Product End-->
                                </div>
                                <div class="col-md-12">
                                    <!--Single Product Start-->
                                    <div class="single-product">
                                        <div class="product-img">
                                            <a href="single-product.html">
                                                <img class="first-img" src="img/product/product13.jpg" alt="">
                                                <img class="hover-img" src="img/product/product14.jpg" alt="">
                                            </a>
                                            <span class="sticker">New</span>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="cart.html"><i class="ion-bag"></i></a></li>
                                                    <li><a href="#open-modal" data-toggle="modal"><i
                                                            class="ion-eye"></i></a></li>
                                                    <li><a href="#"><i class="ion-ios-copy-outline"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content">
                                            <h4><a href="single-product.html">Enriched Nail Polish</a></h4>
                                            <div class="product-price">
                                                <span class="price">$300.00</span>
                                            </div>
                                            <div class="product-reviews">
                                                <i class="ion-android-star"></i>
                                                <i class="ion-android-star"></i>
                                                <i class="ion-android-star"></i>
                                                <i class="ion-android-star"></i>
                                                <i class="ion-android-star"></i>
                                            </div>
                                        </div>
                                    </div>
                                    <!--Single Product End-->
                                </div>
                                <div class="col-md-12">
                                    <!--Single Product Start-->
                                    <div class="single-product">
                                        <div class="product-img">
                                            <a href="single-product.html">
                                                <img class="first-img" src="img/product/product6.jpg" alt="">
                                            </a>
                                            <span class="sticker">New</span>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="cart.html"><i class="ion-bag"></i></a></li>
                                                    <li><a href="#open-modal" data-toggle="modal"><i
                                                            class="ion-eye"></i></a></li>
                                                    <li><a href="#"><i class="ion-ios-copy-outline"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content">
                                            <h4><a href="single-product.html">Dwar Men's Casual Long</a></h4>
                                            <div class="product-price">
                                                <span class="price">$350.00</span>
                                            </div>
                                            <div class="product-reviews">
                                                <i class="ion-android-star"></i>
                                                <i class="ion-android-star"></i>
                                                <i class="ion-android-star"></i>
                                                <i class="ion-android-star"></i>
                                                <i class="ion-android-star"></i>
                                            </div>
                                        </div>
                                    </div>
                                    <!--Single Product End-->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </c:forEach>
    <!--Categorie Product Area End-->
    <!--Footer Area Start-->
    <%@include file="template/footer.jsp" %>
    <!--Footer Area End-->
</div>


<!--All Js Here-->

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
<script src="js/main.js"></script>
</body>
</html>

