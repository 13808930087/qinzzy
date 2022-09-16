<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!doctype html>
<html class="x-admin-sm">
<head>
    <base href="${ctx}/admin/">
    <meta charset="UTF-8">
    <title>后台管理系统</title>
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi"/>
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <link rel="stylesheet" href="css/font.css">
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/iconfont.css">
    <script src="lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="js/index.js"></script>
</head>
<body class="index">
<!-- 顶部开始 -->
<div class="container">
    <div class="logo">
        <a href="index">后台管理系统</a></div>
    <div class="left_open">
        <a><i title="展开左侧栏" class="iconfont">&#xe699;</i></a>
    </div>

    <ul class="layui-nav right" lay-filter="">
        <li class="new-nav" id="gonggao">
            <i></i>
            <a href="#"><i class="iconfont">&#xe6bc;</i><span class="layui-badge">4</span></a>
            <!--<dl class="layui-nav-child">-->
            <ul class="news" id="gonggaos" style="display: none;">
                <li class="dropdown-header"><i class="iconfont">&#xe6bc;</i>4条公告</li>
                <li><a href="javascript:;" onclick="xadmin.add_tab('统计页面','notice-list')">
                    <div class="clearfix">
                        <span class="pull-left"> <i class="btn btn-pink iconfont">&#xe6bc;</i> 系统公告 </span>
                        <span class="pull-right badge badge-info">+12</span>
                    </div>
                </a></li>
                <li><a href="javascript:;" onclick="xadmin.add_tab('统计页面','notice-list')"> <i
                        class="btn btn-primary iconfont">&#xe6bc;</i> 商城公告 </a></li>

                <li><a href="javascript:;" onclick="xadmin.add_tab('统计页面','notice-list')">查看所有公告 <i
                        class="iconfont">&#xe69b;</i> </a></li>
            </ul>
            <!--</dl>-->

        </li>
        <li class="new-nav" id="new-nav">
            <i></i>
            <a href="#"><i class="iconfont">&#xe713;</i><span class="layui-badge">9</span></a>
            <!--<dl class="layui-nav-child">-->
            <ul class="news" id="news" style="display: none;">
                <li class="dropdown-header"><i class="iconfont">&#xe6bc;</i>8条通知</li>
                <li><a href="#">
                    <div class="clearfix">
                        <span class="pull-left"> <i class="btn btn-pink iconfont">&#xe69b;</i> 新闻评论 </span>
                        <span class="pull-right badge badge-info">+12</span>
                    </div>
                </a></li>
                <li><a href="#"> <i class="btn btn-primary iconfont">&#xe696;</i> 切换为编辑登录.. </a></li>
                <li><a href="#">
                    <div class="clearfix">
                        <span class="pull-left"> <i class="iconfont btn btn-success">&#xe723;</i> 新订单 </span>
                        <span class="pull-right badge badge-success">+8</span>
                    </div>
                </a></li>
                <li><a href="#">
                    <div class="clearfix">
                        <span class="pull-left"> <i class="iconfont btn btn-info">&#xe6ba;</i> 粉丝 </span>
                        <span class="pull-right badge badge-info">+11</span>
                    </div>
                </a></li>
                <li><a href="javascript:;" onclick="xadmin.add_tab('统计页面','email')"> 查看所有消息 <i
                        class="iconfont">&#xe69b;</i> </a></li>
            </ul>
            <!--</dl>-->

        </li>
        <li class="layui-nav-item">
            <a href="javascript:;">admin</a>
            <dl class="layui-nav-child">
                <!-- 二级菜单 -->
                <dd>
                    <a onclick="xadmin.open('个人信息','one_set')">个人信息</a></dd>
                <dd>
                    <a onclick="xadmin.open('切换帐号','http://www.baidu.com')">切换帐号</a></dd>
                <dd>
                    <a href="login">退出</a></dd>
            </dl>
        </li>
        <li class="layui-nav-item to-index">
            <a href="/index">前台首页</a></li>
    </ul>


