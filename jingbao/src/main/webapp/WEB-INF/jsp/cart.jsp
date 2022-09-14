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
                            <table class="table table-bordered" id="table">
                                <thead class="cart-thead">
                                <tr>
                                    <th class="product-checkbox">
                                        <input name="checkbox" type="checkbox">
                                    </th>

                                    <th scope="col" style="width: 130px;">产品图片</th>
                                    <th scope="col" style="width: 145px;">产品名</th>
                                    <th scope="col" style="width: 130px;">价格</th>
                                    <th scope="col" style="width: 145px;">数量</th>
                                    <th scope="col" style="width: 130px;">总额</th>
                                    <th scope="col" style="width: 100px;">删除</th>
                                </tr>
                                </thead>
                                <tbody class="cart-tbody">
                                <c:forEach items="${carts}" var="cart" varStatus="p">
                                    <tr>
                                        <td style="display: none">
                                            <input name="cartId" type="text" value="${cart.cartId}">
                                        </td>
                                        <td style="display: none">
                                            <input name="goodsId" type="text" value="${cart.goodsId}">
                                        </td>
                                        <td class="product-checkbox">
                                            <input name="checkbox" type="checkbox">
                                        </td>
                                        <td class="product-thumbnail" style="width: 130px;">
                                            <a href="javascript:void(0)">
                                                <img src="${cart.goodsImg}" data-img="${cart.goodsImg}" alt="Image">
                                            </a>
                                        </td>
                                        <td class="product-name" style="width: 145px;">
                                            <a href="javascript:void(0)">${cart.goodsName}</a>
                                        </td>
                                        <td class="product-price" style="width: 130px;">
                                            <span class="unit-amount"
                                            >${cart.goodsPrice}</span>
                                        </td>
                                        <td class="product-quantity" style="width: 145px;">
                                            <div class="input-counter">
													<span class="minus-btn">
														<i class="ri-subtract-line"></i>
													</span>
                                                <input type="text" value="${cart.goodsNum}" max="99" min="1"
                                                       name="goodsNum">
                                                <span class="plus-btn">
														<i class="ri-add-line"></i>
													</span>
                                            </div>
                                        </td>
                                        <td class="product-subtotal" style="width: 130px;">
                                            <span class="subtotal-amount">${cart.total}</span>
                                        </td>
                                        <td class="trash" style="width: 100px;">
                                            <a href="javascript:void(0)" class="remove">
                                                <i class="ri-close-fill"></i>
                                            </a>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </form>

                </div>
                <form id="order-form" action="order/buy" method="post">
                    <input type="hidden" name="orderId">
                </form>
                <div class="col-lg-3">
                    <div class="cart-totals">
                        <h3 class="cart-checkout-title">购物车总数</h3>
                        <ul>
                            <li>小计 <span id="subtotal">$00.00</span></li>
                            <li><b>应付总额</b> <span id="totalPayable">$00.00</span></li>
                        </ul>
                        <a href="javascript:void(0)" class="default-btn">
                            结账
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
    <script type="text/javascript">

        let customerId;
        if (${login_user!=null}&&
        ${login_user!=""})
        {
            customerId = "${login_user.customerId}";
        }
    </script>
    <script src="js/jingbao/cart.js"></script>

</html>
