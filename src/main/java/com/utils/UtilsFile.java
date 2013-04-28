package com.utils;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.text.SimpleDateFormat;
import java.util.Date;

public class UtilsFile {
	private static SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH-mm-ss SSS");;
	/**
	 * 根据文件路径获得文件
	 * @param path 文件路径
	 * @param isAutoCreate  1, ture，获得不到文件后自动创建. 2,false，获得不到文件后不自动创建.
	 * @return 此文件
	 * @throws IOException
	 */
	public static File getFile(String path, boolean isAutoCreate) throws IOException{
		File file = new File(path);
		if(!file.exists()){
			file.createNewFile();
		}
		
		return file;
	}
	
	public static File generateLogFile(String username) throws IOException{
		String filename = Constants.USER_LOG + username + "_" + sdf.format(new Date()) + ".html";
		File file = new File(Constants.APP_LOG_PATH + filename);
		if(!file.exists()){
			file.createNewFile();
		}
		
		return file;
	}
	
	public static synchronized void LogToFile(File file, String msg, boolean append){
		Writer writer = null;
		try {
			writer = new OutputStreamWriter(new FileOutputStream (file, append),"utf-8");    
			writer.write(msg + "<br/>");                                                  
		} catch (IOException e) {
			UtilsLog.LOG.error("写入文件时异常！" +file);
		}finally{
			if(writer != null)
				try {
					writer.close();  
				} catch (IOException e) {
					e.printStackTrace();
				}
		}
	}
//	FileInputStream fis = FileInputStream(File file);指定文件
//	fis.skip(long n);指定位置
//	byte[] bs = new byte[int length]; 指定长度
//	fis.read(bs); 得到内容
	public static StringBuffer readFileByLine(String filename) throws IOException{
		StringBuffer sb = new StringBuffer();
		BufferedReader br = null;
		br = new BufferedReader(new FileReader(filename));
		String line ;
		while((line = br.readLine()) != null){
			sb.append(line+"<br/>");
		}
		
		br.close();
		
		return sb;
	}
	
	public static StringBuffer readFile(String filename) throws IOException {
		StringBuffer sb = new StringBuffer();
		FileInputStream fin = new FileInputStream(new File(filename));
		byte[] b = new byte[2024];
		int read = 0;
		while((read = fin.read(b)) != -1){
			sb.append(new String(b, 0, read, "utf-8"));
		}
		
		fin.close();

		return sb;
	}
	
	public static void LogToFile2(File file, String msg, boolean append){
		FileWriter writer = null;
		try {
			writer = new FileWriter(file, append);                     
			writer.write(msg + "\r\n");                                                  
			writer.close();                                                         
		} catch (IOException e) {
			UtilsLog.LOG.error("写入文件时异常！" +file + ". case: " +e.getMessage());
		}finally{
			if(writer != null)
				try {
					writer.close();  
				} catch (IOException e) {
					e.printStackTrace();
				}
		}
	}
	
	
}
