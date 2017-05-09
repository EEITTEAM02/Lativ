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
	
	public List<CategoryVO> getClassBottom(String class_top, String class_middle, String class_bottom) {
		return dao.getClassBottom(class_top, class_middle, class_bottom);
	}
}
