package com.entity;

import java.io.Serializable;

public class Privileges implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -218526209907883539L;
	private int priid;
	private String priname, parentcode, type, url;
	private String ordernum;
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
	public String getParentcode() {
		return parentcode;
	}
	public void setParentcode(String parentcode) {
		this.parentcode = parentcode;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getOrdernum() {
		return ordernum;
	}
	public void setOrdernum(String ordernum) {
		this.ordernum = ordernum;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
}
