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
    <link type="text/css" rel="stylesheet" href="css/jingbao/order.css">
    <!--Shopping Cart Area Strat-->
    <!--Header Area Start-->
    <%@include file="header.jsp" %>
    <!--Header Area End-->
    <!--Shopping Cart Area Strat-->
    <section class="checkout-area ptb-54">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="cart-area recent-order margin-bottom-50">
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
                                </table></div>
                        </form>
                    </div>

                    <div id="address" style="display: block">
                        <div class="address-list">
                            <c:forEach items="${userAddresses}" var="userAddress">
                                <div class="billing-address-bar mb-0">
                                    <input type="hidden" name="addressId" value="${userAddress.addressId}">
                                    <input type="hidden" name="customerId" value="${userAddress.customerId}">
                                    <input type="hidden" name="consignee" value="${userAddress.consignee}">
                                    <input type="hidden" name="province" value="${userAddress.province}">
                                    <input type="hidden" name="city" value="${userAddress.city}">
                                    <input type="hidden" name="area" value="${userAddress.area}">
                                    <input type="hidden" name="detailedAddress" value="${userAddress.detailedAddress}">
                                    <input type="hidden" name="phone" value="${userAddress.phone}">
                                    <div class="row align-items-center">
                                        <div class="col-lg-4 col-md-6">
                                            <h3>帐单地址</h3>
                                            <ul>
                                                <li><span>收货人</span>${userAddress.consignee}</li>
                                                <li>
                                                    <span>地 址</span>
                                                        ${userAddress.provinceName} ${userAddress.cityName} ${userAddress.areaName}
                                                    <br> ${userAddress.detailedAddress}
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="col-lg-4 col-md-6">
                                            <ul>
                                                <li>
                                                    <span>电话</span>
                                                    <a href="javascript:void(0)"> ${userAddress.phone}</a>
                                                </li>
                                                <li>
                                                    <span>邮箱</span>
                                                    <a href="javascript:void(0)"> <span
                                                    > ${userAddress.email}</span></a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="col-lg-4 col-md-6">
                                            <div class="edit-address">
                                                <a href="javascript:void(0)" class="default-btn editAddressButton">编辑地址</a>
                                                <button class="default-btn m-0">
                                                    删除
                                                </button>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </c:forEach>
                            <div class="added-address" id="addAddressButton">
                                <a href="javascript:void(0)">
                                    <i class="ri-add-line"></i>
                                    <span>添加地址</span>
                                </a>
                            </div>

                        </div>
                    </div>
                    <div id="editAddress" style="display:none;">
                        <div class="edit-profile">
                            <h3>编辑地址</h3>
                            <form class="submit-property-form">
                                <input type="hidden" name="addressId">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <label>收件人姓名</label>
                                            <input type="text" name="consignee" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <label>电话号码</label>
                                            <input type="text" name="phone" class="form-control">
                                        </div>
                                    </div>

                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <label>省</label>
                                            <select name="province" class="form-control" >
                                                <c:forEach items="${addresses}" var="address">
                                                    <option value="${address.addressId}">${address.addressName}</option></c:forEach>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <label>市</label>
                                            <select name="city" class="form-control">
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <label>区</label>
                                            <select name="area" class="form-control">
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <label>详细地址</label>
                                            <input type="text" name="detailedAddress" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <button type="button" class="default-btn" id="default-btn-confirm">
                                            确定
                                        </button>

                                        <button type="button" class="default-btn" id="default-btn-cancel">
                                            取消
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12">
                    <div class="order-details ml-15">
                        <div class="cart-totals mb-0">
                          <h3>购物车总数</h3>
                            <ul>
                                <li>小计 <span>$240.00</span></li>
                                <li>运费 <span>$240.00</span></li>
                                <li>优惠券<span>$00.00</span></li>
                                <li>总计 <span>$240.00</span></li>
                                <li><b>应付总额</b> <span><b>$240.00</b></span></li>
                            </ul>
                            <div class="faq-accordion">
                               <h3>付款方式</h3>
                                <ul class="accordion">
                                    <li class="accordion-item active">
                                        <a class="accordion-title" href="javascript:void(0)">
                                            直接银行转账
                                        </a>
                                        <p class="accordion-content show">
                                          将您的付款直接存入我们的银行账户。请使用您的订单
                                            ID 作为付款参考。在资金到位之前，您的订单不会发货
                                            有我们的帐户。
                                        </p>
                                    </li>
                                    <li class="accordion-item">
                                        <a class="accordion-title" href="javascript:void(0)">
                                      货到付款
                                        </a>
                                        <p class="accordion-content">
                                          请将您的支票寄至 Store Name, Store Street, Store Town, Store
                                            州/县，商店邮政编码。
                                        </p>
                                    </li>
                                    <li class="accordion-item">
                                        <a class="accordion-title" href="javascript:void(0)">
                                         贝宝
                                        </a>
                                        <p class="accordion-content">
                                         通过贝宝支付；如果您没有信用卡，您可以使用信用卡付款
                                            贝宝账户。
                                        </p>
                                    </li>
                                    <li class="accordion-item">
                                        <div class="form-check">
                                            <input type="checkbox" class="form-check-input"
                                                   id="ship-differents-address">
                                            <label class="form-check-label" for="ship-different-address">I’ve read
                                              并接受 <a href="terms-conditions.html">条款 &
                                                    条件</a>*</label>
                                        </div>
                                    </li>
                                    <li class="place-order">
                                        <a href="" class="default-btn two">
                                           付款
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--Shopping Cart Area End-->
    <!--Footer Area Start-->
    <%@include file="footer.jsp" %>
    <!--Footer Area End-->
    <!--Shopping Cart Area End-->
    <script type="text/javascript">
        const ctx = "${ctx}";
        let customerId;
        if (${login_user!=null}&&
        ${login_user!=""})
        {
            customerId = "${login_user.customerId}";
        }
    </script>

    <script src="js/jingbao/order.js"></script>

</html>
