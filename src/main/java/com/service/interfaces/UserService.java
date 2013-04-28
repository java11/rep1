package com.service.interfaces;

import java.util.List;

import com.entity.Users;

public interface UserService{
	
	public Users login(Users user);
	
	List<Users> findUserByRole(String roleid);
	
	Users findUser(String username);
	
	int testInt(int i);
	
	void testObj();
	
}
