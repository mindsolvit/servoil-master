package com.minds.servo.controllers;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.minds.servo.iservice.ProductService;
import com.minds.servo.iservice.UserService;
import com.minds.servo.model.Product;
import com.minds.servo.model.User;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@Autowired private UserService userService;	
	@Autowired private ProductService productService;
		
	@RequestMapping(value = "/home")
	public ModelAndView getIndex(){		
		
		return new ModelAndView("login");    //  create View product page and iterate  productList
		
	}
	
	@RequestMapping(value = "/servo-details")
	public String servoDetails(Model model,HttpSession session,User user){
				
		String email = user.getEmailid();
		String password = user.getPassword();		
		User userDBUser = userService.getUserByEmailId(email);
		
		if(userDBUser!=null)			
		{	
			if(userDBUser.getPassword().equals(password)){
				return "redirect:/get-all-products";
			}
			else
				model.addAttribute("message", "Invalid Password");
				return "redirect:/home";
		}
		else 
			return "redirect:/home";		
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		return "redirect:/home";
	}
	
	
	@RequestMapping(value = "/account-details")
	public ModelAndView accountDetails(@ModelAttribute("product") Product product,Model model,HttpSession session,User user,BindingResult bindingResult){
				
		String email = user.getEmailid();
		String password = user.getPassword();		
		User userDBUser = userService.getUserByEmailId(email);
		
		if(userDBUser!=null)			
		{	
			if(userDBUser.getPassword().equals(password)){
				
				// get products item name from DB
				List<Product> products = productService.getAllProducts();
				
				model.addAttribute("productList", products);
			//	return new ModelAndView("accountdetails");
				System.out.println("In account details controller");
				return new ModelAndView("accountdetails");
			}
			else
				model.addAttribute("message", "Invalid Password");
			return new ModelAndView("login");
		}
		else 
			return new ModelAndView("login");		
	}
	
}
