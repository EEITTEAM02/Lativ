package com.shoppingcartback.util;

import com.order.model.OrderVO;
import com.production.model.ProductionVO;

public class CartService {
	
	private CartDAO dao = null;
	
	public CartService(){
		dao = new CartDAO();
	}
	
	public void insertByOrderNo(OrderVO orderVO){
		dao.insertByOrderNo(orderVO);
	}
	
	public void deleteAllByOrderNO(Integer orderNo){
		dao.deleteAllByOrderNO(orderNo);
	}
	
	public OrderVO findByOrderNo(Integer orderNo){
		return dao.findByOrderNo(orderNo);
	}
	
	public void orderItemVODelete(Integer orderNo,Integer productId) {
		dao.orderItemVODelete(orderNo, productId);
	}

	public void orderItemVOUpdate(Integer orderNo,Integer productId,Integer count,
			Double price_discount, Double price_item) {
		dao.orderItemVOUpdate(orderNo, productId, count, price_discount, price_item);
	}
	
	public ProductionVO getProductionForImage(String productName, String size, String color){
		return dao.getProductionForImage(productName, size, color);
	}
	
	public ProductionVO getProductionForSearch(Integer productId){
		return dao.getProductionForSearch(productId);
	}
	
	public byte[] getProductionForImg(Integer productId){
		return dao.getProductionForImg(productId);
	}
}
