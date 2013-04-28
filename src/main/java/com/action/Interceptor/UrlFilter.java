package com.action.Interceptor;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.entity.Users;

public class UrlFilter implements Filter{
	private FilterConfig filterConfig = null;

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		 this.filterConfig = filterConfig;
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession session = req.getSession();
		String[] excludePages = filterConfig.getInitParameter("denyPath").split(",");
		String servletPath = req.getServletPath();
		Users user = (Users) session.getAttribute("user");
		
		if(user == null){
			for (String excludePage : excludePages) {
				excludePage = excludePage.trim();
				if(servletPath.startsWith(excludePage)){
					((HttpServletResponse) response).sendRedirect(filterConfig.getInitParameter("loginJsp"));
					return;
				}
			}
		}else{
			/**
			 * 鉴权:
			 * 	此程序只对action进行鉴权,对action的鉴权放在com.action.Interceptor.AuthorityInterceptor里
			 */
		}
		
		chain.doFilter(request, response);
		return;
	}
	

	@Override
	public void destroy() {
	}
}
