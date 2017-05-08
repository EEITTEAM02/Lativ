package com.discount.model;

import java.util.List;
import java.util.Set;

import com.production.model.ProductionVO;

public class DiscountService {

	private DiscountDAO_interface dao;
	
	public DiscountVO addDiscount(Double discount1,Double discount2,Integer quantity_condition,String descript) {

		DiscountVO discountVO = new DiscountVO();

		discountVO.setDiscount1(discount1);
		discountVO.setDiscount2(discount2);
		discountVO.setQuantity_condition(quantity_condition);
		discountVO.setDescript(descript);
		
		dao.insert(discountVO);

		return discountVO;
	}

	public DiscountVO updateDiscount(Integer packageNo, Double discount1,Double discount2,Integer quantity_condition,String descript) {
		DiscountVO discountVO = new DiscountVO();

		discountVO.setPackageNo(packageNo);
		discountVO.setDiscount1(discount1);
		discountVO.setDiscount2(discount2);
		discountVO.setQuantity_condition(quantity_condition);
		discountVO.setDescript(descript);
		

		dao.update(discountVO);
		

		return dao.findByPrimaryKey(packageNo);
	}

	public DiscountService() {
		dao = new DiscountDAO();
	}

	public List<DiscountVO> getAll() {
		return dao.getAll();
	}

	public DiscountVO getOneDiscount(Integer packageNo) {
		return dao.findByPrimaryKey(packageNo);
	}

	public Set<ProductionVO> getProductsByDiscountCat(Integer packageNo) {
		return dao.getProductsByPackageNo(packageNo);
	}

	public void deleteDept(Integer deptno) {
		dao.delete(deptno);
	}
}
