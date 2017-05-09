package com.search.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONValue;

import com.category.model.CategoryDAO_interface;
import com.category.model.CategoryService;
import com.category.model.CategoryVO;
import com.production.model.ProductionVO;
import com.search.model.SearcherService;

@WebServlet("/Search/CategorySearch.do")
public class CategorySearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CategorySearchServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("UTF-8");
		
		List<CategoryVO> listCategory = null;
		String classTop = request.getParameter("classTop");
		String classMiddle = request.getParameter("classMiddle");
		String classBottom = request.getParameter("classBottom");
		
		CategoryService dao = new CategoryService();
		
		if(classMiddle!=null&&classBottom!=null){
			listCategory = dao.getClassBottom(classTop, classMiddle, classBottom);
		}else{
			listCategory = dao.getClassTop(classTop);
		}
		List<ProductionVO> listProduction = null;
		SearcherService searchDao = new SearcherService();
		
		if(classMiddle!=null&&classBottom!=null){
			listProduction = searchDao.getClassBottomProduction(listCategory);
		}else{
			listProduction = searchDao.getClassTopProduction(listCategory);
		}
		
		List jQueryList = new LinkedList();
		for(ProductionVO VO:listProduction){
			Map map = new HashMap();
			map.put("productId", VO.getProductId());
			map.put("productName", VO.getProductName());
			map.put("price", VO.getPrice());
			jQueryList.add(map);
		}
		
		String jsonString = JSONValue.toJSONString(jQueryList);
		out.println(jsonString);
		
	}

}
