package com.test;

import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import com.entity.UsersResourse;
import com.service.interfaces.PrivilegeManagerService;

@RunWith(SpringJUnit4ClassRunner.class)// 指定测试用例的运行器 这里是指定了Junit4
@ContextConfiguration({ "/applicationContext.xml" })// 指定Spring的配置文件 /为classpath下
@Transactional// 对所有的测试方法都使用事务，并在测试完成后回滚事务
public class PrivilegeResources {
	@Resource(name = "PrivilegeManagerService")
	private PrivilegeManagerService pmService;

	@Test
	@Transactional
	public void testQueryUserById() {
		List<UsersResourse> userPower = pmService.getPriOfUser("1");
		System.out.println(userPower.size());

		List<UsersResourse> userPower2 = pmService.getPriOfUser("1");
		System.out.println(userPower2.size());

	}
}
