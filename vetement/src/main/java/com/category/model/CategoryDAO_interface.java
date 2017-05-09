package com.category.model;

import java.util.List;

public interface CategoryDAO_interface {
	public CategoryVO findByPrimaryKey(Integer categoryId);
	public List<CategoryVO> getClassTop(String class_top);
	public List<CategoryVO> getClassBottom(String class_top,String class_middle,String class_bottom);
}
