package com.minds.servo.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.minds.servo.dao.ProductDAO;
import com.minds.servo.iservice.ProductService;
import com.minds.servo.model.Product;

@Service
public class ProductServiceImpl implements ProductService{
	
	@Autowired private ProductDAO productDAO;
	
	public List<Product> getAllProducts(){
		
		List<Product> productList = productDAO.getAllProducts();
		return productList;
		
		
	}
	
	public void insertProduct(Product product){
	
		productDAO.insertProduct(product);
	}
	
	public Product getProductDetailById(String productId){
		
		Product product = productDAO.getProductDetails(productId);
		product.setOrgid_fk("test");
		product.setQuantity("0");
		return product;
	}

}
