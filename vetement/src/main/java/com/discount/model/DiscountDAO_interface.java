package com.discount.model;

import java.util.*;

import com.production.model.ProductionVO;

public interface DiscountDAO_interface {
	      public void insert(DiscountVO discountVO);
          public void update(DiscountVO discountVO);
          public void delete(Integer packageNo);
          public DiscountVO findByPrimaryKey(Integer packageNo);
	      public List<DiscountVO> getAll();

	      public Set<ProductionVO> getProductsByPackageNo(Integer packageNo);
}
