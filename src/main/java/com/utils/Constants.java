package com.utils;

import java.util.Properties;

public class Constants {
	//正常重定向
	public static final String SUCCESS_REDIRECT = "redirect";
	//重定向到commonAction后再返回
	public static final String SUCCESS_REDIRECT1 = "redirect1";
	public static final String SPLIT_SIGN = "###";
	public static final String SPLIT_SIGN_CELL = "%%%";
	public static final int TABLE_HEAD_ROW = 2;
	public static final int EXCEL_TRUE_ROW = 2;
	public static final int EXCEL_SKU_TRUE_ROW = 0;
	public static final int EXCEL_SKU_PINHAO_COLUMN = 0;
	public static final String ITEM_BRAND_KEY = "20000";
	public static final String ITEM_BRAND_VALUE = "103560838";
	public static final String APP_CONFIGFILE_PATH = "c:/appConfigFile/";
	public static final String ITEMCATS_PATH = "itemcats/30/";
	public static final String APP_LOG_PATH = "c:/applogs/";
	public static String USER_LOG = "user_log_";
	public static String USER_POWER_SOURCE_DATA= "userpowerdata";
	public static String USER_POWER_TAG= "userpowertag";
	public static String USER_POWER_URL= "userpowerurl";
	public static String USER_BASE_POWER= "privilegeManager_getPriOfUser";
	public static String CURRENT_USER= "curren_user";
	//是否启用鉴权
	public static boolean ENABLE_AUTHENTICATION = true;
	
	
	/** 哪一行开始是正式数据  */
	public static int ITMES_TRUE_DATA;
	/** 第几行为表格的表头  */
	public static int ITMES_HEAD_ROW;
	/** 哪一列为商品的类别  */
	public static int ITMES_TYPE_COLUMN = 1;
	public static Properties EXCEL_CUSTOM_DEFAULT;
	
	/**
	 * yes or no
	 */
	public static final String isOpenSmartModel = "yes";  
	
	public static Properties FIELD_MAPPING_CUSTOM;
	public static Properties FIELD_MAPPING_TAOBAO; 
	public static Properties FIELD_NOT_MAPPING; 
	public static Properties FIELD_IGNORED; 
	static{
	//	ConfigManager.initConfig();
	}
}
