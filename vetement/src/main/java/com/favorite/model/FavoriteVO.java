package com.favorite.model;

public class FavoriteVO implements java.io.Serializable{
	private Integer favoriteNo;
	private Integer customerId;
	private Integer productId;
	
	public Integer getFavoriteNo() {
		return favoriteNo;
	}
	public void setFavoriteNo(Integer favoriteNo) {
		this.favoriteNo = favoriteNo;
	}
	public Integer getCustomerId() {
		return customerId;
	}
	public void setCustomerId(Integer customerId) {
		this.customerId = customerId;
	}
	public Integer getProductId() {
		return productId;
	}
	public void setProductId(Integer productId) {
		this.productId = productId;
	}
	
	
}
