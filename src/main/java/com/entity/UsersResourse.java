package com.entity;

import java.io.Serializable;
import java.util.Date;

public class UsersResourse implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -7239357576543144942L;
	private int priid;
	private int userid;
	private int roleid;
	private String priname;
	private int parentCode;
	private String url;
	private Date time;
	private String type;
	private String ordernum;
	private String tag;
	
	public String getTag() {
		return tag;
	}
	public void setTag(String tag) {
		this.tag = tag;
	}
	public String getOrdernum() {
		return ordernum;
	}
	public void setOrdernum(String ordernum) {
		this.ordernum = ordernum;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public int getRoleid() {
		return roleid;
	}
	public void setRoleid(int roleid) {
		this.roleid = roleid;
	}
	public int getPriid() {
		return priid;
	}
	public void setPriid(int priid) {
		this.priid = priid;
	}
	public String getPriname() {
		return priname;
	}
	public void setPriname(String priname) {
		this.priname = priname;
	}
	public int getParentCode() {
		return parentCode;
	}
	public void setParentCode(int parentCode) {
		this.parentCode = parentCode;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
}