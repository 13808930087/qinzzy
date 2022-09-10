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
                    <table class="table table-bordered">
                        <thead>
                        <tr>
                          <th scope="col">产品</th>
                            <th scope="col"></th>
                            <th scope="col">顺序</th>
                            <th scope="col">数量</th>
                            <th scope="col">状态</th>
                            <th scope="col">总计</th>
                            <th scope="col">垃圾</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td class="product-thumbnail">
                                <a href="product-details.html">
                                    <img src="static/picture/product-1.jpg" alt="Image">
                                </a>
                            </td>
                            <td class="product-name">
                             <a href="product-details.html">DFMALB 20V Max XX 振荡多路
                                    <br> 工具变速工具</a>
                            </td>
                            <td class="product-price">
                                <span class="unit-amount">#001</span>
                            </td>
                            <td class="product-price">
                                <span class="unit-amount">01</span>
                            </td>
                            <td class="product-subtotal">
                                <span class="subtotal-amount">Paid</span>
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
                        <tr>
                            <td class="product-thumbnail">
                                <a href="product-details.html">
                                    <img src="static/picture/product-2.jpg" alt="Image">
                                </a>
                            </td>
                            <td class="product-name">
                            <a href="product-details.html">电动工具套装中国制造商
                                    <br> 生产50V锂电池</a>
                            </td>
                            <td class="product-price">
                                <span class="unit-amount">#005</span>
                            </td>
                            <td class="product-price">
                                <span class="unit-amount">02</span>
                            </td>
                            <td class="product-subtotal">
                                <span class="subtotal-amount">Pending</span>
                            </td>
                            <td class="product-subtotal">
                                <span class="subtotal-amount">$50.00</span>
                            </td>
                            <td class="trash">
                                <a href="" class="remove">
                                    <i class="ri-close-fill"></i>
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td class="product-thumbnail">
                                <a href="product-details.html">
                                    <img src="static/picture/product-3.jpg" alt="Image">
                                </a>
                            </td>
                            <td class="product-name">
                             <a href="product-details.html">电磁冲击功率 <br>
                                    锤钻机</a>
                            </td>
                            <td class="product-price">
                                <span class="unit-amount">#009</span>
                            </td>
                            <td class="product-price">
                                <span class="unit-amount">02</span>
                            </td>
                            <td class="product-subtotal">
                                <span class="subtotal-amount">Failed</span>
                            </td>
                            <td class="product-subtotal">
                                <span class="subtotal-amount">$30.00</span>
                            </td>
                            <td class="trash">
                                <a href="" class="remove">
                                    <i class="ri-close-fill"></i>
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td class="product-thumbnail">
                                <a href="product-details.html">
                                    <img src="static/picture/product-4.jpg" alt="Image">
                                </a>
                            </td>
                            <td class="product-name">
                              <a href="product-details.html">专业无绳电钻
                                    工具 <br> 设置有竞争力的价格</a>
                            </td>
                            <td class="product-price">
                                <span class="unit-amount">#0062</span>
                            </td>
                            <td class="product-price">
                                <span class="unit-amount">02</span>
                            </td>
                            <td class="product-subtotal">
                                <span class="subtotal-amount">Paid</span>
                            </td>
                            <td class="product-subtotal">
                                <span class="subtotal-amount">$45.00</span>
                            </td>
                            <td class="trash">
                                <a href="" class="remove">
                                    <i class="ri-close-fill"></i>
                                </a>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </form>
        </div>
    <!--Shopping Cart Area End-->

    <script src="js/jingbao/cart.js"></script>

</html>
