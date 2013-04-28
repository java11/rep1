package com.taobao;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

public class Test3 {
	
	static long count = 0;
	
	public static void main(String[] args) {
		Test3 test3 = new Test3();
		// 要替换掉的目录前缀
//		String replaceStr = "C:\\Users\\Administrator\\Desktop\\CI\\6.12POC\\NBSL_UpdateMay9_C\\";
//		String replaceStr = "C:\\Users\\Administrator\\Desktop\\CI\\集成MB\\";
		 String replaceStr = "E:\\workspace-sltc\\sltc-ci\\src\\main\\java";
		 File file = new
		 File("E:\\workspace-sltc\\sltc-ci\\src\\main\\java");
//		File file = new File(
//				"C:\\Users\\Administrator\\Desktop\\CI\\6.12POC\\NBSL_UpdateMay9_C\\NBSL_UpdateMay9_C\\");

		test3.listDir(file, replaceStr);

		System.out.println("总行数" + count);
	}

	public void listDir(File file, String replaceStr) {
		File[] listFiles = file.listFiles();
		for (int i = 0; i < listFiles.length; i++) {
			if (listFiles[i].isDirectory()) {
				listDir(listFiles[i], replaceStr);
			} else {
				System.out.println(listFiles[i].toString().replace(replaceStr,
						""));
				try {
					count = count + countFile(listFiles[i]);
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
	}

	public static long countFile(File path) throws IOException{
		BufferedReader fileReader = null;
		long count = 0;
		try {
			fileReader = new BufferedReader(new FileReader(path));
			while (true) {
				String line = fileReader.readLine();
				if (line == null)
					break;
				count++;
			}
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}finally{
			fileReader.close();
		}
	
		return count;
	}
}
