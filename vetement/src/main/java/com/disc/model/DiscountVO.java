package com.disc.model;

import java.io.Serializable;
import com.production.model.ProductionVO;
import java.util.*;

public class DiscountVO implements Serializable {
	
	private Integer packageNo; //商品折扣編號
	private Integer quantity_condition; //滿足該折扣類型需要的件數
	private Double discount1; //適用該折扣類型商品所打的折數
	private Double discount2; //適用該折扣類型商品所變更的單件金額
	private String descript; //商品折扣描述
	private Set<ProductionVO> products = new HashSet<ProductionVO>();
	
	public Integer getPackageNo() {
		return packageNo;
	}
	public void setPackageNo(Integer packageNo) {
		this.packageNo = packageNo;
	}
	public Integer getQuantity_condition() {
		return quantity_condition;
	}
	public void setQuantity_condition(Integer quantity_condition) {
		this.quantity_condition = quantity_condition;
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
	public String getDescript() {
		return descript;
	}
	public void setDescript(String descript) {
		this.descript = descript;
	}
	public Set<ProductionVO> getProducts() {
		return products;
	}
	public void setProducts(Set<ProductionVO> products) {
		this.products = products;
	}

	
		
}