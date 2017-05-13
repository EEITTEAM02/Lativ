package com.search.model;

import java.util.List;

import com.category.model.CategoryVO;
import com.production.model.ProductionVO;

public class SearcherService {
	private SearcherDAO dao = null;
	
	public SearcherService(){
		dao = new SearcherDAO();
	}
	
	public List<ProductionVO> fuzzySearch(String keyWord){
		return dao.fuzzySearch(keyWord);
	}
	
	public List<ProductionVO> pageSearch(String keyWord, Integer pageNumber){
		return dao.pageSearch(keyWord, pageNumber);
	}
	
	public List<ProductionVO> getClassTopProduction(List<CategoryVO> listCategory){
		return dao.getClassTopProduction(listCategory);
	}
	
	public List<ProductionVO> getClassBottomProduction(List<CategoryVO> listCategory){
		return dao.getClassBottomProduction(listCategory);
	}
	
	public List<ProductionVO> getDiscountProduction(Integer packageNo){
		return dao.getDiscountProduction(packageNo);
	}
	
	public List<Object[]> getHotProduction(Integer orderNo){
		return dao.getHotProduction(orderNo);
	}
}
