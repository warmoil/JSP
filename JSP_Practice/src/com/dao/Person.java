package com.dao;

public class Person {
	private int id = 1234567;
	private String name = "JOY";
	
	
	public Person()	{
		
	}
	public int getId(){
		return id;
	}
	public void setId(int id){
		this.id = id;
	}
		
	public String getName(){
		return name;
	}
	public void  setName(String name) {
		this.name = name;
	}
}
