package com.favorite.model;

import java.util.List;

import com.production.model.ProductionVO;

public class FavoriteService {
	
	private FavoriteDAO dao;
	
	public FavoriteService(){
		dao = new FavoriteDAO();
	}
	
	public FavoriteVO addFavorite(Integer customerId,Integer productId){
		FavoriteVO favoriteVO = new FavoriteVO();

		favoriteVO.setCustomerId(customerId);
		favoriteVO.setProductId(productId);

		return favoriteVO;
	}
	
	//�w�d�� Struts 2 �Ϊ�
		public void addFavorite(FavoriteVO favoriteVO) {
			dao.insert(favoriteVO);
		}
		public void deleteFavorite(Integer customerId,Integer productId) {
			dao.delete(customerId,productId);
		}
		public List<FavoriteVO> getOneEmp(Integer customerId,Integer productId) {
			return dao.findByPrimaryKey(customerId,productId);
		}
		public List<ProductionVO> getAll(Integer customerId) {
			return dao.getAll(customerId);
		}
}
