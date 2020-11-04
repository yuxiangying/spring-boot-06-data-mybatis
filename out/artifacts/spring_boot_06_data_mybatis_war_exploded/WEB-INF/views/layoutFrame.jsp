<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@ include file="/common/taglibs.jsp" %>
    <title>layout 后台大布局 - Layui</title>
    <link rel="stylesheet" href="${ctx}/static/layui/css/layui.css">
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <div class="layui-header">
        <div class="layui-logo" style="font-weight: bold;">俏佳人后台管理</div>
        <!-- 头部区域（可配合layui已有的水平导航） -->
        <%--<ul class="layui-nav layui-layout-left">
            <li class="layui-nav-item"><a href="">控制台</a></li>
            <li class="layui-nav-item"><a href="">商品管理</a></li>
            <li class="layui-nav-item"><a href="">用户</a></li>
            <li class="layui-nav-item">
                <a href="javascript:;">其它系统</a>
                <dl class="layui-nav-child">
                    <dd><a href="">邮件管理</a></dd>
                    <dd><a href="">消息管理</a></dd>
                    <dd><a href="">授权管理</a></dd>
                </dl>
            </li>
        </ul>--%>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href="javascript:;">
                    <%--<img src="http://t.cn/RCzsdCq" class="layui-nav-img">--%>
                        <img src="${ctx}/static/img/headPortrait1.jpg" class="layui-nav-img">
                    贤心
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="">基本资料</a></dd>
                    <dd><a href="">安全设置</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item"><a href="">退出</a></li>
        </ul>
    </div>

    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree"  lay-filter="test">
                <li class="layui-nav-item">
                    <a href="${ctx}/station/stationPage">
                    <img class="img-icon" src="${ctx}/static/img/add-w-ic.png">站点状况
                    </a>
                </li>
                <%--<li class="layui-nav-item layui-nav-itemed">
                    <a class="" href="javascript:;"><img class="img-icon" src="${ctx}/static/img/add-w-ic.png">站点状况</a>
                    <dl class="layui-nav-child">
                        <dd><a href="index2.html">列表一</a></dd>
                        <dd><a href="index.html">列表二</a></dd>
                        <dd><a href="javascript:;">列表三</a></dd>
                        <dd><a href="">超链接</a></dd>
                    </dl>
                </li>--%>
                <li class="layui-nav-item">
                    <a href="javascript:;"><img class="img-icon" src="${ctx}/static/img/add-w-ic.png">订单管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;">订单</a></dd>
                        <dd><a href="javascript:;">新建</a></dd>
                        <dd><a href="">统计报表</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;"><img class="img-icon" src="${ctx}/static/img/add-w-ic.png">商品管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;">商品</a></dd>
                        <dd><a href="javascript:;">新建</a></dd>
                        <dd><a href="javascript:;">导入商品</a></dd>
                        <dd><a href="javascript:;">分类</a></dd>
                        <dd><a href="javascript:;">标签</a></dd>
                        <dd><a href="javascript:;">配送类型</a></dd>
                        <dd><a href="">属性</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;"><img class="img-icon" src="${ctx}/static/img/add-w-ic.png">管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;">所有用户</a></dd>
                        <dd><a href="javascript:;">待审注册</a></dd>
                        <dd><a href="javascript:;">角色管理</a></dd>
                        <dd><a href="javascript:;">基本设置</a></dd>
                        <dd><a href="javascript:;">高级设置</a></dd>
                    </dl>
                </li>
            </ul>
        </div>
    </div>

    <div class="layui-body">
        <!-- 内容主体区域 -->
        <!--<div style="padding: 15px;">内容主体区域</div>-->
        <!--<h6 style="margin: 100px auto auto auto; font-size: 20px;color: red;">内容主体区域</h6>

        @RenderBody()-->
        <iframe src="${ctx}/applet/appletPage" id="main" width="100%" style="height: 99.9%" frameborder="0"></iframe>

    </div>

    <div class="layui-footer" style="background-color: #dddddd;color: #a0a0a0;text-align: center;">
        <!-- 底部固定区域 -->
        © woman-skin.com - 余想英技术支持
    </div>
</div>
<%--<script src="${ctx}/static/layui/layui.js"></script>--%>
<script>
    //JavaScript代码区域
    layui.use(['element','jquery'], function(){
        var $=layui.jquery;
        var element = layui.element;
        $(document).ready(function(){
            $("li a").click(function (e) {
                e.preventDefault();
                $("#main").attr("src",$(this).attr("href"));
            });
        });
    });
</script>
</body>

</html>