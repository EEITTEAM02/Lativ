package com.production.model;

import java.util.*;
public interface ProductionDAO_interface {
	
        public void insert(ProductionVO productVO);
        public void update(ProductionVO productVO);
        public void delete(Integer productId);
        public void updateQuantity(Integer productId,Integer quantity_in_stock);
        public ProductionVO findByPrimaryKey(Integer productId);
        public List<ProductionVO> getAll();
        public List<ProductionVO> findByCategoryId(Integer categoryId);
        public List<ProductionVO> getMostInStock();
      

        
}
