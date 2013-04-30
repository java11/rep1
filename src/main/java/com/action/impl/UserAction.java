package com.action.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
import com.entity.UsersResourse;

@Scope("prototype")
@Controller
public class UserAction extends BaseAction {
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
		if (user == null) {
			return Action.LOGIN;
		}

		String msg;
		Users user2 = userService.findUser(user.getUsername());

		if (user2 != null) {
			if (user2.getPassword().equals(user.getPassword())) {
				if (StringUtils.isBlank(user2.getIndexPage())) {
					user2.setIndexPage(redirectPage);
				}
				getRequest().getSession().setAttribute(Constants.CURRENT_USER,
						user2);
				HttpServletResponse response = ServletActionContext
						.getResponse();
//				CookieTool.addCookie(response, "username", user.getUsername(),
//						600);
//				CookieTool.addCookie(response, "password", user.getPassword(),
//						600);

				// 查询用户权限
				getPriOfUser(user2.getUserid() + "");
				
				setRedirectPage("/index.jsp");

				return getReturn();
			} else {
				msg = "user password is wrong.";
			}
		} else {
			msg = "user not exist.";
		}
		redirectTpye = "";
		addFieldError("validateError", msg);

		return Action.LOGIN;
	}

	public String index() {
		Users currentUser = (Users) getRequest().getSession().getAttribute(
				Constants.CURRENT_USER);

		if (currentUser != null) {
			setRedirectPage(currentUser.getIndexPage());
			return SUCCESS;
		} else {
			return Action.LOGIN;
		}
	}

	public String logout() {
		getRequest().getSession().removeAttribute(Constants.CURRENT_USER);
		// CookieTool.deleteCookie(request, response, "username");
		// CookieTool.deleteCookie(request, response, "password");
		return "login";
	}

	public void findUserByRole() {
		StringBuffer rolesData = new StringBuffer();
		List<Users> allRole = userService.findUserByRole(roleid);
		rolesData.append("{\"total\":" + allRole.size() + ",\"rows\":[ ");
		for (Users user : allRole) {
			rolesData.append(JsonObjectUtils.getJsonStringFromBean(user));
			rolesData.append(",");
		}
		rolesData.replace(rolesData.length() - 1, rolesData.length(), "]}");

		UtilsLog.LOG.info(rolesData.toString());

		PagesUtil.outDataToPage(rolesData.toString());

	}

	private void getPriOfUser(String userid) {
		List<UsersResourse> userPower = pmService.getPriOfUser(userid);

		Map<Integer, String> userUrlMap = new HashMap<Integer, String>();
		List<String> userTagList = new ArrayList<String>();

		// 存储所有页面连接urlMap
		for (UsersResourse usersResourse : userPower) {
			userUrlMap.put(usersResourse.getPriid(), usersResourse.getUrl());
		}

		for (UsersResourse usersResourse : userPower) {
			if (usersResourse.getTag() != null) {
				String[] tags = usersResourse.getTag().split(",");
				int i = 1;
				for (String tag : tags) {
					userTagList.add(tag);
					i++;
				}
			}
		}
		HttpSession session = getRequest().getSession();
		session.setAttribute(Constants.USER_POWER_SOURCE_DATA, userPower);
		session.setAttribute(Constants.USER_POWER_TAG, userTagList);
		session.setAttribute(Constants.USER_POWER_URL, userUrlMap);
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
