package com.search.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONValue;

import com.production.model.ProductionVO;
import com.search.model.SearcherService;


@WebServlet("/Search/Page.do")
public class PageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public PageServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");//增加此行，避免Json轉出亂碼
		PrintWriter out = response.getWriter();
		
		SearcherService dao = new SearcherService();
		Integer count = dao.getPage();
		String pageStr = String.valueOf(count);
		
		Map map = new LinkedHashMap();
		map.put("pageCount", pageStr);
		
		String jsonString = JSONValue.toJSONString(map);
		out.println(jsonString);
	}

}
