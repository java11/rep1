/**
 * 
 */
package com.dao.interfaces;

import java.util.List;
import com.core.dao.interfaces.BaseDao;
import com.entity.UsersResourse;

/**
 * @author adm
 *
 */
public interface PrivilegesManagerDao extends BaseDao<UsersResourse> {
	
	/**
	 * 用户id
	 * @param id
	 * @return
	 */
	List<UsersResourse> getPriOfUser(String id);
	
	List<UsersResourse> getPriOfRole(String[] rolesid);
	
}
