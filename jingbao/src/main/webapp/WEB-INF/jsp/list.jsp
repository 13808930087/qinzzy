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

    <!--Header Area Start-->
    <%@include file="header.jsp" %>
    <!--Header Area End-->
    <!--Shop Area Start-->
    <div class="shop-area mt-60">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 order-2 order-lg-1">
                    <!--Shop Product Categorie Start-->
                    <div class="shop-product-cate mb-20">
                        <c:if test="${title_get!=null}">
                            <h3>${title_get.titleName}</h3>
                            <div id="shop-cate-toggle" class="category-menu sidebar-menu sidbar-style">
                                <ul class="category-sub-menu">
                                    <c:forEach items="${title_get.titles}" var="title">
                                        <li class="has-sub"><a href="#">${title.titleName}</a>
                                            <ul class="category-sub">
                                                <c:forEach items="${title.titles}" var="title">
                                                    <li><a href="javascript:void(0)">${title.titleName}</a></li>
                                                </c:forEach>
                                            </ul>
                                        </li>
                                    </c:forEach>
                                </ul>
                            </div>
                        </c:if>
                        <c:if test="${title_get==null}">
                            <h3>全部分类</h3>
                            <c:forEach var="title" items="${titles}">
                                <div id="shop-cate-toggle" class="category-menu sidebar-menu sidbar-style">
                                    <ul class="category-sub-menu">
                                        <li class="has-sub"><a href="#">${title.titleName}</a>
                                            <ul class="category-sub">

                                                <c:forEach items="${title.titles}" var="title">
                                                    <li><a href="javascript:void(0)">${title.titleName}</a></li>
                                                </c:forEach>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                            </c:forEach>
                        </c:if>
                    </div>
                    <!--Shop Product Categorie End-->
                    <!--Brand Categorie Widget Start-->
                    <div class="shop-sidebar mb-20">
                        <h3>品牌</h3>
                        <div class="shop-checkbox">
                            <ul>
                                <li><input name="product-categori" type="checkbox"><a href="#">图形角 (5)</a>
                                </li>
                                <li><input name="product-categori" type="checkbox"><a href="#">工作室设计 (8)</a>
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
                                <c:if test="${pi.total!=0}">
                                    <p class="show-product" style="font-size: 16px;width: 300px">显示 ${pi.total}
                                        个结果中的 ${((pi.pageNum-1)*pi.pageSize)+1}–${((pi.pageNum-1)*pi.pageSize)+pi.size}个
                                    </p>
                                </c:if>
                            </div>
                            <!--Toolbar Short Area Start-->
                            <div class="toolbar-short-area d-md-flex align-items-center">
                                <div class="toolbar-shorter">
                                    <label style="font-size: 16px">排序</label>
                                    <select class="wide nice-select">
                                        <option value="Relevance">相关度</option>
                                        <option value="Name, A to Z">最新</option>
                                        <option value="Name, Z to A">热度</option>
                                        <option value="Price, low to high">价格，从低到高</option>
                                        <option value="Price, high to low">价格，从高到低</option>
                                    </select>
                                </div>
                            </div>
                            <!--Toolbar Short Area End-->
                        </div>
                        <!--Grid & List View End-->
                        <!--Shop Product Start-->

                        <div class="shop-product"
                        >
                            <div id="myTabContent-2" class="tab-content">
                                <div id="grid" class="tab-pane fade show active">
                                    <div class="product-grid-view">
                                        <div class="row">
                                            <c:forEach var="goods" items="${goodss}">
                                                <div class="col-lg-4 col-xl-4 col-md-4 product-div">
                                                    <!--Single Product Start-->
                                                    <div class="single-product mb-30">
                                                        <form action="jingbao/product" method="post" id="product-form">
                                                            <input type="hidden" name="goodsId" value="${goods.goodsId}">
                                                        </form>
                                                        <div class="product-img">
                                                            <a href="javascript:void(0)">
                                                                <input type="hidden" name="goodsId" value="${goods.goodsId}">
                                                                <input type="hidden" name="goodsName" value="${goods.goodsName}">
                                                                <input type="hidden" name="goodsFirstImg" value="${goods.goodsFirstImg}">
                                                                <input type="hidden" name="newGoodsPrice" value="${goods.newGoodsPrice}">
                                                                <img class="first-img" src="${goods.goodsFirstImg}"
                                                                     alt="">
                                                                <c:if test="${goods.goodsHoverImg!=null}">
                                                                    <img class="hover-img" src="${goods.goodsHoverImg}"
                                                                         alt=""></c:if>
                                                            </a>

                                                            <c:if test="${goods.goodsNew==1}"> <span
                                                                    class="sticker">New</span></c:if>
                                                            <div class="product-action">
                                                                <ul>
                                                                    <li><a href="javascript:void(0)"><i
                                                                            class="ion-bag"></i></a></li>
                                                                    <li><a href="#open-modal" data-toggle="modal"><i
                                                                            class="ion-eye"></i></a></li>
                                                                    <li><a href="#"><i class="ion-ios-copy-outline"></i></a>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="product-content">
                                                            <h4><a href="javascript:void(0)">${goods.goodsName}</a></h4>
                                                            <div class="product-price">
                                                                <c:if test="${goods.goodsDiscount<1}">
                                                                    <span class="regular-price">${goods.goodsPrice}</span>
                                                                    <span class="price">${goods.newGoodsPrice}</span></c:if>
                                                                <c:if test="${goods.goodsDiscount>=1}">
                                                                    <span class="price">${goods.goodsPrice}</span>
                                                                </c:if>
                                                            </div>
                                                            <div class="product-reviews">
                                                                <c:forEach begin="1" end="${goods.goodsLevel}">
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
                                                                <a href="javascript:void(0)">
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
                                                            <h4><a href="javascript:void(0)">${goods.goodsName}</a>
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
                                                                <p>客户很重要，客户才会跟着
                                                                    开发商把对生命的恐惧放在弓上，那就是
                                                                    巧克力之前的卡车。但让它成为生活的重要组成部分
                                                                    周期的时间。</p>
                                                            </div>
                                                            <div class="product-list-action">
                                                                <ul>
                                                                    <li><a class="pro-add-btn" href="#"><i
                                                                            class="ion-bag"></i>添加到购物车</a></li>
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
                                            <input type="hidden" name="goodsId" value="${goods.goodsId }">
                                            <input type="hidden" name="goodsName" value="${goods.goodsName }">
                                            <input type="hidden" name="categoryId" value="${goods.categoryId }">
                                            <input type="hidden" name="goodsDiscount" value="${goods.goodsDiscount }">
                                            <input type="hidden" name="newGoodsPrice" value="${goods.newGoodsPrice }">
                                            <input type="hidden" name="goodsLevel" value="${goods.goodsLevel }">
                                            <input type="hidden" name="goodsNew" value="${goods.goodsNew }">
                                            <input type="hidden" name="pageNum" value="${pi.pageNum}">
                                            <input type="hidden" name="pageSize" value="${pi.pageSize}">

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
    <!--Footer Area Start-->
    <%@include file="footer.jsp" %>
    <!--Footer Area End-->
    <script type="text/javascript">
        const ctx = "${ctx}";
        const pages = parseInt("${pi.pages}");
        const pageNum = parseInt("${pi.pageNum}");
        const pageSize = parseInt("${pi.pageSize}");
        let customerId;
        if (${login_user!=null}&&
        ${login_user!=""})
        {
            customerId = "${login_user.customerId}";
        }

    </script>
    <script src="js/jingbao/list.js"></script>

</html>


