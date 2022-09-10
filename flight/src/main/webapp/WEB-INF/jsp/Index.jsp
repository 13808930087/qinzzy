<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<c:set var="username" value="${login_user_name}" />

<html>
<head>
<base href="${ctx}/">
<meta charset="utf-8">
<title>航班管理系统</title>
<link rel="stylesheet" href="static/common/css/index.css">
<script type="text/javascript"
	src="static/common/lib/jquery/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="static/common/lib/layer/layer.js"></script>
<script type="text/javascript">
	const ctx = "${ctx}";
	const username = "${username}";
</script>

<script type="text/javascript" src="static/common/js/index.js"></script>
</head>
<body>

	<div class="header">
		<div class="header-logo">
			<img src="static/common/img/logoko.png" width="100px" height="100px" />
		</div>
		<div>
			<div class="header-name">
				<h1>航班管理系统</h1>
				<h2>让出行更智慧</h2>
				<h2>Enjoy AI Enjoy Journey</h2>
			</div>
			<div class="header-welcome"> </div>
		</div>
		<h3>
			<a class="logout-btn" href="javascript:void(0)">注销</a>
		</h3>
	</div>
	<div class="side">
		<!-- 左侧导航区域（可配合layui已有的垂直导航） -->
		<ul class="nav">
			<li class="nav-item" data-url="/ticket">订票信息管理</li>
			<li class="nav-item" data-url="/ticket">航班信息管理</li>
			<li class="nav-item" data-url="/ticket">客机信息管理</li>
			<li class="nav-item" data-url="/ticket">客户信息管理</li>
			<li class="nav-item" data-url="/index">用户信息管理</li>
		</ul>
	</div>

	<div class="body">
		<iframe src="${ctx}/ticket"></iframe>
		<!-- 内容主体区域 -->
	</div>
</body>
</html>
