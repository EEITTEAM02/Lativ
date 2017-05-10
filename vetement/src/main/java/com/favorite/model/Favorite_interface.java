package com.favorite.model;

import java.util.*;


import com.production.model.ProductionVO;

public interface Favorite_interface {
	public void insert(FavoriteVO favoriteVO);
	public void delete(Integer customerId,Integer productId);	
	public List<ProductionVO> getAll(Integer customerId);
	public List<FavoriteVO> findByPrimaryKey(Integer customerId,Integer productId);
}
