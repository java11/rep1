package com.action.impl;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

public class AppInit extends HttpServlet{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -8451667723603968399L;

	@Override
	public void init(ServletConfig config) throws ServletException {
		System.out.println("init...");
	}
}
