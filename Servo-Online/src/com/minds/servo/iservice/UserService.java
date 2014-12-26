package com.minds.servo.iservice;

import org.apache.taglibs.standard.lang.jstl.test.beans.PublicBean1;
import org.springframework.stereotype.Component;

import com.minds.servo.model.User;
import com.minds.servo.model.UserType;

@Component
public interface UserService {
	
	public void insertUser(User user);
	public User getUserByID(String ID);
	public User getUserByName(String userName);
	public User getUserByEmailId(String emailID);
	public void deleteUser(String ID);
	
	public UserType getUserTypeByRole(String role);
	
}
