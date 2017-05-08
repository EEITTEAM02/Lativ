package com.customer.model;


import java.util.*;

import com.order.model.OrderVO;

public interface CustomerDAO_interface {
	
        public void insert(CustomerVO memberVO);
        public void update(CustomerVO memberVO);
        public void delete(Integer customerId);
        public CustomerVO findByPrimaryKey(Integer customerId);
        public CustomerVO findByMail(String mail);
        public List<CustomerVO> getAll();
        public Set<OrderVO> getOrderVOsByCustomerId(Integer customerId);
}


