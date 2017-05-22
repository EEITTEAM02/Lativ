package com.comment.model;

import java.util.List;
import java.util.Set;

public class CommentService {
	
	private Comment_interface dao;
	
	public CommentService(){
		dao = new CommentDAO();
	}
	
	public CommentVO addComment(Integer customerId,Integer productId,String comment,Integer orderNo){
		
		CommentVO commentVO = new CommentVO();
		
		commentVO.setComment(comment);
		commentVO.setCustomerId(customerId);
		commentVO.setProductId(productId);
		commentVO.setOrderNo(orderNo);
		
		return commentVO;
	}
	
	public void addComment(CommentVO commentVO){
		dao.insert(commentVO);
	}
	
	
	
	public void deleteComment(Integer customerId,Integer productId){
		dao.delete(customerId, productId);
	}
	public List<ComentOnlyVO> getAll(Integer productId){
		return dao.getAll(productId);
	}
	public Set<CommentVO> getOne(Integer customerId,Integer productId){
		return dao.findByPrimaryKey(customerId, productId);
	}
	public List<CommentTwoVO> all(Integer customerId,Integer productId){
		return dao.all(customerId, productId);
	}

}
