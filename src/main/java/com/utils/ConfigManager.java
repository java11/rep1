package com.utils;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

/**
 * 配置文件加载类
 *
 */
public class ConfigManager {
	private static String fieldMappingCustom = "fieldMapping_custom.properties";
	private static String fieldMappingTaobao = "fieldMapping_taobao.properties";
	private static String fieldNotMappingTaobao = "fieldNotMapping.properties";
	private static String excelCustomDefault = "excel_custom_default.properties";
	private static String fieldIgnored = "ignored.properties";

	private ConfigManager() {
	}

	/**
	 *  初始化配置文件
	 * @throws UnsupportedEncodingException 
	 */
	public static synchronized void initConfig(){
		UtilsLog.LOG.info("正在加载配置文件......");

		try {
			if(Constants.EXCEL_CUSTOM_DEFAULT != null) Constants.EXCEL_CUSTOM_DEFAULT.clear();
			Constants.EXCEL_CUSTOM_DEFAULT = Utils.loadPropertiesByFile(Constants.APP_CONFIGFILE_PATH + excelCustomDefault);
			
			if(Constants.FIELD_MAPPING_CUSTOM != null) Constants.FIELD_MAPPING_CUSTOM.clear();
			Constants.FIELD_MAPPING_CUSTOM = Utils.loadPropertiesByFile(Constants.APP_CONFIGFILE_PATH + fieldMappingCustom);
			
			if(Constants.FIELD_MAPPING_TAOBAO != null) Constants.FIELD_MAPPING_TAOBAO.clear();
			Constants.FIELD_MAPPING_TAOBAO = Utils.loadPropertiesByFile(Constants.APP_CONFIGFILE_PATH + fieldMappingTaobao);
		
			if(Constants.FIELD_NOT_MAPPING != null) Constants.FIELD_NOT_MAPPING.clear();
			Constants.FIELD_NOT_MAPPING = Utils.loadPropertiesByFile(Constants.APP_CONFIGFILE_PATH + fieldNotMappingTaobao);
			
			if(Constants.FIELD_IGNORED != null) Constants.FIELD_IGNORED.clear();
			Constants.FIELD_IGNORED = Utils.loadPropertiesByFile(Constants.APP_CONFIGFILE_PATH + fieldIgnored);
		
		} catch (IOException e) {
			UtilsLog.LOG.error("加载配置文件异常！请检查文件是否存在！",e);
		}
		
		UtilsLog.LOG.info("加载配置文件完毕！");
	}

}