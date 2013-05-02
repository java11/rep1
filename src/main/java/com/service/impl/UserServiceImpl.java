package com.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;

import com.dao.interfaces.UsersDao;
import com.entity.Users;
import com.service.interfaces.UserService;

@Service("UserService")
public class UserServiceImpl extends BaseServiceImpl implements UserService {

	@Resource
	private UsersDao usersDao;

	public Users login(Users user) {
		if (user != null) {
			Users user_query = usersDao.getUserByName(user.getUsername());

			boolean ub = user.getUsername().equals(user_query.getUsername());
			boolean pb = user.getPassword().equals(user_query.getPassword());

			if (ub) {
				if (pb) {
					return user_query;
				}
			}
		}

		return null;
	}

	@Override
	public List<Users> findUserByRole(String roleid) {
		String[] rolesid = com.utils.StringUtils.stringToArray(roleid, ",");

		if (rolesid == null) {
			return null;
		}
		return usersDao.findUserByRole(rolesid);
	}

	@Override
	public Users findUser(String username) {

		if (!StringUtils.isBlank(username)) {
			Users user = new Users();
			user.setUsername(username);
			try {
				user = usersDao.getUserByName(user.getUsername());
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return user;
		}

		return null;
	}

	@Override
	public int testInt(int i) {
		System.out.println("-----testInt---------");

		return 5;
	}

	@Override
	public void testObj() {
		// TODO Auto-generated method stub
		System.out.println("-------testObj-------");

	}

}