</div>
<!-- 顶部结束 -->
<!-- 中部开始 -->
<!-- 左侧菜单开始 -->
<div class="left-nav">
    <div id="side-nav">
        <ul id="nav">
            <li>
                <a href="javascript:;" id="index">
                    <i class="layui-icon left-nav-li" lay-tips="首页">&#xe68e;</i>
                    <cite>首页</cite>
                    <i class="iconfont nav_right">&#xe697;</i></a>
            </li>

            <li class="layui-nav-item">
                <a href="javascript:;">
                    <i class="iconfont left-nav-li" lay-tips="商品管理">&#xe6a2;</i>
                    <cite>商品管理</cite>
                    <i class="iconfont nav_right">&#xe697;</i></a>
                <ul class="sub-menu">
                    <li>
                        <a onclick="xadmin.add_tab('商品类型','articletype-list')">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>商品类型</cite></a>
                    </li>
                    <li>
                        <a onclick="xadmin.add_tab('商品列表','article-list')">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>商品列表</cite></a>
                    </li>
                </ul>


            </li>
            <li class="layui-nav-item">
                <a href="javascript:;">
                    <i class="iconfont left-nav-li" lay-tips="交易管理">&#xe6c0;</i>
                    <cite>交易管理</cite>
                    <i class="iconfont nav_right">&#xe697;</i></a>
                <ul class="sub-menu">
                    <li>
                        <a onclick="xadmin.add_tab('交易信息','noticetype-list')">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>交易信息</cite></a>
                    </li>
                    <li>
                        <a onclick="xadmin.add_tab('交易订单','notice-list')">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>交易订单</cite></a>
                    </li>
                    <li>
                        <a onclick="xadmin.add_tab('交易金额','notice-list')">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>交易金额</cite></a>
                    </li>
                    <li>
                        <a onclick="xadmin.add_tab('订单处理','notice-list')">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>订单处理</cite></a>
                    </li>
                    <li>
                        <a onclick="xadmin.add_tab('退款管理','notice-list')">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>退款管理</cite></a>
                    </li>
                </ul>
            </li>
            <li>
                <a onclick="xadmin.add_tab('类别管理','cate')">
                    <i class="iconfont left-nav-li" lay-tips="类别管理">&#xe604;</i>
                    <%--                            <i class="iconfont">&#xe6a7;</i>--%>
                    <cite>类别管理</cite></a>
            </li>

            <li>
                <a href="javascript:;">
                    <i class="iconfont left-nav-li" lay-tips="支付管理">&#xe723;</i>
                    <cite>支付管理</cite>
                    <i class="iconfont nav_right">&#xe697;</i></a>
                <ul class="sub-menu">
                    <li>
                        <a onclick="xadmin.add_tab('账户管理','city')">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>账户管理</cite></a>
                    </li>
                    <li>
                        <a onclick="xadmin.add_tab('支付方式','city')">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>支付方式</cite></a>
                    </li>
                    <li>
                        <a onclick="xadmin.add_tab('支付配置','city')">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>支付配置</cite></a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="javascript:;">
                    <i class="iconfont left-nav-li" lay-tips="管理员管理">&#xe726;</i>
                    <cite>管理员管理</cite>
                    <i class="iconfont nav_right">&#xe697;</i></a>
                <ul class="sub-menu">
                    <li>
                        <a onclick="xadmin.add_tab('管理员列表','adminList')">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>管理员列表</cite></a>
                    </li>
                    <li>
                        <a onclick="xadmin.add_tab('角色管理','adminRole')">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>角色管理</cite></a>
                    </li>
                    <li>
                        <a onclick="xadmin.add_tab('权限分类','adminCate')">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>权限分类</cite></a>
                    </li>
                    <li>
                        <a onclick="xadmin.add_tab('权限管理','adminRule')">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>权限管理</cite></a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="javascript:;">
                    <i class="iconfont left-nav-li" lay-tips="会员管理">&#xe6b8;</i>
                    <cite>会员管理</cite>
                    <i class="iconfont nav_right">&#xe697;</i></a>
                <ul class="sub-menu">

                    <li>
                        <a onclick="xadmin.add_tab('会员列表','memberList')">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>会员列表</cite></a>
                    </li>

                    <li>
                        <a onclick="xadmin.add_tab('会员删除','memberDel')">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>会员删除</cite></a>
                    </li>

                </ul>
            </li>

            <li>
                <a href="javascript:;">
                    <i class="iconfont left-nav-li" lay-tips="系统设置">&#xe60d;</i>
                    <cite>系统设置</cite>
                    <i class="iconfont nav_right">&#xe697;</i></a>
                <ul class="sub-menu">
                    <li>
                        <a onclick="xadmin.add_tab('系统设置','sys-set')">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>系统设置</cite></a>00
                    </li>
                    <li>
                        <a onclick="xadmin.add_tab('屏蔽词','sys-shild')">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>屏蔽词</cite></a>
                    </li>
                    <li>
                        <a onclick="xadmin.add_tab('系统日志','sys-log')">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>系统日志</cite></a>
                    </li>
                    <li>
                        <a onclick="xadmin.add_tab('图片水印设置','sys-watermark')">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>图片水印设置</cite></a>
                    </li>


                </ul>
            </li>
            <%--            <li>--%>
            <%--                <a href="javascript:;">--%>
            <%--                    <i class="iconfont left-nav-li" lay-tips="友情连接">&#xe636;</i>--%>
            <%--                    <cite>友情连接</cite>--%>
            <%--                    <i class="iconfont nav_right">&#xe697;</i></a>--%>
            <%--                <ul class="sub-menu">--%>
            <%--                    <li>--%>
            <%--                        <a onclick="xadmin.add_tab('友情连接列表','link')">--%>
            <%--                            <i class="iconfont">&#xe6a7;</i>--%>
            <%--                            <cite>友情连接列表</cite></a>--%>
            <%--                    </li>--%>
            <%--                </ul>--%>
            <%--            </li>--%>
            <%--            <li>--%>
            <%--                <a href="javascript:;">--%>
            <%--                    <i class="iconfont left-nav-li" lay-tips="便签管理">&#xe6c5;</i>--%>
            <%--                    <cite>便签管理</cite>--%>
            <%--                    <i class="iconfont nav_right">&#xe697;</i></a>--%>
            <%--                <ul class="sub-menu">--%>
            <%--                    <li>--%>
            <%--                        <a onclick="xadmin.add_tab('便签列表','note')">--%>
            <%--                            <i class="iconfont">&#xe6a7;</i>--%>
            <%--                            <cite>便签列表</cite></a>--%>
            <%--                    </li>--%>
            <%--                </ul>--%>
            <%--            </li>--%>
            <%--            <li>--%>
            <%--                <a href="javascript:;">--%>
            <%--                    <i class="iconfont left-nav-li" lay-tips="邮件管理">&#xe64a;</i>--%>
            <%--                    <cite>邮件管理</cite>--%>
            <%--                    <i class="iconfont nav_right">&#xe697;</i></a>--%>
            <%--                <ul class="sub-menu">--%>
            <%--                    <li>--%>
            <%--                        <a onclick="xadmin.add_tab('邮件管理','email')">--%>
            <%--                            <i class="iconfont">&#xe6a7;</i>--%>
            <%--                            <cite>邮件管理</cite></a>--%>
            <%--                    </li>--%>
            <%--                </ul>--%>
            <%--            </li>--%>

            <li>
                <a href="javascript:;">
                    <i class="iconfont left-nav-li" lay-tips="其它页面">&#xe6b4;</i>
                    <cite>其它页面</cite>
                    <i class="iconfont nav_right">&#xe697;</i></a>
                <ul class="sub-menu">
                    <li>
                        <a href="login" target="_blank">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>登录页面</cite></a>
                    </li>
                    <li>
                        <a onclick="xadmin.add_tab('错误页面','error')">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>错误页面</cite></a>
                    </li>
                    <li>
                        <a onclick="xadmin.add_tab('更新日志','log')">
                            <i class="iconfont">&#xe6a7;</i>
                            <cite>更新日志</cite></a>
                    </li>
                </ul>
            </li>


            <%--            <li>--%>
            <%--                <a href="javascript:;">--%>
            <%--                    <i class="iconfont left-nav-li" lay-tips="数据管理">&#xe70c;</i>--%>
            <%--                    <cite>数据管理</cite>--%>
            <%--                    <i class="iconfont nav_right">&#xe697;</i></a>--%>
            <%--                <ul class="sub-menu">--%>
            <%--                    <li>--%>
            <%--                        <a onclick="xadmin.add_tab('文件管理','instrument')">--%>
            <%--                            <i class="iconfont">&#xe6a7;</i>--%>
            <%--                            <cite>文件管理</cite></a>--%>
            <%--                    </li>--%>
            <%--                    <li>--%>
            <%--                        <a onclick="xadmin.add_tab('数据库','database')">--%>
            <%--                            <i class="iconfont">&#xe6a7;</i>--%>
            <%--                            <cite>数据库</cite></a>--%>
            <%--                    </li>--%>
            <%--                    <li>--%>
            <%--                        <a onclick="xadmin.add_tab('备份管理','backups')">--%>
            <%--                            <i class="iconfont">&#xe6a7;</i>--%>
            <%--                            <cite>备份管理</cite></a>--%>
            <%--                    </li>--%>
            <%--                </ul>--%>
            <%--            </li>--%>
        </ul>
    </div>
