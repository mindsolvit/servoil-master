package com.minds.servo.model;

import org.springframework.stereotype.Component;

@Component
public class UserType {
	
	private String id;
	private String role;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}


}
