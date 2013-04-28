package com.service.impl;

import javax.annotation.PostConstruct;
import org.springframework.stereotype.Service;
import com.dao.interfaces.PrivilegesDao;
import com.entity.Privileges;
import com.service.interfaces.PrivilegeService;

@Service("PrivilegeService")
public class PrivilegeServiceImpl extends BaseServiceImpl implements PrivilegeService {
	
	private PrivilegesDao privilegeDao;

	@PostConstruct
	public void UserServiceImpls() {
		privilegeDao = sqlSession.getMapper(PrivilegesDao.class);
	}
	
	@Override
	public boolean save(Privileges pri) {
		privilegeDao.save(pri);
		return false;
	}

	@Override
	public boolean delete(String priid) {
		privilegeDao.removeById(priid);
		return false;
	}

	@Override
	public boolean batchDel(String priid) {
		String[] rolesid = com.utils.StringUtils.stringToArray(priid, ",");
		
		if(rolesid == null){
			return true;
		}
		privilegeDao.batchRemove(rolesid);
		return false;
	}

	@Override
	public boolean update(Privileges pri) {
		privilegeDao.update(pri);
		
		return false;
	}

}
