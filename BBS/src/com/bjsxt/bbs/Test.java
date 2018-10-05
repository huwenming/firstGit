package com.bjsxt.bbs;

public class Test {
	public static void main(String[] args) {
		
		
	}
}


class MyException extends Exception {
	MyException() {
	}
}

class A {
	public int format(String str) throws MyException {
		int i = Integer.valueOf(str);
		return i;
	}
}
