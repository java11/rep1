package com.action.Interceptor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.action.interfaces.ActionConstants;
import com.entity.Users;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;
import com.utils.Constants;

public class AuthorityInterceptor extends MethodFilterInterceptor {

	/**
	 * 
	 */
	private static final long serialVersionUID = -8225034452845019358L;

	@Override
	protected String doIntercept(ActionInvocation invocation) throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		Users user = (Users) session.getAttribute(Constants.CURRENT_USER);

		if ( Constants.ENABLE_AUTHENTICATION && user != null) {
			/**
			 * 鉴权: 此程序只对action进行鉴权,对action的鉴权放在com.action.Interceptor.
			 * AuthorityInterceptor里 目前只对action鉴权，每堆方法鉴权
			 */
			String actionPath = invocation.getInvocationContext().getName();
			String actionName = actionPath.split("_")[0];

			// 去掉Constants.USER_BASE_POWER权限把此放在登陆成功后

			if (actionPath.equals(Constants.USER_BASE_POWER)
					|| actionName.equals("index")) {
				return invocation.invoke();
			}

			List<String> userTagList = (List<String>) session
					.getAttribute(Constants.USER_POWER_TAG);

			if (userTagList.contains(actionName)) {
				return invocation.invoke();
			} else if (userTagList.contains(actionPath)) {
				return invocation.invoke();
			} else {
				return ActionConstants.ACCESS_DENY;
			}

		} else {
			return Action.LOGIN;
		}
	}

}
