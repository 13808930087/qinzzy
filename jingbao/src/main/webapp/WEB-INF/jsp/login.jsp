<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<c:set var="user" value=" ${login_user}"/>
<c:set var="servletPath" value=" ${servletPath}"/>
<!doctype html>
<html class="no-js" lang="en">
<head>
    <base href="${ctx}/">
    <title>京宝商城</title>

    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Login</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Place favicon.ico in the root directory -->
    <!--Jquery 1.12.4-->


    <!-- Modernizr Js -->





    <!--Header Area Start-->
    <%@include file="header.jsp" %>
    <!--Header Area End-->

    <!--Login Area Strat-->
    <div class="login-area mt-60">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-12 col-lg-6 col-xl-6 ml-auto mr-auto">
                    <div id="login" class="login" style="display: none">
                        <div class="login-form-container">
                            <div class="login-form">
                                <form action="/login" method="post">
                                    <label>用户名</label>
                                    <input name="username" type="text">
                                    <label>密码</label>
                                    <input name="password" type="password">
                                    <label style="display: table-cell">验证码:</label><input id="identify-input" type="text" name="identifyCode">
                                    <img id="identify-img" src="/identifyImage"><br><br>
                                    <div class="button-box">
                                        <div class="login-toggle-btn">
                                            <input type="checkbox">
                                            <label>记得我</label>
                                            <a href="#">忘记密码？</a>
                                        </div>
                                        <button type="button" class="default-btn">登录</button>
                                    </div>
                                </form>
                                <div class="no-account">
                                    <a id="loginTurning" href="javascript:void(0)">没有账号？在这里创建一个</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="register" class="login" style="display: none">
                        <div class="login-form-container">
                            <div class="register-form">
                                <form action="/register" method="post">
                                    <%--                                    <label>性别</label>--%>
                                    <%--                                    <div class="input-radio">--%>
                                    <%--                                        <span class="custom-radio"><input name="customerSex" value="1" type="radio"> 男.</span>--%>
                                    <%--                                        <span class="custom-radio"><input name="customerSex" value="1" type="radio"> 女.</span>--%>
                                    <%--                                    </div>--%>
                                    <%--                                    <label>First Name</label>--%>
                                    <%--                                    <input name="first-name" type="text">--%>
                                    <%--                                    <label>Last Name</label>--%>
                                    <%--                                    <input name="last-name" type="text">--%>
                                        <label>昵称</label>
                                        <input name="nickname" type="text">
                                        <label>用户名</label>
                                    <input name="username" type="text">
                                    <label>密码</label>
                                    <input name="password" type="password">
                                    <label>再次输入密码</label>
                                    <input name="repeatPassword" type="password">
<%--                                    <span class="custom-checkbox">--%>
<%--                                            <input name="optin" value="1" type="checkbox">--%>
<%--                                            <label>接收来自我们合作伙伴的报价</label>--%>
<%--                                        </span>--%>
<%--                                    <span class="custom-checkbox">--%>
<%--                                            <input name="newsletter" value="1" type="checkbox">--%>
<%--                                            <label>注册我们的通讯<br><em>您可以随时取消订阅。为此请在法律声明中找到我们的联系信息。</em></label>--%>
<%--                                        </span>--%>
<%--                                    <div class="button-box">--%>
<%--                                        <button type="button" class="default-btn">注册</button>--%>
<%--                                    </div>--%>
                                        <div class="button-box">
                                            <div class="login-toggle-btn">
                                                <input name="optin" value="1" type="checkbox">
                                                 <label>接收来自我们合作伙伴的报价</label>
                                            </div>
                                            <div class="login-toggle-btn">
                                                <input name="newsletter" value="1" type="checkbox">
                                                 <label>注册我们的通讯<br><em>您可以随时取消订阅。为此请在法律声明中找到我们的联系信息。</em></label>
                                            </div>
                                            <button type="button" class="default-btn">注册</button>
                                        </div>
                                </form>
                                <div class="no-account">
                                    <a id="registerTurning" href="javascript:void(0)">已有帐号？转到登录</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--Login Area End-->
    <!--Footer Area Start-->
    <%@include file="footer.jsp" %>
    <!--Footer Area End-->

    <script type="text/javascript">
        const ctx = "${ctx}";
        const user = "${user}";
        const sign = "${sign}";
        const servletPath = "${servletPath}"
    </script>

    <script src="js/jingbao/login.js"></script>


</html>
