package com.discount.model;

import java.util.*;

import com.production.model.ProductionVO;

public class DiscountVO  implements java.io.Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer packageNo;
	private Double discount1;
	private Double discount2;
	private Integer quantity_condition;
	private Set<ProductionVO> products = new HashSet<ProductionVO>();
	private String descript;
	public Integer getPackageNo() {
		return packageNo;
	}
	public void setPackageNo(Integer packageNo) {
		this.packageNo = packageNo;
	}
	public Double getDiscount1() {
		return discount1;
	}
	public void setDiscount1(Double discount1) {
		this.discount1 = discount1;
	}
	public Double getDiscount2() {
		return discount2;
	}
	public void setDiscount2(Double discount2) {
		this.discount2 = discount2;
	}
	public Integer getQuantity_condition() {
		return quantity_condition;
	}
	public void setQuantity_condition(Integer quantity_condition) {
		this.quantity_condition = quantity_condition;
	}
	public Set<ProductionVO> getProducts() {
		return products;
	}
	public void setProducts(Set<ProductionVO> products) {
		this.products = products;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public String getDescript() {
		return descript;
	}
	public void setDescript(String descript) {
		this.descript = descript;
	}
	
	
	
}
