package com.minds.servo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectKey;
import org.springframework.stereotype.Component;

import com.minds.servo.model.Product;

@Component("productDAO")
public interface ProductDAO {
	
	public String INSERT_INTO_PRODUCT = "INSERT INTO PRODUCT (id,skucode,itemname,salesprice,productamount,quantity,orgid_fk)"
			+ " VALUES (#{id},#{skucode},#{itemname},#{salesprice},#{productamount},#{quantity},#{orgid_fk})";
	
	
	@Insert(INSERT_INTO_PRODUCT)
	@SelectKey(statement="select uuid() as id", keyProperty="id", before=true, resultType=String.class)
	@Options(useGeneratedKeys = true, keyProperty = "id", flushCache=true)
	public void insertProduct(Product product);
	
	
	@Select("SELECT * FROM PRODUCT ")
	@Results({
		@Result(property = "id", column = "id"),
		@Result(property = "skucode", column = "skucode"),
		@Result(property = "itemname", column = "itemname"),
		@Result(property = "salesprice", column = "salesprice"),
		@Result(property = "productamount", column = "productamount"),
		@Result(property = "quantity", column = "quantity"),
		@Result(property = "orgid_fk", column = "orgid_fk")
	})	
	public List<Product> getAllProducts();
	
	
	@Select("SELECT * FROM PRODUCT WHERE id = #{productId}")
	@Results({
		@Result(property = "id", column = "id"),
		@Result(property = "skucode", column = "skucode"),
		@Result(property = "itemname", column = "itemname"),
		@Result(property = "salesprice", column = "salesprice"),
		@Result(property = "productamount", column = "productamount"),
		@Result(property = "quantity", column = "quantity"),
		@Result(property = "orgid_fk", column = "orgid_fk")
	})	
	public Product getProductDetails(String productId);

}
