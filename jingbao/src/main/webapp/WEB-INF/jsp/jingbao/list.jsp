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
    <title>Shop</title>
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
    <script type="text/javascript" src="lib/jquery/jquery-3.6.0.min.js"></script>
    <script type="text/javascript" src="lib/layer/layer.js"></script>
    <script type="text/javascript">
        const ctx = "${ctx}";
        const pages = parseInt("${pi.pages}");
        const pageNum = parseInt("${pi.pageNum}");
        const pageSize = parseInt("${pi.pageSize}");
    </script>
    <script src="js/vendor/modernizr-2.8.3.min.js"></script>
    <script src="js/jingbao/list.js"></script>
</head>
<body>


<!--[if lt IE 8]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade
    your browser</a> to improve your experience.</p>
<![endif]-->

<div class="wrapper">
    <!--Header Area Start-->
    <%@include file="../template/header.jsp" %>
    <!--Header Area End-->
    <!--Breadcrumb Area Start-->
    <div class="breadcrumb-area">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="breadcrumb-content text-center">
                        <h1 class="breadmome-name">Shop</h1>
                        <ul>
                            <li><a href="index.html">Home</a></li>
                            <li class="active">Shop</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--Breadcrumb Area End-->
    <!--Shop Area Start-->
    <div class="shop-area mt-60">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 order-2 order-lg-1">
                    <!--Shop Product Categorie Start-->
                    <div class="shop-product-cate mb-20">
                        <h3>Fashion</h3>
                        <div id="shop-cate-toggle" class="category-menu sidebar-menu sidbar-style">
                            <ul class="category-sub-menu">
                                <li class="has-sub"><a href="#">dresses</a>
                                    <ul class="category-sub">
                                        <li><a href="shop.html">Casual Dresses</a></li>
                                        <li><a href="shop.html">Maxi Dresses</a></li>
                                        <li><a href="shop.html">Midi Dresses</a></li>
                                        <li><a href="shop.html">Bodycon Dresses</a></li>
                                    </ul>
                                </li>
                                <li class="has-sub"><a href="#">shoes</a>
                                    <ul class="category-sub">
                                        <li><a href="shop.html">Athletic</a></li>
                                        <li><a href="shop.html">Boots</a></li>
                                        <li><a href="shop.html">Comfort</a></li>
                                        <li><a href="shop.html">Fashion Sneakers</a></li>
                                    </ul>
                                </li>
                                <li class="has-sub"><a href="#">Handbags</a>
                                    <ul class="category-sub">
                                        <li><a href="shop.html">Backpack</a></li>
                                        <li><a href="shop.html">Shoulder Bags</a></li>
                                        <li><a href="shop.html">Mini Bags</a></li>
                                        <li><a href="shop.html">Bucket Bags</a></li>
                                    </ul>
                                </li>
                                <li class="has-sub"><a href="#">Clothing</a>
                                    <ul class="category-sub">
                                        <li><a href="shop.html">Sweaters</a></li>
                                        <li><a href="shop.html">T-shirts</a></li>
                                        <li><a href="shop.html">Outerwear</a></li>
                                        <li><a href="shop.html">Jackets</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!--Shop Product Categorie End-->
                    <!--Brand Categorie Widget Start-->
                    <div class="shop-sidebar mb-20">
                        <h3>Brand</h3>
                        <div class="shop-checkbox">
                            <ul>
                                <li><input name="product-categori" type="checkbox"><a href="#">Graphic Corner (5)</a>
                                </li>
                                <li><input name="product-categori" type="checkbox"><a href="#">Studio Design (8)</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!--Brand Categorie Widget End-->
                    <!--Price Categorie Widget Start-->
                    <div class="shop-sidebar mb-20">
                        <h3>Price</h3>
                        <div class="shop-checkbox">
                            <ul>
                                <li><input name="price-filter" checked="" type="radio"><a href="#">$18.00 - $21.00
                                    (1)</a></li>
                                <li><input name="price-filter" checked="" type="radio"><a href="#">$30.00 - $37.00
                                    (1)</a></li>
                                <li><input name="price-filter" checked="" type="radio"><a href="#">$54.00 - $62.00
                                    (1)</a></li>
                                <li><input name="price-filter" checked="" type="radio"><a href="#">$72.00 - $83.00
                                    (1)</a></li>
                                <li><input name="price-filter" checked="" type="radio"><a href="#">$90.00 - $94.00
                                    (1)</a></li>
                                <li><input name="price-filter" checked="" type="radio"><a href="#">$96.00 - $125.00
                                    (1)</a></li>
                                <li><input name="price-filter" checked="" type="radio"><a href="#">$176.00 - $364.00
                                    (7)</a></li>
                            </ul>
                        </div>
                    </div>
                    <!--Price Categorie Widget End-->
                    <!--Size Categorie Widget Strat-->
                    <div class="shop-sidebar mb-20">
                        <h3>Size</h3>
                        <div class="shop-checkbox">
                            <ul>
                                <li><input name="product-categori" type="checkbox"><a href="#">S (2)</a></li>
                                <li><input name="product-categori" type="checkbox"><a href="#">M (2)</a></li>
                                <li><input name="product-categori" type="checkbox"><a href="#">L (2)</a></li>
                                <li><input name="product-categori" type="checkbox"><a href="#">XL (2)</a></li>
                            </ul>
                        </div>
                    </div>
                    <!--Size Categorie Widget End-->
                    <!--Color Categorie Widget Start-->
                    <div class="shop-sidebar mb-20">
                        <h3>color</h3>
                        <div class="shop-checkbox">
                            <ul>
                                <li><a href="#"><span class="color"></span>Pink (2)</a></li>
                                <li><a href="#"><span class="color"></span>Green (2)</a></li>
                            </ul>
                        </div>
                    </div>
                    <!--Color Categorie Widget End-->
                    <!--Dimension Categorie Widget Start-->
                    <div class="shop-sidebar mb-20">
                        <h3>Dimension</h3>
                        <div class="shop-checkbox">
                            <ul>
                                <li><input name="product-categori" type="checkbox"><a href="#">40x60cm (3)</a></li>
                                <li><input name="product-categori" type="checkbox"><a href="#">60x90cm (3)</a></li>
                                <li><input name="product-categori" type="checkbox"><a href="#">80x120cm (3)</a></li>
                            </ul>
                        </div>
                    </div>
                    <!--Dimension Categorie Widget End-->
                </div>
                <div class="col-lg-9 order-1 order-lg-2">
                    <div class="shop-layout">
                        <!--Grid & List View Start-->
                        <div class="shop-topbar-wrapper mb-30 d-md-flex justify-content-md-between align-items-center">
                            <div class="grid-list-option">
                                <ul class="nav">
                                    <li>
                                        <a class="active" data-toggle="tab" href="#grid"><i
                                                class="ion-grid show_grid"></i></a>
                                    </li>
                                    <li>
                                        <a data-toggle="tab" href="#list"><i class="ion-android-menu show_list"></i></a>
                                    </li>
                                </ul>
                                <p class="show-product">Showing 1–9 of 42 results</p>
                            </div>
                            <!--Toolbar Short Area Start-->
                            <div class="toolbar-short-area d-md-flex align-items-center">
                                <div class="toolbar-shorter">
                                    <label>Sort By:</label>
                                    <select class="wide nice-select">
                                        <option data-display="Select">Nothing</option>
                                        <option value="Relevance">Relevance</option>
                                        <option value="Name, A to Z">Name, A to Z</option>
                                        <option value="Name, Z to A">Name, Z to A</option>
                                        <option value="Price, low to high">Price, low to high</option>
                                        <option value="Price, high to low">Price, high to low</option>
                                    </select>
                                </div>
                            </div>
                            <!--Toolbar Short Area End-->
                        </div>
                        <!--Grid & List View End-->
                        <!--Shop Product Start-->
                        <div class="shop-product">
                            <div id="myTabContent-2" class="tab-content">
                                <div id="grid" class="tab-pane fade show active">
                                    <div class="product-grid-view">
                                        <div class="row"><c:forEach var="goods" items="${goodss}">
                                            <div class="col-lg-4 col-xl-4 col-md-4">
                                                <!--Single Product Start-->
                                                <div class="single-product mb-30">
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
                                                                        class="ion-eye"></i></a></li>
                                                                <li><a href="#"><i class="ion-ios-copy-outline"></i></a>
                                                                </li>
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
                                <div id="list" class="tab-pane fade">
                                    <div class="product-list-view">
                                        <c:forEach var="goods" items="${goodss}">
                                            <div class="product-list-item mb-40">
                                                <div class="row">
                                                    <!--Single List Product Start-->
                                                    <div class="col-md-4">
                                                        <div class="single-product">
                                                            <div class="product-img">
                                                                <a href="single-product.html">
                                                                    <img class="first-img" src="${goods.goodsFirstImg}"
                                                                         alt="">
                                                                    <c:if test="${goods.goodsHoverImg!=null}">
                                                                        <img class="hover-img"
                                                                             src="${goods.goodsHoverImg}" alt="">
                                                                    </c:if>
                                                                </a>
                                                                <c:if test="${goods.goodsNew==1}"> <span
                                                                        class="sticker">New</span></c:if>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-8">
                                                        <div class="product-content shop-list">
                                                            <h4><a href="single-product.html">${goods.goodsName}</a>
                                                            </h4>
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
                                                            <div class="product-description">
                                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing
                                                                    elit. Fusce posuere metus vitae arcu imperdiet, id
                                                                    aliquet ante scelerisque. Sed sit amet sem vitae
                                                                    urna fringilla tempus.</p>
                                                            </div>
                                                            <div class="product-list-action">
                                                                <ul>
                                                                    <li><a class="pro-add-btn" href="#"><i
                                                                            class="ion-bag"></i>Add to cart</a></li>
                                                                    <li><a href="#open-modal" data-toggle="modal"><i
                                                                            class="ion-eye"></i></a></li>
                                                                    <li><a href="#"><i class="ion-ios-copy-outline"></i></a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!--Single List Product End-->
                                                </div>
                                            </div>
                                        </c:forEach>

                                    </div>
                                </div>
                                <!--Pagination Start-->
                                <div class="pagination-product d-md-flex justify-content-md-between align-items-center">
                                    <div class="showing-product">
                                        <form id="list-form" action="jingbao/list"
                                              method="post">
                                            <input type="hidden" name="pageNum" value="${pi.pageNum }">
                                            <input type="hidden" name="pageSize" value="${pi.pageSize }">

                                        </form>
                                        <p> Showing 1-12 of 13 item(s) </p>
                                    </div>
                                    <div class="page-list">
                                        <ul>
                                            <li class="prev">
                                                <a href="javascript:void(0)">
                                                    <i class="ion-ios-arrow-left">
                                                    </i>Previous
                                                </a>
                                            </li>
                                            <c:forEach begin="${pi.navigateFirstPage }" end="${pi.navigateLastPage }"
                                                       var="p">
                                                <c:if test="${p==pi.pageNum }">
                                                    <li class="page active">
                                                        <a href="javascript:void(0)">${p}</a>
                                                    </li>
                                                </c:if>
                                                <c:if test="${p!=pi.pageNum }">
                                                    <li class="page">
                                                        <a href="javascript:void(0)">${p}</a>
                                                    </li>
                                                </c:if>
                                            </c:forEach>
                                            <li class="next">
                                                <a href="javascript:void(0)">Next
                                                    <i class="ion-ios-arrow-right"></i>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <!--Pagination End-->
                            </div>
                        </div>
                        <!--Shop Product End-->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--Shop Area End-->
    <!--Feature Area Start-->
    <div class="feature-area mt-60">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <!--Single Feature Start-->
                    <div class="single-feature">
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
            <!--Footer Top Area Start-->
            <div class="footer-top-area pt-50 pb-35">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-4 col-md-6 col-12">
                            <!--Single Footer Wiedget Start-->
                            <div class="single-footer-wiedget mb-30">
                                <div class="footer-logo">
                                    <a href="index.html"><img src="img/logo/logo1.jpg" alt=""></a>
                                </div>
                                <div class="desc-footer">We are a team of designers and developers that create high
                                    quality Magento, Prestashop, Opencart.
                                </div>
                                <div class="address-footer">
                                    <p class="address">
                                        <span>The Barn, Ullenhall, Henley-in-Arden B578 5CC, England</span></p>
                                    <p class="phone"><span>+123.456.789 - +123.456.678</span></p>
                                    <p class="mail"><span>support@devitems.com</span></p>
                                </div>
                            </div>
                            <!--Single Footer Wiedget End-->
                        </div>
                        <div class="col-lg-2 col-md-6 col-12">
                            <!--Single Footer Wiedget Start-->
                            <div class="single-footer-wiedget mb-30">
                                <div class="footer-title">
                                    <h3>Products</h3>
                                </div>
                                <ul class="link-widget">
                                    <li><a href="#">Prices drop</a></li>
                                    <li><a href="#">New products</a></li>
                                    <li><a href="#">Best sales</a></li>
                                    <li><a href="#">Contact us</a></li>
                                    <li><a href="#">Sitemap</a></li>
                                    <li><a href="#">Login</a></li>
                                </ul>
                            </div>
                            <!--Single Footer Wiedget End-->
                        </div>
                        <div class="col-lg-2 col-md-6 col-12">
                            <!--Single Footer Wiedget Start-->
                            <div class="single-footer-wiedget mb-30">
                                <div class="footer-title">
                                    <h3>Our company</h3>
                                </div>
                                <ul class="link-widget">
                                    <li><a href="#">Delivery</a></li>
                                    <li><a href="#">Legal Notice</a></li>
                                    <li><a href="#">About us</a></li>
                                    <li><a href="#">Secure payment</a></li>
                                    <li><a href="#">Contact us</a></li>
                                    <li><a href="#">Stores</a></li>
                                </ul>
                            </div>
                            <!--Single Footer Wiedget End-->
                        </div>
                        <div class="col-lg-4 col-md-6 col-12">
                            <!--Single Footer Wiedget Start-->
                            <div class="single-footer-wiedget mb-30">
                                <div class="footer-title">
                                    <h3>Instagram</h3>
                                    <a href="#">Follow our instagram</a>
                                </div>
                                <ul id="Instafeed"></ul>
                            </div>
                            <!--Single Footer Wiedget End-->
                        </div>
                    </div>
                </div>
            </div>
            <!--Footer Top Area End-->
            <!--Footer Middle Area Start-->
            <div class="footer-middle-area">
                <div class="container">
                    <div class="newsletter-social-block-content">
                        <div class="row">
                            <div class="col-lg-7 col-md-12">
                                <!--Newsletter Area Start-->
                                <div class="newsletter-area">
                                    <p>Sign up for newsletter</p>
                                    <div class="newsletter-form">
                                        <!-- Newsletter Form -->
                                        <form action="http://devitems.us11.list-manage.com/subscribe/post?u=6bbb9b6f5827bd842d9640c82&amp;id=05d85f18ef"
                                              method="post" id="mc-embedded-subscribe-form"
                                              name="mc-embedded-subscribe-form" class="popup-subscribe-form validate"
                                              target="_blank" novalidate>
                                            <div id="mc_embed_signup_scroll">
                                                <div id="mc-form" class="mc-form subscribe-form">
                                                    <input id="mc-email" type="email" autocomplete="off"
                                                           placeholder="Enter your email here"/>
                                                    <button id="mc-submit">Subscribe</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <!--Newsletter Area End-->
                            </div>
                            <div class="col-lg-5 col-md-12 text-center text-lg-right">
                                <div class="social-title">
                                    <h2>Follow Us</h2>
                                </div>
                                <ul class="social-icon">
                                    <li><a href="#"><i class="ion-social-facebook"></i></a></li>
                                    <li><a href="#"><i class="ion-social-twitter"></i></a></li>
                                    <li><a href="#"><i class="ion-social-youtube"></i></a></li>
                                    <li><a href="#"><i class="ion-social-googleplus-outline"></i></a></li>
                                    <li><a href="#"><i class="ion-social-instagram"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="footer-link pt-50 pb-30">
                        <div class="row">
                            <div class="col-12">
                                <div class="footer-link-title">
                                    <h2>Quick Links</h2>
                                </div>
                                <!--Single Tag Content Start-->
                                <div class="tag-content">
                                    <h4>Electronics:</h4>
                                    <ul class="tag-link">
                                        <li><a href="#">Headsets</a></li>
                                        <li><a href="#">Headphones</a></li>
                                        <li><a href="#">Speakers</a></li>
                                        <li><a href="#">Portronics Speakers </a></li>
                                        <li><a href="#">Intex Speakers</a></li>
                                        <li><a href="#">Xoofer speakers </a></li>
                                        <li><a href="#">Smart Watch </a></li>
                                        <li><a href="#">Mobile </a></li>
                                        <li><a href="#">Digital Cameras </a></li>
                                    </ul>
                                </div>
                                <!--Single Tag Content End-->
                                <!--Single Tag Content Start-->
                                <div class="tag-content">
                                    <h4>Fashion:</h4>
                                    <ul class="tag-link">
                                        <li><a href="#">men's fashion</a></li>
                                        <li><a href="#">women's fashion</a></li>
                                        <li><a href="#">handbag</a></li>
                                        <li><a href="#">watches</a></li>
                                        <li><a href="#">clothing</a></li>
                                        <li><a href="#">T-shit</a></li>
                                        <li><a href="#">Sportwear</a></li>
                                        <li><a href="#">lougewear</a></li>
                                        <li><a href="#">Digital Cameras</a></li>
                                    </ul>
                                </div>
                                <!--Single Tag Content End-->
                                <!--Single Tag Content Start-->
                                <div class="tag-content">
                                    <h4>Cosmetic:</h4>
                                    <ul class="tag-link">
                                        <li><a href="#">Makeup</a></li>
                                        <li><a href="#">Skin Care</a></li>
                                        <li><a href="#">Speakers</a></li>
                                        <li><a href="#">Hair Care </a></li>
                                        <li><a href="#">Nails Art </a></li>
                                        <li><a href="#">Lip Care</a></li>
                                        <li><a href="#">Tools</a></li>
                                        <li><a href="#">Blush </a></li>
                                        <li><a href="#">Sprays</a></li>
                                        <li><a href="#">Makeup Brushes</a></li>
                                        <li><a href="#">Lipstick</a></li>
                                        <li><a href="#">Lipcolor</a></li>
                                    </ul>
                                </div>
                                <!--Single Tag Content End-->
                                <!--Single Tag Content Start-->
                                <div class="tag-content">
                                    <h4>Furniturex:</h4>
                                    <ul class="tag-link">
                                        <li><a href="#">Living Room</a></li>
                                        <li><a href="#">Dinning Room </a></li>
                                        <li><a href="#">Mattress Protectors </a></li>
                                        <li><a href="#">Accent Chairs </a></li>
                                        <li><a href="#">Sofa Beds & Futons</a></li>
                                        <li><a href="#">Cabinets & Etageres</a></li>
                                    </ul>
                                </div>
                                <!--Single Tag Content End-->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--Footer Middle Area End-->
            <!--Footer Bottom Area Start-->
            <div class="footer-bottom-area">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6">
                            <!--Footer Copyright Start-->
                            <div class="footer-copyright">
                                <p>Copyright &copy; 2018.Company name All rights reserved.<a target="_blank"
                                                                                             href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a>
                                </p>
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
                                <div class="tab-pane fade show active" id="single-slide1" role="tabpanel"
                                     aria-labelledby="single-slide-tab-1">
                                    <!--Single Product Image Start-->
                                    <div class="single-product-img img-full">
                                        <img src="img/single-product/large/large1.jpg" alt="">
                                    </div>
                                    <!--Single Product Image End-->
                                </div>
                                <div class="tab-pane fade" id="single-slide2" role="tabpanel"
                                     aria-labelledby="single-slide-tab-2">
                                    <!--Single Product Image Start-->
                                    <div class="single-product-img img-full">
                                        <img src="img/single-product/large/large2.jpg" alt="">
                                    </div>
                                    <!--Single Product Image End-->
                                </div>
                                <div class="tab-pane fade" id="single-slide3" role="tabpanel"
                                     aria-labelledby="single-slide-tab-3">
                                    <!--Single Product Image Start-->
                                    <div class="single-product-img img-full">
                                        <img src="img/single-product/large/large3.jpg" alt="">
                                    </div>
                                    <!--Single Product Image End-->
                                </div>
                                <div class="tab-pane fade" id="single-slide4" role="tabpanel"
                                     aria-labelledby="single-slide-tab-4">
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
                                        <a class="active" data-toggle="tab" id="single-slide-tab-1"
                                           href="#single-slide1"><img src="img/single-product/small/small1.jpg" alt=""></a>
                                    </div>
                                    <div class="single-tab-menu img-full">
                                        <a data-toggle="tab" id="single-slide-tab-2" href="#single-slide2"><img
                                                src="img/single-product/small/small2.jpg" alt=""></a>
                                    </div>
                                    <div class="single-tab-menu img-full">
                                        <a data-toggle="tab" id="single-slide-tab-3" href="#single-slide3"><img
                                                src="img/single-product/small/small3.jpg" alt=""></a>
                                    </div>
                                    <div class="single-tab-menu img-full">
                                        <a data-toggle="tab" id="single-slide-tab-4" href="#single-slide4"><img
                                                src="img/single-product/small/small4.jpg" alt=""></a>
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
                                    <p>Long printed dress with thin adjustable straps. V-neckline and wiring under the
                                        bust with ruffles at the bottom of the dress.</p>
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
                                                <input class="cart-plus-minus-box" type="text" name="qtybutton"
                                                       value="0">
                                            </div>
                                            <div class="add">
                                                <button class="add-to-cart"><i class="zmdi zmdi-shopping-cart-plus"></i>
                                                    add-to-cart
                                                </button>
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
<script src="js/jingbaomain.js"></script>
</body>
</html>


