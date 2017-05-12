package com.disc.model;

import java.util.*;
import com.production.model.ProductionVO;

public interface IDiscountDAO {
	public int delete(Integer packageNo);
	public void insert(DiscountVO discountVO);
	public DiscountVO findByPrimaryKey(Integer packageNo);
	public List<DiscountVO> getAll();
	public void update(DiscountVO discountVO);
	public Set<ProductionVO> getProductsByPackageNo(Integer packageNo);
	
}
