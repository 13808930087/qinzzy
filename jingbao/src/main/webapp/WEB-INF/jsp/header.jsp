<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Bootstrap CSS-->
<script src="js/vendor/modernizr-2.8.3.min.js"></script>
<script type="text/javascript" src="lib/jquery/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="lib/layer/layer.js"></script>
<script src="js/jingbao/header.js"></script>   <!--Header Area Start-->
<!-- Place favicon.ico in the root directory -->
<link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
<!--All Css Here-->
<!-- Ionicons Font CSS-->

<link rel="stylesheet" href="css/ionicons.min.css">
<!-- Font Awesome CSS-->
<link rel="stylesheet" href="css/font-awesome.min.css">

<link rel="stylesheet" href="css/bootstrap.min.css">

<link rel="stylesheet" href="css/owl.theme.default.min.css">

<link rel="stylesheet" href="css/owl.carousel.min.css">

<link rel="stylesheet" href="css/remixicon.css">

<link rel="stylesheet" href="css/meanmenu.min.css">

<link rel="stylesheet" href="css/animate.min.css">

<link rel="stylesheet" href="css/style.css">

<link rel="stylesheet" href="css/responsive.css">
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
<link rel="stylesheet" href="css/jingbao/header.css">
<!-- Modernizr Js -->
<script src="js/vendor/modernizr-2.8.3.min.js"></script>
</head>
<body>
<div class="wrapper">
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
                                <li class="drodown-show"><a href="/login">${login_user_name}<i
                                        class="ion-ios-arrow-down"></i></a>
                                    <!--Header Top Dropdown Start-->
                                    <ul class="ht-dropdown">
                                        <li><a href=${login_url1}>${login_or_name1}</a></li>
                                        <li><a href=${login_url2}>${login_or_name2}</a></li>
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
                            <a href="javascript:void(0)">
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
                                    </li>
                                    <li><a href="user/userTemp">个人信息</a></li>
                                    <li><a href="jingbao/list">商品</a></li>
                                    <li><a href="#">页</a>
                                        <!--Dropdown Menu Start-->
                                        <ul class="dropdown">
                                            <li><a href="user/userTemp">个人信息</a></li>
                                            <li><a href="jingbao/list">商品</a></li>
                                            <li><a href="#">单一产品</a></li>
                                            <li><a href="/customer">我的帐户</a></li>
                                            <li><a href="/login">登录</a></li>
                                            <li><a href="/register">注册</a></li>
                                            <li><a href="#">常见问题</a></li>
                                            <li><a href="#">联系我们</a></li>
                                            <li><a href="#">错误404</a></li>
                                        </ul>
                                        <!--Dropdown Menu End-->
                                    </li>
                                    <li><a href="#">博客</a></li>
                                    <li><a href="test">测试</a>
                                        <!--Mega Menu Start-->
                                        <ul class="mega-menu">
                                            <li><a href="#" class="item-link">页</a>
                                                <ul>
                                                    <li><a href="/login">我的账户</a></li>
                                                    <li><a href="javascript:void(0)">结帐</a></li>
                                                    <li><a href="user/cart">购物车</a></li>
                                                    <li><a href="javascript:void(0)">愿望列表</a></li>
                                                    <li><a href="javascript:void(0)">常见问题</a></li>
                                                    <li><a href="javascript:void(0)">错误404</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="#" class="item-link">博客</a>
                                                <ul>
                                                    <li><a href="javascript:void(0)">没有一个侧边栏</a></li>
                                                    <li><a href="javascript:void(0)">左栏</a></li>
                                                    <li><a href="javascript:void(0)">画廊的格式</a></li>
                                                    <li><a href="javascript:void(0)">音频格式</a></li>
                                                    <li><a href="javascript:void(0)">视频格式</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="#" class="item-link">商品</a>
                                                <ul>
                                                    <li><a href="javascript:void(0)">全宽</a></li>
                                                    <li><a href="javascript:void(0)">侧边栏右</a></li>
                                                    <li><a href="javascript:void(0)">列表视图</a></li>
                                                    <li><a href="javascript:void(0)">单一产品</a></li>
                                                    <li><a href="javascript:void(0)">变量的产品</a></li>
                                                    <li><a href="javascript:void(0)">简单的产品</a></li>
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
                        <div class="category-menu category-menu-hidden">
                            <div class="category-heading">
                                <h2 class="categories-toggle"><span>类别</span><i class="ion-ios-arrow-down"
                                ></i></h2>
                            </div>
                            <div id="cate-toggle" class="category-menu-list" style="display: none;">
                                <form action="/jingbao/list" id="category-menu-list-form" style="display: none">
                                    <input name="categoryId" type="text" value="">
                                    <input name="categoryName" type="text" value="">
                                    <input name="goodsId" type="text" value="">
                                    <input name="goodsName" type="text" value="">
                                    <input name="goodsPrice" type="text" value="">
                                    <input name="goodsLevel" type="text" value="">
                                    <input name="goodsNew" type="text" value="">
                                </form>
                                <ul>
                                    <c:forEach var="title" items="${titles}" varStatus="p">
                                        <c:if test="${p.count<6}">
                                            <li class="right-menu">
                                                <a href="javascript:void(0)"><p style=" width: 100px; display: inline-block;">${title.titleName}</p></a>
                                                <c:if test="${ not empty title.titles}">
                                                    <ul class="cat-mega-menu">
                                                        <c:forEach var="title" items="${title.titles}">
                                                            <li class="right-menu cat-mega-title">
                                                                <a href="javascript:void(0)"><p style=" width: 100px; display: inline-block;">${title.titleName}</p></a>
                                                                <c:if test="${ not empty title.titles}">
                                                                    <ul>
                                                                        <c:forEach var="title" items="${title.titles}">
                                                                            <li><a href="javascript:void(0)"><p style=" width: 100px; display: inline-block;">${title.titleName}</p></a>
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
                                            <li class="rx-child right-menu">
                                                <a href="javascript:void(0)"><p style=" width: 100px; display: inline-block;">${title.titleName}</p></a>
                                                <c:if test="${ not empty title.titles}">
                                                    <ul class="cat-mega-menu">
                                                        <c:forEach var="title" items="${title.titles}">
                                                            <li class="right-menu cat-mega-title">
                                                                <a href="javascript:void(0)"><p style=" width: 100px; display: inline-block;">${title.titleName}</p></a>
                                                                <c:if test="${ not empty title.titles}">
                                                                    <ul>
                                                                        <c:forEach var="title" items="${title.titles}">
                                                                            <li><a href="javascript:void(0)"><p style=" width: 100px; display: inline-block;">${title.titleName}</p></a>
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
                                            <c:if test="${title_get!=null}">
                                                <option value="${title_get.titleId}">${title_get.titleName}</option>
                                            </c:if>
                                            <c:if test="${title_get==null}">
                                                <option value="">所有类别</option>
                                            </c:if>
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
                                        <button class="top-search-btn" type="button"><i
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
                                        <c:if test="${login_user_name!='个人信息'}">  <span class="cart-total">2</span></c:if>

		                                <span class="user/cart">我的购物车</span>
		                            </span>
                            </a>
                            <!--Cart Dropdown Start-->
                            <div class="header-cart" style="display: none;">
                                <ul class="cart-items">
                                    <li class="single-cart-item">
                                        <div class="cart-img">
                                            <a href="user/cart"><img src="img/cart/cart1.jpg" alt=""></a>
                                            <span class="cart-sticker">1x</span>
                                        </div>
                                        <div class="cart-content">
                                            <h5 class="product-name"><a href="javascript:void(0)">Lipstick Ultra
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
                                            <a href="user/cart"><img src="img/cart/cart2.jpg" alt=""></a>
                                            <span class="cart-sticker">1x</span>
                                        </div>
                                        <div class="cart-content">
                                            <h5 class="product-name"><a href="javascript:void(0)">Columbia Men's
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
                                    <a href="user/cart">查看</a>
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

<div class="page-title-area">
    <div class="container">
        <div class="page-title-content">

            <ul id="heading">

                    <li><a href="index">主页</a></li>
                    <li class="active">${pageName}</li>

            </ul>
        </div>
    </div>
</div>
<!--Breadcrumb Area End-->





