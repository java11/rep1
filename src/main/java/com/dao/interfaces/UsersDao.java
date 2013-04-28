package com.dao.interfaces;

import java.util.List;
import com.core.dao.interfaces.BaseDao;
import com.entity.Users;

public interface UsersDao extends BaseDao<Users> {
	
	Users getUserByName(String username);
	
	Users findUserById(String userid);
	
	List<Users> findUserByRole(String[] ids);
	
}
