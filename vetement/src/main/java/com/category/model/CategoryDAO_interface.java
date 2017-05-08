package com.category.model;

import java.util.List;

public interface CategoryDAO_interface {
	public CategoryVO findByPrimaryKey(Integer categoryId);
	public List<CategoryVO> getClassTop(String class_top);
	
}
