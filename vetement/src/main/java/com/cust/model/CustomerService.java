package com.cust.model;

import java.util.List;
import java.util.Set;

import com.order.model.OrderVO;


public class CustomerService {

	private ICustomerDAO dao;

	public CustomerService() {
		dao = new CustomerDAO();
	}

	public CustomerVO getOneCustomer(Integer customerId) {
		return dao.findByPrimaryKey(customerId);
	}	
	
	public CustomerVO checkAccountExist(String mail){
		return dao.findbyAccount(mail);
	}
	
	public CustomerVO checkAcctAndPswd(String mail, String pswd){
		return dao.findbyAccountAndPassword(mail, pswd);
	}
	
	public CustomerVO updatePswd(Integer customerId, String pswd){
		
		CustomerVO customerVO = new CustomerVO();
		
		customerVO = dao.findByPrimaryKey(customerId);
		customerVO.setPswd(pswd);
		
		dao.update(customerVO);
		
		return customerVO;
		
	}	
	
	public CustomerVO updateCustomer(Integer customerId, String name, Boolean gender, String mail, String addr_customer,String tel) {		
		
		CustomerVO customerVO = new CustomerVO();
		customerVO = dao.findByPrimaryKey(customerId);

		customerVO.setName(name);
		customerVO.setGender(gender);
		customerVO.setMail(mail);
		customerVO.setAddr_customer(addr_customer);
		customerVO.setTel(tel);
		
		dao.update(customerVO);

		return dao.findByPrimaryKey(customerId);	//update成功以後，再去找一次，就會找到更新過的資料	
		
	}
	
	public CustomerVO addCustomer(String name, Boolean gender, String mail, String pswd, String addr_customer, String tel) {

		CustomerVO customerVO = new CustomerVO();

		customerVO.setName(name);
		customerVO.setGender(gender);
		customerVO.setMail(mail);
		customerVO.setPswd(pswd);
		customerVO.setAddr_customer(addr_customer);
		customerVO.setTel(tel);
		
		dao.insert(customerVO);

		return customerVO;
	}
	
	 public Set<OrderVO> getOrderVOsByCustomerId(Integer customerId) {
			return dao.getOrderVOsByCustomerId(customerId);
		}

		public List<CustomerVO> getAll() {
			return dao.getAll();
		}
}
