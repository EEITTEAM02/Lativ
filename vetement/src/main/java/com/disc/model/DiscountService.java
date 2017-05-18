package com.disc.model;

import java.util.List;
import java.util.Set;

import com.disc.model.DiscountVO;
import com.production.model.ProductionVO;

public class DiscountService {

	private IDiscountDAO dao;

	public DiscountService() {
		dao = new DiscountDAO();
	}

	public DiscountVO getOneDiscount(Integer packageNo) {
		return dao.findByPrimaryKey(packageNo);
	}	
	
	public DiscountVO updateDiscount(Integer quantity_condition, Double discount1, Double discount2, String descript, Integer packageNo) {		
		
		DiscountVO discountVO = new DiscountVO();

		discountVO.setPackageNo(packageNo);
		discountVO.setQuantity_condition(quantity_condition);
		discountVO.setDiscount1(discount1);
		discountVO.setDiscount2(discount2);
		discountVO.setDescript(descript);
		
		dao.update(discountVO);

		return dao.findByPrimaryKey(packageNo);		
		
	}
	
	public DiscountVO addDiscount(Integer quantity_condition, Double discount1, Double discount2, String descript) {

		DiscountVO discountVO = new DiscountVO();

		discountVO.setQuantity_condition(quantity_condition);
		discountVO.setDiscount1(discount1);
		discountVO.setDiscount2(discount2);
		discountVO.setDescript(descript);
		
		dao.insert(discountVO);

		return discountVO;
	}

	public int deleteDiscount(Integer packageNo) {
		Integer delete_count = dao.delete(packageNo);
		return delete_count;
	}

	public List<DiscountVO> getAllDiscount() {
		return dao.getAll();
	}
	
	public List<DiscountVO> getAll() {
		return dao.getAll();
	}
	
	public Set<ProductionVO> getProductsByDiscountCat(Integer packageNo) {
		return dao.getProductsByPackageNo(packageNo);
	}

	
}
