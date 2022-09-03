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

    <div id="address" style="display: block">
        <div class="address-list">
            <h3>地址</h3>
            <div class="added-address" id="addAddressButton">
                <a href="javascript:void(0)">
                    <i class="ri-add-line"></i>
                    <span>添加地址</span>
                </a>
            </div>
            <div class="billing-address-bar mb-0">
                <c:forEach items="${userAddresses}" var="userAddress">
                    <div class="row align-items-center">
                        <div class="col-lg-4 col-md-6">
                            <h3>帐单地址</h3>
                            <ul>
                                <li><span>收货人</span>${userAddress.consignee}</li>
                                <li>
                                    <span>地 址</span>
                                    ${userAddress.province}  ${userAddress.city}  ${userAddress.area} <br> ${userAddress.detailedAddress}
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
                                <a href="javascript:void(0)" class="default-btn" id="editAddressButton">编辑地址</a>
                                <button class="default-btn m-0">
                                    清除
                                </button>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
    <div id="editAddress" style="display:none;">
        <div class="edit-profile">
            <h3>编辑地址</h3>
            <form class="submit-property-form">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="form-group">
                            <label>收件人姓名</label>
                            <input type="text" class="form-control">
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="form-group">
                            <label>电话号码</label>
                            <input type="text" class="form-control">
                        </div>
                    </div>

                    <div class="col-lg-6">
                        <div class="form-group">
                            <label>省</label>
                            <select name="province" class="form-control">  <c:forEach items="${addresses}" var="address">
                                <option>${address.addressName}</option></c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="form-group">
                            <label>市</label>
                            <select name="city" class="form-control" disabled>
                                <option>111</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="form-group">
                            <label>区</label>
                            <select name="area" class="form-control" disabled>
                                <option>111</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="form-group">
                            <label>详细地址</label>
                            <input type="text" class="form-control">
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

    <script src="js/jingbao/address.js"></script>
</html>

