package com.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class UtilsDate {
	/**
	 * 把指定格式如yyyy-MM-dd HH:mm:ss(示：2012-07-09 22:30:34)的字符串 转为date<br/>
	 * 说明：dateStr 和 dateFormat的格式必须一样
	 * @param dateStr 要转为Date的字符串
	 * @param dateFormat 要转化为的格式
	 * @throws ParseException 
	 */
	public static Date transFormStringToDate(String dateStr, String dateFormat) throws ParseException {
		SimpleDateFormat sdf = new SimpleDateFormat(dateFormat);
		
		return sdf.parse(dateStr);
	}
	
	/**
	 * 把Date 转为指定格式如yyyy-MM-dd HH:mm:ss(示：2012-07-09 22:30:34)的字符串 <br/>
	 * @param date 要转的Date
	 * @param dateFormat 要转化为的格式
	 * @throws ParseException 
	 */
	public static String transFormDateToString(Date date, String dateFormat){
		SimpleDateFormat sdf = new SimpleDateFormat(dateFormat);
		
		return sdf.format(date);
	}
	
	/**
	 * 两个日期相减得到相差天数
	 * @throws ParseException 
	 */
	public static Long getDateDifferDay() throws ParseException{
		String testDateStr = "2012-09-9 12:00";
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm");
		
		long timeStart=sdf.parse(testDateStr).getTime();
		long timeEnd = sdf.parse(sdf.format(new Date())).getTime();
	
		long dayCount= (timeEnd-timeStart)/(24*3600*1000);
		System.out.println(dayCount);
		
		return dayCount;
	}
}
