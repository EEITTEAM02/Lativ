package com.order.model;

import java.sql.Date;
import java.util.HashSet;
import java.util.Set;

import com.customer.model.CustomerVO;
import com.orderItem.model.OrderItemVO;

public class OrderVO {
private Integer orderNo;
private Date dealDate;
private CustomerVO customerVO;
private String addr_send;
private Double price_total;
private String tel_send;
private String name_send;
private Set<OrderItemVO> orderItemVOs = new HashSet<OrderItemVO>();
private boolean status1;
public Integer getOrderNo() {
	return orderNo;
}
public void setOrderNo(Integer orderNo) {
	this.orderNo = orderNo;
}
public Date getDealDate() {
	return dealDate;
}
public void setDealDate(Date dealDate) {
	this.dealDate = dealDate;
}
public CustomerVO getCustomerVO() {
	return customerVO;
}
public void setCustomerVO(CustomerVO customerVO) {
	this.customerVO = customerVO;
}
public String getAddr_send() {
	return addr_send;
}
public void setAddr_send(String addr_send) {
	this.addr_send = addr_send;
}
public Double getPrice_total() {
	return price_total;
}
public void setPrice_total(Double price_total) {
	this.price_total = price_total;
}
public String getTel_send() {
	return tel_send;
}
public void setTel_send(String tel_send) {
	this.tel_send = tel_send;
}
public String getName_send() {
	return name_send;
}
public void setName_send(String name_send) {
	this.name_send = name_send;
}
public Set<OrderItemVO> getOrderItemVOs() {
	return orderItemVOs;
}
public void setOrderItemVOs(Set<OrderItemVO> orderItemVOs) {
	this.orderItemVOs = orderItemVOs;
}
public boolean isStatus1() {
	return status1;
}
public void setStatus1(boolean status1) {
	this.status1 = status1;
}



}
