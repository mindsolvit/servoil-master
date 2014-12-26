package com.minds.servo.test;

import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.minds.servo.iservice.ProductService;
import com.minds.servo.model.Product;

public class ProductTest {
	
	@Autowired private ProductService productService;
	
	@Test
	public void testProdcut(){
		
		List<Product> productList = productService.getAllProducts();
		System.out.println("list size = " + productList.size());
		
	}

}
