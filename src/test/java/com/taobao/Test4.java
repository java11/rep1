package com.taobao;

public class Test4 {

	public static void main(String[] args) {
		star(4);
	}
	public static void star(int n){
		System.out.println("*" + n);
		if(n>1){
			star(n-1);
		}
		System.out.println("!" + n);
	}

}
