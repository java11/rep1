package com.utils;

public class StringUtils {

	/**
	 * 把字符串按指定分隔符分割为数组
	 * @param sourceStr 源字符串
	 * @param splitStr 分隔符
	 * @return
	 */
	public static String[] stringToArray(String sourceStr, String splitStr) {
		if(org.apache.commons.lang.StringUtils.isEmpty(sourceStr)){
			return null;
		}
		
		String[] array = sourceStr.split(splitStr);

		if (array.length == 1 && array[0] == ""){
			return null;
		}

		return array;
	}
}
