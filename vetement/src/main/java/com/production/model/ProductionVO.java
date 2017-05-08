package com.production.model;

import java.io.Serializable;

public class ProductionVO implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer productId;
	private String productName;
	private String size;
	private String color;
	private Double price;
	private Integer packageNo;
	private Integer quantity_in_stock;
	private boolean for_sale;
	private byte[] icon;
	private byte[] picture_main;
	private byte[] picture_color;
	private byte[] picture_model1;
	private byte[] picture_model2;
	private byte[] picture_model3;
	private byte[] picture_model4;
	private String describe;
	private Integer categoryId;
	public Integer getProductId() {
		return productId;
	}
	public void setProductId(Integer productId) {
		this.productId = productId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public Integer getPackageNo() {
		return packageNo;
	}
	public void setPackageNo(Integer packageNo) {
		this.packageNo = packageNo;
	}
	public Integer getQuantity_in_stock() {
		return quantity_in_stock;
	}
	public void setQuantity_in_stock(Integer quantity_in_stock) {
		this.quantity_in_stock = quantity_in_stock;
	}
	public boolean isFor_sale() {
		return for_sale;
	}
	public void setFor_sale(boolean for_sale) {
		this.for_sale = for_sale;
	}
	public byte[] getIcon() {
		return icon;
	}
	public void setIcon(byte[] icon) {
		this.icon = icon;
	}
	public byte[] getPicture_main() {
		return picture_main;
	}
	public void setPicture_main(byte[] picture_main) {
		this.picture_main = picture_main;
	}
	public byte[] getPicture_color() {
		return picture_color;
	}
	public void setPicture_color(byte[] picture_color) {
		this.picture_color = picture_color;
	}
	public byte[] getPicture_model1() {
		return picture_model1;
	}
	public void setPicture_model1(byte[] picture_model1) {
		this.picture_model1 = picture_model1;
	}
	public byte[] getPicture_model2() {
		return picture_model2;
	}
	public void setPicture_model2(byte[] picture_model2) {
		this.picture_model2 = picture_model2;
	}
	public byte[] getPicture_model3() {
		return picture_model3;
	}
	public void setPicture_model3(byte[] picture_model3) {
		this.picture_model3 = picture_model3;
	}
	public byte[] getPicture_model4() {
		return picture_model4;
	}
	public void setPicture_model4(byte[] picture_model4) {
		this.picture_model4 = picture_model4;
	}
	public String getDescribe() {
		return describe;
	}
	public void setDescribe(String describe) {
		this.describe = describe;
	}
	public Integer getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(Integer categoryId) {
		this.categoryId = categoryId;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
}
