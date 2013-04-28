package com.action.impl;

import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.Action;
import com.service.interfaces.PrivilegeManagerService;
import com.service.interfaces.UserService;
import com.utils.Constants;
import com.utils.CookieTool;
import com.utils.JsonObjectUtils;
import com.utils.PagesUtil;
import com.utils.UtilsLog;
import com.entity.Users;

@Scope("prototype")
@Controller
public class UserAction extends BaseAction{
	/**
	 * 
	 */
	private static final long serialVersionUID = -64071765945741689L;

	private Users user;
	
	@Resource(name = "UserService")
	private UserService userService;
	
	@Resource(name = "PrivilegeManagerService")
	PrivilegeManagerService pmService;
	
	private String roleid;
	
	public String login() {
		if(user == null){
			addFieldError("validateError", "user is null.");
			return getReturn();
		}
		
		String msg;
		Users user2 = userService.findUser(user.getUsername());
		
		if(user2 != null){
			if(user2.getPassword().equals(user.getPassword())){
				if(StringUtils.isBlank(user2.getIndexPage())){
					user2.setIndexPage(redirectPage);
				}
				getRequest().getSession().setAttribute("user", user2);
				HttpServletResponse response = ServletActionContext.getResponse();
				CookieTool.addCookie(response, "username", user.getUsername(), 600);
				CookieTool.addCookie(response, "password", user.getPassword(), 600);
				
				//查询用户权限
				
				
				
				return getReturn();
			}else{
				msg = "user password is wrong.";
			}
		}else{
			msg = "user not exist.";
		}
		redirectTpye = "";
		addFieldError("validateError", msg);
		
		return Action.LOGIN;
	}
	
	public String logout() {
		ServletActionContext.getRequest().getSession().removeAttribute("user");
//		CookieTool.deleteCookie(request, response, "username");
//		CookieTool.deleteCookie(request, response, "password");
		return "login";
	}
	
	public void findUserByRole() {
		StringBuffer rolesData = new StringBuffer();
		List<Users> allRole = userService.findUserByRole(roleid);
		rolesData.append("{\"total\":" +allRole.size()+ ",\"rows\":[ ");
		for (Users user : allRole) {
			rolesData.append(JsonObjectUtils.getJsonStringFromBean(user));
			rolesData.append(",");
		}
		rolesData.replace(rolesData.length()-1, rolesData.length(), "]}");
		
		UtilsLog.LOG.info(rolesData.toString());
		
		PagesUtil.outDataToPage(rolesData.toString());
		
	}

	public Users getUser() {
		return user;
	}

	public void setUser(Users user) {
		this.user = user;
	}

	public String getRoleid() {
		return roleid;
	}

	public void setRoleid(String roleid) {
		this.roleid = roleid;
	}
}



















