package com.minds.servo.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.minds.servo.dao.UserDAO;
import com.minds.servo.model.User;
import com.minds.servo.model.UserType;
import com.minds.servo.iservice.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Autowired	private UserDAO userDAO;

	
	public void insertUser(User user) {
		userDAO.insertUser(user);
	}

	public User getUserByID(String id) {
		//userDAO.getUserById(id);
		return null;
	}

	public User getUserByName(String userName) {
		//userDAO.getUserByName(userName);
		return null;
	}

	public User getUserByEmailId(String emailId) {
		User user = userDAO.getUserByemailId(emailId);
		return user;
	}

	public void deleteUser(String ID) {
		// TODO Auto-generated method stub
		
	}
	
	
	public UserType getUserTypeByRole(String role){
		
		UserType userType = userDAO.getUserTypeByRole(role);
		return userType;
	}

}
