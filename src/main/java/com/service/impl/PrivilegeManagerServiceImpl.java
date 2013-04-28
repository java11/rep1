package com.service.impl;

import java.util.List;
import javax.annotation.PostConstruct;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;
import org.springmodules.cache.annotations.Cacheable;

import com.dao.interfaces.PrivilegesManagerDao;
import com.dao.interfaces.RolesDao;
import com.dao.interfaces.RolesPrivilegesDao;
import com.entity.Roles;
import com.entity.RolesPrivileges;
import com.entity.UsersResourse;
import com.service.interfaces.PrivilegeManagerService;

@Service("PrivilegeManagerService")
public class PrivilegeManagerServiceImpl extends BaseServiceImpl implements PrivilegeManagerService {
	
	private PrivilegesManagerDao pmDao;
	
	private RolesPrivilegesDao rpDao;
	
	private RolesDao roleDao;
	
	@PostConstruct
	public void UserServiceImpls() {
		pmDao = sqlSession.getMapper(PrivilegesManagerDao.class);
		rpDao = sqlSession.getMapper(RolesPrivilegesDao.class);
		roleDao = sqlSession.getMapper(RolesDao.class);
	}
	
	@Override
	public List<UsersResourse> getPriOfUser(String id) {
		return pmDao.getPriOfUser(id);
	}
	
	@Override
	public List<UsersResourse> getPriOfRole(String id) {
		String[] rolesid = com.utils.StringUtils.stringToArray(id, ",");
		
		if(rolesid == null){
			return null;
		}
		return pmDao.getPriOfRole(rolesid);
	}

	@Override
	public boolean savePriOfRole(String roleid, String priid) {
		String[] priidS = priid.split(",");
		String[] roleidS = roleid.split(",");
		RolesPrivileges rp = new RolesPrivileges();
		
		for (String role : roleidS) {
			if(!StringUtils.isBlank(role)){
				for (String pri : priidS) {
					if(!StringUtils.isBlank(pri)){
						rp.setPriid(Integer.parseInt(pri));
						rp.setRoleid(Integer.parseInt(role));
						rpDao.save(rp);
					}
				}
			}
		}
		
		return false;
	}

	@Override
	public boolean reomvePriOfRole(String roleid, String priid) {
		String[] priidS = priid.split(",");
		String[] roleidS = roleid.split(",");
		RolesPrivileges rp = new RolesPrivileges();
		
		for (String role : roleidS) {
			if(!StringUtils.isBlank(role)){
				for (String pri : priidS) {
					if(!StringUtils.isBlank(pri)){
						rp.setPriid(Integer.parseInt(pri));
						rp.setRoleid(Integer.parseInt(role));
						rpDao.remove(rp);
					}
				}
			}
		}
		
		return false;
	}
	
	@Override
	public boolean savePriOfRoleBoth(String roleid, String priidDel, String priidAdd) {
		if(!StringUtils.isBlank(priidDel)){
			reomvePriOfRole(roleid, priidDel);
		}
		if(!StringUtils.isBlank(priidAdd)){
			savePriOfRole(roleid, priidAdd);
		}
		
		return true;
	}

	@Override
	public List<Roles> getAllRole() {
		
		return roleDao.getAll();
	}

	@Override
	public List<UsersResourse> getPriAll() {
		
		return pmDao.getAll();
	}

	@Override
	public boolean saveRole(Roles role) {
		roleDao.save(role);
		return true;
	}

	@Override
	public boolean delRole(String roleid) {
		String[] roleidS = roleid.split(",");
		
		for (String role : roleidS) {
			if(!StringUtils.isBlank(role)){
				roleDao.removeById(role);
			}
		}
		return true;
	}

	@Override
	public boolean updateRole(Roles role) {
		roleDao.update(role);
		return true;
	}

}
