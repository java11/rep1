<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	// ${pageContext.request.contextPath}
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登录页面</title>
<link rel="stylesheet" type="text/css" href="<%=path%>/style/button-zxf.css"></link>
<script type="text/javascript" src="<%=path%>/js/jquery/jquery.js"></script>
<script type="text/javascript" src="<%=path%>/js/js_plug/myplug/plug_zxf.js"></script>
</head>
<body>
	<a href="<%=path%>/js/js_plug/ckeditor/samples/index.html" style="color: red">ckeditor</a>
	<script type="text/javascript">
	</script>
</body>
</html>