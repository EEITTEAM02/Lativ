package com.customer_service.model;

import java.util.List;

public interface Customer_ServiceDAO_interface {
	public void insert(Customer_ServiceVO Customer_ServiceVO);
	public void update(Customer_ServiceVO Customer_ServiceVO);
	public Customer_ServiceVO findByPrimaryKey(Integer no_service);
	public List<Customer_ServiceVO> findByCustomerId(Integer customerId);
	public List<Customer_ServiceVO> getAll();
	public void delete(Integer no_service);
}
