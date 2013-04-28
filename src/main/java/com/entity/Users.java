package com.entity;

import java.io.Serializable;

public class Users implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 370689966588660778L;
	private Integer userid;
	private String username;
	private String password;
	private String status;
	private String usertype;
	private String createtime;
	private String indexPage;
	
	public Integer getUserid() {
		return userid;
	}
	public void setUserid(Integer userid) {
		this.userid = userid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getUsertype() {
		return usertype;
	}
	public void setUsertype(String usertype) {
		this.usertype = usertype;
	}
	public String getCreatetime() {
		return createtime;
	}
	public void setCreatetime(String createtime) {
		this.createtime = createtime;
	}
	public String getIndexPage() {
		return indexPage;
	}
	public void setIndexPage(String indexPage) {
		this.indexPage = indexPage;
	}
	public static long getSerialVersionUID() {
		return serialVersionUID;
	}
}
