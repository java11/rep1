package com.auto;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import java.util.Set;
import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.context.ApplicationContext;
import org.testng.Assert;

import com.utils.ClassUtil;

public class AutoTest{
	private Logger log = Logger.getLogger(getClass());
	
	protected ApplicationContext applicationContext;
	
	public AutoTest(ApplicationContext applicationContext) {
		this.applicationContext = applicationContext;
	}
	
	public void execTest(String packageName){
		execTest(packageName, null, null);
	}
	
	public void execTest(String[] packageName){
		for (String pack : packageName) {
			execTest(pack, null, null);
		}
	}
	
	public void execTest(List<String> testList){
		execTest("", null, testList);
	}
	
	public void execTest(String[] packageName, List<String> exclusionList){
		for (String pack : packageName) {
			execTest(pack, exclusionList, null);
		}
	}
	
	public void execTest(String packageName, List<String> exclusionList){
		execTest(packageName, exclusionList, null);
	}
	
	public void execTest(String className, String[] methodNames){
		for (String methodName : methodNames) {
			execTest(className, methodName);
		}
	}
	
	public void execTest(String className, String methodName){
		Class<?> class1 = null;
		try {
			class1 = Class.forName(className);
			_execT(class1, methodName);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	private void execTest(String packageName, List<String> exclusionList, List<String> testList){
		Set<Class<?>> classes = null;
		if(!StringUtils.isBlank(packageName)){
			classes = ClassUtil.getClasses(packageName);
		}else{
			classes = ClassUtil.loadClass(testList);
		}
		
		for (Class<?> class1 : classes) {
			if(exclusionList != null && exclusionList != null && exclusionList.contains(class1.getName())){
				continue;
			}
			log.info("--------testing "+class1.getName() + "class......----------");
			_execT(class1);
			log.info("--------testing "+class1.getName() + "class end.----------");
		}
	}
	
	protected void _execT(Class<?> class1){
		_execT(class1, null);
	}
	
	protected void _execT(Class<?> class1, String methodName){
		Method[] methods = class1.getMethods();
		for (Method method : methods) {
			if(StringUtils.isBlank(methodName)){
				testTargetClass(class1.getName(), method);
			}else{
				 if(method.getName().equals(methodName)){
					 testTargetClass(class1.getName(), method);
				 }
			}
		}
	}
	
	public void testTargetClass(String beanName, Method method){
		String[] split = beanName.split("\\.");
		beanName = split[split.length-1];
		
		Object bean = applicationContext.getBean(beanName);
		Class<? extends Object> class1 = bean.getClass();
		
		String methodName = method.getName();
		Class<?>[] parameterTypes = method.getParameterTypes();
		Object[] paramValues = new Object[parameterTypes.length]; 
		Class<?> paramClass;
		for (int i = 0; i < parameterTypes.length; i++) {
			paramClass = parameterTypes[i];
			if(paramClass.getName().equals("java.lang.Integer")) {
				paramValues[i] = 1;
			}else if(paramClass.getName().equals("int")) {
				paramValues[i] = 1;
			}else if(paramClass.getName().equals("java.lang.Long")) {
				paramValues[i] = 1;
			}else if(paramClass.getName().equals("java.lang.String")) {
				paramValues[i] = "admin";
			}else if(paramClass.getName().equals("java.lang.Object")) {
				paramValues[i] = null;
			}else {
				//custom object
				paramValues[i] = null;
				try {
					Class<?> clazz1 = Class.forName(paramClass.getName());
					Object obj = clazz1.newInstance();
					Field field1;
					Field[] declaredFields = clazz1.getDeclaredFields();
					for (Field field : declaredFields) {
						if(field.isAccessible()){
							field1 = clazz1.getDeclaredField(field.getName());
							field1.setAccessible(true);
							field1.set(obj, "1");
							System.out.println(field1.get(obj));
						}
					}
				} catch (Exception e) {
					e.printStackTrace();
				}
				
			}
		}
		
		try {
			log.info("testing " + methodName + " method......");
			Method method1 = class1.getDeclaredMethod(methodName, parameterTypes);
			
			Object obj = method1.invoke(bean, paramValues);
			
			System.out.println(obj instanceof List);
			if(obj instanceof Integer){
				System.out.println(obj);
			}else if(obj instanceof Long){
				System.out.println(obj);
			}else if(obj instanceof Float){
				System.out.println(obj);
			}else if(obj instanceof String){
				System.out.println(obj);
			}else if(obj instanceof Object){
				Assert.assertNotNull(obj);
				System.out.println(obj);
			}else {
				System.out.println(obj);
			}
			log.info("testing " + methodName + " method end.");
		
		} catch (SecurityException e) {
			e.printStackTrace();
		} catch (NoSuchMethodException e) {
			e.printStackTrace();
		} catch (IllegalArgumentException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		}
	}
	
	
}
