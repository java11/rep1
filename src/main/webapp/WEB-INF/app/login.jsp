<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="apptags" tagdir="/WEB-INF/tags" %>
<%@ include file="/common/include.inc.jsp" %>
<apptags:setPath/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>登录页面</title>
<link rel="stylesheet" type="text/css" href="${path}/style/button-zxf.css"></link>
<script type="text/javascript" src="${path}/js/jquery/jquery.js"></script>
<script type="text/javascript" src="${path}/js/js_plug/myplug/plug_zxf.js"></script>
<style type="text/css">
body {
	background-color: #EFEFEF;;
}
</style>
</head>
<body>
	<div style="border-bottom: 3px solid #7E8998;width:960px;margin: auto;margin-top:100px;">
		<font style="font-weight: bold;	margin-left: 200px;color: #666666;">登录您的账号</font>
	</div>
	<center>
		<form action="${actionPath}/user_index" method="post" id="loginForm">
			<div style="margin-top:20px;">
				<font color="red" id="error_msg" style="font-size: 12px;"> <s:property value="errors['validateError'][0]" /> </font>
				<div><input type="text" name="user.username" title="请输入您的账号" style="padding: 12px 0 14px 9px;height: 15px;font-size:18px;width:260px;"></div>
				<div style="margin-top:10px;"><input type="password" name="user.password" title="请输入您的密码" style="padding: 12px 0 14px 9px;height: 15px;font-size:18px;width:260px;"></div>
				<div class="button-zxf" style="height:45px;width:150px;margin-top:10px;margin-left:120px;; float: none;" onclick="login()"><a href="#" style="line-height:45px; color: #FFFFFF;">登录</a></div>
				<input type="hidden" name="redirectPage" value="/app/index.jsp">
<!-- 				<input type="hidden" name="redirectTpye" value="redirect"> -->
			</div>
		</form>
	</center>
	<script type="text/javascript">
	// border-bottom: 3px solid #DCE6EC;
		$(function(){
			$(":input").blur();
			$(":input").each(function(){
				if($(this).attr("name") == "user.username" || $(this).attr("name") == "user.password"){
					$(this).val($(this).attr("title"));
				}
			});
			
			$(":input").focus(function(){
				  if($(this).val() == $(this).attr("title")){  
	                  $(this).val("");           
				  }
			}).blur(function(){
				 if ($(this).val() == '') {
	                $(this).val($(this).attr("title"));
	             }
			});
		});
		
		function login(){
			var username = $("input[name='user.username']");
			var password = $("input[name='user.password']");
			if(username.val() == username.attr("title") || username.val() == ''){  
                 $("#error_msg").text("请输入您的账号!");  
                 return;
			}else if(password.val() == password.attr("title") || username.val() == ''){  
                 $("#error_msg").text("请输入您的密码!");           
                 return;
			}
			
			$("#loginForm").submit();
		}
	</script>
</body>
</html>