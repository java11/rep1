package com.utils;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

public class PagesUtil {
	
	public static void outDataToPage(String data){
		PrintWriter out = null;
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("utf-8");
		response.setCharacterEncoding("utf-8");
		try {
			out = ServletActionContext.getResponse().getWriter();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		out.write(data);
		out.close();
	}
}
