/**
 * 
 */
package com.action.interfaces;

/**
 * @author adm
 *
 */
public interface PrivilegeManagerAction {
	
	/**
	 * 用户id
	 * @param id
	 * @return
	 */
	void getPriOfUser();
	
	void savePriOfRole();
	
	void getAllRole();
	
}
