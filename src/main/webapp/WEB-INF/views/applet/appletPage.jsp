<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@ include file="/common/taglibs.jsp" %>
    <title>微信小程序设置</title>
    <%--<link rel="stylesheet" href="${ctx}/static/layui/css/layui.css">--%>
</head>
<style>
    .layui-card-header h2{
        position:absolute;
        bottom:0px;
        padding:0px;
        margin:0px 0px 10px 30px;
        font-size: 20px;
        font-weight: 600;
        line-height: 33px;
    }
    h3 {
        padding: 10px;
        border: 1px solid #ddd;
        max-width: 900px;
        background: #fafafa;
        font-size: 17px;
        font-weight: 600;
    }
    .layui-card-body label{
        font-size: 17px;
        font-weight: 600;
        line-height: 33px;
    }
    .layui-form-label{
        width: 250px;
        text-align: left;
        margin-left: 20px;
    }
    .layui-input-block{
        float: left;
        width: 400px;
        margin-left: 0px;
    }
    span.description {
        /*display: block;*/
        clear: both;
        padding: 3px;
        line-height: 25px;
        color: #6f6f6f;
    }
</style>
<body>
<div class="layui-card">
    <div class="layui-card-header" style="height: 65px;background-color: #dddddd;"><h2>微信小程序设置</h2></div>
    <div class="layui-card-body">
        <form class="layui-form" action="">
            <div class="layui-form-item" style="margin-left: 20px">
                <h3>微信小程序设置</h3>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">小程序名称</label>
                <div class="layui-input-block">
                    <input type="text" name="appletName" required  lay-verify="required" placeholder="请输入标题" autocomplete="off" class="layui-input" value="俏佳人美妆店">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">小程序LOGO(推荐50*50)</label>
                <div class="layui-input-block">
                    <img id="imgLogo" name="imgLogo" src="${ctx}/static/img/headPortrait1.jpg" class="layui-nav-img">
                    <button type="button" class="layui-btn layui-btn-sm layui-btn-primary" id="btn-up-imgLogo">
                        <i class="layui-icon">&#xe642;</i>
                    </button>
                    <button type="button" class="layui-btn layui-btn-sm layui-btn-primary" id="btn-clear-imgLogo" onclick="clearImg('imgLogo')">
                        <i class="layui-icon">&#xe640;</i>
                    </button>
                    <%--<input type="password" name="password" required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">--%>
                </div>
                <%--<div class="layui-form-mid layui-word-aux">辅助文字</div>--%>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">小程序底部LOGO(推荐120*30)</label>
                <img id="imgButtomLogo" name="imgButtomLogo" src="${ctx}/static/img/headPortrait1.jpg" class="layui-nav-img">
                <button type="button" class="layui-btn layui-btn-sm layui-btn-primary" id="btn-up-imgButtomLogo">
                    <i class="layui-icon">&#xe642;</i>
                </button>
                <button type="button" class="layui-btn layui-btn-sm layui-btn-primary" id="btn-clear-imgButtomLogo" onclick="clearImg('imgButtomLogo')">
                    <i class="layui-icon">&#xe640;</i>
                </button>
                <%--<div class="layui-form-mid layui-word-aux">辅助文字</div>--%>
            </div>
            <div class="layui-form-item" >
                <label class="layui-form-label">检查用户是否需要注册的页面</label>
                <div class="layui-input-block" >
                    <select name="registerPage">
                        <option value=""></option>
                        <option value="0">系统页面</option>
                        <option value="1">任何页面</option>
                    </select>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">登陆后是否强制绑定用户手机</label>
                <div class="layui-input-block">
                    <input type="radio" name="isForminp" value="1" title="是">
                    <input type="radio" name="isForminp" value="0" title="否" checked>
                </div>
            </div>
            <div class="layui-form-item" style="margin-left: 20px">
                <h3>支付设置</h3>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">商户ID</label>
                <div class="layui-input-block">
                    <input type="text" name="commercialId" placeholder="请输入商户ID" autocomplete="off" class="layui-input">

                </div>

                <br><br>
                <div style="height: 40px;">
                    <span class="description">用于小程序支付的商户ID和密钥，如果不需要支付功能，可以不设置。此设置和网页端微信支付可以一致，也可以不一致,设置会同时开启网页微信支付</span>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">商户密钥	</label>
                <div class="layui-input-block">
                    <input type="text" name="commercialKey"placeholder="请输入密钥" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item" style="margin-left: 30px">
                <div class="layui-input-block">
                    <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
                    <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                </div>
            </div>
        </form>
    </div>
