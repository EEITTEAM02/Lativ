package com.order.model;

import java.sql.Date;
import java.util.List;
import java.util.Set;

import com.cust.model.CustomerVO;
import com.orderItem.model.OrderItemVO;



public class OrderService {

	private OrderDAO_interface dao;

	public OrderService() {
		dao = new OrderDAO();
	}

	public OrderVO addOrder(Date dealDate,Integer customerId , String addr_send,
			Double price_total,boolean status1,String name_send,String tel_send) {

		OrderVO orderVO = new OrderVO();
		
		CustomerVO customerVO = new CustomerVO();
		customerVO.setCustomerId(customerId);
		orderVO.setCustomerVO(customerVO);

		orderVO.setDealDate(dealDate);
		orderVO.setAddr_send(addr_send);
		orderVO.setPrice_total(price_total);
		orderVO.setStatus1(status1);
		orderVO.setName_send(name_send);
		orderVO.setTel_send(tel_send);
		
		dao.insert(orderVO);

		return orderVO;
	}

	public OrderVO updateOrder(Integer orderNo, Date dealDate,Integer customerId , String addr_send,
			Double price_total,boolean status1,String name_send,String tel_send) {

        OrderVO orderVO = new OrderVO();
		
        CustomerVO customerVO = new CustomerVO();
		customerVO.setCustomerId(customerId);
		orderVO.setOrderNo(orderNo);
		orderVO.setCustomerVO(customerVO);

		orderVO.setDealDate(dealDate);
		orderVO.setAddr_send(addr_send);
		orderVO.setPrice_total(price_total);
		orderVO.setStatus1(status1);
		orderVO.setName_send(name_send);
		orderVO.setTel_send(tel_send);
		
		dao.update(orderVO);

		return dao.findByPrimaryKey(orderNo);
	}

	public void deleteOrder(Integer orderNo) {
		dao.delete(orderNo);
	}

	public OrderVO getOneOrder(Integer OrderNo) {
		return dao.findByPrimaryKey(OrderNo);
	}

	public List<OrderVO> getAll() {
		return dao.getAll();
	}
	
	public List<OrderVO> getOrdersByCustomerId(Integer customerId){
		return dao.getOrdersByCustomerId(customerId);
	}
	
	public Set<OrderItemVO> getOrderItemsByOrderNo(Integer orderNo) {
		return dao.getOrderItemsByOrderNo(orderNo);
	}
	
	public List<OrderItemVO> getShoppingCartOrderItemsByOno(Integer orderNo) {
		return dao.getShoppingCartOrderItemsByOrderNo(orderNo);
	}
}
