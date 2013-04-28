package com.utils;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class UtilsProperties {

	public static Properties loadPropertiesByCurrentThread(String path) throws FileNotFoundException, IOException {
		InputStream in = null;
		Properties p = new Properties();
		try {
			in = Thread.currentThread().getContextClassLoader().getResourceAsStream(path); 
			if(in == null) {
				throw new FileNotFoundException(path+"文件不存在");
			}
			p.load(in);
		} finally {
			if (in != null) {
				try {
					in.close();
				} catch (IOException e) {
//					log.error("加载配置文件后，关闭文件时错误！文件：" + path, e);
					e.printStackTrace();
				}
			}
		}
		return p;
	}
	
	public static Properties loadPropertiesByFile(String path) throws IOException{
		Properties p = new Properties();
//		InputStream in = new BufferedInputStream(new FileInputStream(new File(path)));
		BufferedReader in = new BufferedReader(new FileReader(path));
		p.load(in);
		
		return p;
	}
}
