package com.search.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONValue;

import com.production.model.ProductionVO;
import com.search.model.SearcherService;

@WebServlet("/Search/AutocompleteSearch.do")
public class AutocompleteSearch extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AutocompleteSearch() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("UTF-8");
		String autoKeyword = request.getParameter("autoKeyword"); 
		
		SearcherService dao = new SearcherService();
		List<Object> list = dao.getAutocompleteSearch(autoKeyword);
		
		List jQueryList = new LinkedList();
		for(Object VO:list){
			jQueryList.add(VO);
		}
		
		String jsonString = JSONValue.toJSONString(jQueryList);
		out.println(jsonString);
	}

}
