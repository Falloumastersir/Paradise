package com.paradise.hotel.entity;

import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

public class POJOUser {
	
	@NotEmpty
	@Size(min=4, max=20)
	private String userName;
		
	@NotEmpty
	@Size(min=4, max=8)
	private String password;
	
	@NotEmpty
	@Size(min=4, max=20)
	private String name;
	
	
	
	public String getPassword() {
		return password;
	}

	public String getUserName() {
		return userName;
	}
	
	public String getName(){
		return name;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}	
	
	public void setName(String nm){
		this.name = nm;
	}
}
