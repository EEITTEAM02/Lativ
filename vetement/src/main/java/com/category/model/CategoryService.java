package com.category.model;

import java.util.List;

public class CategoryService {
	private CategoryDAO_interface dao = null;
	
	public CategoryService(){
		dao = new CategoryDAO();
	}
	
	public CategoryVO findByPrimaryKey(Integer categoryId){
		return dao.findByPrimaryKey(categoryId);
	}
	
	public List<CategoryVO> getClassTop(String class_top) {
		return dao.getClassTop(class_top);
	}
}
