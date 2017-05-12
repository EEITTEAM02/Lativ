package com.cust.model;

import java.util.HashSet;
import java.util.Set;

import com.order.model.OrderVO;

public class CustomerVO implements java.io.Serializable{
	private Integer customerId; //流水號
	private String name;
	private Boolean gender;
	private String mail; //Account = email
	private String pswd;
	private String addr_customer;
	private String tel;
	private Set<OrderVO> orderVOs = new HashSet<OrderVO>();
	
	
	public Integer getCustomerId() {
		return customerId;
	}
	public void setCustomerId(Integer customerId) {
		this.customerId = customerId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Boolean getGender() {
		return gender;
	}
	public void setGender(Boolean gender) {
		this.gender = gender;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getPswd() {
		return pswd;
	}
	public void setPswd(String pswd) {
		this.pswd = pswd;
	}
	public String getAddr_customer() {
		return addr_customer;
	}
	public void setAddr_customer(String addr_customer) {
		this.addr_customer = addr_customer;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	
	public Set<OrderVO> getOrderVOs() {
		return orderVOs;
	}
	public void setOrderVOs(Set<OrderVO> orderVOs) {
		this.orderVOs = orderVOs;
	}
	
	
}
