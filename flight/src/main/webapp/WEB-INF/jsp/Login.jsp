<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <c:set var="ctx" value="${pageContext.request.contextPath }" />
    <c:set var="user" value=" ${login_user}" />
<html>
<head>
<base href="${ctx}/">
    <meta charset="UTF-8">
    <title>登录系统</title>
  <link rel="stylesheet" href="static/common/css/login.css"/>
  <script type="text/javascript" src="static/common/lib/jquery/jquery-3.6.0.min.js"></script>
		<script type="text/javascript" src="static/common/lib/layer/layer.js"></script>
		<script type="text/javascript">
	const ctx = "${ctx}";
	const user = "${user}";
</script>
  <script type="text/javascript" src="static/common/js/login.js"></script>
  

</head>
<body>
    <div class="container">
        <div class="login-wrapper">
			<div class="header"><img src="static/common/img/logoko.png" width="200px" height="200px"/></div>
			
            <div class="header">航班查询系统</div>
            <form class="header-form" action="login" method="post">
            <div class="input-item clearfix" ><label for="">账号:</label><input type="text" name="username" placeholder="username"></div>
                
              <div class="input-item clearfix" >  <label for="">密码:</label><input type="password" name="password" placeholder="password" ></div>
         		<div class="error">${error}</div>
                <button class="btn" type="button">登录</button> 
            </form>
            <div class="msg">
                没有账户?
                <a href="#">注册</a>
            </div>
        </div>
    </div>
</body>
</html>
