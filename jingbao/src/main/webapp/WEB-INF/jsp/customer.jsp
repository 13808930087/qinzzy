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

    <link rel="stylesheet" href="css/jingbao/customer.css">
    <div id="customer"><c:if test="${customer!=null}">
        <div class="profile-bar">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-6">
                    <div class="profile-info">
                        <c:if test="${user.gravatarImg==null}">
                            <img src="picture/profile-img.jpg" alt="Image"></c:if>
                        <c:if test="${user.gravatarImg!=null}">
                            <img src="${user.gravatarImg}" alt="Image"></c:if>
                        <h3>
                            <a href="javascript:void(0)">${user.nickname}</a>
                        </h3>
                        <a href="javascript:void(0)"><span class="__cf_email__">[邮箱&#160;${customer.email}]</span></a>
                        <a href="javascript:void(0)">[电话&#160;${customer.phone}]</a>
                    </div>
                </div>

                <div class="col-lg-6 col-md-6">
                    <div class="edit-profiles">
                        <a href="javascript:void(0)" class="default-btn" id="editCustomer-btn">编辑个人资料</a>
                    </div>
                </div>
            </div>
        </div>
    </c:if>
    </div>

    <div id="editCustomer">
        <div class="edit-profile">
            <h3>编辑个人资料</h3>
            <form class="submit-property-form">
                <input type="hidden" name="customerId" value="${user.customerId}">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="form-group">
                            <input type="hidden" name="gravatarImg" id="gravatarImg" value="${user.gravatarImg}">
                            <label>点击头像修改头像</label>
                            <c:if test="${user.gravatarImg==null}">
                                <img src="picture/profile-img.jpg" alt="Image" id="gravatar" ></c:if>
                            <c:if test="${user.gravatarImg!=null}">
                                <img src="${user.gravatarImg}" alt="Image" id="gravatar" ></c:if>
                            <input type="file" name="file" id="file" class="inputfile" style="display:none;">
                        </div>
                    </div>
                    <div class="col-lg-6" id="sex">
                        <div class="form-group">
                            <label>性别</label>
                            <label>
                                <input type="radio" name="sex" id="sex01" class="form-radio" checked  value="男">
                                男
                            </label>
                            <label>
                                <input type="radio" name="sex" id="sex02"  class="form-radio" value="女">
                                女
                            </label>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="form-group">
                            <label>昵称</label>
                            <input type="text" class="form-control" value="${user.nickname}" name="nickname" id="nickname">
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="form-group">
                            <label>真实姓名</label>
                            <input type="text" class="form-control" value="${customer.customerName}" name="customerName" id="customerName">
                        </div>
                    </div>


                    <div class="col-lg-6">
                        <div class="form-group">
                            <label>电子邮件</label>
                            <input type="email" class="form-control" value="${customer.email}" name="email"  id="email">
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="form-group">
                            <label>电话号码</label>
                            <input type="text" class="form-control" value="${customer.phone}" name="phone" id="phone">
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

        </div>
        </form>
    </div>
    </div>

    <script src="js/jingbao/customer.js"></script>
</html>
