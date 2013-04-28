package com.entity;

import java.io.Serializable;

public class Roles implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 7039600766657560168L;
	private String roleid;
	private String rolename;
	private String roledesc;
	
	public String getRoleid() {
		return roleid;
	}
	public void setRoleid(String roleid) {
		this.roleid = roleid;
	}
	public String getRolename() {
		return rolename;
	}
	public void setRolename(String rolename) {
		this.rolename = rolename;
	}
	public String getRoledesc() {
		return roledesc;
	}
	public void setRoledesc(String roledesc) {
		this.roledesc = roledesc;
	}

}
