package com.minds.servo.model;

import java.sql.Timestamp;

public class Organization {

	private String id;
	private String name;
	private String address;
	private String phone;
	private String location;
	private Timestamp createdtime;
	private Timestamp lastupdatedtime;
	
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public Timestamp getCreatedtime() {
		return createdtime;
	}
	public void setCreatedtime(Timestamp createdtime) {
		this.createdtime = createdtime;
	}
	public Timestamp getLastupdatedtime() {
		return lastupdatedtime;
	}
	public void setLastupdatedtime(Timestamp lastupdatedtime) {
		this.lastupdatedtime = lastupdatedtime;
	}
	
	
}
