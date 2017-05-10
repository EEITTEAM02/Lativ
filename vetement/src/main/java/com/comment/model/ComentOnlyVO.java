package com.comment.model;

import java.sql.Timestamp;

public class ComentOnlyVO implements java.io.Serializable{
	
	private String comment;
	private Timestamp pubtime;
	private Integer customerId;
	private Integer productId;
	private Integer orderNo;
	private String productName;
	private String size;
	private String color;
	
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public Timestamp getPubtime() {
		return pubtime;
	}
	public void setPubtime(Timestamp pubtime) {
		this.pubtime = pubtime;
	}
	public Integer getCustomerId() {
		return customerId;
	}
	public void setCustomerId(Integer customerId) {
		this.customerId = customerId;
	}
	public Integer getProductId() {
		return productId;
	}
	public void setProductId(Integer productId) {
		this.productId = productId;
	}
	public Integer getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(Integer orderNo) {
		this.orderNo = orderNo;
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
	
	
}
