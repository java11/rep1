package com.action.impl;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.utils.PagesUtil;

@Scope("prototype")
@Controller
public class TestAction extends BaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = -3357602530727020977L;
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;

	public void tree1() {
		String data = "[{\"id\":1,\"text\":\"Folder122\",\"iconCls\":\"icon-ok\",\"children\":[{\"id\":2,\"text\":\"File1\",\"checked\":true},{\"id\":3,\"text\":\"Folder2\",\"state\":\"open\",\"children\":[{\"id\":4,\"text\":\"File2\",\"attributes\":{\"p1\":\"value1\",\"p2\":\"value2\"},\"checked\":true,\"iconCls\":\"icon-reload\"},{\"id\": 8,\"text\":\"Folder3\",\"state\":\"closed\",\"children\":[{\"id\":9,\"text\":\"File31\"},{\"id\":10,\"text\":\"File32\"}]}]}]},{\"text\":\"Languages\",\"state\":\"closed\",\"children\":[{\"id\":\"j1\",\"text\":\"Java\"},{\"id\":\"j2\",\"text\":\"C#\"}]}]";

		sqlSession.selectOne("usersDao.checkLogin");
		
		PagesUtil.outDataToPage(data);

	}
	
	public String test1(){
		
		System.out.println("-----------------");
		return getReturn();
	}
}
