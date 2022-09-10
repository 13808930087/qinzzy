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
    <!--Header Area Start-->
    <%@include file="header.jsp" %>
    <!--Header Area End-->
    <section class="dashboard-area ptb-54">
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <ul class="dashboard-navigation">
                        <li>
                            <h3>导航</h3>
                        </li>
                        <li>
                            <a href="javascript:void(0)" data-href="user/customer">个人信息</a>
                        </li>
                        <!--class="active"-->
                        <li>
                            <a href="javascript:void(0)" data-href="user/address">编辑地址</a>
                        </li>
                        <li>
                            <a href="javascript:void(0)" data-href="user/orderHistory">订单历史</a>
                        </li>
                        <li>
                            <a href="javascript:void(0)">密码</a>
                        </li>
                        <li>
                            <a href="login?sign=0">登出</a>
                        </li>
                    </ul>

                </div>
                <div class="col-lg-8" id="temp">
                </div>
                <script>
                    $(function (){
                        function temp(a){
                            $("#temp").data("href",a.data("href"));
                            $("#temp").load(a.data("href"));
                            let data = $("#temp").data("href");
                            let $a = $(".dashboard-navigation li a");
                            $($a).css("color", "#9C9C9C");
                            for (let i = 0; i < $a.length; i++) {
                                if ($($a.get(i)).data("href") === data) {
                                    $($a.get(i)).css("color", "red");
                                }
                            }
                        }
                        temp( $(".dashboard-navigation li a").eq(0));
                        $(".dashboard-navigation li a").click(function () {
                           temp($(this));
                        });
                    });

                </script>
            </div>
        </div>
    </section>
    <!--Footer Area Start-->
    <%@include file="footer.jsp" %>
    <!--Footer Area End-->
</html>