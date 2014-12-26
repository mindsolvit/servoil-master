package com.minds.servo.controllers;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.minds.servo.helper.JsonView;
import com.minds.servo.iservice.ProductService;
import com.minds.servo.iservice.UserService;
import com.minds.servo.model.Product;

@Controller
public class ProductController {
	
	@Autowired private ProductService productService;
	@Autowired private UserService userService;	
	
	@RequestMapping(value = "/add-products", method = RequestMethod.GET)
	public ModelAndView addProductPage(Model model,HttpSession session){
		
		return new ModelAndView("addProduct", "product", new Product());		
	}
	
	
	@RequestMapping(value = "/save-products", method = RequestMethod.POST)
	public String insertProduct(Model model,HttpSession session,Product product) {		
		
		if(product != null){
			productService.insertProduct(product);
		}		
		return "redirect:/add-products";
	}
	
	@RequestMapping(value = "/get-all-products")
	public ModelAndView getAllProducts(Model model,HttpSession session){
		
		List<Product> productList = productService.getAllProducts();
		model.addAttribute("productList",productList);
		return new ModelAndView("index");    //  create View product page and iterate  productList
		
	}
	
	@RequestMapping(value = "/getProductDetails")
	public void getProductDetails(HttpServletResponse response,Model model,HttpSession session,String productId){
		
		Product product = productService.getProductDetailById(productId);
		/*List<Product> products = new ArrayList<Product>();
		products.add(product);*/
		JsonView.render(product, response);
		
		//JsonView.render(products, response);
		
	}
}
