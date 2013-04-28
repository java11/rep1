<%@ tag pageEncoding="utf-8" body-content="empty"
	display-name="set path" description="set path"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	String actionPath = path + "/s2";
	
	request.setAttribute("path", path);
	request.setAttribute("basePath", basePath);
	request.setAttribute("actionPath", actionPath);
%>