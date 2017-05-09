package com.customer_service.model;

import java.sql.Date;

public class Customer_ServiceVO implements java.io.Serializable {
	private Integer no_service;
	private Integer customerId;
	private String title_service;
	private String content_service;
	private String reply_service;
	private Date receive_date;
	
	public Integer getNo_service() {
		return no_service;
	}
	public void setNo_service(Integer no_service) {
		this.no_service = no_service;
	}
	public Integer getCustomerId() {
		return customerId;
	}
	public void setCustomerId(Integer customerId) {
		this.customerId = customerId;
	}
	public String getTitle_service() {
		return title_service;
	}
	public void setTitle_service(String title_service) {
		this.title_service = title_service;
	}
	public String getContent_service() {
		return content_service;
	}
	public void setContent_service(String content_service) {
		this.content_service = content_service;
	}
	public String getReply_service() {
		return reply_service;
	}
	public void setReply_service(String reply_service) {
		this.reply_service = reply_service;
	}
	public Date getReceive_date() {
		return receive_date;
	}
	public void setReceive_date(Date receive_date) {
		this.receive_date = receive_date;
	}
 

}
