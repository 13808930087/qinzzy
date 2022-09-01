<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!doctype html>
<html class="no-js" lang="en">
<head>
    <base href="${ctx}/">
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Shopping Cart</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link type="text/css" rel="stylesheet" href="css/jingbao/cart.css">
    <!--Header Area Start-->
    <%@include file="header.jsp" %>
    <!--Header Area End-->
    <!--Shopping Cart Area Strat-->
    <section class="cart-area ptb-54">
        <div class="container">
            <div class="row">
                <div class="col-lg-9">
                    <form class="cart-controller">
                        <div class="cart-table table-responsive">
                            <table class="table table-bordered">
                                <thead class="cart-thead">
                                <tr>
                                    <th scope="col">产品</th>
                                    <th scope="col"></th>
                                    <th scope="col">价格</th>
                                    <th scope="col">数量</th>
                                    <th scope="col">总额</th>
                                    <th scope="col">删除</th>
                                </tr>
                                </thead>
                                <tbody class="cart-tbody">
                                <c:forEach begin="0" end="6">
                                <tr>
                                    <td class="product-thumbnail">
                                        <a href="javascript:void(0)">
                                            <img src="picture/product-1.jpg" alt="Image">
                                        </a>
                                    </td>
                                    <td class="product-name">
                                        <a href="javascript:void(0)">振荡多路工具<br>变速工具</a>
                                    </td>
                                    <td class="product-price">
                                        <span class="unit-amount">$90.00</span>
                                    </td>
                                    <td class="product-quantity">
                                        <div class="input-counter">
													<span class="minus-btn">
														<i class="ri-subtract-line"></i>
													</span>
                                            <input type="text" value="1">
                                            <span class="plus-btn">
														<i class="ri-add-line"></i>
													</span>
                                        </div>
                                    </td>
                                    <td class="product-subtotal">
                                        <span class="subtotal-amount">$90.00</span>
                                    </td>
                                    <td class="trash">
                                        <a href="" class="remove">
                                            <i class="ri-close-fill"></i>
                                        </a>
                                    </td>
                                </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </form>
                    <div class="coupon-cart">
                        <div class="row">
                            <div class="col-lg-8 col-md-8">
                                <div class="form-group mb-0">
                                    <input type="text" class="form-control" placeholder="Coupon code">
                                    <button class="default-btn">
                                        申请优惠券
                                    </button>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4">
                                <a href="javascript:void(0)" class="default-btn update-cart">
                                    更新购物车
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="cart-totals">
                        <h3 class="cart-checkout-title">Cart Totals</h3>
                        <ul>
                            <li>Subtotal <span>$240.00</span></li>
                            <li>Shipping <span>$00.00</span></li>
                            <li>Total <span>$315.00</span></li>
                            <li><b>Payable Total</b> <span><b>$240.00</b></span></li>
                        </ul>
                        <a href="javascript:void(0)" class="default-btn">
                            Proceed to checkout
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--Shopping Cart Area End-->
    <!--Footer Area Start-->
    <%@include file="footer.jsp" %>
    <!--Footer Area End-->

</html>
