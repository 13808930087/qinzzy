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
                            <div class="row align-items-center">
                                <div class="col-lg-4 col-md-6">
                                    <h3>帐单地址</h3>
                                    <ul>
                                        <li>多琳·麦库尔</li>
                                        <li>
                                            <span>Address:</span>
                                            2491 Reel Avenue 阿尔伯克基
                                        </li>
                                    </ul>
                                </div>
                                <div class="col-lg-4 col-md-6">
                                    <ul>
                                        <li>
                                            <span>电话号码</span>
                                            <a href="tel:+1-(514)-321-4566">+1 (514) 321-4566</a>
                                        </li>
                                        <li>
                                            <span>电子邮件：</span>
                                            <a href="javascript:void(0)"> <span class="__cf_email__"
                                                                          data-cfemail="76131e170f36130e171b061a135815191b">[email&#160;protected]</span></a>
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
                        </div>
                    </div>
                </div>
                <div  id="editAddress" style="display:none;">
                    <div class="edit-profile">
                        <h3>编辑地址</h3>
                        <form class="submit-property-form">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <label>名字</label>
                                        <input type="text" class="form-control">
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <label>姓</label>
                                        <input type="text" class="form-control">
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <label>电子邮件</label>
                                        <input type="email" class="form-control">
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
                                        <label>公司名称（可选）</label>
                                        <input type="text" class="form-control">
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <label>国</label>
                                        <input type="text" class="form-control">
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <label>街道地址</label>
                                        <input type="text" class="form-control">
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <label>城镇/城市</label>
                                        <input type="text" class="form-control">
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <label>州/县</label>
                                        <input type="text" class="form-control">
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <label>州/县</label>
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

