<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<%@ page import="com.platform.framework.util.Servlets " %>

<%
    response.setStatus(400);
    // 如果是异步请求或是手机端，则直接返回信息
    if (Servlets.isAjaxRequest(request)) {
        out.print("参数有误,服务器无法解析！");
    }
    // 输出异常信息页面
    else {
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge">
    <meta name="keywords" content="400">
    <meta name="description" content="400">
    <title>400 - 请求出错</title>
    <link rel="stylesheet" href="${ctxStatic}/static/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${ctxStatic}/static/app/css/ins.css">
</head>
<body class="gray-bg">
<div class="text-center middle-box">
    <div class="page-header"><h2>参数有误,服务器无法解析！</h2></div>
    <div><a href="javascript:" onclick="history.go(-1);" class="btn">返回上一页</a></div>
    <script>try{top.$.jBox.closeTip();} catch (e) {}</script>
</div>
</body>
</html>

<%}%>