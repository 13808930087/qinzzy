<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/><!doctype html>
<html class="x-admin-sm">
    <head>
    <base href="${ctx}/">
        <meta charset="UTF-8">
        <title>404页面</title>
        <meta name="renderer" content="webkit|ie-comp|ie-stand">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
        <meta http-equiv="Cache-Control" content="no-siteapp" />

        <link rel="stylesheet" href="admin/css/font.css">
        <link rel="stylesheet" href="admin/css/index.css">
    </head>
    <body>
          <div class="layui-container">
           <div class="fly-panel"> 
            <div class="fly-none"> 
             <h2><i class="layui-icon ">
                 <img src="images/404.png" alt="">
             </i></h2> 
             <p>页面或者数据被<a href=""> 纸飞机 </a>运到火星了，啥都看不到了…</p> 
            </div>
           </div>
          </div>
    <script>
        var _hmt = _hmt || [];
        (function() {
          var hm = document.createElement("script");
          hm.src = "https://hm.baidu.com/hm.js?b393d153aeb26b46e9431fabaf0f6190";
          var s = document.getElementsByTagName("script")[0]; 
          s.parentNode.insertBefore(hm, s);
        })();
        </script>
    </body>
</html>