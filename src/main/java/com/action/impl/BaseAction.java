package com.action.impl;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.utils.Constants;

public class BaseAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = -1149467570434364013L;
	protected String redirectTpye;
	protected String redirectPage;
	
	public String getRedirectPage() {
		return redirectPage;
	}

	public void setRedirectPage(String redirectPage) {
		this.redirectPage = redirectPage;
	}

	public HttpServletRequest getRequest() {
		return ServletActionContext.getRequest();
	}

	public HttpServletResponse getResponse() {
		return ServletActionContext.getResponse();
	}

	
	public String getRedirectTpye() {
		return redirectTpye;
	}

	public void setRedirectTpye(String redirectTpye) {
		this.redirectTpye = redirectTpye;
	}

	
	public String getReturn() {
		if(redirectTpye != null && redirectTpye.equals(Constants.SUCCESS_TYPE_REDIRECT)){
			return Constants.SUCCESS_TYPE_REDIRECT;
		}
		
		return SUCCESS;
	}

	
}
