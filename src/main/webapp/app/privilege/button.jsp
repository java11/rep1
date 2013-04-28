<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Border Layout on Panel - jQuery EasyUI Demo</title>
	<link rel="stylesheet" type="text/css" href="<%=path%>/js/js_plug/easyui/themes/gray/easyui.css">
	<link rel="stylesheet" type="text/css" href="<%=path%>/js/js_plug/easyui/themes/icon.css">
	<link rel="stylesheet" type="text/css" href="demo.css">
	<script type="text/javascript" src="<%=path%>/js/jquery/jquery.js"></script>
	<script type="text/javascript" src="<%=path%>/js/js_plug/easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="<%=path%>/js/appjs/myPlug.js"></script>
</head>
<body>
	<div class="easyui-layout" style="height:480px;">
		<div data-options="region:'north',split:true" style="height:40px;padding:5px;overflow:hidden">
	        <a href="#" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-ok'">新增</a>  
	        <a href="#" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-edit'">编辑</a>  
	        <a href="#" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-cancel'">删除</a>  
	        <a href="#" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-reload'">刷新</a>  
		</div>
		<div data-options="region:'west',split:true" title="资源列表" style="width:250px;" id="left-tree"></div>
		<div data-options="region:'center',title:'编辑表单'" style="background:#fafafa;overflow:hidden;">
			<input value="ordernum">
			<input value="name">
			<input value="url">
			<input value="parentCode">
			<input value="type">
			<input type="button" value="提交">
		</div>
	</div>
</body>
</html>