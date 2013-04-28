package com.action.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import com.entity.Privileges;
import com.entity.Roles;
import com.entity.RolesPrivileges;
import com.entity.Users;
import com.entity.UsersResourse;
import com.service.interfaces.PrivilegeManagerService;
import com.service.interfaces.PrivilegeService;
import com.utils.Constants;
import com.utils.PagesUtil;
import com.utils.TreeBuilder;
import com.utils.UtilsLog;

@Scope("prototype")
@Controller
public class PrivilegeManagerAction extends BaseAction{

	/**
	 * 
	 */
	private static final long serialVersionUID = -6269125212165683443L;

	private RolesPrivileges rp;

	@Resource(name = "PrivilegeManagerService")
	private PrivilegeManagerService pmService;
	
	@Resource(name = "PrivilegeService")
	private PrivilegeService pService;
	
	private String userid;
	
	private String roleid;
	
	private String priidDel;
	
	private String priidAdd;
	
	private Roles role;
	
	private Privileges pri;
	
	public void getPriOfUser() {
		if(StringUtils.isBlank(userid)){
			HttpSession session = getRequest().getSession();
			Users user = (Users)session.getAttribute("user");
			if(user != null){
				userid = (user).getUserid() + "";
				List<UsersResourse> userPower = pmService.getPriOfUser(userid);
				Map<String, String> userUrlMap = new HashMap<String,String>();
				for (UsersResourse usersResourse : userPower) {
					if(usersResourse.getTag() != null){
						String[] tags = usersResourse.getTag().split(",");
						int i = 1;
						for (String tag : tags) {
							userUrlMap.put(String.valueOf(usersResourse.getPriid()) + "." + i, tag);
							i++;
						}
					}
				}
				session.setAttribute(Constants.USER_POWER, userUrlMap);	
				
				StringBuffer treeData = new TreeBuilder().getTreeData(userPower, 1);
				String treeDataStr = treeData.toString().replace(", \"children\": null" , "");
				
				
				UtilsLog.LOG.info(treeDataStr);
				PagesUtil.outDataToPage(treeDataStr);
			}
		}
	}
	
	public void getPriOfRole() {
		List<UsersResourse> userPower = pmService.getPriOfRole(roleid);
		StringBuffer treeId = new StringBuffer();
		treeId.append("{\"ids\": [ ");
		for (UsersResourse userResourse : userPower) {
			treeId.append(userResourse.getPriid() + ",");
		}
		treeId.replace(treeId.length()-1, treeId.length(), "]}");
		
		UtilsLog.LOG.info(treeId.toString());
		
		PagesUtil.outDataToPage(treeId.toString());
	}
	
	public void getPriAll() {
		List<UsersResourse> userPower = pmService.getPriAll();
		StringBuffer treeData = new TreeBuilder().getTreeData(userPower, 1);
		String treeDataStr = treeData.toString().replace(", \"children\": null" , "");
		
		UtilsLog.LOG.info(treeDataStr);
		
		PagesUtil.outDataToPage(treeDataStr);
	}
	
	public void savePriOfRole() {
		pmService.savePriOfRoleBoth(roleid, priidDel, priidAdd);
		PagesUtil.outDataToPage("ok!");
	}

	public void getAllRole(){
		
		StringBuffer rolesData = new StringBuffer();
		rolesData.append("{\"total\":239,\"rows\":[");
		List<Roles> allRole = pmService.getAllRole();
		for (Roles role : allRole) {
			rolesData.append("{");
			rolesData.append("\"roleid\":" + role.getRoleid() + ", ");
			rolesData.append("\"rolename\":\"" + role.getRolename() + "\", ");
			rolesData.append("\"roledesc\":\"" + role.getRoledesc() + "\"");
			rolesData.append("},");
		}
		rolesData.replace(rolesData.length()-1, rolesData.length(), "]}");
		
		UtilsLog.LOG.info(rolesData.toString());
		
		PagesUtil.outDataToPage(rolesData.toString());
	}
	
	public void saveRole(){
		pmService.saveRole(role);
		
		PagesUtil.outDataToPage("ok");
	}
	
	public void updateRole(){
		pmService.updateRole(role);
		
		PagesUtil.outDataToPage("ok");
	}
	
	public void delRole(){
		pmService.delRole(roleid);
		
		PagesUtil.outDataToPage("ok");
	}
	
	public void delPri(){
		pService.batchDel(priidDel);
		PagesUtil.outDataToPage("ok");
	}
	
	public void savePri(){
		pService.save(pri);
		
		PagesUtil.outDataToPage("ok");
	}
	public void updatePri(){
		pService.update(pri);
		PagesUtil.outDataToPage("ok");
	}
	
	

	public RolesPrivileges getRp() {
		return rp;
	}

	public void setRp(RolesPrivileges rp) {
		this.rp = rp;
	}

	public String getRoleid() {
		return roleid;
	}

	public void setRoleid(String roleid) {
		this.roleid = roleid;
	}

	public String getPriidDel() {
		return priidDel;
	}

	public void setPriidDel(String priidDel) {
		this.priidDel = priidDel;
	}

	public String getPriidAdd() {
		return priidAdd;
	}

	public void setPriidAdd(String priidAdd) {
		this.priidAdd = priidAdd;
	}

	public Roles getRole() {
		return role;
	}

	public void setRole(Roles role) {
		this.role = role;
	}

	public Privileges getPri() {
		return pri;
	}

	public void setPri(Privileges pri) {
		this.pri = pri;
	}
	
}