</div>
</body>
<%--<script src="${ctx}/static/layui/layui.js"></script>--%>
<script>
    layui.use(['layer', 'form','upload'], function(){
        var layer = layui.layer
            ,form = layui.form
            ,upload = layui.upload;
        //监听提交
        form.on('submit(formDemo)', function(data){
            var appletInformate = data.field;
            var imgLogoSrc = $("#imgLogo").attr('value');
            var imgButtomLogoSrc = $("#imgButtomLogo").attr('value');
            appletInformate.logoUrl = imgLogoSrc;
            appletInformate.buttomLogoUrl = imgButtomLogoSrc;
            layer.msg(JSON.stringify(appletInformate));
            $.post('${ctx}/applet/saveApplet',appletInformate,function (data) {
                if(data.flag){
                    layer.msg(data.code);
                    /*$("#resetBtn").click();
                    //按钮【按钮一】的回调
                    layer.close(index);
                    // 重新加载datagrid
                    $('#list').datagrid('load',noticeVo);//刷新表格数据*/
                    return true;
                }else {
                    layer.msg(data.code);
                    // $("#resetBtn").click();
                    return false;
                }

            });
            return false;
        });

        //普通图片上传
        var uploadInst = upload.render({
            elem: '#btn-up-imgLogo',
            url: '${ctx}/file/upFile', //改成您自己的上传接口
            before: function(obj){
                //预读本地文件示例，不支持ie8
                obj.preview(function(index, file, result){
                    $('#imgLogo').attr('src', result); //图片链接（base64）
                });
            },
            done: function(res){
                //如果上传失败
                if(res.code > 0){
                    return layer.msg('上传失败');
                }else {
                    $('#imgLogo').attr('value', res.data.filepath);
                }
                //上传成功
            },
            error: function(){
                //演示失败状态，并实现重传
                return layer.msg('上传失败');
                /* var demoText = $('#demoText');
                 demoText.html('<span style="color: #FF5722;">上传失败</span> <a class="layui-btn layui-btn-xs demo-reload">重试</a>');
                 demoText.find('.demo-reload').on('click', function(){
                     uploadInst.upload();
                 });*/
            }
        });

        //普通图片上传
        var uploadInst = upload.render({
            elem: '#btn-up-imgButtomLogo',
            url: '${ctx}/file/upFile', //改成您自己的上传接口
            before: function(obj){
                //预读本地文件示例，不支持ie8
                obj.preview(function(index, file, result){
                    $('#imgButtomLogo').attr('src', result); //图片链接（base64）
                });
            },
            done: function(res){
                //如果上传失败
                if(res.code > 0){
                    return layer.msg('上传失败');
                }else {
                    $('#imgButtomLogo').attr('value', res.data.filepath);
                }
                //上传成功
            },
            error: function(){
                //演示失败状态，并实现重传
                return layer.msg('上传失败');
                /* var demoText = $('#demoText');
                 demoText.html('<span style="color: #FF5722;">上传失败</span> <a class="layui-btn layui-btn-xs demo-reload">重试</a>');
                 demoText.find('.demo-reload').on('click', function(){
                     uploadInst.upload();
                 });*/
            }
        });
    });


    function clearImg(img) {
        $('#'+img).attr('src', ''); //图片链接（base64）
    }
    /*$(function () {
        $.get('${ctx}/dept',function (data) {
            alert(data);
        });
    })*/
</script>

</html>