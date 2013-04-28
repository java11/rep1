package com.action.Interceptor;

import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;
import com.action.interfaces.ActionConstants;
import com.entity.Users;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;
import com.utils.Constants;

public class AuthorityInterceptor extends MethodFilterInterceptor{

	@Override
	protected String doIntercept(ActionInvocation invocation) throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		Users user = (Users) session.getAttribute("user");
		
		if(user != null) {
			/**
			 * 鉴权:
			 * 	此程序只对action进行鉴权,对action的鉴权放在com.action.Interceptor.AuthorityInterceptor里
			 */
			String action = invocation.getInvocationContext().getName();
			String actionName = action.split("_")[0];
			
			if(action.equals(Constants.USER_BASE_POWER)){
				return invocation.invoke();
			}
			
			Map<String, String> urlMap = (Map<String, String>) session.getAttribute(Constants.USER_POWER);
			
			if(urlMap.containsValue(actionName)){
				return invocation.invoke();
			}else{
				return ActionConstants.ACCESS_DENY;
			}
			
		} else {
			return Action.LOGIN;
		}
	}


}
