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
    <title>主页</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!--Header Area Start-->
    <%@include file="header.jsp" %>
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
                                            <a href="/shop">化妆品</a>
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
                                        <a href="javascript:void(0)">
                                            <img class="first-img" src="${goods.goodsFirstImg}" alt="">
                                            <c:if test="${goods.goodsHoverImg!=null}">
                                                <img class="hover-img" src="${goods.goodsHoverImg}"
                                                     alt=""></c:if>
                                        </a>
                                        <c:if test="${goods.goodsNew==1}"> <span
                                                class="sticker">New</span></c:if>
                                        <div class="product-action">
                                            <ul>
                                                <li><a href="javascript:void(0)"><i class="ion-bag"></i></a></li>
                                                <li><a href="#open-modal" data-toggle="modal"><i
                                                        class="ion-eye"></i></a>
                                                </li>
                                                <li><a href="#"><i class="ion-ios-copy-outline"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="product-content">
                                        <h4><a href="javascript:void(0)">${goods.goodsName}</a></h4>
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
                                            <a href="javascript:void(0)">
                                                <img class="first-img" src="img/product/product8.jpg" alt="">
                                                <img class="hover-img" src="img/product/product1.jpg" alt="">
                                            </a>
                                            <span class="sticker">New</span>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="javascript:void(0)"><i class="ion-bag"></i></a></li>
                                                    <li><a href="#open-modal" data-toggle="modal"><i
                                                            class="ion-eye"></i></a></li>
                                                    <li><a href="#"><i class="ion-ios-copy-outline"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content">
                                            <h4><a href="javascript:void(0)">Versace Bright Crystal</a></h4>
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
                                            <a href="javascript:void(0)">
                                                <img class="first-img" src="img/product/product13.jpg" alt="">
                                                <img class="hover-img" src="img/product/product8.jpg" alt="">
                                            </a>
                                            <span class="sticker">New</span>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="javascript:void(0)"><i class="ion-bag"></i></a></li>
                                                    <li><a href="#open-modal" data-toggle="modal"><i
                                                            class="ion-eye"></i></a></li>
                                                    <li><a href="#"><i class="ion-ios-copy-outline"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content">
                                            <h4><a href="javascript:void(0)">Vera Wang Princess</a></h4>
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
                                            <a href="javascript:void(0)">
                                                <img class="first-img" src="img/product/product10.jpg" alt="">
                                                <img class="hover-img" src="img/product/product11.jpg" alt="">
                                            </a>
                                            <span class="sticker">New</span>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="javascript:void(0)"><i class="ion-bag"></i></a></li>
                                                    <li><a href="#open-modal" data-toggle="modal"><i
                                                            class="ion-eye"></i></a></li>
                                                    <li><a href="#"><i class="ion-ios-copy-outline"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content">
                                            <h4><a href="javascript:void(0)">The North Face Men's</a></h4>
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
                                            <a href="javascript:void(0)">
                                                <img class="first-img" src="img/product/product15.jpg" alt="">
                                                <img class="hover-img" src="img/product/product16.jpg" alt="">
                                            </a>
                                            <span class="sticker">New</span>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="javascript:void(0)"><i class="ion-bag"></i></a></li>
                                                    <li><a href="#open-modal" data-toggle="modal"><i
                                                            class="ion-eye"></i></a></li>
                                                    <li><a href="#"><i class="ion-ios-copy-outline"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content">
                                            <h4><a href="javascript:void(0)">Merax Stylish Accent</a></h4>
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
                                            <a href="javascript:void(0)">
                                                <img class="first-img" src="img/product/product17.jpg" alt="">
                                                <img class="hover-img" src="img/product/product18.jpg" alt="">
                                            </a>
                                            <span class="sticker">New</span>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="javascript:void(0)"><i class="ion-bag"></i></a></li>
                                                    <li><a href="#open-modal" data-toggle="modal"><i
                                                            class="ion-eye"></i></a></li>
                                                    <li><a href="#"><i class="ion-ios-copy-outline"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content">
                                            <h4><a href="javascript:void(0)">Makeup Brushes Set</a></h4>
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
                                            <a href="javascript:void(0)">
                                                <img class="first-img" src="img/product/product3.jpg" alt="">
                                            </a>
                                            <span class="sticker">New</span>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="javascript:void(0)"><i class="ion-bag"></i></a></li>
                                                    <li><a href="#open-modal" data-toggle="modal"><i
                                                            class="ion-eye"></i></a></li>
                                                    <li><a href="#"><i class="ion-ios-copy-outline"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content">
                                            <h4><a href="javascript:void(0)">Lipstick Ultra Violet</a></h4>
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
                                            <a href="javascript:void(0)">
                                                <img class="first-img" src="img/product/product13.jpg" alt="">
                                                <img class="hover-img" src="img/product/product14.jpg" alt="">
                                            </a>
                                            <span class="sticker">New</span>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="javascript:void(0)"><i class="ion-bag"></i></a></li>
                                                    <li><a href="#open-modal" data-toggle="modal"><i
                                                            class="ion-eye"></i></a></li>
                                                    <li><a href="#"><i class="ion-ios-copy-outline"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content">
                                            <h4><a href="javascript:void(0)">Enriched Nail Polish</a></h4>
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
                                            <a href="javascript:void(0)">
                                                <img class="first-img" src="img/product/product6.jpg" alt="">
                                            </a>
                                            <span class="sticker">New</span>
                                            <div class="product-action">
                                                <ul>
                                                    <li><a href="javascript:void(0)"><i class="ion-bag"></i></a></li>
                                                    <li><a href="#open-modal" data-toggle="modal"><i
                                                            class="ion-eye"></i></a></li>
                                                    <li><a href="#"><i class="ion-ios-copy-outline"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product-content">
                                            <h4><a href="javascript:void(0)">Dwar Men's Casual Long</a></h4>
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
    <%@include file="footer.jsp" %>
    <!--Footer Area End-->

</html>