</div>
<!-- <div class="x-slide_left"></div> -->
<!-- 左侧菜单结束 -->
<!-- 右侧主体开始 -->
<div class="page-content">
    <div class="layui-tab tab" lay-filter="xbs_tab" lay-allowclose="false">
        <ul class="layui-tab-title">
            <li class="home">
                <i class="layui-icon">&#xe68e;</i>我的桌面
            </li>
        </ul>
        <div class="layui-unselect layui-form-select layui-form-selected" id="tab_right">
            <dl>
                <dd data-type="this">关闭当前</dd>
                <dd data-type="other">关闭其它</dd>
                <dd data-type="all">关闭全部</dd>
            </dl>
        </div>
        <div class="layui-tab-content">
            <div class="layui-tab-item layui-show">
                <iframe src='welcome' frameborder="0" scrolling="yes" class="x-iframe"></iframe>
            </div>
        </div>
        <div id="tab_show"></div>
    </div>
</div>
<div class="page-content-bg"></div>
<style id="theme_style"></style>
<!-- 右侧主体结束 -->
<!-- 中部结束 -->

</body>
<script src="js/jquery.min.js"></script>

</html>

<script>
    window.onload = function () {
        $("#index").click(function () {
            $(".layui-tab-title .home").click();
        })
        var click = document.getElementById('new-nav');
        var news = document.getElementById('news');
        click.addEventListener('mousemove', function () {
            news.style.display = 'block';
        });
        click.addEventListener('mouseout', function () {
            news.style.display = 'none';
        });

        var gonggao = document.getElementById('gonggao');
        var gonggaos = document.getElementById('gonggaos');
        gonggao.addEventListener('mousemove', function () {
            gonggaos.style.display = 'block';
        });
        gonggao.addEventListener('mouseout', function () {
            gonggaos.style.display = 'none';
        });
    }


</script>

