/**
 * 
 */
package com.service.interfaces;

import java.util.List;
import com.entity.Roles;
import com.entity.UsersResourse;

/**
 * @author adm
 *
 */
public interface PrivilegeManagerService {
	
	/**
	 * 用户id
	 * @param id
	 * @return
	 */
	List<UsersResourse> getPriOfUser(String id);
	
	List<UsersResourse> getPriOfRole(String id);
	
	boolean savePriOfRole(String roleid, String priid);
	
	boolean savePriOfRoleBoth(String roleid, String priidDel, String priidAdd);
	
	boolean reomvePriOfRole(String roleid, String priid);
	
	List<Roles> getAllRole();
	
	List<UsersResourse> getPriAll();
	
	boolean saveRole(Roles role);
	
	boolean delRole(String roleid);
	
	boolean updateRole(Roles role);

	
}
