package com.customer.model;

import java.util.List;
import java.util.Set;

import com.order.model.OrderVO;


public class CustomerService {

   private CustomerDAO_interface dao;

	public CustomerService() {
		dao = new CustomerDAO();
	}

    public CustomerVO addCustomer(String name, String pswd, String mail,
			String addr_customer, String tel,boolean gender) {

		CustomerVO customerVO = new CustomerVO();

		customerVO.setName(name);
		customerVO.setPswd(pswd);
		customerVO.setMail(mail);
		customerVO.setAddr_customer(addr_customer);
		customerVO.setTel(tel);
		customerVO.setGender(gender);
		
		dao.insert(customerVO);

		return customerVO;
	}

	 public CustomerVO updateCustomer(Integer customerId, String name, String pswd, String mail,
				String addr_customer, String tel,boolean gender) {

		CustomerVO customerVO = new CustomerVO();

		customerVO.setCustomerId(customerId);;
		customerVO.setName(name);
		customerVO.setPswd(pswd);
		customerVO.setMail(mail);
		customerVO.setAddr_customer(addr_customer);
		customerVO.setTel(tel);
		customerVO.setGender(gender);
		
		dao.update(customerVO);

		return dao.findByPrimaryKey(customerId);
	}

	 public void deleteCustomer(Integer customerId) {
		dao.delete(customerId);
	}

	 public CustomerVO getOneCustomer(Integer customerId) {
		return dao.findByPrimaryKey(customerId);
	}
	
	 public CustomerVO getCustomerByMail(String mail) {
		return  dao.findByMail(mail);
	}

	 public Set<OrderVO> getOrderVOsByCustomerId(Integer customerId) {
		return dao.getOrderVOsByCustomerId(customerId);
	}
	
	 public List<CustomerVO> getAll() {
		return dao.getAll();
	}
	
	 public boolean validate(String mail, String pswd){
		CustomerVO customer = getCustomerByMail(mail);
		if (customer==null){
			return false;
		}
		else if (pswd.equals(customer.getPswd()))
		   return true;
		else
			return false;
		
	}
	
	public static void main(String[] args){
		CustomerService mSrv = new CustomerService();
		 CustomerVO a = mSrv.getCustomerByMail("a123@gmail.com");
	       System.out.println(a);
	}
}
