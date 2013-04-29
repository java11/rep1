package com.action.impl;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.utils.Constants;

@Scope("prototype")
@Controller
public class IndexAction extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = -7550087556385315893L;

	/**
	 * 用户后台一级权限url解码转换
	 * localhost:8080/s2/3/index
	 */
	@SuppressWarnings("unchecked")
	@Override
	public String execute() throws Exception {
		HttpSession session = getRequest().getSession();
		String[] split = getRequest().getRequestURI().split("/");
		String param = split[split.length - 2];
		
		Map<Integer, String> urlMap = (Map<Integer, String>) session
				.getAttribute(Constants.USER_POWER_URL);
		
		String page = urlMap.get(Integer.valueOf(param));

		setRedirectPage(page);

		return super.execute();
	}

}
