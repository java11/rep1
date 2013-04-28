package com.service.interfaces;

import com.entity.Privileges;

public interface PrivilegeService {
	boolean save(Privileges pri);
	
	boolean delete(String priid);
	
	boolean batchDel(String priid);
	
	boolean update(Privileges pri);
}
