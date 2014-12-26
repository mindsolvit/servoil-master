package com.minds.servo.iservice;

import org.springframework.stereotype.Component;

import com.minds.servo.model.Product;

@Component
public interface ProductService {

	public void insertProduct(Product product);
	public java.util.List<Product> getAllProducts();
	public Product getProductDetailById(String productId);
}
