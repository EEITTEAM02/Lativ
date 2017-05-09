package com.customer_service.model;

import java.util.List;

public class Customer_ServiceService  {

	private Customer_ServiceDAO_interface dao;
	
	public Customer_ServiceService() {
		dao = new Customer_ServiceDAO();
	}
	
	public Customer_ServiceVO addCustomer_Service(Integer customerId,String title_service, String content_service, 
			String reply_service,java.sql.Date receive_date) {

		Customer_ServiceVO customer_serviceVO = new Customer_ServiceVO();

		customer_serviceVO.setCustomerId(customerId);
		customer_serviceVO.setTitle_service(title_service);
		customer_serviceVO.setContent_service(content_service);
		customer_serviceVO.setReply_service(reply_service);
		customer_serviceVO.setReceive_date(receive_date);


		dao.insert(customer_serviceVO);
		return customer_serviceVO;
	}
	
	public void addCustomer_Service(Customer_ServiceVO customer_serviceVO) {
		dao.insert(customer_serviceVO);
	}
	
	public Customer_ServiceVO updateCustomer_Service(Integer no_service, Integer customerId,String title_service,
			String content_service,String reply_service,java.sql.Date receive_date) {

		Customer_ServiceVO customer_serviceVO = new Customer_ServiceVO();

		customer_serviceVO.setNo_service(no_service);
		customer_serviceVO.setCustomerId(customerId);
		customer_serviceVO.setTitle_service(title_service);
		customer_serviceVO.setContent_service(content_service);
		customer_serviceVO.setReply_service(reply_service);
		customer_serviceVO.setReceive_date(receive_date);
		dao.update(customer_serviceVO);

		return dao.findByPrimaryKey(no_service);
	}
	
	public void updateCustomer_Service(Customer_ServiceVO customer_serviceVO) {
		dao.update(customer_serviceVO);
	}
	
	public List<Customer_ServiceVO> getOneCustomerId(Integer customerId) {
		return dao.findByCustomerId(customerId);
	}

	public List<Customer_ServiceVO> getAll() {
		return dao.getAll();
	}
	public void deleteCustomer_Service(Integer no_service) {
		
		dao.delete(no_service);
	}
}
