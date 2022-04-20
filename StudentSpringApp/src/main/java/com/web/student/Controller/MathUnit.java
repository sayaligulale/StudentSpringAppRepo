package com.web.student.Controller;

public class MathUnit {
	
	public int add(int a,int b) {
		return a+b;
	}
	
	public int subtract(int a,int b) {
		return a-b;
	}
	
	public int multiply(int a,int b) {
		return a*b;
	}
	
	public int divide(int a,int b) {
		return a/b;
	}
	
	public double computeCircle(double radius) {
		return Math.PI * radius * radius;	
	}

}
