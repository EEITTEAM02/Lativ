package com.search.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONValue;

import com.production.model.ProductionVO;
import com.search.model.SearcherService;

@WebServlet("/Search/Search.do")
public class SearcherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SearcherServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String SearchKeyword = request.getParameter("SearchKeyword");
		if(SearchKeyword!=null){
			HttpSession session = request.getSession();
			session.setAttribute("SearchKeyword", SearchKeyword);
			response.sendRedirect(request.getContextPath()+"/Search/search.jsp");
		}else{
			doPost(request,response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<ProductionVO> list = null;
		
		response.setContentType("text/html; charset=UTF-8");//增加此行，避免Json轉出亂碼
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("UTF-8");
		String keyWord = request.getParameter("keyWord");
		String pageNumberStr = request.getParameter("pageNumber");
		Integer pageNumber = null;
		try{
			pageNumber = Integer.parseInt(pageNumberStr);
		}catch(Exception e){
			
		}
		
		SearcherService dao = new SearcherService();
		
		if(pageNumber != null){
			list = dao.pageSearch(keyWord, pageNumber);
		}else{
			list = dao.fuzzySearch(keyWord);
		}
		
		//圖片 名字 價格
		List jQueryList = new LinkedList();
		
		for(ProductionVO VO:list){
			Map map = new LinkedHashMap();
			map.put("productId", VO.getProductId());
			map.put("productName", VO.getProductName());
			map.put("price", VO.getPrice());
			jQueryList.add(map);
		}
		
		String jsonString = JSONValue.toJSONString(jQueryList);
		out.println(jsonString);
		
	}

}
