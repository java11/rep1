package com.entity;

import java.io.Serializable;

public class RolesPrivileges implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 7592486445724612382L;
	private int roleid;
	private int priid;
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
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
}