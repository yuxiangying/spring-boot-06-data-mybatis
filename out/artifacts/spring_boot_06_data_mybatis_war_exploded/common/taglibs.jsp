<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta http-equiv="Cache-Control" content="no-store"/>
<meta http-equiv="Pragma" content="no-cache"/>
<meta http-equiv="Expires" content="0"/>
<meta name="author" content="" />--%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<%--<%
String ctxpath = request.getContextPath();
String webPath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+ctxpath+"/";
 %>
<c:set var="systemName" value="" />
<script type="text/javascript" >
 var ctx = "${ctx }";
</script>

<!-- easyui -->
<link rel="stylesheet" type="text/css" href="${ctx }/EasyUI/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${ctx }/EasyUI/themes/icon.css">
<script type="text/javascript" src="${ctx }/EasyUI/jquery.min.js"></script>
<script type="text/javascript" src="${ctx }/EasyUI/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${ctx }/EasyUI/locale/easyui-lang-zh_CN.js"></script>



<!-- 新增javascript部分 -->
<script type="text/javascript" src="${ctx }/strongEasyUi/defaultControls/javascript/Unfold.js"></script>

<!-- 引入自定义js文件 -->
<script type="text/javascript" src="${ctx }/common/customFunction.js"></script>

<!-- 新增样式部分 -->
<link rel="stylesheet" type="text/css" href="${ctx }/strongEasyUi/defaultControls/css/global.css">
<link rel="stylesheet" type="text/css" href="${ctx }/strongEasyUi/defaultControls/css/north/north-default/north-default.css">
<link rel="stylesheet" type="text/css" href="${ctx }/strongEasyUi/defaultControls/css/tabs/tabs-navMenu/tabs-navMenu.css">
<link rel="stylesheet" type="text/css" href="${ctx }/strongEasyUi/defaultControls/css/layout/layout-default/layout-default.css">
<link rel="stylesheet" type="text/css" href="${ctx }/strongEasyUi/defaultControls/css/accordion/accordion-default/accordion-default.css">
<link rel="stylesheet" type="text/css" href="${ctx }/strongEasyUi/defaultControls/css/tabs/tabs-subMenu/tabs-subMenu.css">
<link rel="stylesheet" type="text/css" href="${ctx }/strongEasyUi/defaultControls/css/tabs/tabs-pageTab/tabs-pageTab.css">
<link rel="stylesheet" type="text/css" href="${ctx }/strongEasyUi/defaultControls/css/search/search-default/search-default.css">
<link rel="stylesheet" type="text/css" href="${ctx }/strongEasyUi/defaultControls/css/tree/tree-default/tree-default.css">
<link rel="stylesheet" type="text/css" href="${ctx }/strongEasyUi/defaultControls/css/datagrid/datagrid-default/datagrid-default.css">

<!-- 新增控件部分 -->

<!-- 时间控件 -->
<script type="text/javascript" src="${ctx }/strongEasyUi/otherControls/laydate/laydate.js"></script>
<!-- 弹窗控件 -->
<script type="text/javascript" src="${ctx }/strongEasyUi/otherControls/layer/layer.js"></script>
<link rel="stylesheet" type="text/css" href="${ctx }/strongEasyUi/otherControls/layer/theme/default/layer.css">
<link rel="stylesheet" type="text/css" href="${ctx }/strongEasyUi/otherControls/layer/skin/css/project-layer.css">
<!-- 进度条控件 -->
<script type="text/javascript" src="${ctx }/strongEasyUi/otherControls/layui/layui.js"></script>
<link rel="stylesheet" href="${ctx }/strongEasyUi/otherControls/layui/css/layui.css">
<!-- 圆形进度条控件 -->
<script type="text/javascript" src="${ctx }/strongEasyUi/otherControls/layui/radialIndicator.js"></script>
<!-- jQuery-fileUpload上传控件 -->
<script src="${ctx }/strongEasyUi/otherControls/fileUpload/js/vendor/jquery.ui.widget.js"></script>
<script src="${ctx }/strongEasyUi/otherControls/fileUpload/js/jquery.iframe-transport.js"></script>
<script src="${ctx }/strongEasyUi/otherControls/fileUpload/js/jquery.fileupload.js"></script>
<script src="${ctx }/strongEasyUi/otherControls/fileUpload/js/jquery.fileupload-process.js"></script>
<link rel="stylesheet" href="${ctx }/strongEasyUi/otherControls/fileUpload/css/jQuery-fileUpload.css">

<!-- 错误页面样式-->
<link rel="stylesheet" href="${ctx }/strongEasyUi/defaultControls/css/errorPage/errorPage.css">

<!-- 项目样式 -->
<link rel="stylesheet" type="text/css" href="${ctx }/projectAttribute/css/project.css">
<script src="${ctx }/projectAttribute/javascript/common.js"></script>
 <script type="text/javascript" >
 $(function(){
	$('.combo').click(function(){
		$('ul.tree').parents('.combo-panel').css("cssText", "height:150px !important;");
	});
 });
 </script>--%>

<link rel="stylesheet" type="text/css" href="${ctx }/static/css/common.css">
