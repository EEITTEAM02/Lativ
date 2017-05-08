package com.category.model;

import java.io.Serializable;

public class CategoryVO implements Serializable {
	private Integer categoryId;
	private String class_top;
	private String class_middle;
	private String class_bottom;
	
	public Integer getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(Integer categoryId) {
		this.categoryId = categoryId;
	}
	public String getClass_top() {
		return class_top;
	}
	public void setClass_top(String class_top) {
		this.class_top = class_top;
	}
	public String getClass_middle() {
		return class_middle;
	}
	public void setClass_middle(String class_middle) {
		this.class_middle = class_middle;
	}
	public String getClass_bottom() {
		return class_bottom;
	}
	public void setClass_bottom(String class_bottom) {
		this.class_bottom = class_bottom;
	}
	
}
