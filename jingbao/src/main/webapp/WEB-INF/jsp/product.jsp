<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!doctype html>
<html class="no-js" lang="en">
<head>
    <base href="${ctx}/">
    <title>京宝商城</title>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>单一产品</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!--Header Area Start-->
    <%@include file="header.jsp" %>
    <!--Header Area End-->
    <!--Single Product Start-->
    <div class="single-product-area mt-80">
        <div class="container">
            <div class="row">
                <div class="col-md-5">
                    <!--Tab Content Start-->
                    <div class="tab-content product-details-large" id="myTabContent-3">
                        <div class="tab-pane fade show active" id="single-slide-one">
                            <!--Single Product Image Start-->
                            <div class="single-product-img img-full">
                                <img src="${goods.goodsImgs[0]}" alt="">
                                <a class="venobox" data-gall="gallery01" href="${goods.goodsImgs[0]}"><i class="fa fa-search-plus"></i></a>
                            </div>
                            <!--Single Product Image End-->
                        </div>
                        <div class="tab-pane fade" id="single-slide-two">
                            <!--Single Product Image Start-->
                            <div class="single-product-img img-full">
                                <img src="${goods.goodsImgs[1]}" alt="">
                                <a class="venobox" data-gall="gallery01" href="${goods.goodsImgs[1]}"><i class="fa fa-search-plus"></i></a>
                            </div>
                            <!--Single Product Image End-->
                        </div>
                        <div class="tab-pane fade" id="single-slide-three">
                            <!--Single Product Image Start-->
                            <div class="single-product-img img-full">
                                <img src="${goods.goodsImgs[2]}" alt="">
                                <a class="venobox" data-gall="gallery01" href="${goods.goodsImgs[2]}"><i class="fa fa-search-plus"></i></a>
                            </div>
                            <!--Single Product Image End-->
                        </div>
                        <div class="tab-pane fade" id="single-slide-four">
                            <!--Single Product Image Start-->
                            <div class="single-product-img img-full">
                                <img src="${goods.goodsImgs[3]}" alt="">
                                <a class="venobox" data-gall="gallery01" href="${goods.goodsImgs[3]}"><i class="fa fa-search-plus"></i></a>
                            </div>
                            <!--Single Product Image End-->
                        </div>
                    </div>
                    <!--Tab Content End-->
                    <!--Tab Menu Start-->
                    <div class="single-product-menu">
                        <div class="nav single-slide-menu" role="tablist">
                            <div class="single-tab-menu img-full">
                                <a class="active" data-toggle="tab" href="#single-slide-one"><img src="${goods.goodsImgs[0]}" alt=""></a>
                            </div>
                            <div class="single-tab-menu img-full">
                                <a data-toggle="tab" href="#single-slide-two"><img src="${goods.goodsImgs[1]}" alt=""></a>
                            </div>
                            <div class="single-tab-menu img-full">
                                <a data-toggle="tab" href="#single-slide-three"><img src="${goods.goodsImgs[2]}" alt=""></a>
                            </div>
                            <div class="single-tab-menu img-full">
                                <a data-toggle="tab" href="#single-slide-four"><img src="${goods.goodsImgs[3]}" alt=""></a>
                            </div>
                        </div>
                    </div>
                    <!--Tab Menu End-->
                </div>
                <div class="col-md-7">
                    <div class="single-product-content">
                        <h1 class="single-product-name">${goods.goodsName}</h1>
                        <div class="single-product-reviews">
                            <c:forEach begin="1" end="${goods.goodsLevel}">
                            <i class="fa fa-star"></i>
                            </c:forEach>
                        </div>
                        <div class="single-product-price">
                            <div class="product-discount">
                                <span class="price">${goods.newGoodsPrice}</span>
                                <c:if test="${goods.goodsDiscount<1}">
                                <span class="discount">-${(1-goods.goodsDiscount)*100}%</span></c:if>
                            </div>
                        </div>
                        <div class="product-info">
                            <p>${goods.goodsIntroduce}</p>
                        </div>
                        <div class="single-product-action">
                            <form action="#">
                                <div class="product-variants">
                                    <div class="product-variants-item">
                                        <span class="control-label">尺寸</span>
                                        <select class="nice-select" name="size">
                                            <option value="1">S</option>
                                            <option value="2">M</option>
                                            <option value="3">X</option>
                                            <option value="4">XL</option>
                                        </select>
                                    </div>
                                    <div class="product-variants-item">
                                        <span class="control-label">颜色</span>
                                        <select class="nice-select" name="color">
                                            <option value="1">红色</option>
                                            <option value="2">绿色</option>
                                            <option value="3">蓝色</option>
                                            <option value="4">白色</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="product-add-to-cart">
                                    <span class="control-label">数量</span>
                                    <div class="cart-plus-minus">
                                        <input class="cart-plus-minus-box" type="text" name="qtybutton" value="1">
                                    </div>
                                    <div class="add">
                                        <button class="add-to-cart"><i class="ion-bag"></i> 添加到购物车</button>
                                        <span class="product-availability">有存货</span>
                                    </div>
                                </div>
                            </form>
                            <!--Single Product Share-->
                            <div class="single-product-share mt-20">
                                <ul>
                                    <li class="categories-title">分享 ：</li>
                                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                    <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                                </ul>
                            </div>
                            <!--Single Product Share-->
                        </div>
                        <!--Block Reassurance-->
                        <div class="block-reassurance mt-30">
                            <ul>
                                <li>
                                    <div class="block-reassurance-item">
                                        <img src="img/icon/single-icon1.png" alt="">
                                        <span>安全策略（使用客户再保证模块进行编辑）</span>
                                    </div>
                                </li>
                                <li>
                                    <div class="block-reassurance-item">
                                        <img src="img/icon/single-icon2.png" alt="">
                                       <span>交货政策（使用客户再保证模块进行编辑）</span>
                                    </div>
                                </li>
                                <li>
                                    <div class="block-reassurance-item">
                                        <img src="img/icon/single-icon3.png" alt="">
                                        <span>安全政策（使用客户再保证模块进行编辑）</span>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <!--Block Reassurance-->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--Single Product End-->
    <!--Single Product Review Tab Start-->
    <div class="single-product-review-tab mt-80">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="single-product-review-and-description-area">
                        <!--Review And Description Tab Menu Start-->
                        <ul class="nav dec-and-review-menu">
                            <li>
                       <a class="active" data-toggle="tab" href="#description">描述</a>
                            </li>
                            <li>
                                <a data-toggle="tab" href="#product-details">产品详情</a>
                            </li>
                            <li>
                                <a data-toggle="tab" href="#reviews">评论</a>
                            </li>
                        </ul>
                        <!--Review And Description Tab Menu End-->
                        <!--Review And Description Tab Content Start-->
                        <div class="tab-content product-review-content-tab mt-30" id="myTabContent-4">
                            <div class="tab-pane fade show active" id="description">
                                <div class="single-product-description">
                                  <p>自 2010 年以来，时尚界一直在打造精心设计的系列。该品牌提供女性化设计、时尚的单品和个性连衣裙，自此演变成一个完整的成衣系列，其中每件单品都是女性衣橱的重要组成部分.结果？酷酷、轻松、别致的外观与年轻的优雅和明显的标志性风格。所有精美的作品均在意大利制造，并以最大的关注度制造。现在时尚扩展到一系列配饰，包括鞋子、帽子、腰带等等！</p></div>
                            </div>
                            <div class="tab-pane fade" id="product-details">
                                <div class="product-details">
                                    <div class="product-manufacturer">
                                        <a href="#">
                                            <img src="img/logo/logo.jpg" alt="">
                                        </a>
                                    </div>
                                    <div class="product-reference">
                                  <label class="label">参考</label> <span class="demo-list">demo_13</span>
                                    </div>
                                    <div class="product-quantities">
                                        <label class="label">有货</label> <span class="item">300 件</span>
                                    </div>
                                    <div class="product-out-of-stock"></div>
                                    <div class="product-features">
                                        <h3>数据表</h3>
                                        <div class="table-responsive">
                                            <table class="table">
                                             <tr>
                                                    <td>作曲</td>
                                                    <td>棉花</td>
                                                </tr>
                                                <tr>
                                                    <td>样式</td>
                                                    <td>休闲</td>
                                                </tr>
                                                <tr>
                                                    <td>属性</td>
                                                    <td>短袖</td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="reviews">
                                <div class="review-page-comment">
                                    <div class="review-comment">
                                     <h2>写下你的评论</h2>
                                        <ul class="pro-comments-rating">
                                            <li>
                                             <label>质量</label>
                                                <div class="single-product-reviews">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="review-form">
                                        <form action="#">
                                            <label>您的评论标题<sup class="required">*</sup></label>
                                            <input type="text" placeholder="Title Here" name="title">
                                            <label>你的意见<sup class="required">*</sup></label>
                                            <textarea id="content" name="content"></textarea>
                                            <label>你的名字<sup class="required">*</sup></label>
                                            <input type="text" placeholder="Your Name" name="title">
                                            <div class="send-your-review">
                                                <p class="required-fields"><sup>*</sup>必填字段</p>
                                                <div class="send-cancel-btn">
                                                    <button class="send-btn">发送</button>
                                                    或
                                                    <button class="cancel-btn">取消</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--Review And Description Tab Content End-->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--Single Product Review Tab End-->
    <!--Product Area Start-->
    <div class="product-area mt-55">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <!--Section Title Start-->
                    <div class="section-title">
                       <h2>同类别的其他 12 种产品：</h2>
                    </div>
                    <!--Section Title End-->
                </div>
            </div>
            <div class="product-block-content">
                <div class="row">
                    <div class="bestsellerSlide-3 pdr-0 owl-carousel">
                        <div class="col-md-12">
                            <!--Single Product Start-->
                            <div class="single-product">
                                <div class="product-img">
                                    <a href="javascript:void(0)">
                                        <img class="first-img" src="img/product/product30.jpg" alt="">
                                        <img class="hover-img" src="img/product/product22.jpg" alt="">
                                    </a>
                                    <span class="sticker">New</span>
                                    <div class="product-action">
                                        <ul>
                                            <li><a href="javascript:void(0)"><i class="ion-bag"></i></a></li>
                                            <li><a href="#open-modal" data-toggle="modal"><i class="ion-eye"></i></a></li>
                                            <li><a href="#"><i class="ion-ios-copy-outline"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="product-content">
                                    <h4><a href="javascript:void(0)">范思哲亮水晶</a></h4>
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
                                        <img class="first-img" src="img/product/product28.jpg" alt="">
                                        <img class="hover-img" src="img/product/product26.jpg" alt="">
                                    </a>
                                    <span class="sticker">New</span>
                                    <div class="product-action">
                                        <ul>
                                            <li><a href="javascript:void(0)"><i class="ion-bag"></i></a></li>
                                            <li><a href="#open-modal" data-toggle="modal"><i class="ion-eye"></i></a></li>
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
                                        <img class="first-img" src="img/product/product23.jpg" alt="">
                                    </a>
                                    <span class="sticker">New</span>
                                    <div class="product-action">
                                        <ul>
                                            <li><a href="javascript:void(0)"><i class="ion-bag"></i></a></li>
                                            <li><a href="#open-modal" data-toggle="modal"><i class="ion-eye"></i></a></li>
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
                        <div class="col-md-12">
                            <!--Single Product Start-->
                            <div class="single-product">
                                <div class="product-img">
                                    <a href="javascript:void(0)">
                                        <img class="first-img" src="img/product/product14.jpg" alt="">
                                        <img class="hover-img" src="img/product/product21.jpg" alt="">
                                    </a>
                                    <span class="sticker">New</span>
                                    <div class="product-action">
                                        <ul>
                                            <li><a href="javascript:void(0)"><i class="ion-bag"></i></a></li>
                                            <li><a href="#open-modal" data-toggle="modal"><i class="ion-eye"></i></a></li>
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
                                        <img class="first-img" src="img/product/product31.jpg" alt="">
                                        <img class="hover-img" src="img/product/product12.jpg" alt="">
                                    </a>
                                    <span class="sticker">New</span>
                                    <div class="product-action">
                                        <ul>
                                            <li><a href="javascript:void(0)"><i class="ion-bag"></i></a></li>
                                            <li><a href="#open-modal" data-toggle="modal"><i class="ion-eye"></i></a></li>
                                            <li><a href="#"><i class="ion-ios-copy-outline"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="product-content">
                                    <h4><a href="javascript:void(0)">Chouyatou Men's Casual</a></h4>
                                    <div class="product-price">
                                        <span class="price">$20.00</span>
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
                                        <img class="first-img" src="img/product/product12.jpg" alt="">
                                        <img class="hover-img" src="img/product/product14.jpg" alt="">
                                    </a>
                                    <span class="sticker">New</span>
                                    <div class="product-action">
                                        <ul>
                                            <li><a href="javascript:void(0)"><i class="ion-bag"></i></a></li>
                                            <li><a href="#open-modal" data-toggle="modal"><i class="ion-eye"></i></a></li>
                                            <li><a href="#"><i class="ion-ios-copy-outline"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="product-content">
                                    <h4><a href="javascript:void(0)">Enriched Nail Polish</a></h4>
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
                                        <img class="first-img" src="img/product/product36.jpg" alt="">
                                        <img class="hover-img" src="img/product/product2.jpg" alt="">
                                    </a>
                                    <span class="sticker">New</span>
                                    <div class="product-action">
                                        <ul>
                                            <li><a href="javascript:void(0)"><i class="ion-bag"></i></a></li>
                                            <li><a href="#open-modal" data-toggle="modal"><i class="ion-eye"></i></a></li>
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
                                        <img class="first-img" src="img/product/product24.jpg" alt="">
                                        <img class="hover-img" src="img/product/product12.jpg" alt="">
                                    </a>
                                    <span class="sticker">New</span>
                                    <div class="product-action">
                                        <ul>
                                            <li><a href="javascript:void(0)"><i class="ion-bag"></i></a></li>
                                            <li><a href="#open-modal" data-toggle="modal"><i class="ion-eye"></i></a></li>
                                            <li><a href="#"><i class="ion-ios-copy-outline"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="product-content">
                                    <h4><a href="javascript:void(0)">Columbia Men's Ascender</a></h4>
                                    <div class="product-price">
                                        <span class="price">$36.00</span>
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
    <!--Product Area End-->
    <!--Footer Area Start-->
    <%@include file="footer.jsp" %>
    <!--Footer Area End-->


</html>

