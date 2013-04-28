package com.test;

import java.util.List;

import javax.annotation.Resource;
import junit.framework.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import com.entity.Users;
import com.entity.UsersResourse;
import com.service.interfaces.PrivilegeManagerService;
import com.service.interfaces.UserService;

@RunWith(SpringJUnit4ClassRunner.class)// 指定测试用例的运行器 这里是指定了Junit4
@ContextConfiguration({ "/applicationContext*.xml" })// 指定Spring的配置文件 /为classpath下
@Transactional// 对所有的测试方法都使用事务，并在测试完成后回滚事务
public class UserServciceTest {

	@Resource
	private UserService userService;
	
	@Resource(name = "PrivilegeManagerService")
	private PrivilegeManagerService pmService;
	
	@Test
	@Transactional
	public void testQueryUserById() {
		Assert.assertNotNull(userService);
//		List<Users> user = userService.findUserByRole("1");
//		System.out.println(user.size());
//		
//		
//		List<Users> user2 = userService.findUserByRole("1");
//		System.out.println(user2.size());
		
		List<UsersResourse> userPower = pmService.getPriOfUser("1");
		System.out.println(userPower.size());
		
		List<UsersResourse> userPower2 = pmService.getPriOfUser("1");
		System.out.println(userPower2.size());
	}
	@Test
	@Transactional
	public void test2() {
		
	}
}
