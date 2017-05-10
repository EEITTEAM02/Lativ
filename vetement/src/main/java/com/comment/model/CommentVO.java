package com.comment.model;
import java.util.*;

import com.production.model.ProductionVO;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;



public class CommentVO implements java.io.Serializable{
	private String comment;
	private Date pubtime;
	private Integer customerId;
	private Integer productId;
	private Integer orderNo;
	private Integer commentNo;

	
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	
	public Date getPubtime() {
		return pubtime;
	}
	public void setPubtime(Date sdf) {
		this.pubtime = sdf; ;
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
	public Integer getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(Integer orderNo) {
		this.orderNo = orderNo;
	}
	public Integer getCommentNo() {
		return commentNo;
	}
	public void setCommentNo(Integer commentNo) {
		this.commentNo = commentNo;
	}
	
	
}
