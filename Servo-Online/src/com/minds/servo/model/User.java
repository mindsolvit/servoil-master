package com.minds.servo.model;

import java.sql.Timestamp;
import org.springframework.stereotype.Component;

@Component
public class User {
	
	private String id;
	private String firstname;
	private String middlename;
	private String lastname;
	private String emailid;
	private String password;
	private String phone;
	private String mobile;
	private String address;
	private String usertype;
	private Timestamp createdtime;
	private Timestamp lastupdatedtime;
	private String orgid_fk;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getMiddlename() {
		return middlename;
	}
	public void setMiddlename(String middlename) {
		this.middlename = middlename;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getEmailid() {
		return emailid;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getUsertype() {
		return usertype;
	}
	public void setUsertype(String usertype) {
		this.usertype = usertype;
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
	public String getOrgid_fk() {
		return orgid_fk;
	}
	public void setOrgid_fk(String orgid_fk) {
		this.orgid_fk = orgid_fk;
	}
	
	
	
	
}
