package com.utils;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

import org.json.JSONException;
import org.json.JSONObject;

public class JsonObjectUtils {
	
	public static String getJsonStringFromBean(Object bean){
		JSONObject json = new JSONObject();
		Class<?> bc = bean.getClass();
		if (bc != null) {
			Field[] fields = bc.getDeclaredFields();
			for (Field f : fields) {
				String fieldName = f.getName();
				Method getterMethod;
				try {
					getterMethod = bc.getDeclaredMethod(
							getGetterMethodName(fieldName), new Class[0]);
					Object l = getterMethod.invoke(bean, new Object[0]);
					if (l != null) {
						Class<?> rc = getterMethod.getReturnType();
						if (rc.isPrimitive()) {
							json.put(fieldName, l);
						} else
							json.put(fieldName, rc.cast(l));
					} else {
						json.put(fieldName, "");
					}
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
				} catch (JSONException e) {
					e.printStackTrace();
				}
			}
			bc = bc.getSuperclass();
		}
		if (json.length() == 0) {
			return null;
		}
		return json.toString();
	}

	// 根据字段名来获取get方法
	private static String getGetterMethodName(String fieldName) {
		StringBuffer sb = new StringBuffer();
		sb.append("get");
		sb.append(Character.toUpperCase(fieldName.charAt(0)));
		sb.append(fieldName.substring(1));
		return sb.toString();
	}

	// 根据字段名来获取set方法
	private static String getSetterMethodName(String fieldName) {
		StringBuffer sb = new StringBuffer();
		sb.append("set");
		sb.append(Character.toUpperCase(fieldName.charAt(0)));
		sb.append(fieldName.substring(1));
		return sb.toString();
	}

}
