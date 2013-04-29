package com.test;

public class Test2 {
	
	public static void main(String[] args) {
		String str = "ppp/222/eee";
		String[] split = str.split("/");
		System.out.println(split[split.length-2]);
	}
}
