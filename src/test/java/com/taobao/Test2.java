package com.taobao;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public class Test2 {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// Map<String, String> map = new HashMap<String, String>();
		// map.put("1k", "1v");
		// map.put("2k", "2v");
		// map.put("3k", "3v");
		//
		// String color = "";
		// Set<String> keySet = map.keySet();
		// for (String key : keySet) {
		// color = map.get(key);
		// map.remove(key);
		// break;
		// }
		//
		// System.out.println(color);
		// System.out.println(map);

		// ArrayList list = new ArrayList();
		// list.add("dd");
		// list.add("sss");
		// boolean contains = list.contains("ss");
		//
		// System.out.println(contains);

		// for (int i = 0; i < 10; i++) {
		// if(i==3) break;
		// System.out.println(i);
		// }
		File file = new File("c:\\testss.xls");
		System.out.println(file.getPath());
	}
}
