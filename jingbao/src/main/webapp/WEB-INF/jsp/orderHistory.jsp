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
    <!--Shopping Cart Area Strat-->

    <div class="cart-area recent-order">
        <h3>订单历史</h3>
        <form class="cart-controller mb-0">
            <div class="cart-table table-responsive">
                <c:forEach items="${orders}" var="order">
                    <c:if test="${order.orderItemList!=null}">
                    <table class="table table-bordered">
                        <thead>
                        <tr>
                            <th scope="col">产品</th>
                            <th scope="col"></th>
                            <th scope="col">顺序</th>
                            <th scope="col">数量</th>
                            <th scope="col">总计</th>
                            <th scope="col">垃圾</th>
                            <th scope="col">状态</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${order.orderItemList}" var="orderItem">
                            <tr>
                                <td class="product-thumbnail">
                                    <a href="product-details.html">
                                        <img src="${orderItem.goodsImg}" alt="Image">
                                    </a>
                                </td>
                                <td class="product-name">
                                    <a href="javascript:void(0)">${orderItem.goodsName}</a>
                                </td>
                                <td class="product-price">
                                    <span class="unit-amount">${orderItem.goodsPrice}</span>
                                </td>
                                <td class="product-price">
                                    <span class="unit-amount">${orderItem.goodsNum}</span>
                                </td>
                                <td class="product-subtotal">
                                    <span class="subtotal-amount">${orderItem.goodsTotal}</span>
                                </td>
                                <td class="trash">
                                    <a href="" class="remove">
                                        <i class="ri-close-fill"></i>
                                    </a>
                                </td>
                                <td class="product-status">
                                    <span class="status">${order.orderState.name}</span>
                                </td>
                            </tr>
                        </c:forEach>

                        </tbody>
                    </table>
                    </c:if>
                </c:forEach>
            </div>
        </form>
    </div>
    <!--Shopping Cart Area End-->

    <script src="js/jingbao/cart.js"></script>

</html>
