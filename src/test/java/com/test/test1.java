package com.test;

import com.entity.Roles;

public class test1 {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		
		String str = "1_ 2, 33, 3333";
		String[] split = str.split("\\s*[,]\\s*");
		for (String string : split) {
			System.out.println(string);
		}
		
	}

}
