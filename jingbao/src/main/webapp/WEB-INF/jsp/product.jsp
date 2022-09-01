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
    <title>Single Product</title>
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
                                <img src="img/single-product/large/large1.jpg" alt="">
                                <a class="venobox" data-gall="gallery01" href="img/single-product/large/large1.jpg"><i class="fa fa-search-plus"></i></a>
                            </div>
                            <!--Single Product Image End-->
                        </div>
                        <div class="tab-pane fade" id="single-slide-two">
                            <!--Single Product Image Start-->
                            <div class="single-product-img img-full">
                                <img src="img/single-product/large/large2.jpg" alt="">
                                <a class="venobox" data-gall="gallery01" href="img/single-product/large/large2.jpg"><i class="fa fa-search-plus"></i></a>
                            </div>
                            <!--Single Product Image End-->
                        </div>
                        <div class="tab-pane fade" id="single-slide-three">
                            <!--Single Product Image Start-->
                            <div class="single-product-img img-full">
                                <img src="img/single-product/large/large3.jpg" alt="">
                                <a class="venobox" data-gall="gallery01" href="img/single-product/large/large3.jpg"><i class="fa fa-search-plus"></i></a>
                            </div>
                            <!--Single Product Image End-->
                        </div>
                        <div class="tab-pane fade" id="single-slide-four">
                            <!--Single Product Image Start-->
                            <div class="single-product-img img-full">
                                <img src="img/single-product/large/large4.jpg" alt="">
                                <a class="venobox" data-gall="gallery01" href="img/single-product/large/large4.jpg"><i class="fa fa-search-plus"></i></a>
                            </div>
                            <!--Single Product Image End-->
                        </div>
                    </div>
                    <!--Tab Content End-->
                    <!--Tab Menu Start-->
                    <div class="single-product-menu">
                        <div class="nav single-slide-menu" role="tablist">
                            <div class="single-tab-menu img-full">
                                <a class="active" data-toggle="tab" href="#single-slide-one"><img src="img/single-product/small/small1.jpg" alt=""></a>
                            </div>
                            <div class="single-tab-menu img-full">
                                <a data-toggle="tab" href="#single-slide-two"><img src="img/single-product/small/small2.jpg" alt=""></a>
                            </div>
                            <div class="single-tab-menu img-full">
                                <a data-toggle="tab" href="#single-slide-three"><img src="img/single-product/small/small3.jpg" alt=""></a>
                            </div>
                            <div class="single-tab-menu img-full">
                                <a data-toggle="tab" href="#single-slide-four"><img src="img/single-product/small/small4.jpg" alt=""></a>
                            </div>
                        </div>
                    </div>
                    <!--Tab Menu End-->
                </div>
                <div class="col-md-7">
                    <div class="single-product-content">
                        <h1 class="single-product-name">Adams Men's Dunbar</h1>
                        <div class="single-product-reviews">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                        </div>
                        <div class="single-product-price">
                            <div class="product-discount">
                                <span class="price">$80.00</span>
                                <span class="discount">-20%</span>
                            </div>
                        </div>
                        <div class="product-info">
                            <p>Regular fit, round neckline, short sleeves. Made of extra long staple pima cotton. </p>
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
                                        <button class="add-to-cart"><i class="ion-bag"></i> add-to-cart</button>
                                        <span class="product-availability">In stock</span>
                                    </div>
                                </div>
                            </form>
                            <!--Single Product Share-->
                            <div class="single-product-share mt-20">
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
                        <!--Block Reassurance-->
                        <div class="block-reassurance mt-30">
                            <ul>
                                <li>
                                    <div class="block-reassurance-item">
                                        <img src="img/icon/single-icon1.png" alt="">
                                        <span>Security policy (edit with Customer reassurance module)</span>
                                    </div>
                                </li>
                                <li>
                                    <div class="block-reassurance-item">
                                        <img src="img/icon/single-icon2.png" alt="">
                                        <span>Delivery policy (edit with Customer reassurance module)</span>
                                    </div>
                                </li>
                                <li>
                                    <div class="block-reassurance-item">
                                        <img src="img/icon/single-icon3.png" alt="">
                                        <span>Security policy (edit with Customer reassurance module)</span>
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
                                <a class="active" data-toggle="tab" href="#description">Description</a>
                            </li>
                            <li>
                                <a data-toggle="tab" href="#product-details">Product Details</a>
                            </li>
                            <li>
                                <a data-toggle="tab" href="#reviews">Reviews</a>
                            </li>
                        </ul>
                        <!--Review And Description Tab Menu End-->
                        <!--Review And Description Tab Content Start-->
                        <div class="tab-content product-review-content-tab mt-30" id="myTabContent-4">
                            <div class="tab-pane fade show active" id="description">
                                <div class="single-product-description">
                                    <p>Fashion has been creating well-designed collections since 2010. The brand offers feminine designs delivering stylish separates and statement dresses which has since evolved into a full ready-to-wear collection in which every item is a vital part of a woman's wardrobe. The result? Cool, easy, chic looks with youthful elegance and unmistakable signature style. All the beautiful pieces are made in Italy and manufactured with the greatest attention. Now Fashion extends to a range of accessories including shoes, hats, belts and more!</p>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="product-details">
                                <div class="product-details">
                                    <div class="product-manufacturer">
                                        <a href="#">
                                            <img src="img/logo/logo.jpg" alt="">
                                        </a>
                                    </div>
                                    <div class="product-reference">
                                        <label class="label">Reference </label> <span class="demo-list">demo_13</span>
                                    </div>
                                    <div class="product-quantities">
                                        <label class="label">In stock</label> <span class="item">300 Items</span>
                                    </div>
                                    <div class="product-out-of-stock"></div>
                                    <div class="product-features">
                                        <h3>Data sheet</h3>
                                        <div class="table-responsive">
                                            <table class="table">
                                                <tr>
                                                    <td>Compositions</td>
                                                    <td>Cotton</td>
                                                </tr>
                                                <tr>
                                                    <td>Styles</td>
                                                    <td>Casual</td>
                                                </tr>
                                                <tr>
                                                    <td>Properties</td>
                                                    <td>Short Sleeve</td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="reviews">
                                <div class="review-page-comment">
                                    <div class="review-comment">
                                        <h2>Write your review</h2>
                                        <ul class="pro-comments-rating">
                                            <li>
                                                <label>Quality</label>
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
                                            <label>Title for your review<sup class="required">*</sup></label>
                                            <input type="text" placeholder="Title Here" name="title">
                                            <label>your review<sup class="required">*</sup></label>
                                            <textarea id="content" name="content"></textarea>
                                            <label>Your name<sup class="required">*</sup></label>
                                            <input type="text" placeholder="Your Name" name="title">
                                            <div class="send-your-review">
                                                <p class="required-fields"><sup>*</sup> Required fields</p>
                                                <div class="send-cancel-btn">
                                                    <button class="send-btn">Send</button>
                                                    or
                                                    <button class="cancel-btn">Cancel</button>
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
                        <h2>12 other products in the same category:</h2>
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

