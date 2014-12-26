package com.minds.servo.model;

import org.springframework.stereotype.Component;

@Component
public class Product {

	private String id;
	private String skucode;
	private String itemname;
	private String salesprice;
	private String productamount;
	private String quantity;
	private String orgid_fk;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getSkucode() {
		return skucode;
	}
	public void setSkucode(String skucode) {
		this.skucode = skucode;
	}
	public String getItemname() {
		return itemname;
	}
	public void setItemname(String itemname) {
		this.itemname = itemname;
	}
	public String getSalesprice() {
		return salesprice;
	}
	public void setSalesprice(String salesprice) {
		this.salesprice = salesprice;
	}
	public String getProductamount() {
		return productamount;
	}
	public void setProductamount(String productamount) {
		this.productamount = productamount;
	}
	public String getQuantity() {
		return quantity;
	}
	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}
	public String getOrgid_fk() {
		return orgid_fk;
	}
	public void setOrgid_fk(String orgid_fk) {
		this.orgid_fk = orgid_fk;
	}
	
	
	
	
}
