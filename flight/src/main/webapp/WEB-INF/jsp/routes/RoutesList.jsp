<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <base href="${ctx}/">
    <meta charset="utf-8">
    <title></title>

    <link rel="stylesheet" href="static/routes/css/routeslist.css"/>

    <script type="text/javascript"
            src="static/common/lib/laydate/laydate.js"></script>
    <script type="text/javascript"
            src="static/common/lib/jquery/jquery-3.6.0.min.js"></script>
    <script type="text/javascript" src="static/common/lib/layer/layer.js"></script>

    <script type="text/javascript">
        const ctx = "${ctx}";
        const pages = parseInt("${pi.pages}");
        const pageNum = parseInt("${pi.pageNum}");
        const pageSize = parseInt("${pi.pageSize}");
    </script>
    <script type="text/javascript" src="static/routes/js/routeslist.js">

    </script>
</head>
<body>
<header class="clearfix">

    <form id="routes-form" class="clear" action="routes/list"
          method="post">
        <div>
           <label for="">航线编号:</label> <input type="text" name="routesId"
                                                                         autocomplete="off" value="${rou.routesId}">
        </div>
        <div>
            <label for="">出发城市:</label> <input type="text" name="departCity"
                                                   autocomplete="off" value="${rou.departCity}">
        </div>
        <div>
            <label for="">到达城市:</label> <input type="text" name="arrivalCity"
                                                   autocomplete="off" value="${rou.arrivalCity}">
        </div>
        <div>
            <label for="">出发时间:</label> <input type="text" name="departDate" id="departDate"
                                                   readOnly autocomplete="off" value="${rou.departDate}">
        </div>

        <div>
            <label for="">到达时间:</label> <input type="text" name="arrivalDate" id="arrivalDate"
                                                   readOnly autocomplete="off" value="${rou.arrivalDate}">
        </div>
        <div>
            <label for="">客机编号:</label> <input type="text" name="planeId"
                                                   autocomplete="off" value="${rou.planeId}">
        </div>
        <input type="hidden" name="pageNum" value="${pi.pageNum }"> <input
            type="hidden" name="pageSize" value="${pi.pageSize }">

    </form>
    <form id="hidden-form" action="routes/add" method="post">
        <input type="hidden" name="routesId"> <input type="hidden"
                                                     name="departCity"> <input type="hidden" name="arrivalCity">
        <input type="hidden" name="departDate"> <input type="hidden"
                                                       name="arrivalDate"> <input type="hidden" name="planeId">
        <input type="hidden" name="commonPrice"> <input
            type="hidden" name="commerialPrice"> <input type="hidden"
                                                        name="firstPrice">

    </form>
</header>
<div class="btn-container">

    <button class="select">查询</button>
    <button class="del">删除</button>
    <button class="add">添加</button>
    <button class="modify">修改</button>
    <button class="reset">重置</button>
</div>
<div class="body">
    <table>
        <thead>
        <tr>
            <th><input type="checkbox" name="interest"></th>
            <th>航线编号</th>
            <th>出发城市</th>
            <th>到达城市</th>
            <th style="width: 200px;">出发时间</th>
            <th style="width: 200px;">到达时间</th>
            <th>客机编号</th>
            <th>经济舱价格</th>
            <th>商务舱价格</th>
            <th>头等舱价格</th>
        </tr>

        </thead>
        <tbody>
        <c:forEach items="${routes_list}" var="rs">
            <tr>
                <td><input type="checkbox" name="interest" value="select"></td>
                <td>${rs.routesId }</td>
                <td>${rs.departCity }</td>
                <td>${rs.arrivalCity }</td>
                <td style="width: 200px;">${rs.departDate }</td>
                <td style="width: 200px;">${rs.arrivalDate }</td>
                <td>${rs.planeId }</td>
                <td>${rs.commonPrice }</td>
                <td>${rs.commerialPrice }</td>
                <td>${rs.firstPrice }</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

</div>
<footer class="clearfix">
    <div>总页数：${pi.pages}</div>
    <a class="first" href="javascript:void(0)">首页</a>
    <a class="prev" href="javascript:void(0)">上一页</a>
    <ul class="clear">

        <c:forEach begin="${pi.navigateFirstPage }" end="${pi.navigateLastPage }"
                   var="p">

            <c:if test="${p==pi.pageNum }">
                <li class="color"><a href="javascript:void(0)">${p}</a></li>

            </c:if>
            <c:if test="${p!=pi.pageNum }">
                <li><a href="javascript:void(0)">${p}</a></li>

            </c:if>
        </c:forEach>
    </ul>
    <a class="next" href="javascript:void(0)">下一页</a>
    <div class="tiao">
        跳转到第<input type="text" value="${pi.pageNum }">&nbsp;页
        <button>确定</button>
    </div>
    <div>
        每页显示<select>

        <option value="20" selected="selected">20</option>
        <option value="50">50</option>
        <option value="100">100</option>
        <option value="200">200</option>
    </select>条
    </div>
    <a class="last" href="javascript:void(0)">尾页</a>
</footer>
</body>
</html>
