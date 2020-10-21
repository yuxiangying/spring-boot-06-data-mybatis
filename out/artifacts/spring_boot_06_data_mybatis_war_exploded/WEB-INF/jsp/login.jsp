<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<c:set var="ctx" value="${pageContext.request.contextPath}"/>--%>
<html>
<head>
    <%@ include file="/common/taglibs.jsp" %>
    <title>Title</title>
    <link rel="stylesheet" href="${ctx}/static/layui/css/layui.css">
</head>
<body>
    login.jsp
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
