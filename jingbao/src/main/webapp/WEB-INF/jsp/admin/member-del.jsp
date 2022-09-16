<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/><!DOCTYPE html>
<html class="x-admin-sm">
  
  <head>
    <base href="${ctx}/">
    <meta charset="UTF-8">
    <title>会员删除列表</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <link rel="stylesheet" href="admin/css/font.css">
    <link rel="stylesheet" href="admin/css/index.css">
    <script type="text/javascript" src="admin/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="admin/js/index.js"></script>

  </head>
  
  <body>
    <div class="x-nav">
      <span class="layui-breadcrumb">
        <a href="">首页</a>
        <a href="">演示</a>
        <a>
          <cite>导航元素</cite></a>
      </span>
      <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" onclick="location.reload()" title="刷新">
        <i class="layui-icon layui-icon-refresh" style="line-height:30px"></i></a>
    </div>
    <div class="layui-fluid">
        <div class="layui-row layui-col-space15">
            <div class="layui-col-md12">
                <div class="layui-card">
                    <div class="layui-card-body ">
                        <form class="layui-form layui-col-space5">
                            <div class="layui-inline layui-show-xs-block">
                                <input class="layui-input"  autocomplete="off" placeholder="开始日" name="start" id="start">
                            </div>
                            <div class="layui-inline layui-show-xs-block">
                                <input class="layui-input"  autocomplete="off" placeholder="截止日" name="end" id="end">
                            </div>
                            <div class="layui-inline layui-show-xs-block">
                                <input type="text" name="username"  placeholder="请输入用户名" autocomplete="off" class="layui-input">
                            </div>
                            <div class="layui-inline layui-show-xs-block">
                                <button class="layui-btn"  lay-submit="" lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>
                            </div>
                        </form>
                    </div>
                    <div class="layui-card-header">
                        <button class="layui-btn layui-btn-danger" onclick="delAll()"><i class="layui-icon"></i>批量恢复</button>
                    </div>
                    <div class="layui-card-body ">
                        <table class="layui-table layui-form">
                          <thead>
                            <tr>
                                <th>
                                    <input type="checkbox" name="id" value="1"   lay-skin="primary">
                                </th>
                                <th>
                                    ID
                                </th>
                                <th>
                                    用户名
                                </th>
                                <th>
                                    性别
                                </th>
                                <th>
                                    手机
                                </th>
                                <th>
                                    邮箱
                                </th>
                                <th>
                                    地址
                                </th>
                                <th>
                                    加入时间
                                </th>
                                <th>
                                    状态
                                </th>
                                <th>
                                    操作
                                </th>
                            </tr>
                          </thead>

                            <tbody>
                            <tr>
                                <td>
                                    <input type="checkbox" name="id" value="6" lay-skin="primary">
                                </td>
                                <td>
                                    1
                                </td>
                                <td>
                                    <u style="cursor:pointer" onclick="member_show('张三','member-show.html','10001','360','400')">
                                        张三
                                    </u>
                                </td>
                                <td>
                                    男
                                </td>
                                <td>
                                    1111111111
                                </td>
                                <td>
                                    123456@mail.com
                                </td>
                                <td>
                                    北京市
                                </td>
                                <td>
                                    2017-01-01 11:11:42
                                </td>
                                <td class="td-status">
                            <span class="layui-btn layui-btn-danger ">
                                已删除
                            </span>
                                </td>
                                <td class="td-manage">
                                    <a style="text-decoration:none" onclick="member_recover(this,'10001')" href="javascript:;" title="恢复">
                                        <i class="layui-icon"></i>
                                    </a>
                                    <a title="彻底删除" href="javascript:;" onclick="member_unset(this,'1')" style="text-decoration:none">
                                        <i class="layui-icon"></i>
                                    </a>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>

                </div>
            </div>
        </div>
    </div> 
    <script>
      layui.use(['laydate','form'], function(){
        var laydate = layui.laydate;
        
        //执行一个laydate实例
        laydate.render({
          elem: '#start' //指定元素
        });

        //执行一个laydate实例
        laydate.render({
          elem: '#end' //指定元素
        });
      });


      /*用户-删除*/
      function member_del(obj,id){
          layer.confirm('确认要删除吗？',function(index){
              //发异步删除数据
              $(obj).parents("tr").remove();
              layer.msg('已删除!',{icon:1,time:1000});
          });
      }



      function delAll (argument) {

        var data = tableCheck.getData();
  
        layer.confirm('确认要恢复吗？'+data,function(index){
            //捉到所有被选中的，发异步进行删除
            layer.msg('恢复成功', {icon: 1});
            $(".layui-form-checked").not('.header').parents('tr').remove();
        });
      }
    </script>
    <script>var _hmt = _hmt || []; (function() {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?b393d153aeb26b46e9431fabaf0f6190";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
      })();</script>
  </body>

</html>