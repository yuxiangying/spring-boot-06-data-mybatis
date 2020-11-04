<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@ include file="/common/taglibs.jsp" %>
    <title>站点概况</title>
    <link rel="stylesheet" href="${ctx}/static/layui/css/layui.css">
</head>
<body>
stationPage.jsp
</body>
<script src="${ctx}/static/layui/layui.js"></script>
<script>
    layui.use(['layer', 'form'], function(){
        var layer = layui.layer
            ,form = layui.form;

        layer.msg('Hello LayUI');
    });
</script>

</html>