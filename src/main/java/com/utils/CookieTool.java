package com.utils;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CookieTool {
	
	private CookieTool(){}
	/**
	 * 向客户端增加cookie
	 * @param response 返回给客户端的对象
	 * @param name cookie名字
	 * @param value cookie值
	 * @param maxAge cookie存在的时长（以秒为单位）
	 */
	public static void addCookie(HttpServletResponse response, String name, String value, int maxAge) {
		Cookie cookie = new Cookie(name, value);
		cookie.setPath("/");
		if (maxAge > 0)
			cookie.setMaxAge(maxAge);
		response.addCookie(cookie);
	}
	
	/**
	 * 删除客户端的Cookie
	 * @param response 返回给客户端的对象
	 * @param name 待删除的Cookie的名字
	 */
	public static void deleteCookie(HttpServletRequest request, HttpServletResponse response, String name){
		Cookie ck = getCookieByName(request, name);
		if(ck!=null){
			ck.setMaxAge(0);
			response.addCookie(ck);
		}
		
	}
	
	/**
	 * 根据名字获取cookie（接口方法）
	 * @param request 客户请求对象
	 * @param name cookie名字
	 * @return
	 */
	public static Cookie getCookieByName(HttpServletRequest request, String name) {
		Map<String, Cookie> cookieMap = ReadCookieMap(request);
		if (cookieMap.containsKey(name)) {
			Cookie cookie = (Cookie) cookieMap.get(name);
			return cookie;
		} else {
			return null;
		}
	}

	/**
	 * 将cookie封装到Map里面（非接口方法）
	 * @param request 客户请求对象
	 * @return
	 */
	private static Map<String, Cookie> ReadCookieMap(HttpServletRequest request) {
		Map<String, Cookie> cookieMap = new HashMap<String, Cookie>();
		Cookie[] cookies = request.getCookies();
		if (cookies!=null) {
			for (Cookie cookie : cookies) {
				cookieMap.put(cookie.getName(), cookie);
			}
		}
		return cookieMap;
	}
	
	

}
