package com.cust.model;

import java.util.*;


import com.order.model.OrderVO;

//DAO介面程式
public interface ICustomerDAO { //DAO介面
	public void update(CustomerVO customerVO);
	public CustomerVO findByPrimaryKey(Integer customerId);
	public void insert(CustomerVO customerVO);
	
	public CustomerVO findbyAccountAndPassword(String mail, String pswd);
	public CustomerVO findbyAccount(String mail);
	public Set<OrderVO> getOrderVOsByCustomerId(Integer customerId);
	public List<CustomerVO> getAll();
    
}
