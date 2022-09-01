<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!doctype html>
<html class="no-js" lang="en">
<head>
    <base href="${ctx}/">
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>购物车</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">


                <div  id="customer">
                    <div class="profile-bar">
                        <div class="row align-items-center">
                            <div class="col-lg-6 col-md-6">
                                <div class="profile-info">
                                    <img src="picture/profile-img.jpg" alt="Image">
                                    <h3>
                                        <a href="javascript:void(0)">多琳·麦克库尔</a>
                                    </h3>
                                    <a href="javascript:void(0)"><span class="__cf_email__"
                                                                 data-cfemail="b8dbd7d6ccd9dbccf8ddd0d9c196dbd7d5">[email&#160;受保护]</span></a>
                                    <a href="javascript:void(0)">+1 (514) 321-4566</a>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6">
                                <div class="edit-profiles">
                                    <a href="javascript:void(0)" class="default-btn" id="editCustomer-btn">编辑个人资料</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="cart-area recent-order">
                       <h3>最近的订单</h3>
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
                                            <a href="javascript:void(0)">
                                                <img src="picture/product-1.jpg" alt="Image">
                                            </a>
                                        </td>
                                        <td class="product-name">
                                            <a href="javascript:void(0)">振荡多路
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
                                            <a href="javascript:void(0)" class="remove">
                                                <i class="ri-close-fill"></i>
                                            </a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="product-thumbnail">
                                            <a href="javascript:void(0)">
                                                <img src="picture/product-2.jpg" alt="Image">
                                            </a>
                                        </td>
                                        <td class="product-name">
                                            <a href="javascript:void(0)">Power Tools Set Chinese Manufacturer
                                                <br> Production 50V Lithu Battery</a>
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
                                            <a href="javascript:void(0)" class="remove">
                                                <i class="ri-close-fill"></i>
                                            </a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="product-thumbnail">
                                            <a href="javascript:void(0)">
                                                <img src="picture/product-3.jpg" alt="Image">
                                            </a>
                                        </td>
                                        <td class="product-name">
                                            <a href="javascript:void(0)">Electrical Magnetic Impact Power <br>
                                                Hammer Drills Machine </a>
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
                                            <a href="javascript:void(0)" class="remove">
                                                <i class="ri-close-fill"></i>
                                            </a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="product-thumbnail">
                                            <a href="javascript:void(0)">
                                                <img src="picture/product-4.jpg" alt="Image">
                                            </a>
                                        </td>
                                        <td class="product-name">
                                            <a href="javascript:void(0)">Professional Cordless Drill Power
                                                Tools <br> Set Competitive Price</a>
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
                                            <a href="javascript:void(0)" class="remove">
                                                <i class="ri-close-fill"></i>
                                            </a>
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </form>
                    </div>
                </div>
                <div id="editCustomer">
                    <div class="edit-profile">
                        <h3>编辑个人资料</h3>
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
                                <div class="col-lg-12">
                                    <div class="form-group">
                                        <label>画廊</label>
                                        <div class="file-upload">
                                            <input type="file" name="file" id="file" class="inputfile">
                                            <label class="upload" for="file">
                                                <i class="ri-image-2-fill"></i>
                                               上传照片
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <button type="button" class="default-btn"  id="default-btn-confirm">
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

    <script src="js/jingbao/customer.js"></script>
</html>
