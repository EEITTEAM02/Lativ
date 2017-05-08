package com.orderItem.model;

import java.util.List;

import com.order.model.OrderVO;
import com.production.model.ProductionVO;


public class OrderItemService {

	private OrderItemDAO_interface dao;

	public OrderItemService() {
		dao = new OrderItemDAO();
	}

	public OrderItemVO addOrderItem(Integer orderNo, Integer productId, Integer quantity_order,
			Double price_origin, Double price_discount,Double price_item
			) {

		OrderItemVO orderItemVO = new OrderItemVO();
		
		
		OrderVO orderVO = new OrderVO();
		orderVO.setOrderNo(orderNo);
		orderItemVO.setOrderVO(orderVO);
		
		ProductionVO productionVO = new ProductionVO();
		productionVO.setProductId(productId);
		orderItemVO.setProductionVO(productionVO);
		
		orderItemVO.setQuantity_order(quantity_order);
		
		orderItemVO.setPrice_origin(price_origin);
		orderItemVO.setPrice_discount(price_discount);
		orderItemVO.setPrice_item(price_item);

		
		dao.insert(orderItemVO);

		return orderItemVO;
	}

	public OrderItemVO updateOrderItem(Integer seqNo,Integer orderNo, Integer productId, Integer quantity_order,
			Double price_origin, Double price_discount,Double price_item) {

		OrderItemVO orderItemVO = new OrderItemVO();
		
        orderItemVO.setSeqNo(seqNo);
        OrderVO orderVO = new OrderVO();
		orderVO.setOrderNo(orderNo);
		orderItemVO.setOrderVO(orderVO);
		
		ProductionVO productionVO = new ProductionVO();
		productionVO.setProductId(productId);
		orderItemVO.setProductionVO(productionVO);
		
		orderItemVO.setQuantity_order(quantity_order);
		
		orderItemVO.setPrice_origin(price_origin);
		orderItemVO.setPrice_discount(price_discount);
		orderItemVO.setPrice_item(price_item);

		
		dao.update(orderItemVO);

		return dao.findByPrimaryKey(seqNo);
	}

	public void deleteOrderItem(Integer seqNo) {
		dao.delete(seqNo);
	}

	public OrderItemVO getOneOrderItem(Integer seqNo) {
		return dao.findByPrimaryKey(seqNo);
	}

	public List<OrderItemVO> getAll() {
		return dao.getAll();
	}
	
	public List<OrderItemVO> getOrderItemsByOrderNo(Integer orderNo) {
		return dao.getOrderItemsByOrderNo(orderNo);
	}
	
	
}
