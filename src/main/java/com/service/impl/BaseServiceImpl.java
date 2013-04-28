package com.service.impl;

import javax.annotation.Resource;
import org.apache.ibatis.session.SqlSession;
import com.service.interfaces.BaseService;

public class BaseServiceImpl implements BaseService{

	@Resource(name = "sqlSession")
	protected SqlSession sqlSession;
	
	@Override
	public void getDao() {
		// TODO Auto-generated method stub
		
	}
	
//	@Resource(name = "sqlSession")
//	private SqlSession sqlSession;
//	
//	public void getDao(String daoname, Class){
//		try {
//			Class<?> clazz = Class.forName("daoname");
//		} catch (ClassNotFoundException e) {
//			e.printStackTrace();
//		}
//		
//		sqlSession.getMapper(clazz);
//	}
//	
}
