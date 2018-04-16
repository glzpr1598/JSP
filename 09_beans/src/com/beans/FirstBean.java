package com.beans;

public class FirstBean {
	// Beans 규약 : beans의 멤버 변수는 private으로 만든다.
	private String name = "Hong Gil-dong";

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
}
