package com.comment.model;

import java.util.*;

public interface Comment_interface {
	public void insert(CommentVO commentVO);
	public void delete(Integer customerId,Integer productId);
	public List<ComentOnlyVO> getAll(Integer productId);
	public Set<CommentVO> findByPrimaryKey(Integer customerId,Integer productId);
	public List<CommentTwoVO> all(Integer customerId,Integer productId);
}
