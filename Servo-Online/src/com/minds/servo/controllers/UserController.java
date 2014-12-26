package com.minds.servo.controllers;

import java.sql.Timestamp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.minds.servo.iservice.UserService;
import com.minds.servo.model.User;
import com.minds.servo.model.UserType;

@Controller
public class UserController {
	@Autowired private UserService userService;
	
	@RequestMapping(value = "/create-account")
	public ModelAndView createAccountView(){
		
		return new ModelAndView("createaccount");    //  create View product page and iterate  productList
		
	}
	
	@RequestMapping(value = "/add-account")
	public ModelAndView addUser(ModelAndView model, User user){
				
		java.util.Date date= new java.util.Date();
		UserType usertype = userService.getUserTypeByRole("customer");		
		user.setUsertype(usertype.getId());
		user.setCreatedtime(new Timestamp(date.getTime()));
		user.setLastupdatedtime(new Timestamp(date.getTime()));		
		userService.insertUser(user);		
		return new ModelAndView("login");
		
	}	
}
