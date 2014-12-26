package com.minds.servo.exception;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.minds.servo.model.User;


@ControllerAdvice
public class ExceptionControllerAdvice {
	@ExceptionHandler(Exception.class)
	@RequestMapping(value = "/error")
    public ModelAndView exception(Exception e) {
 
		return new ModelAndView("login", "user", new User());
    }
}
