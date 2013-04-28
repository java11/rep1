package com.auto;

import java.util.ArrayList;
import java.util.List;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.testng.AbstractTransactionalTestNGSpringContextTests;
import org.testng.annotations.Test;

@ContextConfiguration(locations = "/applicationContext.xml")
public class TestMain extends AbstractTransactionalTestNGSpringContextTests {

	@Test
	public void test(){
		String packageName = "com.service.interfaces";
		List<String> exclusionList = new ArrayList<String>();
		List<String> testList = new ArrayList<String>();
		
		exclusionList.add("com.service.interfaces.BaseService");
		
//		new AutoTest(applicationContext).execTest(packageName, exclusionList);
		new AutoTest(applicationContext).execTest("com.service.interfaces.UserService", "");
//		new AutoTest(applicationContext).execTest("com.service.interfaces.UserService", new String[]{"testInt","testObj2"});
		
		
		

			
		
	}
}
