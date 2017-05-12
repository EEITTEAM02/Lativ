package com.orderItem.model;

import com.order.model.OrderVO;
import com.production.model.ProductionVO;

public class OrderItemVO {
	private Integer seqNo;
	private OrderVO orderVO;
	private ProductionVO productionVO;
    private Integer quantity_order;
    private Double price_discount;
    private Double price_origin;
    private Double price_item;
    private Integer difference;
    
	public Integer getDifference() {
		return difference;
	}
	public void setDifference(Integer difference) {
		this.difference = difference;
	}
	public Integer getSeqNo() {
		return seqNo;
	}
	public void setSeqNo(Integer seqNo) {
		this.seqNo = seqNo;
	}
	public OrderVO getOrderVO() {
		return orderVO;
	}
	public void setOrderVO(OrderVO orderVO) {
		this.orderVO = orderVO;
	}
	public ProductionVO getProductionVO() {
		return productionVO;
	}
	public void setProductionVO(ProductionVO productionVO) {
		this.productionVO = productionVO;
	}
	public Integer getQuantity_order() {
		return quantity_order;
	}
	public void setQuantity_order(Integer quantity_order) {
		this.quantity_order = quantity_order;
	}
	public Double getPrice_discount() {
		return price_discount;
	}
	public void setPrice_discount(Double price_discount) {
		this.price_discount = price_discount;
	}
	public Double getPrice_origin() {
		return price_origin;
	}
	public void setPrice_origin(Double price_origin) {
		this.price_origin = price_origin;
	}
	public Double getPrice_item() {
		return price_item;
	}
	public void setPrice_item(Double price_item) {
		this.price_item = price_item;
	}
    

}
